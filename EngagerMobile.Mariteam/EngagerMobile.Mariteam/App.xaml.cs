using System;
using EngagerMobile.Mariteam.ApplicationCore.Models;
using EngagerMobile.Mariteam.Repositories;
using EngagerMobile.Mariteam.Views;
using Xamarin.Forms;

using Microsoft.AppCenter;
using Microsoft.AppCenter.Distribute;

namespace EngagerMobile.Mariteam
{
	public partial class App : Application
	{
        public static UserRepository UserRepo { get; private set; }

        public static ServerDetailsRepository ServerRepo { get; private set; }

        public static DeviceDetailsRepository DeviceRepo { get; private set; }

        public static WorkOrderStatusRepository woStatusRepo { get; private set; }

        public static string Token = "";

        public App (string dbPath, string token)
		{
			InitializeComponent();

            Token = token;            

            UserRepo = new UserRepository(dbPath);
            ServerRepo = new ServerDetailsRepository(dbPath);
            DeviceRepo = new DeviceDetailsRepository(dbPath);
            woStatusRepo = new WorkOrderStatusRepository(dbPath);

            MainPage = new NavigationPage(new LaunchScreenPage());
        }

		protected override void OnStart ()
		{
			// Handle when your app starts
			//Production
			AppCenter.Start("android=3d0fb55f-dfc5-4987-8f64-7982c3386279;", typeof(Distribute));

			//UAT
			//AppCenter.Start("android=b9f87110-5ff1-48c9-8b78-d2c499ba1e1d;", typeof(Distribute));
		}

		protected override void OnSleep ()
		{
			// Handle when your app sleeps
		}

		protected override void OnResume ()
		{
			// Handle when your app resumes
		}
	}
}
