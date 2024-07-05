using System;
using System.Timers;
using eHealth.Service.Service;
using eHealth.Service.IService;
using eHealth.Data.Models;
using Xamarin.Essentials;
using System.Threading.Tasks;

namespace eHealth.Data.FuzzyLogic
{
    public class MonitorAbnormalHours
    {
        private Timer _abnormalActivityTimer;
        private const double MonitoringInterval = 1 * 60 * 1000; // 1 minute in milliseconds
        private bool _isAbnormal;
        private readonly IEContactService<EmergencyContacts> _econtactService;
        private string _senderEmail;
        private string _senderPassword;

        public MonitorAbnormalHours()
        {
            _abnormalActivityTimer = new Timer(MonitoringInterval);
            _isAbnormal = false;
            _econtactService = new EContactService();

            System.Diagnostics.Debug.WriteLine("MonitorAbnormalHours initialized.");
        }

        public void StartMonitoringAbnormalActivity()
        {
            System.Diagnostics.Debug.WriteLine("StartMonitoringAbnormalActivity called.");
            System.Diagnostics.Debug.WriteLine($"Abnormality = {_isAbnormal}");

            if (!_isAbnormal)
            {
                System.Diagnostics.Debug.WriteLine("Starting abnormal activity (idleness) monitoring.");

                // Detach any existing handlers to avoid multiple attachments
                _abnormalActivityTimer.Elapsed -= OnAbnormalActivityDurationReached;
                _abnormalActivityTimer.Elapsed += OnAbnormalActivityDurationReached;

                _isAbnormal = true;
                _abnormalActivityTimer.Start();

                System.Diagnostics.Debug.WriteLine("Abnormal activity (idleness) monitoring started.");
            }
        }

        public void StopMonitoringAbnormalActivity()
        {
            if (_isAbnormal)
            {
                System.Diagnostics.Debug.WriteLine("Stopping abnormal activity (idleness) monitoring.");

                _isAbnormal = false;
                _abnormalActivityTimer.Stop();

                // Detach the event handler to prevent it from firing after stop
                _abnormalActivityTimer.Elapsed -= OnAbnormalActivityDurationReached;

                System.Diagnostics.Debug.WriteLine("Abnormal activity (idleness) monitoring stopped.");
            }
        }

        private async void OnAbnormalActivityDurationReached(object sender, ElapsedEventArgs e)
        {
            System.Diagnostics.Debug.WriteLine("Abnormal activity (idleness) duration reached.");
            await HandleEmergency();
            StopMonitoringAbnormalActivity();
        }

        private async Task HandleEmergency()
        {
            _senderEmail = await SecureStorage.GetAsync("email");
            _senderPassword = await SecureStorage.GetAsync("password");

            if (string.IsNullOrEmpty(_senderEmail) || string.IsNullOrEmpty(_senderPassword))
            {
                System.Diagnostics.Debug.WriteLine("Email or password not found in secure storage.");
                throw new InvalidOperationException("Email or password not found in secure storage.");
            }

            System.Diagnostics.Debug.WriteLine($"Handling emergency with email: {_senderEmail}");
            await _econtactService.HandleEmergency(_senderEmail, _senderPassword);
            System.Diagnostics.Debug.WriteLine("Emergency handled.");
        }
    }
}
