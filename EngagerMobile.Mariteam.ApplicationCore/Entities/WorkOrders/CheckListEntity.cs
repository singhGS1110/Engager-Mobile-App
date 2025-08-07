using System;
using System.Collections.Generic;
using System.Text;

namespace EngagerMobile.Mariteam.ApplicationCore.Entities.WorkOrders
{
    [Serializable]
    public class CheckListEntity
    {
        public Int64 Id { get; set; }

        public string Code { get; set; }

        public string Name { get; set; }

        public string ShortText10 { get; set; }
    }
}
