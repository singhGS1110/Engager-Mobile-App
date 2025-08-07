using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace EngagerMobile.Mariteam.ApplicationCore.Models
{
    [Table("DeviceDetails")]
    public class DeviceDetails
    {
        [PrimaryKey]
        public Int64 Id { get; set; }

        public string devToken { get; set; }
    }
}
