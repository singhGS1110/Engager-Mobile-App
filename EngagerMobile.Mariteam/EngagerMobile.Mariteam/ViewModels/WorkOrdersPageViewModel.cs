using EngagerMobile.Mariteam.ApplicationCore.Entities.WorkOrders;
using EngagerMobile.Mariteam.Common.Constants;
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
    public class WorkOrdersPageViewModel : BaseViewModel
    {
        WorkOrderService woService;

        public ObservableCollection<WorkOrder> WorkOrders { get; set; }

        public Command LoadWorkOrdersCommand { get; set; }

        public WorkOrdersPageViewModel(bool isPending)
        {
            woService = new WorkOrderService();

            WorkOrders = new ObservableCollection<WorkOrder>();

            LoadWorkOrdersCommand = new Command(async () => await ExecuteLoadWorkOrdersCommand(isPending));
            /*
            MessagingCenter.Subscribe<NewItemPage, Item>(this, "AddItem", async (obj, item) =>
            {
                var _item = item as Item;
                Items.Add(_item);
                await DataStore.AddItemAsync(_item);
            });
            */
        }

        public async Task ExecuteLoadWorkOrdersCommand(bool isPending)
        {
            if (IsBusy)
                return;

            IsBusy = true;

            try
            {
                WorkOrders.Clear();
                var workOrders = await woService.Get(null);

                if(workOrders == null || workOrders.Count() == 0)
                {
                    HasNoListItem = true;                    
                }
                else
                {
                    foreach (var workOrder in workOrders)
                    {
                        if (!(isPending))
                        {
                            if (workOrder.ServiceJobStatusStr == ServiceJobStatusConstants.SeviceJobStatus.Submitted.ToString())
                            {
                                WorkOrders.Add(workOrder);
                            }
                        }
                        else
                        {
                            if (!(workOrder.ServiceJobStatusStr == ServiceJobStatusConstants.SeviceJobStatus.Submitted.ToString()))
                            {
                                WorkOrders.Add(workOrder);
                            }
                        }
                    }

                    if(WorkOrders == null || WorkOrders.Count == 0)
                    {
                        HasNoListItem = true;
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
