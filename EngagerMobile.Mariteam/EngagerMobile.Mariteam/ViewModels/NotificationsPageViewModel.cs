using EngagerMobile.Mariteam.ApplicationCore.Entities.WorkOrders;
using EngagerMobile.Mariteam.Common.Configs;
using EngagerMobile.Mariteam.Services.Notifications;
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
    public class NotificationsPageViewModel : BaseViewModel
    {
        NotificationService service;

        string listMessage = "No Notifications to acknowledge.";
        public string ListMessage
        {
            get { return listMessage; }
            set { SetProperty(ref listMessage, value); }
        }

        public ObservableCollection<Notification> NotificationsList { get; set; }

        public Command LoadItemsCommand { get; set; }

        public NotificationsPageViewModel()
        {
            service = new NotificationService();

            NotificationsList = new ObservableCollection<Notification>();

            LoadItemsCommand = new Command(async () => await ExecuteLoadItemsCommand());
        }

        public async Task ExecuteLoadItemsCommand()
        {
            if (IsBusy)
                return;

            IsBusy = true;

            try
            {
                NotificationsList.Clear();
                var notifications = await service.GetNotifications(UserConfigs.USER_ID);

                if (notifications == null || notifications.Count() == 0)
                {
                    HasNoListItem = true;
                }
                else
                {
                    foreach (var notification in notifications)
                    {
                        NotificationsList.Add(notification);
                    }

                    if (NotificationsList == null || NotificationsList.Count == 0)
                    {
                        HasNoListItem = true;
                    }
                    else
                    {
                        HasNoListItem = false;
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
