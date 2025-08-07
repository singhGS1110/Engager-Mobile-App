using EngagerMobile.Mariteam.ApplicationCore.Entities.WorkOrders;
using EngagerMobile.Mariteam.Common.Configs;
using EngagerMobile.Mariteam.Common.Constants;
using EngagerMobile.Mariteam.Common.Utility;
using EngagerMobile.Mariteam.Interfaces;
using EngagerMobile.Mariteam.Services.WorkOrders;
using EngagerMobile.Mariteam.ViewModels;
using Plugin.Connectivity;
using SignaturePad.Forms;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace EngagerMobile.Mariteam.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class SignaturePage : ContentPage
    {
        SignatureViewModel viewModel;
        byte[] signatureFile;
        SignatureService sigService;

        public SignaturePage(WorkOrder _workOrder)
        {
            InitializeComponent();

            this.Title = "Signature";

            SignatureViewModel _viewModel = new SignatureViewModel(_workOrder);

            lblserviceJobId.Text = _workOrder.ServiceJobId.ToString();
            lblwoId.Text = _workOrder.WorkOrderId.ToString();
            sigService = new SignatureService();

            BindingContext = this.viewModel = _viewModel;

            this.viewModel.IsBusy = false;
        }

        protected async override void OnAppearing()
        {
            base.OnAppearing();

            if (CrossConnectivity.Current.IsConnected)
            {
                await viewModel.ExecuteLoadReferencesCommand();
            }
        }
        
        private async void BtnSaveSign_onClicked(object sender, EventArgs e)
        {
            try
            {
                btnSaveSign.IsEnabled = false;

                if (CrossConnectivity.Current.IsConnected)
                {
                    var confirm = await DisplayAlert("Confirm", "Would you like to submit the Signature?", "Yes", "No");

                    if (confirm)
                    {
                        this.viewModel.IsBusy = true;

                        var passenger = pickerCurrentPassenger.SelectedItem as WorkOrderPassenger;
                        if(passenger == null)
                        {
                            this.viewModel.IsBusy = false;

                            await DisplayAlert("Required", "Please choose a passenger", "Okay");
                            return;
                        }

                        Stream image = await padView.GetImageStreamAsync(SignatureImageFormat.Png);

                        if (image == null)
                        {
                            this.viewModel.IsBusy = false;

                            await DisplayAlert("Required", "Please insert a signature to send", "Okay");
                            return;
                        }

                        signatureFile = ImageManipulator.ConvertStreamToByteArray(image);

                        Signature sigEntity = new Signature()
                        {
                            serviceJobId = Convert.ToInt64(lblserviceJobId.Text),
                            signatureFile = this.signatureFile,
                            signatureName = txtInChargePassenger.Text,
                            PassengerId = passenger.Id
                        };

                        if (await sigService.SaveWithPassengerId(sigEntity))
                        {
                            var passengers = viewModel.Passengers.ToList();

                            var selectedPassenger = passengers.Where(x => x.Id == passenger.Id).FirstOrDefault();

                            if (selectedPassenger != null)
                            {
                                viewModel.Passengers.Remove(selectedPassenger);

                                padView.Clear();

                                DependencyService.Get<IMessage>().LongAlert("Signature Upload Successful!");
                            }
                        }
                        else
                        {
                            this.viewModel.IsBusy = false;
                            await DisplayAlert("Failed", "Something went wrong during the Submission process. Please Try again.", "Okay");
                            return;
                        }
                    }
                    
                }
                else
                {
                    await DisplayAlert("Connection Error", "Your device is currently not connected to the internet. Please connect and try again", "Okay");
                }

            }
            catch (Exception ex)
            {

            }
            finally
            {
                this.viewModel.IsBusy = false;
                btnSaveSign.IsEnabled = true;
            }
        }

        private void btnAddPassenger_Clicked(object sender, EventArgs e)
        {
            btnAddPassenger.IsEnabled = false;

            string url = UrlConstants.ADD_PASSENGER + "?workOrderId=" + lblwoId.Text.ToString() + "&serviceJobId=" + lblserviceJobId.Text.ToString() + "&ApiToken=" + ApiConstants.KEY + "&ParentCompanyId=" + UserConfigs.PARENTCOMPANY_ID.ToString();

            var uri = new Uri(string.Format(url, string.Empty));

            Device.OpenUri(uri);

            btnAddPassenger.IsEnabled = true;
        }

        private async void btnCompleteSign_Clicked(object sender, EventArgs e)
        {
            var passengers = viewModel.Passengers.ToList(); 
            
            if (passengers.Count() > 0)
            {
                await DisplayAlert("Required", "One or more signatures required to submit!", "Okay");
                this.viewModel.IsBusy = false;
                return;
            }
            else
            {
                var confirm = await DisplayAlert("Confirm", "Would you like to complete signature submission?", "Yes", "No");

                if(confirm)
                {
                    DependencyService.Get<IMessage>().LongAlert("Signature Upload Completed!");

                    //await DisplayAlert("Success", "The Signature of the Customer has been saved successfully.", "Okay");

                    await App.woStatusRepo.UpdateCustomerSignatureState(Convert.ToInt64(lblwoId.Text), Convert.ToInt64(lblserviceJobId.Text));

                    await Navigation.PopAsync();
                }
                else
                {
                    this.viewModel.IsBusy = false;
                    return;
                }
            }
        }
    }
}