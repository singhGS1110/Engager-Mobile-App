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
    public class WorkOrderDetailsPageViewModel : BaseViewModel
    {
        WorkOrderService woService;

        public WorkOrder WorkOrder { get; set; }

        public string PickupDateAndTime { get; set; }

        public string StandByDateAndTime { get; set; }

        public string PickUpPaxStr { get; set; }

        public string PassengerInformation { get; set; }

        public string PickupPointStr { get; set; }

        public string DropOffPointStr { get; set; }

        public bool ModifyStandByDate { get; set; } = false;

        public bool ModifyReason { get; set; } = false;

        public Button btnEndTask { get; set; }

        public Button btnSaveData { get; set; }

        public Button btnAddPassenger { get; set; }

        public RankEntity PassengerRank { get; set; }

        public Command LoadReferencesCommand { get; set; }

        public ObservableCollection<RankEntity> Ranks { get; set; }

        public WorkOrderDetailsPageViewModel(WorkOrder workOrder = null)
        {
            WorkOrder = workOrder;
            woService = new WorkOrderService();
            Ranks = new ObservableCollection<RankEntity>();

            FillEmptyFields();

            this.PickUpPaxStr = "0" + workOrder.NoOfPax.ToString();
            this.PickupDateAndTime = $"{workOrder.PickupTime}";
            this.StandByDateAndTime = $"{workOrder.StandByDateStr} - {workOrder.StandByTime}";
            this.PassengerInformation = $"{workOrder.InChargePassenger}     -     {workOrder.RankStr}     -    {workOrder.NoOfPax.ToString()} pax.";
            this.PickupPointStr = $"{workOrder.PickupPoint}   ~   {workOrder.PickupPointDesc}";
            this.DropOffPointStr = $"{workOrder.DropOffPoint}   ~   {workOrder.DropOffPointDesc}";
            LoadReferencesCommand = new Command(async () => await ExecuteLoadReferencesCommand());
        }

        public async Task ExecuteLoadReferencesCommand()
        {
            btnEndTask.IsEnabled = false;
            btnSaveData.IsEnabled = false;
            btnAddPassenger.IsEnabled = false;

            
            if (IsBusy)
                return;

            IsBusy = true;

            try
            {
                if(Ranks!= null) Ranks.Clear();

                var ranks = await woService.GetRanks();

                if(ranks != null)
                {
                    foreach (var rank in ranks)
                    {
                        Ranks.Add(rank);
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
                btnSaveData.IsEnabled = true;
                btnEndTask.IsEnabled = true;
                btnAddPassenger.IsEnabled = true;
               
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
            if (String.IsNullOrEmpty(WorkOrder.AgentName))
            {
                WorkOrder.AgentName = "-";
            }
            if (String.IsNullOrEmpty(WorkOrder.DropOffPointDesc))
            {
                WorkOrder.DropOffPointDesc = "No Description";
            }
            if (String.IsNullOrEmpty(WorkOrder.FlightNo))
            {
                WorkOrder.FlightNo = "-";
            }
            if(String.IsNullOrEmpty(WorkOrder.BoardTypeStr))
            {
                WorkOrder.BoardTypeStr = "-";
            }
            if (String.IsNullOrEmpty(WorkOrder.PickupPointDesc))
            {
                WorkOrder.PickupPointDesc = "No Description";
            }
            if (String.IsNullOrEmpty(WorkOrder.RankStr))
            {
                WorkOrder.RankStr = "N.A.";
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
