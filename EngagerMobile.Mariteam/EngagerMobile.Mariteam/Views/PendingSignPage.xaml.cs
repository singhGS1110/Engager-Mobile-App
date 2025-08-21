using EngagerMobile.Mariteam.ApplicationCore.Entities.WorkOrders;
using EngagerMobile.Mariteam.ApplicationCore.Models;
using EngagerMobile.Mariteam.Common.Constants;
using EngagerMobile.Mariteam.Services.WorkOrders;
using EngagerMobile.Mariteam.ViewModels;
using Plugin.Connectivity;
using Plugin.Media;
using Plugin.Media.Abstractions;
using Plugin.Permissions;
using Plugin.Permissions.Abstractions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace EngagerMobile.Mariteam.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class PendingSignPage : ContentPage
	{
        PendingSignViewModel viewModel;
        PendingSignEntityService service;
        WorkOrderService woService;
        WorkOrderStatus woStatus;

        public PendingSignPage (PendingSignViewModel viewModel, WorkOrderStatus woStatus)
		{
			InitializeComponent ();

            service = new PendingSignEntityService();

            woService = new WorkOrderService();

            this.woStatus = woStatus;

            if(StaticWorkOrderModel.PendingSign == null)
            {
                BindingContext = this.viewModel = viewModel;
            }
            else
            {
                BindingContext = this.viewModel = StaticWorkOrderModel.PendingSign;
            }

            viewModel.btnComplete = btnComplete;
            viewModel.btnSignature = btnSignature;
            viewModel.btnSnapshot = btnSnapShot;

            if(viewModel.ServiceJobStatus == ServiceJobStatusConstants.SeviceJobStatus.Submitted.ToString())
            {
                Submitted_State();
            }
            else
            {
                if (viewModel.WorkOrder.WorkOrderId == woStatus.WorkOrderId)
                {
                    if (woStatus.isSignedByCustomer)
                    {
                        PostSign_State();
                    }
                }
                else
                {
                    PreSign_State();
                }
            }
        }

        protected async override void OnAppearing()
        {
            base.OnAppearing();

            if (CrossConnectivity.Current.IsConnected)
            {
                Loading_State(true);

                if (StaticWorkOrderModel.PendingSign == null)
                {
                    if(!(viewModel.Checklists.Count > 0 && viewModel.MeetingServices.Count > 0))
                    {
                        await viewModel.ExecuteLoadReferencesCommand();
                    }

                    StaticWorkOrderModel.PendingSign = this.viewModel;
                }
                else
                {
                    viewModel = StaticWorkOrderModel.PendingSign;
                }

                if (viewModel.ServiceJobStatus == ServiceJobStatusConstants.SeviceJobStatus.Submitted.ToString())
                {
                    Submitted_State();
                }
                else
                {
                    woStatus = await App.woStatusRepo.GetWorkOrderStatusByIdAsync(viewModel.WorkOrder.WorkOrderId, viewModel.WorkOrder.ServiceJobId);

                    if (woStatus.isSignedByCustomer)
                    {
                        PostSign_State();
                    }
                    else
                    {
                        PreSign_State();
                    }
                }

                lblPickUpPax.Text = String.IsNullOrEmpty(woStatus.PickUpPax) ? "0" : woStatus.PickUpPax;

                CheckListItemsListView.HeightRequest = 30 * viewModel.Checklists.Count;
                MeetingServiceItemsListView.HeightRequest = 30 * viewModel.MeetingServices.Count;

                Loading_State(false);
            }
            else
            {
                await DisplayAlert("Connection Error", "Your device is currently not connected to the internet. Please connect and try again", "Okay");
            }
        }

        private async void SnapShotButton_OnClicked(object sender, EventArgs e)
        {
            btnSnapShot.IsEnabled = false;

            StaticWorkOrderModel.PendingSign = viewModel;

            string photoDesc = DateTime.Now.ToLongDateString();

            var status = await CrossPermissions.Current.CheckPermissionStatusAsync(Permission.Camera);

            if (status != PermissionStatus.Granted)
            {
                if (await CrossPermissions.Current.ShouldShowRequestPermissionRationaleAsync(Permission.Camera))
                {

                }

                var results = await CrossPermissions.Current.RequestPermissionsAsync(Permission.Camera);
                //Best practice to always check that the key exists
                if (results.ContainsKey(Permission.Camera))
                    status = results[Permission.Camera];
            }

            if (status == PermissionStatus.Granted)
            {

                if (!(CrossMedia.Current.IsCameraAvailable && CrossMedia.Current.IsTakePhotoSupported))
                {
                    await DisplayAlert("No Camera", ":( No Camera Available.", "OK");
                    return;
                }

                var file = await CrossMedia.Current.TakePhotoAsync(new StoreCameraMediaOptions()
                {
                    PhotoSize = Plugin.Media.Abstractions.PhotoSize.Medium,
                    DefaultCamera = CameraDevice.Rear,
                    SaveToAlbum = false,
                    Name = photoDesc
                });

                if (file == null)
                {
                    btnSnapShot.IsEnabled = true;
                    return;
                }

                await Navigation.PushAsync(new SnapShotPage((Convert.ToInt64(lblServiceJobId.Text)), file));
            }
            else if (status != PermissionStatus.Unknown)
            {
                await DisplayAlert("Camera Denied", "Can not continue, try again.", "OK");
            }

            btnSnapShot.IsEnabled = true;
        }

        private async void SignButton_OnClicked(object sender, EventArgs e)
        {
            btnSignature.IsEnabled = false;

            StaticWorkOrderModel.PendingSign = viewModel;

            this.viewModel.IsBusy = true;

            WorkOrder workOrderEntity = await woService.GetOrderBySJId(this.viewModel.WorkOrder.ServiceJobId);

            if(workOrderEntity == null)
            {
                await DisplayAlert("Oops...", "Something went wrong. Please try again.", "Ok");
                return;
            }

            this.viewModel.IsBusy = false;

            await Navigation.PushAsync(new SignaturePage(workOrderEntity));

            btnSignature.IsEnabled = true;
        }

        private async void CompleteButton_OnClicked(object sender, EventArgs e)
        {
            Loading_State(true);

            if (CrossConnectivity.Current.IsConnected)
            {
                if(await ValidateData())
                {
                    var confirm = await DisplayAlert("Confirm", "Would you like to confirm the completion of this Work Order?", "Yes", "No");

                    if (confirm)
                    {
                        this.viewModel.IsBusy = true;

                        CompletedPendingSignEntity model = new CompletedPendingSignEntity();

                        model.serviceJobId = lblServiceJobId.Text;

                        List<CheckListHelperEntity> checklists = viewModel.Checklists.Where(x => x.Selected).ToList();
                        foreach (var chkItem in checklists)
                        {
                            model.checklistIds += chkItem.Id.ToString();

                            if (string.IsNullOrEmpty(chkItem.ShortText9))
                            {
                                chkItem.ShortText9 = "0";
                            }

                            model.checklistIds += "|" + chkItem.ShortText9 + ",";
                        }

                        if (!(model.checklistIds == ""))
                            model.checklistIds = model.checklistIds.Substring(0, model.checklistIds.Length - 1);

                        model.additionalStops = txtAdditionalStops.Text;

                        model.disposals = txtDisposal.Text;

                        model.waitingTime = txtWaitingTime.Text;

                        List<PendingSignEntity> meetingServices = viewModel.MeetingServices.ToList().Where(x => x.Selected == true).ToList();
                        foreach (var msItem in meetingServices)
                        {
                            model.meetingServiceIds += msItem.Id.ToString() + ",";
                        }
                        if (!(model.meetingServiceIds == ""))
                        {
                            model.meetingServiceIds = model.meetingServiceIds.Substring(0, model.meetingServiceIds.Length - 1);
                        }

                        var detention = pickerDetention.SelectedItem as PendingSignEntity;
                        var detentionId = detention == null ? 0 : detention.Id;
                        model.customDetentionId = detentionId.ToString();

                        model.remark = txtRemark.Text;

                        model.pickupPax = lblPickUpPax.Text;

                        model.tripFees = Convert.ToDecimal(txtTripFees.Text);
                        model.isMSIncluded = swtMS.IsToggled;

                        if (await service.Save(model))
                        {
                            StaticWorkOrderModel.ResetModel();

                            this.viewModel.IsBusy = false;

                            // await DisplayAlert("Success", "You have successfully submitted this Work Order", "Okay");

                            woStatus = await App.woStatusRepo.GetWorkOrderStatusByIdAsync(this.viewModel.WorkOrder.WorkOrderId, this.viewModel.WorkOrder.ServiceJobId);
                            woStatus.WorkOrderStatusStr = WorkOrderStatusConstants.OrderStatus.Submitted.ToString();
                            woStatus.ServiceJobStatusStr = ServiceJobStatusConstants.SeviceJobStatus.Submitted.ToString();
                            await App.woStatusRepo.UpdateWorkOrderStatusAsync(woStatus);


                            await Navigation.PushAsync(new MainPage());
                        }
                        else
                        {
                            this.viewModel.IsBusy = false;

                            await DisplayAlert("Failed", "Something went wrong during the Submission process. Please Try again.", "Okay");
                        }
                    }

                    Loading_State(false);
                    Submitted_State();
                }
                else
                {
                    Loading_State(false);
                }
            }
            else
            {
                await DisplayAlert("Connection Error", "Your device is currently not connected to the internet. Please connect and try again", "Okay");
            }
        }

        private async Task<bool> ValidateData()
        {
            var emptyChecklists = this.viewModel.Checklists.Where(x => x.Selected && string.IsNullOrEmpty(x.ShortText9));

            if(emptyChecklists.Count() > 0)
            {
                await DisplayAlert("Required", "Fees of selected additional items must be filled in.", "Okay");
                return false;
            }

            var enteredChecklists = this.viewModel.Checklists.Where(x => x.Selected && !string.IsNullOrEmpty(x.ShortText9));

            if(enteredChecklists.Count() > 0)
            {
                bool isValidEntry = true;

                foreach(var checklist in enteredChecklists)
                {
                    var isDecimal = decimal.TryParse(checklist.ShortText9, out decimal checklistPrice);

                    if(isDecimal)
                    {
                        if(checklistPrice == 0)
                        {
                            await DisplayAlert("Invalid", "Additional item fees cannot be zero.", "Okay");
                            return false;
                        }
                    }
                    else
                    {
                        await DisplayAlert("Invalid", "Invalid data entered.", "Okay");
                        return false;
                    }
                }
            }

            if(string.IsNullOrEmpty(txtTripFees.Text))
            {
                await DisplayAlert("Required", "Trip Fees is a required field", "Okay");
                return false;
            }

            var isTripFeesDecimal = decimal.TryParse(txtTripFees.Text, out decimal tripFeePrice);

            if(isTripFeesDecimal)
            {
                if (tripFeePrice == 0)
                {
                    await DisplayAlert("Invalid", "Trip Fees cannot be zero.", "Okay");
                    return false;
                }
            }
            else
            {
                await DisplayAlert("Invalid", "Invalid data entered.", "Okay");
                return false;
            }

            return true;
        }

        private void Loading_State(bool isLoading)
        {
            if (isLoading)
            {
                btnSignature.IsEnabled = false;
                btnComplete.IsEnabled = false;
                btnSnapShot.IsEnabled = false;
            }
            else
            {
                btnSignature.IsEnabled = true;
                btnComplete.IsEnabled = true;
                btnSnapShot.IsEnabled = true;
            }
        }

        private void PreSign_State()
        {
            btnSignature.IsVisible = true;
            btnSigned.IsVisible = false;
            btnComplete.IsVisible = false;
            btnSnapShot.IsVisible = true;
        }

        private void PostSign_State()
        {
            btnSignature.IsVisible = false;
            btnSigned.IsVisible = true;
            btnComplete.IsVisible = true;
            btnSnapShot.IsVisible = true;
        }

        private void Submitted_State()
        {
            btnSignature.IsVisible = false;
            btnSnapShot.IsVisible = false;
            btnComplete.IsVisible = false;
            CheckListItemsListView.IsEnabled = false;
            txtAdditionalStops.IsEnabled = false;
            txtDisposal.IsEnabled = false;
            txtWaitingTime.IsEnabled = false;
            MeetingServiceItemsListView.IsEnabled = false;
            pickerDetention.IsEnabled = false;
            txtRemark.IsEnabled = false;
        }
    }
}