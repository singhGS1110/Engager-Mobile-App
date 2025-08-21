using EngagerMobile.Mariteam.ApplicationCore.Entities.WorkOrders;
using EngagerMobile.Mariteam.Common.Configs;
using EngagerMobile.Mariteam.Common.Constants;
using EngagerMobile.Mariteam.Services.Notifications;
using EngagerMobile.Mariteam.Services.WorkOrders;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace EngagerMobile.Mariteam.ViewModels
{
    public class MainPageViewModel : BaseViewModel
    {
        WorkOrderService woService;
        NotificationService notiService;

        public bool IsPending { get; set; } = true;

        public string CurrentUserName { get; set; } = "";

        string listMessage = "No Current Jobs.";
        public string ListMessage
        {
            get { return listMessage; }
            set { SetProperty(ref listMessage, value); }
        }

        int notificationCount = 0;
        public int NotificationCount
        {
            get { return notificationCount; }
            set { SetProperty(ref notificationCount, value); }
        }

        public Int64 PendingTaskCount { get; set; } = 0;
        public Int64 CompletedTaskCount { get; set; } = 0;


        public ObservableCollection<WorkOrder> CurrentTasks { get; set; }
        public ObservableCollection<WorkOrder> PendingTasks { get; set; }
        public ObservableCollection<WorkOrder> CompletedTasks { get; set; }

        public Command LoadWorkOrdersCommand { get; set; }

        public MainPageViewModel()
        {
            CurrentUserName = UserConfigs.Name;

            woService = new WorkOrderService();
            notiService = new NotificationService();

            CurrentTasks = new ObservableCollection<WorkOrder>();

            PendingTasks = new ObservableCollection<WorkOrder>();

            CompletedTasks = new ObservableCollection<WorkOrder>();

            LoadWorkOrdersCommand = new Command(async () => await ExecuteLoadWorkOrdersCommand());
        }

        async Task ExecuteLoadWorkOrdersCommand()
        {
            if (IsBusy)
                return;

            IsBusy = true;

            try
            {
                var count = await notiService.GetNotificationCount();

                this.NotificationCount = count;

                PendingTasks.Clear();
                CompletedTasks.Clear();

                var workOrders = await woService.Get(null);

                if (workOrders == null || workOrders.Count() == 0)
                {
                    HasNoListItem = true;
                }
                else
                {
                    HasNoListItem = false;

                    foreach (var workOrder in workOrders)
                    {
                        if (workOrder.ServiceJobStatusStr == ServiceJobStatusConstants.SeviceJobStatus.Submitted.ToString())
                        {
                            CompletedTasks.Add(workOrder);
                        }
                        else
                        {
                            PendingTasks.Add(workOrder);
                        }
                    }


                    CurrentTasks.Clear();

                    if (this.IsPending)
                    {
                        if (PendingTasks != null || PendingTasks.Count > 0)
                        {
                            foreach (var order in PendingTasks)
                            {
                                CurrentTasks.Add(order);
                            }
                        }
                    }
                    else
                    {
                        if (CompletedTasks != null || CompletedTasks.Count > 0)
                        {
                            foreach (var order in CompletedTasks)
                            {
                                CurrentTasks.Add(order);
                            }
                        }
                    }

                    if(CurrentTasks.Count == 0)
                    {
                        HasNoListItem = true;

                        if(this.IsPending)
                        {
                            this.ListMessage = "No Pending Jobs.";
                        }
                        else
                        {
                            this.ListMessage = "No Completed Jobs";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex);
            }
            finally
            {
                IsBusy = false;
            }
        }

    }
}
