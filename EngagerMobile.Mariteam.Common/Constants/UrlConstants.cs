using EngagerMobile.Mariteam.Common.Configs;
using System;
using System.Collections.Generic;
using System.Text;

namespace EngagerMobile.Mariteam.Common.Constants
{
    public class UrlConstants
    {
        public static string LOGIN = ServerConfigs.getFullUrl(ServerConfigs.isHTTPS) + "/AccountApi/Login";

        public static string LOGOUT = ServerConfigs.getFullUrl(ServerConfigs.isHTTPS) + "/AccountApi/Logout";

        public static string GET_WORKORDER_BY_SJID = ServerConfigs.getFullUrl(ServerConfigs.isHTTPS) + "/WorkOrderApi/GetOrderByServiceJobId";

        public static string GET_WORKORDER_BY_WOID = ServerConfigs.getFullUrl(ServerConfigs.isHTTPS) + "/WorkOrderApi/GetOrderByWorkOrderId";

        public static string GET_WORKORDERS = ServerConfigs.getFullUrl(ServerConfigs.isHTTPS) + "/WorkOrderApi/GetOrders";

        public static string ACKNOWLEDGE_WORKORDER = ServerConfigs.getFullUrl(ServerConfigs.isHTTPS) + "/WorkOrderApi/AcknowledgeByDriver";

        public static string BEGIN_TASK = ServerConfigs.getFullUrl(ServerConfigs.isHTTPS) + "/WorkOrderApi/BeginTask";

        public static string ADD_PASSENGER = ServerConfigs.getFullUrl(ServerConfigs.isHTTPS) + "/WorkOrderApi/AddPassengers";

        public static string END_TASK = ServerConfigs.getFullUrl(ServerConfigs.isHTTPS) + "/WorkOrderApi/EndTask";

        public static string GET_RANKS = ServerConfigs.getFullUrl(ServerConfigs.isHTTPS) + "/WorkOrderApi/GetRanks";

        public static string GET_PENDINGSIGNMODELS = ServerConfigs.getFullUrl(ServerConfigs.isHTTPS) + "/PendingSignOff/GetReferences";

        public static string SUBMIT_PENDINGSIGNMODEL = ServerConfigs.getFullUrl(ServerConfigs.isHTTPS) + "/WorkOrderApi/SubmitTask";

        public static string SUBMIT_SIGNATURE = ServerConfigs.getFullUrl(ServerConfigs.isHTTPS) + "/GetSignatureApi";

        public static string SUBMIT_SIGNATURE_WITH_PASSENGER = ServerConfigs.getFullUrl(ServerConfigs.isHTTPS) + "/GetSignatureApi/SaveWithPassengerId";

        //public static string SUBMIT_SIGNATURE = ServerConfigs.getFullUrl(ServerConfigs.isHTTPS) + "/GetSignatureApi";

        public static string UPLOAD_SNAPSHOT = ServerConfigs.getFullUrl(ServerConfigs.isHTTPS) + "/GetSnapShotApi";

        public static string GET_NOTIFICATIONS = ServerConfigs.getFullUrl(ServerConfigs.isHTTPS) + "/NotificationApi/GetNotificationList";

        public static string GET_NOTIFICATION_COUNT = ServerConfigs.getFullUrl(ServerConfigs.isHTTPS) + "/NotificationApi/GetNotificationCount";

        public static string ACKNOWLEDGE_NOTIFICATIONS = ServerConfigs.getFullUrl(ServerConfigs.isHTTPS) + "/NotificationApi/AcknowledgeNotification";

        public static Uri GetUri(string aUrl)
        {
            return new Uri(string.Format(aUrl, string.Empty));
        }
    }
}
