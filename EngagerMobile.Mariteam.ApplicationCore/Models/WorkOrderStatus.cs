using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace EngagerMobile.Mariteam.ApplicationCore.Models
{
    [Table("WorkOrderStatus")]
    public class WorkOrderStatus
    {
        [PrimaryKey]
        public Int64 WorkOrderId { get; set; }

        public Int64 serviceJobId { get; set; }

        [MaxLength(50)]
        public string WorkOrderStatusStr { get; set; }

        [MaxLength(50)]
        public string ServiceJobStatusStr { get; set; }

        public string PassengerInChargeName { get; set; } = "";

        public Int64 PassengerRankId { get; set; } = 0;

        public string PassengerRankName { get; set; } = "";

        public string PickUpPax { get; set; } = "";

        public bool isSignedByCustomer { get; set; }

    }
}
