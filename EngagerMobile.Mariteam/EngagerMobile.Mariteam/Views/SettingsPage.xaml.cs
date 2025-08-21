using EngagerMobile.Mariteam.ApplicationCore.Models;
using EngagerMobile.Mariteam.Services.Users;
using EngagerMobile.Mariteam.ViewModels;
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
	public partial class SettingsPage : ContentPage
	{
        SettingsPageViewModel viewModel;
        UserService userService;
        User currentUser;

        public SettingsPage ()
		{
			InitializeComponent ();

            userService = new UserService();

            BindingContext = this.viewModel = new SettingsPageViewModel();
		}

        private async void SignOutButton_Clicked(object sender, EventArgs e)
        {
            //For Clearing the Navigation Stack
            //var existingPages = Navigation.NavigationStack.ToList();
            //foreach (var page in existingPages)
            //{
            //    Navigation.RemovePage(page);
            //}

            currentUser = await App.UserRepo.GetLoggedInUserAsync();

            if (await userService.LogOut(currentUser.UserName))
            {
                currentUser.isSignedIn = false;

                await App.UserRepo.UpdateUserAsync(currentUser);

                await DisplayAlert("Success", "You have successfully signed out of the Application.", "Okay");

                await Navigation.PopToRootAsync();
            }
            else
            {
                await DisplayAlert("Error", "An error has been encountered while logging out.", "Okay");
            }
        }
    }
}