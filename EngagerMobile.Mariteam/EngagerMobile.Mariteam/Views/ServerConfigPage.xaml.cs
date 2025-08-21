using EngagerMobile.Mariteam.ApplicationCore.Models;
using EngagerMobile.Mariteam.Common.Configs;
using EngagerMobile.Mariteam.ViewModels;
using Plugin.Connectivity;
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
	public partial class ServerConfigPage : ContentPage
	{
        ServerDetails newDetails;
        ServerDetails existingDetails;
        ServerConfigPageViewModel viewModel;

        public ServerConfigPage ()
		{
			InitializeComponent ();

            BindingContext = viewModel = new ServerConfigPageViewModel()
            {
                Title = "Server Configuration"
            };
        }

        private async void BtnSave_onClicked(object sender, EventArgs e)
        {
            if (txtIP.Text == "" || txtPort.Text == "")
            {
                await DisplayAlert("Insufficient Info", "Please fill in all the fields for successful configuration.", "Okay");
            }
            else
            {
                if (CrossConnectivity.Current.IsConnected)
                {
                    newDetails = new ServerDetails()
                    {
                        IP = txtIP.Text,
                        Port = txtPort.Text,
                        isHTTPS = pickHTTP.SelectedItem.ToString() == "HTTP" ? false : true,
                        inUse = true
                    };

                    this.IsBusy = true;

                    try
                    {
                        existingDetails = await App.ServerRepo.GetServerDetailsByIPAsync(newDetails.IP);

                        if (!(existingDetails == null))
                        {
                            await App.ServerRepo.UpdateServerDetailsAsync(newDetails);
                        }
                        else
                        {
                            await App.ServerRepo.AddServerDetailsAsync(newDetails);
                        }

                        ServerConfigs.IP = newDetails.IP;
                        ServerConfigs.Port = newDetails.Port;
                        ServerConfigs.isHTTPS = newDetails.isHTTPS;


                        await DisplayAlert("Success", "You have successfully changed the Server details.", "Okay");

                        await Navigation.PopAsync();
                    }
                    catch (Exception ex)
                    {

                    }
                    finally
                    {
                        this.IsBusy = false;
                    }
                }
                else
                {
                    await DisplayAlert("Connection Error", "Your device is currently not connected to the internet. Please connect and try again", "Okay");
                }
            }
        }
    }
}