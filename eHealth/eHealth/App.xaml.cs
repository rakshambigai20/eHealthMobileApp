﻿using eHealth.Services;
using eHealth.Views;
using System;
using System.Diagnostics;
using System.IO;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using eHealth.Data;
using eHealth.Service.IService;
using eHealth.Service.Service;
using System.Threading.Tasks;

namespace eHealth
{
    public partial class App : Application
    {
        static eHealthDatabase database;
        static SensorService sensorService;

        // Create the database connection as a singleton.
        public static eHealthDatabase Database
        {
            get
            {
                if (database == null)
                {
                    string dbPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "eHealth.db3");
                    Debug.WriteLine($"Database path: {dbPath}");
                    database = new eHealthDatabase(dbPath);
                }
                return database;
            }
        }

        public static SensorService SensorService
        {
            get
            {
                if (sensorService == null)
                {
                    sensorService = new SensorService(Database);
                }
                return sensorService;
            }
        }

        public App()
        {
            InitializeComponent();
            DependencyService.Register<SensorService>();
            DependencyService.Register<IUserService, UserService>();
            MainPage = new AppShell();
        }

        protected override async void OnStart()
        {
            // Handle when your app starts
            await InitializeDatabaseAsync();
            StartAccelerometerService();
        }

        protected override void OnSleep()
        {
            Debug.WriteLine("OnSleep called");
            // Handle when your app sleeps
            StopAccelerometerService();
        }

        protected override void OnResume()
        {
            Debug.WriteLine("OnResume called");
            // Handle when your app resumes
            StartAccelerometerService();
        }

        private async Task InitializeDatabaseAsync()
        {
            // Ensuring the database is created and initialized asynchronously
            Debug.WriteLine("Initializing database...");
            await Database.InitializeAsync();
            Debug.WriteLine("Database initialization complete.");
        }

        private void StartAccelerometerService()
        {
            DependencyService.Get<IAccelerometerService>()?.StartService();
        }

        private void StopAccelerometerService()
        {
            DependencyService.Get<IAccelerometerService>()?.StopService();
        }
    }
}
