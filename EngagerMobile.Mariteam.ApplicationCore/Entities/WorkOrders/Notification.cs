using System;
using System.Collections.Generic;
using System.Text;

namespace EngagerMobile.Mariteam.ApplicationCore.Entities.WorkOrders
{
    [Serializable]
    public class Notification
    {
        public Int64 Id
        {
            get;
            set;
        }

        public string Description
        {
            get;
            set;
        }

        //public bool Acknowledge
        //{
        //    get;
        //    set;
        //}

        public Int64 ReferenceId
        {
            get;
            set;
        }


        public string DetailedDescription
        {
            get; set;
        }


        //public Int64 NotifiedUserId
        //{
        //    get;
        //    set;
        //}
        

        //public string NotifiedUserName
        //{
        //    get;
        //    set;
        //}

        //public NotificationType Type
        //{
        //    get;
        //    set;
        //}

        //public enum NotificationType
        //{
        //    WorkOrder,
        //    WorkOrderByAgent,
        //    DriverSubmission,
        //    WorkOrderUpdated
        //}
        
        //public DateTime Created
        //{
        //    get;
        //    set;
        //}
    }
}
