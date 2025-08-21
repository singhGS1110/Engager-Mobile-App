using EngagerMobile.Mariteam.ApplicationCore.Entities.WorkOrders;
using EngagerMobile.Mariteam.Common.Utility;
using EngagerMobile.Mariteam.Services.WorkOrders;
using EngagerMobile.Mariteam.ViewModels;
using Plugin.Connectivity;
using Plugin.Media;
using Plugin.Media.Abstractions;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace EngagerMobile.Mariteam.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class SnapShotPage : ContentPage
	{
        static Plugin.Media.Abstractions.MediaFile file;
        static string photoDesc;

        SnapShotService service;
        SnapShotPageViewModel viewModel;

        byte[] snapShotPhoto;

		public SnapShotPage (Int64 serviceJobId, MediaFile mediaFile)
		{
			InitializeComponent ();

            BindingContext = viewModel = new SnapShotPageViewModel();

            this.viewModel.IsBusy = false;

            service = new SnapShotService();
            lblServerJobId.Text = serviceJobId.ToString();

            file = mediaFile;

            if(file != null)
            {
                imgSnapShot.Source = ImageSource.FromStream(() =>
                {
                    var stream = file.GetStream();

                    return stream;
                });
            }
		}

        private async void BtnSnapShot_OnClicked(object sender, EventArgs e)
        {
            //btnSnapShot.IsEnabled = true;

            photoDesc = txtSnapShotDes.Text == null ? DateTime.Now.ToLongDateString() + "" : DateTime.Now.ToLongDateString() + txtSnapShotDes.Text;

            //await CrossMedia.Current.Initialize();

            if (!(CrossMedia.Current.IsCameraAvailable && CrossMedia.Current.IsTakePhotoSupported))
            {
                await DisplayAlert("No Camera", ":( No Camera Available.", "OK");
                return;
            }

            file = await CrossMedia.Current.TakePhotoAsync(new StoreCameraMediaOptions()
            {
                PhotoSize = Plugin.Media.Abstractions.PhotoSize.Medium,
                DefaultCamera = CameraDevice.Rear,
                SaveToAlbum = false,
                Name =  photoDesc
            });

            if (file == null)
            {
                return;
            }

            imgSnapShot.Source = ImageSource.FromStream(() =>
            {
                var stream = file.GetStream();

                return stream;
            });

            //btnSnapShot.IsEnabled = true;
        }

        private async void BtnSubmit_OnClicked(object sender, EventArgs e)
        {
            btnSubmit.IsEnabled = false;

            if (CrossConnectivity.Current.IsConnected)
            {
                this.viewModel.IsBusy = true;

                photoDesc = DateTime.Now.ToString("s");

                if (file == null)
                {
                    this.viewModel.IsBusy = false;

                    await DisplayAlert("No Image", "A Photo needs to be taken before Submitting.", "Okay");
                    return;
                }
                else
                {
                    Stream image = file.GetStream();

                    snapShotPhoto = ImageManipulator.ConvertStreamToByteArray(image);

                    SnapShot snapEntity = new SnapShot()
                    {
                        serviceJobId = Convert.ToInt64(lblServerJobId.Text),
                        snapShotFile = snapShotPhoto,
                        filename = photoDesc,
                        description = String.IsNullOrEmpty(txtSnapShotDes.Text) ? String.Empty : txtSnapShotDes.Text
                    };


                    if (await service.Save(snapEntity))
                    {
                        this.viewModel.IsBusy = false;

                        //await DisplayAlert("Success", "The Photo has been submitted successfully.", "Okay");

                        file.Dispose();

                        await Navigation.PopAsync();
                    }
                    else
                    {
                        this.viewModel.IsBusy = false;

                        await DisplayAlert("Failed", "Something went wrong during the Submission process. Please Try again.", "Okay");
                        return;
                    }
                }
            }
            else
            {
                await DisplayAlert("Connection Error", "Your device is currently not connected to the internet. Please connect and try again", "Okay");
            }

            btnSubmit.IsEnabled = true;
        }
    }
}