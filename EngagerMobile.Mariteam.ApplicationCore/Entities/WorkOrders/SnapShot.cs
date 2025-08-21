using System;
using System.Collections.Generic;
using System.Text;

namespace EngagerMobile.Mariteam.ApplicationCore.Entities.WorkOrders
{
    [Serializable]
    public class SnapShot
    {
        public Int64 serviceJobId { get; set; }

        public byte[] snapShotFile { get; set; }

        public string filename { get; set; }

        public string description { get; set; }
    }
}
