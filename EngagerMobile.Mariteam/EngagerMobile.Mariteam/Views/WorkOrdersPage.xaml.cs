using EngagerMobile.Mariteam.ApplicationCore.Entities.WorkOrders;
using EngagerMobile.Mariteam.ApplicationCore.Models;
using EngagerMobile.Mariteam.Common.Constants;
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
    public partial class WorkOrdersPage : ContentPage
    {
        WorkOrdersPageViewModel viewModel;
        WorkOrderService woService;
        public WorkOrderStatus woStatus;
        static bool IsPending;

        public WorkOrdersPage(string pageTitle, List<WorkOrder> workOrderLists, bool isPending)
        {
            InitializeComponent();

            StaticWorkOrderModel.ResetModel();           

            Title = pageTitle;
            woService = new WorkOrderService();
            IsPending = isPending;

            BindingContext = viewModel = new WorkOrdersPageViewModel(isPending);

            //if(workOrderLists.Count > 0)
            //{
            //    foreach(WorkOrder workOrder in workOrderLists)
            //    {
            //        viewModel.WorkOrders.Add(workOrder);
            //    }
            //}
            //else
            //{
            //    viewModel.LoadWorkOrdersCommand = new Command(async () => await viewModel.ExecuteLoadWorkOrdersCommand(isPending));
            //    viewModel.LoadWorkOrdersCommand.Execute(IsPending);
            //}

            woStatus = new WorkOrderStatus();
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            
            viewModel.LoadWorkOrdersCommand = new Command(async () => await viewModel.ExecuteLoadWorkOrdersCommand(IsPending));
            viewModel.LoadWorkOrdersCommand.Execute(IsPending);

            //if(!(viewModel.WorkOrders.Count > 0))
            //{
            //    viewModel.LoadWorkOrdersCommand = new Command(async () => await viewModel.ExecuteLoadWorkOrdersCommand(IsPending));
            //    viewModel.LoadWorkOrdersCommand.Execute(IsPending);
            //}

        }

        private async void RefreshIcon_OnClicked(object sender, EventArgs e)
        {
            if (CrossConnectivity.Current.IsConnected)
            {
                viewModel.LoadWorkOrdersCommand = new Command(async () => await viewModel.ExecuteLoadWorkOrdersCommand(IsPending));
                viewModel.LoadWorkOrdersCommand.Execute(IsPending);
            }
            else
            {
                await DisplayAlert("Connection Error", "Your device is currently not connected to the internet. Please connect and try again", "Okay");
            }
        }

        async void OnItemTapped(object sender, ItemTappedEventArgs args)
        {
            var workOrder = args.Item as WorkOrder;

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
            WorkOrdersListView.SelectedItem = null;
        }
    }
}