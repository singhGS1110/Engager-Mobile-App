using System;
using System.Collections.Generic;
using System.Text;

namespace EngagerMobile.Mariteam.ApplicationCore.Entities.WorkOrders
{
    [Serializable]
    public class PendingSignEntity
    {
        public Int64 Id { get; set; }

        public string Code { get; set; }

        public string Name { get; set; }

        public string ShortText10 { get; set; }

        public bool Selected { get; set; } = false;

        public string ShortText9 { get; set; } //Amount
    }
}
