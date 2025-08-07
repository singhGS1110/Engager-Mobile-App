using EngagerMobile.Mariteam.ApplicationCore.Models;
using EngagerMobile.Mariteam.Common.Configs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace EngagerMobile.Mariteam.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class LaunchScreenPage : ContentPage
	{
		public LaunchScreenPage ()
		{
			InitializeComponent ();
		}

        private async void StartButton_OnClicked(object sender, EventArgs e)
        {
            try
            {
                ServerDetails details = await App.ServerRepo.GetCurrentServerAsync();

                if (!(details == null))
                {
                    ServerConfigs.IP = details.IP;
                    ServerConfigs.Port = details.Port;
                    ServerConfigs.isHTTPS = details.isHTTPS;
                }

                User user = await App.UserRepo.GetLoggedInUserAsync();

                if (user == null || user.isSignedIn == false)
                {
                    await Navigation.PushAsync(new SignInPage());
                }
                else
                {
                    UserConfigs.USER_ID = user.User_Id;
                    UserConfigs.PARENTCOMPANY_ID = user.ParentCompany_Id;
                    UserConfigs.Name = user.Name;

                    await Navigation.PushAsync(new MainPage());
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Oops...", "Something went wrong. Message : " + ex.Message, "OK");
            }
        }
    }
}