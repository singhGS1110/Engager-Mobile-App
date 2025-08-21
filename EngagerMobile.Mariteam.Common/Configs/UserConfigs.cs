using System;
using System.Collections.Generic;
using System.Text;

namespace EngagerMobile.Mariteam.Common.Configs
{
    public class UserConfigs
    {
        public static Int64 USER_ID = 0;
        public static string Name = "N.A.";
        public static Int64 PARENTCOMPANY_ID = 1;

        public static void ResetUserConfigs()
        {
            USER_ID = 0;
            Name = "N.A.";
            PARENTCOMPANY_ID = 1;
        }
    }
}
