using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace EngagerMobile.Mariteam.ApplicationCore.Models
{
    [Table("ServerDetails")]
    public class ServerDetails
    {
        [PrimaryKey]
        public string IP { get; set; }

        [MaxLength(50)]
        public string Port { get; set; }

        [MaxLength(50)]
        public bool isHTTPS { get; set; }

        public bool inUse { get; set; }
    }
}
