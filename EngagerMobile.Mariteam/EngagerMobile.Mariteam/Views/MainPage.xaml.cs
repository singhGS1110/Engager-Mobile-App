using EngagerMobile.Mariteam.ApplicationCore.Entities.WorkOrders;
using EngagerMobile.Mariteam.ApplicationCore.Models;
using EngagerMobile.Mariteam.Common.Constants;
using EngagerMobile.Mariteam.Services.Users;
using EngagerMobile.Mariteam.Services.WorkOrders;
using EngagerMobile.Mariteam.ViewModels;
using Plugin.Connectivity;
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
	public partial class MainPage : ContentPage
	{
        MainPageViewModel viewModel;
        WorkOrderService woService;
        UserService userService;
        WorkOrderStatus woStatus;

        public MainPage ()
		{
			InitializeComponent ();

            woService = new WorkOrderService();
            userService = new UserService();

            BindingContext = viewModel = new MainPageViewModel()
            {
                Title = "Home"
            };

            woStatus = new WorkOrderStatus();
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();

            viewModel.LoadWorkOrdersCommand.Execute(null);

            lstPending.HeightRequest = 30 * viewModel.PendingTasks.Count;
            //lstCompleted.HeightRequest = 30 * viewModel.CompletedTasks.Count;
        }

        private async void LblPending_OnTapped(object sender, EventArgs e)
        {
            if (CrossConnectivity.Current.IsConnected)
            {
                this.viewModel.IsPending = true;

                viewModel.LoadWorkOrdersCommand.Execute(null);
            }
            else
            {
                await DisplayAlert("Connection Error", "Your device is currently not connected to the internet. Please connect and try again", "Okay");
            }

            //await Navigation.PushAsync(new WorkOrdersPage("Pending Tasks", viewModel.PendingTasks.ToList(), true));
        }

        private async void LblCompleted_OnTapped(object sender, EventArgs e)
        {
            if (CrossConnectivity.Current.IsConnected)
            {
                this.viewModel.IsPending = false;

                viewModel.LoadWorkOrdersCommand.Execute(null);
            }
            else
            {
                await DisplayAlert("Connection Error", "Your device is currently not connected to the internet. Please connect and try again", "Okay");
            }
            //await Navigation.PushAsync(new WorkOrdersPage("Completed Tasks", viewModel.CompletedTasks.ToList(), false));
        }

        private async void RefreshItem_Clicked(object sender, EventArgs e)
        {
            if (CrossConnectivity.Current.IsConnected)
            {
                viewModel.CurrentTasks.Clear();
                viewModel.LoadWorkOrdersCommand.Execute(null);
            }
            else
            {
                await DisplayAlert("Connection Error", "Your device is currently not connected to the internet. Please connect and try again", "Okay");
            }
        }

        private async void SettingItem_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new SettingsPage());
        }

        private async void NotificationsItem_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new NotificationsPage());
        }

        private async void lstPending_ItemTapped(object sender, ItemTappedEventArgs e)
        {
            var workOrder = e.Item as WorkOrder;

            if (workOrder == null)
                return;

            StaticWorkOrderModel.ResetModel();

            StaticWorkOrderModel.WorkOrder = workOrder;


            woStatus = await App.woStatusRepo.GetWorkOrderStatusByIdAsync(workOrder.WorkOrderId, workOrder.ServiceJobId);

            if (woStatus == null)
            {
                woStatus = new WorkOrderStatus() { WorkOrderId = workOrder.WorkOrderId, serviceJobId = workOrder.ServiceJobId, isSignedByCustomer = false };
                await App.woStatusRepo.AddWorkOrderStatusAsync(woStatus);
            }

            woStatus.WorkOrderStatusStr = workOrder.StatusStr;
            woStatus.ServiceJobStatusStr = workOrder.ServiceJobStatusStr;

            await App.woStatusRepo.UpdateWorkOrderStatusAsync(woStatus);

            if (woStatus.ServiceJobStatusStr == ServiceJobStatusConstants.SeviceJobStatus.Pending_Sign.ToString())
            {
                await Navigation.PushAsync(new PendingSignPage(new PendingSignViewModel(workOrder), woStatus));
            }
            else
            {
                await Navigation.PushAsync(new WorkOrderDetailsPage(new WorkOrderDetailsPageViewModel(workOrder), woStatus));
            }

            // Manually deselect item.
            //lstPending.SelectedItem = null;
        }
    }
}