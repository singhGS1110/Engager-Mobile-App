using System;
using System.Collections.Generic;
using System.Text;

namespace EngagerMobile.Mariteam.ApplicationCore.Entities.General
{
    public class ApiResult
    {
        public Int64 Id
        {
            get;
            set;
        }

        public string Value
        {
            get;
            set;
        }

        public Int64 UserId
        {
            get;
            set;
        }

        public Int64 ParentCompanyId
        {
            get;
            set;
        }

        public string CurrentUserName
        {
            get;
            set;
        }
    }
}
