using EngagerMobile.Mariteam.ApplicationCore.Entities.WorkOrders;
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
    public class SignatureViewModel : BaseViewModel
    {
        public WorkOrderService woService;

        public string PickupDateAndTime { get; set; }

        public WorkOrder WorkOrder { get; set; }

        public Int64 serviceJobId { get; set; }

        public Command LoadReferencesCommand { get; set; }

        public ObservableCollection<WorkOrderPassenger> Passengers { get; set; }

        public SignatureViewModel(WorkOrder workOrder)
        {
            this.woService = new WorkOrderService();

            this.WorkOrder = workOrder;
            this.serviceJobId = workOrder.ServiceJobId;

            this.PickupDateAndTime = $"{this.WorkOrder.PickupDateStr} - {this.WorkOrder.PickupTime}";

            Passengers = new ObservableCollection<WorkOrderPassenger>();

            foreach (var passenger in WorkOrder.WorkOrderPassengerList)
            {
                Passengers.Add(passenger);
            }

            //this.serviceJobId = workOrder == null ? StaticWorkOrderModel.WorkOrder.ServiceJobId : workOrder.ServiceJobId;

            //this.serviceJobId = workOrder.ServiceJobId;
        }

        public async Task ExecuteLoadReferencesCommand()
        {
            if (IsBusy)
                return;

            IsBusy = true;

            try
            {
                WorkOrder = await woService.GetOrderBySJId(this.serviceJobId);

                if(WorkOrder != null)
                {
                    this.PickupDateAndTime = $"{this.WorkOrder.PickupDateStr} - {this.WorkOrder.PickupTime}";

                    Passengers.Clear();

                    foreach (var passenger in WorkOrder.WorkOrderPassengerList)
                    {
                        var existingPassenger = Passengers.Where(x => x.Id == passenger.Id).FirstOrDefault();

                        if(existingPassenger == null)
                        {
                            Passengers.Add(passenger);
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

        private void FillEmptyFields()
        {
            if (String.IsNullOrEmpty(WorkOrder.Description))
            {
                WorkOrder.Description = "-";
            }
            if (String.IsNullOrEmpty(WorkOrder.AdditionalStops))
            {
                WorkOrder.AdditionalStops = "No Additional Stops";
            }
            if (String.IsNullOrEmpty(WorkOrder.Description))
            {
                WorkOrder.DropOffPointDesc = "-";
            }
            if (String.IsNullOrEmpty(WorkOrder.DropOffPointDesc))
            {
                WorkOrder.DropOffPointDesc = "-";
            }
            if (String.IsNullOrEmpty(WorkOrder.FlightNo))
            {
                WorkOrder.FlightNo = "-";
            }
            if (String.IsNullOrEmpty(WorkOrder.PickupPointDesc))
            {
                WorkOrder.PickupPointDesc = "-";
            }
            if (String.IsNullOrEmpty(WorkOrder.RankStr))
            {
                WorkOrder.RankStr = "-";
            }
            if (String.IsNullOrEmpty(WorkOrder.Remark))
            {
                WorkOrder.Remark = "-";
            }
            if (String.IsNullOrEmpty(WorkOrder.VesselName))
            {
                WorkOrder.VesselName = "-";
            }
        }
    }
}
