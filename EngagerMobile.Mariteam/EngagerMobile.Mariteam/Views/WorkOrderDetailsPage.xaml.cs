using EngagerMobile.Mariteam.ApplicationCore.Entities.WorkOrders;
using EngagerMobile.Mariteam.ApplicationCore.Models;
using EngagerMobile.Mariteam.Common.Configs;
using EngagerMobile.Mariteam.Common.Constants;
using EngagerMobile.Mariteam.Services.GeoLocation;
using EngagerMobile.Mariteam.Services.WorkOrders;
using EngagerMobile.Mariteam.ViewModels;
using Plugin.Connectivity;
using Plugin.Geolocator.Abstractions;
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
    public partial class WorkOrderDetailsPage : ContentPage
    {
        WorkOrderDetailsPageViewModel viewModel;
        WorkOrderStatus woStatus;
        WorkOrderService woService;
        GeoLocationService geoService;

        string customerName;
        string pickUpPax;
        string standByDate;
        string standByTime;
        string reason;
        Int64 rankId;

        public WorkOrderDetailsPage(WorkOrderDetailsPageViewModel viewModel, WorkOrderStatus woStatus)
        {
            InitializeComponent();

            Title = "Task Details";

            woService = new WorkOrderService();
            geoService = new GeoLocationService();

            BindingContext = this.viewModel = viewModel;
            this.viewModel.btnEndTask = this.btnEnd;
            this.viewModel.btnSaveData = this.btnSaveData;
            this.viewModel.btnAddPassenger = this.btnAddPassenger;

            this.viewModel.IsBusy = false;

            this.woStatus = woStatus;


            if (woStatus.ServiceJobStatusStr == ServiceJobStatusConstants.SeviceJobStatus.Pending.ToString())
            {
                Acknowledge_State();
            }
            else if (woStatus.ServiceJobStatusStr == ServiceJobStatusConstants.SeviceJobStatus.Scheduled.ToString())
            {
                Scheduled_State();
            }
            else if (woStatus.ServiceJobStatusStr == ServiceJobStatusConstants.SeviceJobStatus.In_Progress.ToString())
            {
                InProgress_State();
            }
            else if (woStatus.ServiceJobStatusStr == ServiceJobStatusConstants.SeviceJobStatus.Submitted.ToString())
            {
                Completed_State();
            }
        }

        protected async override void OnAppearing()
        {
            if(woStatus.ServiceJobStatusStr == ServiceJobStatusConstants.SeviceJobStatus.Pending_Sign.ToString())
            {
                await Navigation.PopAsync(false);
            }

            if (CrossConnectivity.Current.IsConnected)
            {
                if (woStatus.ServiceJobStatusStr == ServiceJobStatusConstants.SeviceJobStatus.Pending.ToString())
                {
                    Acknowledge_State();
                }
                else if (woStatus.ServiceJobStatusStr == ServiceJobStatusConstants.SeviceJobStatus.Scheduled.ToString())
                {
                    Scheduled_State();
                }
                else if (woStatus.ServiceJobStatusStr == ServiceJobStatusConstants.SeviceJobStatus.In_Progress.ToString())
                {
                    Loading_State(true);

                    InProgress_State();
                    if(viewModel.Ranks.Count == 0 || viewModel.Ranks == null)
                    {
                        await viewModel.ExecuteLoadReferencesCommand();
                    }

                    if(!(String.IsNullOrEmpty(woStatus.PassengerInChargeName)))
                    {
                        txtEditInChargePassenger.Text = woStatus.PassengerInChargeName;
                    }

                    if(!(String.IsNullOrEmpty(woStatus.PickUpPax)))
                    {
                        txtEditPax.Text = woStatus.PickUpPax;
                    }
                   
                    if(!(String.IsNullOrEmpty(woStatus.PassengerRankName)))
                    {
                        pickerEditRank.SelectedItem = viewModel.Ranks.ToList().Where(x => x.Id == woStatus.PassengerRankId).FirstOrDefault();
                    }
                    else
                    {
                        pickerEditRank.SelectedItem = viewModel.Ranks.ToList().Where(x => x.Id == StaticWorkOrderModel.WorkOrder.RankId).FirstOrDefault();
                    }

                    Loading_State(false);

                }
                else if (woStatus.ServiceJobStatusStr == ServiceJobStatusConstants.SeviceJobStatus.Submitted.ToString())
                {
                    Completed_State();
                }
            }
            else
            {
                await DisplayAlert("Connection Error", "Your device is currently not connected to the internet. Please connect and try again", "OK");
            }
        }

        private async void BtnAcknowledge_OnClicked(object sender, EventArgs e)
        {
            try
            {
                btnAcknowledge.IsEnabled = false;

                if (CrossConnectivity.Current.IsConnected)
                {
                    var confirm = await DisplayAlert("Confirm", "Would you like to acknowledge this Work Order?", "Yes", "No");

                    if (confirm)
                    {
                        this.viewModel.IsBusy = true;

                        Int64 serviceJobId = Convert.ToInt64(txtSJobId.Text);

                        if (await woService.Acknowledge(serviceJobId))
                        {
                            this.viewModel.IsBusy = false;

                            //await DisplayAlert("Success", "You have acknowledged this Work Order", "OK");
                            txtSJStatus.Text = ServiceJobStatusConstants.SeviceJobStatus.Scheduled.ToString();

                            this.woStatus.ServiceJobStatusStr = txtSJStatus.Text;
                            await App.woStatusRepo.AddWorkOrderStatusAsync(this.woStatus);

                            Scheduled_State();
                        }
                        else
                        {
                            this.viewModel.IsBusy = false;

                            await DisplayAlert("Failed", "Something went wrong during the Acknowledgement Process. Please Try again.", "OK");
                        }
                    }
                }
                else
                {
                    await DisplayAlert("Connection Error", "Your device is currently not connected to the internet. Please connect and try again", "OK");

                }

                btnAcknowledge.IsEnabled = true;
            }
            catch(Exception ex)
            {
                this.viewModel.IsBusy = false;
                Loading_State(false);
                await DisplayAlert("Error", "An error occured. Please try again. Error Message: " + ex.Message, "Okay");
                return;
            }            
        }

        private async void BtnBegin_OnClicked(object sender, EventArgs e)
        {
            try
            {
                btnBegin.IsEnabled = false;
                if (CrossConnectivity.Current.IsConnected)
                {
                    var confirm = await DisplayAlert("Confirm", "Would you like to begin this Task?", "Yes", "No");

                    if (confirm)
                    {
                        this.viewModel.IsBusy = true;

                        Int64 serviceJobId = Convert.ToInt64(txtSJobId.Text);

                        //Position currentPosition = await geoService.GetCurrentLocation();

                        Position currentPosition = new Position()
                        {
                            Timestamp = DateTime.Today
                        };

                        if (await woService.BeginTask(serviceJobId, currentPosition))
                        {
                            this.viewModel.IsBusy = false;

                            //await DisplayAlert("Success", "You have started on this Task", "OK");

                            woStatus = await App.woStatusRepo.GetWorkOrderStatusByIdAsync(this.viewModel.WorkOrder.WorkOrderId, this.viewModel.WorkOrder.ServiceJobId);
                            woStatus.ServiceJobStatusStr = txtSJStatus.Text = ServiceJobStatusConstants.SeviceJobStatus.In_Progress.ToString();
                            await App.woStatusRepo.UpdateWorkOrderStatusAsync(woStatus);

                            InProgress_State();

                            await viewModel.ExecuteLoadReferencesCommand();

                            pickerEditRank.SelectedItem = viewModel.Ranks.ToList().Where(x => x.Id == StaticWorkOrderModel.WorkOrder.RankId).FirstOrDefault();
                        }
                        else
                        {
                            this.viewModel.IsBusy = false;

                            await DisplayAlert("Failed", "Something went wrong while starting a Task. Please Try again.", "OK");
                        }

                    }

                    btnBegin.IsEnabled = true;
                }
                else
                {
                    await DisplayAlert("Connection Error", "Your device is currently not connected to the internet. Please connect and try again", "OK");
                }

                btnBegin.IsEnabled = true;
            }
            catch (Exception ex)
            {
                this.viewModel.IsBusy = false;
                Loading_State(false);
                await DisplayAlert("Error", "An error occured. Please try again. Error Message: " + ex.Message, "Okay");
                return;
            }
        }

        private async void btnSaveData_Clicked(object sender, EventArgs e)
        {
            try
            {
                Loading_State(true);
                this.viewModel.IsBusy = true;

                string passengerName = txtEditInChargePassenger.Text;

                string pax = txtEditPax.Text;

                var rank = pickerEditRank.SelectedItem as RankEntity;

                woStatus = await App.woStatusRepo.GetWorkOrderStatusByIdAsync(this.viewModel.WorkOrder.WorkOrderId, this.viewModel.WorkOrder.ServiceJobId);

                if (woStatus != null)
                {
                    woStatus.PassengerInChargeName = passengerName;
                    woStatus.PickUpPax = pax;
                    woStatus.PassengerRankId = rank == null ? 0 : rank.Id;
                    woStatus.PassengerRankName = rank == null ? null : rank.Name;
                }

                await App.woStatusRepo.UpdateWorkOrderStatusAsync(woStatus);

                this.viewModel.IsBusy = false;
                Loading_State(false);

                await DisplayAlert("Saved", "Details saved Successfully.", "OK");

                btnSaveData.IsEnabled = true;

                return;
            }
            catch (Exception ex)
            {
                this.viewModel.IsBusy = false;
                Loading_State(false);
                await DisplayAlert("Error", "An error occured. Please try again. Error Message: " + ex.Message, "Okay");
                return;
            }
        }


        private async void BtnEnd_OnClicked(object sender, EventArgs e)
        {
            try
            {
                Loading_State(true);

                if (CrossConnectivity.Current.IsConnected)
                {

                    var confirm = await DisplayAlert("Confirm", "Would you like to end this Task?", "Yes", "No");

                    if (confirm)
                    {
                        this.viewModel.IsBusy = true;

                        customerName = txtEditInChargePassenger.Text;

                        if (String.IsNullOrEmpty(customerName))
                        {
                            this.viewModel.IsBusy = false;

                            await DisplayAlert("Required", "Please enter the name of the Passenger in Charge.", "OK");

                            Loading_State(false);

                            return;
                        }

                        pickUpPax = txtEditPax.Text;

                        if (!(Int64.TryParse(pickUpPax, out Int64 pax)))
                        {
                            this.viewModel.IsBusy = false;

                            await DisplayAlert("Wrong Entry", "Please enter only numbers in the No. Of Pax. field.", "OK");

                            Loading_State(false);

                            return;
                        }

                        if (pickUpPax == "" || pickUpPax == null)
                        {
                            this.viewModel.IsBusy = false;

                            await DisplayAlert("Required", "Please enter the No. of Pax of the Passengers picked up.", "OK");

                            Loading_State(false);

                            return;
                        }

                        var rank = pickerEditRank.SelectedItem as RankEntity;

                        if (rank == null)
                        {
                            this.viewModel.IsBusy = false;
                            await DisplayAlert("Required", "Please select a rank for the passenger in charge. If there is no rank, choose others from the rank list.", "OK");
                            Loading_State(false);

                            return;
                        }

                        //var default_Rank = viewModel.Ranks.Where(x => x.Name == MiscConstants.RANK_OTHERS).FirstOrDefault();

                        //var _rankId = rank == null ? default_Rank.Id : rank.Id;

                        var _rankId = rank.Id;

                        this.rankId = _rankId;

                        Int64 serviceJobId = Convert.ToInt64(txtSJobId.Text);

                        //Position currentPosition = await geoService.GetCurrentLocation();

                        Position currentPosition = new Position()
                        {
                            Timestamp = DateTime.Today
                        };

                        if (lblAdminStandBy.Text == " - ")
                        {
                            if (viewModel.ModifyStandByDate)
                            {
                                standByDate = dpStandByDate.Date.ToShortDateString();

                                standByTime = tpStandByTime.Time.ToString();

                                //if (standByTime == "00:00:00")
                                //{
                                //    this.viewModel.IsBusy = false;

                                //    await DisplayAlert("Required", "Please enter the standby date and time before Ending the Task. Standby Time cannot be '00:00'.", "OK");

                                //    return;
                                //}
                            }
                            else if (viewModel.ModifyReason)
                            {
                                reason = pickerReason.SelectedItem == null ? string.Empty : pickerReason.SelectedItem.ToString();

                                if (reason == string.Empty)
                                {
                                    this.viewModel.IsBusy = false;

                                    await DisplayAlert("Required", "Please choose one of the reasons for not submitting standby date and time before Ending the Task.", "OK");

                                    Loading_State(false);

                                    return;
                                }
                            }
                            else
                            {
                                this.viewModel.IsBusy = false;

                                await DisplayAlert("Required", "Please select one of the two options in order to proceed.", "OK");

                                Loading_State(false);

                                return;
                            }
                        }
                        else
                        {
                            standByDate = "";
                            standByTime = "";
                            reason = "";
                        }

                        if (await woService.EndTask(serviceJobId, currentPosition, rankId, customerName, pickUpPax, standByDate, standByTime, reason))
                        {
                            this.viewModel.IsBusy = false;

                            //await DisplayAlert("Success", "You have ended this Task", "OK");

                            woStatus = await App.woStatusRepo.GetWorkOrderStatusByIdAsync(this.viewModel.WorkOrder.WorkOrderId, this.viewModel.WorkOrder.ServiceJobId);
                            woStatus.ServiceJobStatusStr = ServiceJobStatusConstants.SeviceJobStatus.Pending_Sign.ToString();

                            await App.woStatusRepo.UpdateWorkOrderStatusAsync(woStatus);

                            StaticWorkOrderModel.WorkOrder.RankId = rankId;
                            StaticWorkOrderModel.WorkOrder.RankStr = rank.Name;
                            StaticWorkOrderModel.WorkOrder.InChargePassenger = customerName;
                            StaticWorkOrderModel.WorkOrder.NoOfPax = Convert.ToInt32(pickUpPax);
                            StaticWorkOrderModel.WorkOrder.StandByDateStr = standByDate;
                            StaticWorkOrderModel.WorkOrder.StandByTime = standByTime;
                            //StaticWorkOrderModel.WorkOrder.ServiceJobStatusStr = ServiceJobStatusConstants.SeviceJobStatus.Pending_Sign.ToString();

                            await Navigation.PushAsync(new PendingSignPage(new PendingSignViewModel(StaticWorkOrderModel.WorkOrder), woStatus));
                        }
                        else
                        {
                            this.viewModel.IsBusy = false;

                            await DisplayAlert("Failed", "Something went wrong during the Ending Task Process. Please Try again.", "OK");

                            Loading_State(false);
                        }

                    }

                    Loading_State(false);
                }
                else
                {
                    await DisplayAlert("Connection Error", "Your device is currently not connected to the internet. Please connect and try again", "OK");
                    Loading_State(false);
                }
            }
            catch (Exception ex)
            {
                this.viewModel.IsBusy = false;
                Loading_State(false);
                await DisplayAlert("Error", "An error occured. Please try again. Error Message: " + ex.Message, "Okay");
                return;
            }
        }

        private void btnAddPassenger_Clicked(object sender, EventArgs e)
        {
            btnAddPassenger.IsEnabled = false;

            string url = UrlConstants.ADD_PASSENGER + "?workOrderId=" + txtWOId.Text + "&serviceJobId=" + txtSJobId.Text + "&ApiToken=" + ApiConstants.KEY + "&ParentCompanyId=" + UserConfigs.PARENTCOMPANY_ID.ToString();

            var uri = new Uri(string.Format(url, string.Empty)); 

            Device.OpenUri(uri);

            btnAddPassenger.IsEnabled = true;
        }

        private async void BtnMap_OnClicked(object sender, EventArgs e)
        {
            await DisplayAlert("Hello", "You have clicked Map Button", "OK");
        }

        private void Loading_State(bool isLoading)
        {
            if(isLoading)
            {
                btnSaveData.IsEnabled = false;
                btnEnd.IsEnabled = false;
                btnAddPassenger.IsEnabled = false;
            }
            else
            {
                btnSaveData.IsEnabled = true;
                btnEnd.IsEnabled = true;
                btnAddPassenger.IsEnabled = true;
            }
        }

        private void Acknowledge_State()
        {
            lytPax.IsVisible = false;
            lytDateEntry.IsVisible = false;
            lytModifyDate.IsVisible = false;
            lytModifyReason.IsVisible = false;
            lytReason.IsVisible = false;

            lblDateTime.IsVisible = false;

            btnAcknowledge.IsVisible = true;
            btnBegin.IsVisible = false;
            btnEnd.IsVisible = false;
        }

        private void Scheduled_State()
        {
            lytPax.IsVisible = false;
            lytDateEntry.IsVisible = false;
            lytModifyDate.IsVisible = false;
            lytModifyReason.IsVisible = false;
            lytReason.IsVisible = false;

            lblDateTime.IsVisible = false;

            btnAcknowledge.IsVisible = false;
            btnBegin.IsVisible = true;
            btnEnd.IsVisible = false;
        }

        private void InProgress_State()
        {
            lytPax.IsVisible = true;
            if (lblAdminStandBy.Text == " - ")
            {
                //switchDate.IsEnabled = true;
                //switchReason.IsEnabled = true;

                lytModifyDate.IsVisible = true;
                lytModifyReason.IsVisible = true;
                lytDateEntry.IsVisible = false;
                lytReason.IsVisible = false;
            }
            else
            {
                lytModifyDate.IsVisible = false;
                lytModifyReason.IsVisible = false;
                lytDateEntry.IsVisible = false;
                lytReason.IsVisible = false;
            }

            lblDateTime.IsVisible = false;

            btnAcknowledge.IsVisible = false;
            btnBegin.IsVisible = false;
            btnEnd.IsVisible = true;
        }

        private void ModifyStandbyDate_State()
        {
            lytPax.IsVisible = true;
            lytModifyDate.IsVisible = true;
            lytModifyReason.IsVisible = true;
            lytDateEntry.IsVisible = true;
            lytReason.IsVisible = false;

            //switchDate.IsEnabled = true;
            //switchReason.IsEnabled = false;

            lblDateTime.IsVisible = true;
        }

        private void ModifyReason_State()
        {
            lytPax.IsVisible = true;
            lytModifyDate.IsVisible = true;
            lytModifyReason.IsVisible = true;
            lytDateEntry.IsVisible = false;
            lytReason.IsVisible = true;

            //switchDate.IsEnabled = false;
            //switchReason.IsEnabled = true;

            lblDateTime.IsVisible = false;
        }

        private void Completed_State()
        {
            lytPax.IsVisible = false;
            lytModifyDate.IsVisible = false;
            lytModifyReason.IsVisible = false;
            lytDateEntry.IsVisible = false;
            lytReason.IsVisible = false;

            lblDateTime.IsVisible = false;

            btnAcknowledge.IsVisible = false;
            btnAcknowledge.IsVisible = false;
            btnBegin.IsVisible = false;

            btnEnd.IsVisible = false;
            btnMap.IsVisible = false;
        }

        private void BtnStandByTime_Clicked(object sender, EventArgs e)
        {
            this.viewModel.ModifyReason = false;
            this.viewModel.ModifyStandByDate = true;

            this.pickerReason.SelectedItem = null;

            ModifyStandbyDate_State();

        }

        private void BtnReason_Clicked(object sender, EventArgs e) 
        {
            this.viewModel.ModifyReason = true;
            this.viewModel.ModifyStandByDate = false;            

            ModifyReason_State();
        }

        /// <summary>
        /// OBSOLETE - Aung Ye Kaung - 2019/02/06
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void ModifyDateSwitch_Toggled(object sender, ToggledEventArgs e)
        {
            if (viewModel.ModifyStandByDate)
            {
                ModifyStandbyDate_State();
            }
            else
            {
                InProgress_State();
            }
        }

        /// <summary>
        /// OBSOLETE - Aung Ye Kaung - 2019/02/06
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void ModifyReasonSwitch_Toggled(object sender, ToggledEventArgs e)
        {
            if (viewModel.ModifyReason)
            {
                ModifyReason_State();
            }
            else
            {
                InProgress_State();
            }
        }
    }
}