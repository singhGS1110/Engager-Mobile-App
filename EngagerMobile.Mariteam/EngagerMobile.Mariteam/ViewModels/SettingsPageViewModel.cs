using EngagerMobile.Mariteam.Common.Configs;
using System;
using System.Collections.Generic;
using System.Text;

namespace EngagerMobile.Mariteam.ViewModels
{
    public class SettingsPageViewModel : BaseViewModel
    {
        public string CurrentUserName { get; set; }

        public string AppVersion { get; set; }

        public string ReleaseDate { get; set; }

        public SettingsPageViewModel()
        {
            CurrentUserName = UserConfigs.Name;
            AppVersion = AppConfigs.APP_VERSION;
            ReleaseDate = AppConfigs.RELEASE_DATE;
        }
    }
}
