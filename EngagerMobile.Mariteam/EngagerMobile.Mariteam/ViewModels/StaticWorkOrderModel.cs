using EngagerMobile.Mariteam.ApplicationCore.Entities.WorkOrders;
using System;
using System.Collections.Generic;
using System.Text;

namespace EngagerMobile.Mariteam.ViewModels
{
    public static class StaticWorkOrderModel
    {
        public static WorkOrder WorkOrder = null;

        public static PendingSignViewModel PendingSign = null;

        public static List<WorkOrder> PendingOrdersList = new List<WorkOrder>();

        public static List<WorkOrder> CompletedOrdersList = new List<WorkOrder>();

        public static void ResetLists()
        {
            PendingOrdersList.Clear();
            CompletedOrdersList.Clear();
        }

        public static void ResetModel()
        {
            WorkOrder = null;
            PendingSign = null;
        }
        
    }
}
