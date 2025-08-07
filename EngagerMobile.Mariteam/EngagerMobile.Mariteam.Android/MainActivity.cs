using Android.App;
using Android.Content.PM;
using Android.Gms.Common;
using Android.OS;
using Android.Runtime;
using EngagerMobile.Mariteam.Droid.Helpers;
using Firebase;
using Firebase.Iid;
using Plugin.CurrentActivity;
using Plugin.Permissions;
using System;

namespace EngagerMobile.Mariteam.Droid
{
    [Activity(Label = "Engager Mobile", Icon = "@drawable/icon", Theme = "@style/MainTheme", MainLauncher = true, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation,
        ScreenOrientation = ScreenOrientation.Portrait)]
    public class MainActivity : global::Xamarin.Forms.Platform.Android.FormsAppCompatActivity
    {
        const string TAG = "MainActivity";

        protected override void OnCreate(Bundle bundle)
        {
            TabLayoutResource = Resource.Layout.Tabbar;
            ToolbarResource = Resource.Layout.Toolbar;

            base.OnCreate(bundle);

            //await CrossMedia.Current.Initialize();

            CrossCurrentActivity.Current.Init(this, bundle);
            global::Xamarin.Forms.Forms.Init(this, bundle);

            string dbPath = FileAccessHelper.GetLocalFilePath("engagermobile.db3");
            //string dbPath = FileAccessHelper.GetLocalFilePath("engagermobileUAT.db3");

            bool playServices = IsPlayServicesAvailable();


            var firebaseApp = FirebaseApp.InitializeApp(this);

            //string devID = Guid.NewGuid().ToString();
            //string token = FirebaseInstanceId.GetInstance(firebaseApp).GetToken("send_id", "FCM");


            string token = FirebaseInstanceId.Instance.Token;

            if (String.IsNullOrEmpty(token))
            {
                token = "";
            }

            //FirebaseMessaging.Instance.SubscribeToTopic("devID");

            LoadApplication(new App(dbPath, token));

            #region App Center Distribute

            //Production
            //AppCenter.Start("3d0fb55f-dfc5-4987-8f64-7982c3386279", typeof(Distribute));

            //UAT
            //AppCenter.Start("b9f87110-5ff1-48c9-8b78-d2c499ba1e1d", typeof(Distribute));

            #endregion
        }

        public bool IsPlayServicesAvailable()
        {
            int resultCode = GoogleApiAvailability.Instance.IsGooglePlayServicesAvailable(this);

            if (resultCode != ConnectionResult.Success)
            {
                if (GoogleApiAvailability.Instance.IsUserResolvableError(resultCode))
                    //myText.Text = GoogleApiAvailability.Instance.GetErrorString(resultCode);
                    return false;

                else
                {
                    //myText.Text = "This device is not supported!";
                    Finish();
                }
                return false;
            }
            else
            {
                //myText.Text = "Google Play Services is available!";
                return true;
            }
        }

        //public override void OnRequestPermissionsResult(int requestCode, string[] permissions, Android.Content.PM.Permission[] grantResults)
        //{
        //    PermissionsImplementation.Current.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        //}

        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
            PermissionsImplementation.Current.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }
    }
}

