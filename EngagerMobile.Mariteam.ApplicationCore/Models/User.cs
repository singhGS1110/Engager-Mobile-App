using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace EngagerMobile.Mariteam.ApplicationCore.Models
{
    [Table("User")]
    public class User
    {
        [PrimaryKey]
        public Int64 User_Id { get; set; }

        [MaxLength(50)]
        public string UserName { get; set; }

        [MaxLength(50)]
        public string Password { get; set; }

        [MaxLength(50)]
        public string Name { get; set; }

        public Int64 ParentCompany_Id { get; set; }

        public bool isSignedIn { get; set; } = false;
    }
}
