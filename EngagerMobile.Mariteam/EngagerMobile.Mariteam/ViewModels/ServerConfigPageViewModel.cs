using EngagerMobile.Mariteam.Common.Configs;
using System;
using System.Collections.Generic;
using System.Text;

namespace EngagerMobile.Mariteam.ViewModels
{
    public class ServerConfigPageViewModel : BaseViewModel
    {
        public string IP { get; set; }
        public string Port { get; set; }

        public ServerConfigPageViewModel()
        {
            IP = ServerConfigs.IP;
            Port = ServerConfigs.Port;
        }
    }
}
