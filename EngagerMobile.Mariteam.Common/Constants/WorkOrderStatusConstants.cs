using System;
using System.Collections.Generic;
using System.Text;

namespace EngagerMobile.Mariteam.Common.Constants
{
    public class WorkOrderStatusConstants
    {
        public enum OrderStatus
        {
            All = 0,
            Draft = 1,
            Ordered = 10,
            Pending = 20,
            Assigned = 30,
            Scheduled = 40,
            In_Progress = 50,
            Submitted = 70,
            Verified = 80,
            With_Accounts = 90,
            Billed = 100
        }
    }
}

