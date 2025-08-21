namespace EngagerMobile.Mariteam.Common.Configs
{
    public class ServerConfigs
    {
        //UAT
        public static string IP = "aims-lms-loadtest.azurewebsites.net";
        public static bool isHTTPS = true;

        //public static string Port = "45455";
        public static string Port = "45455";

        public static string HTTP = "http://";
        public static string HTTPs = "https://";

        public static string getFullUrl(bool isHTTPs)
        {
            return isHTTPS ? $"{HTTPs}{IP}" : $"{HTTP}{IP}";
            //return isHTTPS ? $"{HTTPs}{IP}:{Port}" : $"{HTTP}{IP}:{Port}";
        }
    }
}
