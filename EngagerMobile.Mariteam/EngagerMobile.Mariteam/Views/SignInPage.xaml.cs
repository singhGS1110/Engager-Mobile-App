using EngagerMobile.Mariteam.ApplicationCore.Cris;
using EngagerMobile.Mariteam.ApplicationCore.Models;
using EngagerMobile.Mariteam.Common.Constants;
using EngagerMobile.Mariteam.Services.Users;
using EngagerMobile.Mariteam.ViewModels;
using Plugin.Connectivity;
using System;
using System.Diagnostics;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace EngagerMobile.Mariteam.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class SignInPage : ContentPage
    {
        UserService userService;
        User currentUser;
        User existingUser;
        DeviceDetails devDetails;
        SignInPageViewModel viewModel;

        public SignInPage()
        {
            this.InitializeComponent();

            this.BindingContext = viewModel = new SignInPageViewModel();

            this.viewModel.IsBusy = false;

            userService = new UserService();
        }

        private async void LoginButton_OnClicked(object sender, EventArgs e)
        {
            this.viewModel.IsBusy = true;
            btnLogin.IsEnabled = false;

            if (CrossConnectivity.Current.IsConnected)
            {
                try
                {
                    DeviceDetails currentToken = await App.DeviceRepo.GetDeviceDetailsAsync(MiscConstants.devDetailId);

                    if (currentToken == null)
                    {
                        if (App.Token == "")
                        {
                            this.viewModel.IsBusy = false;
                            btnLogin.IsEnabled = true;

                            await DisplayAlert("Oops...", "For first time installation, please restart the app again.", "Okay");
                            return;
                        }

                        devDetails = new DeviceDetails()
                        {
                            Id = MiscConstants.devDetailId,
                            devToken = App.Token
                        };

                        await App.DeviceRepo.AddDeviceDetailsAsync(devDetails);

                    }
                    else
                    {
                        App.Token = currentToken.devToken;
                    }

                    currentUser = await userService.Exist(new UserCri { UserName = txtUserName.Text, Password = txtPassword.Text }, App.Token);

                    this.viewModel.IsBusy = false;
                    btnLogin.IsEnabled = true;

                    if (!(currentUser == null))
                    {
                        existingUser = await App.UserRepo.GetUserByIdAsync(currentUser.User_Id);

                        if (!(existingUser == null))
                        {
                            await App.UserRepo.UpdateUserAsync(currentUser);
                        }
                        else
                        {
                            await App.UserRepo.AddUserAsync(currentUser);
                        }

                        await Navigation.PushAsync(new MainPage());
                    }
                    else
                    {
                        await DisplayAlert("Invalid Login", "Login has Failed. Please try again", "Cancel");
                    }
                }
                catch (Exception ex)
                {
                    Debug.WriteLine(ex);
                }
                finally
                {
                    this.viewModel.IsBusy = false;
                }
            }
            else
            {
                this.viewModel.IsBusy = false;
                await DisplayAlert("Connection Error", "Your device is currently not connected to the internet. Please connect and try again", "Okay");
            }

        }

        private async void ConfigItem_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new ServerConfigPage());
        }

        protected override async void OnAppearing()
        {
            User user = await App.UserRepo.GetLoggedInUserAsync();

            if (!(user == null || user.isSignedIn == false))
            {
                await Navigation.PushAsync(new MainPage());
            }
        }
    }
}