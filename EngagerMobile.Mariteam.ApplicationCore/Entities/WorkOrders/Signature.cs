using System;
using System.Collections.Generic;
using System.Text;

namespace EngagerMobile.Mariteam.ApplicationCore.Entities.WorkOrders
{
    [Serializable]
    public class Signature
    {
        public Int64 serviceJobId { get; set; }

        public Int64 PassengerId { get; set; }

        public byte[] signatureFile { get; set; }

        public string signatureName { get; set; }
    }
}
