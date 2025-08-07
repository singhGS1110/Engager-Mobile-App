using EngagerMobile.Mariteam.ApplicationCore.Entities.WorkOrders;
using EngagerMobile.Mariteam.ApplicationCore.Models;
using EngagerMobile.Mariteam.Common.Constants;
using EngagerMobile.Mariteam.Services.Notifications;
using EngagerMobile.Mariteam.Services.WorkOrders;
using EngagerMobile.Mariteam.ViewModels;
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
	public partial class NotificationsPage : ContentPage
	{
        NotificationsPageViewModel viewModel;
        NotificationService service;
        WorkOrderService woService;
        WorkOrderStatus woStatus;

        public NotificationsPage ()
		{
            this.BindingContext = viewModel = new NotificationsPageViewModel()
            {
                Title = "Your Notifications"
            };

            this.service = new NotificationService();
            this.woService = new WorkOrderService();

            InitializeComponent ();
		}

        protected override void OnAppearing()
        {
            base.OnAppearing();

            viewModel.LoadItemsCommand = new Command(async () => await viewModel.ExecuteLoadItemsCommand());
            viewModel.LoadItemsCommand.Execute(true);


            //if(!(viewModel.WorkOrders.Count > 0))
            //{
            //    viewModel.LoadWorkOrdersCommand = new Command(async () => await viewModel.ExecuteLoadWorkOrdersCommand(IsPending));
            //    viewModel.LoadWorkOrdersCommand.Execute(IsPending);
            //}

        }

        protected async void AcknowledgeButtonClicked(object sender, EventArgs e)
        {
            try
            {
                this.viewModel.IsBusy = true;

                var selectedNotification = viewModel.NotificationsList.First(item =>
                item.Id == int.Parse((sender as Button).CommandParameter.ToString()));

                var result = await service.AcknowledgeNotification(selectedNotification.Id);

                if(selectedNotification.ReferenceId != 0)
                {
                    WorkOrder workOrder = await woService.GetOrderByWOId(selectedNotification.ReferenceId);

                    if (workOrder == null || workOrder.WorkOrderId == 0)
                    {
                        this.viewModel.NotificationsList.Remove(selectedNotification);
                        return;
                    }

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
                }

                this.viewModel.NotificationsList.Remove(selectedNotification);
            }
            catch(Exception ex)
            {
                await DisplayAlert("Oops...", "Work Order cannot be found.", "Ok");
            }
            finally
            {
                this.viewModel.IsBusy = false;
            }            
        }
    }
}