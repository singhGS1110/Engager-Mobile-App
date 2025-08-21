using System;
using System.Collections.Generic;
using System.Text;

namespace EngagerMobile.Mariteam.ApplicationCore.Entities.WorkOrders
{
    public class CompletedPendingSignEntity
    {
        public string checklistIds { get; set; } = "";
        public string additionalStops { get; set; } = "";
        public string disposals { get; set; } = "";
        public string waitingTime { get; set; } = "";
        public string meetingServiceIds { get; set; } = "";
        public string customDetentionId { get; set; } = "";
        public string remark { get; set; } = "";
        public string pickupPax { get; set; } = "";
        public string serviceJobId { get; set; } = "";
        public decimal tripFees { get; set; } = 0;
        public bool isMSIncluded { get; set; } = false;
        
    }
}
