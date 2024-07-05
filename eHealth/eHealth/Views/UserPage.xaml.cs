using eHealth.ViewModels;
using System;
using System.Timers;
using Xamarin.Forms;

namespace eHealth.Views
{
    public partial class UserPage : ContentPage
    {
        private Timer _refreshTimer;

        public UserPage()
        {
            InitializeComponent();
            BindingContext = new UserViewModel();

            _refreshTimer = new Timer(30000);
            _refreshTimer.Elapsed += OnRefreshTimerElapsed;
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            _refreshTimer.Start();
            ((UserViewModel)BindingContext).LoadSensorDataCommand.Execute(null);
        }

        protected override void OnDisappearing()
        {
            base.OnDisappearing();
            _refreshTimer.Stop();
        }

        private void OnRefreshTimerElapsed(object sender, ElapsedEventArgs e)
        {
            Device.BeginInvokeOnMainThread(() =>
            {
                ((UserViewModel)BindingContext).LoadSensorDataCommand.Execute(null);
            });
        }
    }
}
