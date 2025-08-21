using System;
using System.Collections.Generic;
using System.Text;

namespace EngagerMobile.Mariteam.ApplicationCore.Entities.WorkOrders
{
    [Serializable]
    public class WorkOrder
    {
        public Int64 WorkOrderId { get; set; }

        public Int64 ServiceJobId { get; set; }

        public string WorkOrderNo { get; set; }

        public string Description { get; set; } = "N.A.";

        public DateTime? PickupDate { get; set; }

        public string PickupDateStr { get; set; }

        public string PickupTime { get; set; }

        public DateTime? StandByDate { get; set; }

        public string StandByDateStr { get; set; } = "N.A.";

        public string StandByTime { get; set; }

        public Int64? DriverId { get; set; }

        public string DriverName { get; set; }

        public string VehicleNo { get; set; }

        public DateTime? StartExecutionTime { get; set; }

        public DateTime? EndExecutionTime { get; set; }

        public string EndExecutionTimeStr { get; set; }

        public Int64? AgentId { get; set; }

        public string AgentName { get; set; }

        public string CompanyName { get; set; }

        public Int64? VesselId { get; set; }

        public string VesselName { get; set; }

        public string PickupPoint { get; set; }

        public string PickupPointDesc { get; set; } = "N.A.";

        public string DropOffPoint { get; set; }

        public string DropOffPointDesc { get; set; } = "N.A.";

        public string AdditionalStops { get; set; }

        public string FlightNo { get; set; } = "N.A.";

        public string BoardTypeStr { get; set; } = "N.A.";

        public Int64? BoardTypeId { get; set; }

        public string InChargePassenger { get; set; }

        public Int64? RankId { get; set; }

        public string RankStr { get; set; } = "N.A.";

        public Int32? NoOfPax { get; set; }

        public Int32? PickupPax { get; set; }

        public string MS { get; set; }

        public decimal? ParkFee { get; set; }

        public decimal? ERP { get; set; }

        public decimal? Trip { get; set; }

        public string Remark { get; set; } = "N.A.";

        public string StatusStr { get; set; }

        public string ServiceJobStatusStr { get; set; }

        //PCR2022
        public List<WorkOrderPassenger> WorkOrderPassengerList { get; set; }

        //PCR2022
        public bool TFRequireAllPassSignatures { get; set; }

        //PCR2021
        public string ChecklistIds { get; set; }

        //PCR2021
        public string TripFees { get; set; }

        public bool IncludeMeetingServiceFee { get; set; }
    }
}
