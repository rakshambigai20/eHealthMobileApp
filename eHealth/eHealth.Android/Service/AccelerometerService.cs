using Android.App;
using Android.Content;
using Android.OS;
using Xamarin.Essentials;
using eHealth.Data.Models;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using System.Timers;
using eHealth.Data;
using static Android.OS.PowerManager;

namespace eHealth.Droid.Services
{
    [Service(Enabled = true, Exported = true)]
    public class AccelerometerService : Android.App.Service
    {
        private readonly eHealthDatabase _database;
        private WakeLock wakeLock;
        private readonly List<AccelerometerData> _accelerometerDataList = new List<AccelerometerData>();
        private readonly Timer _dataCollectionTimer = new Timer(1000); // 1 second interval
        private DateTime _intervalStartTime;
        private string _previousState;
        private DateTime _previousStateStartTime;

        public AccelerometerService()
        {
            _database = new eHealthDatabase(Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.LocalApplicationData), "eHealth.db3"));
            _intervalStartTime = DateTime.Now;
            _previousState = "Idle"; // Assume starting state is Idle
            _previousStateStartTime = _intervalStartTime;
        }

        public override IBinder OnBind(Intent intent)
        {
            return null;  // No binding provided
        }

        public override StartCommandResult OnStartCommand(Intent intent, StartCommandFlags flags, int startId)
        {
            RequestIgnoreBatteryOptimizations();
            AcquireWakeLock();
            StartForegroundService();
            Accelerometer.ReadingChanged += Accelerometer_ReadingChanged;
            _dataCollectionTimer.Elapsed += OnDataCollectionTimerElapsed;

            if (!Accelerometer.IsMonitoring)
            {
                Accelerometer.Start(SensorSpeed.Default);
            }
            _dataCollectionTimer.Start();

            return StartCommandResult.Sticky;
        }

        private void RequestIgnoreBatteryOptimizations()
        {
            if (Build.VERSION.SdkInt >= BuildVersionCodes.M)
            {
                PowerManager pm = (PowerManager)GetSystemService(Context.PowerService);
                if (!pm.IsIgnoringBatteryOptimizations(PackageName))
                {
                    Intent intent = new Intent(Android.Provider.Settings.ActionRequestIgnoreBatteryOptimizations);
                    intent.SetData(Android.Net.Uri.Parse("package:" + PackageName));
                    intent.AddFlags(ActivityFlags.NewTask); // Ensure the intent is started from the service
                    StartActivity(intent);
                }
            }
        }

        private void AcquireWakeLock()
        {
            PowerManager powerManager = (PowerManager)GetSystemService(Context.PowerService);
            wakeLock = powerManager.NewWakeLock(WakeLockFlags.Partial, "eHealth::WakeLockTag");
            wakeLock.Acquire();
        }

        private void ReleaseWakeLock()
        {
            if (wakeLock != null && wakeLock.IsHeld)
            {
                wakeLock.Release();
                wakeLock = null;
            }
        }

        private void StartForegroundService()
        {
            string channelId = "ehealth_channel";
            string channelName = "eHealth Service Channel";

            if (Build.VERSION.SdkInt >= BuildVersionCodes.O)
            {
                var notificationChannel = new NotificationChannel(channelId, channelName, NotificationImportance.High)
                {
                    Description = "Channel for eHealth background service"
                };
                var notificationManager = (NotificationManager)GetSystemService(NotificationService);
                notificationManager.CreateNotificationChannel(notificationChannel);
            }

            var notification = new Notification.Builder(this, channelId)
                .SetContentTitle("eHealth Service")
                .SetContentText("eHealth accelerometer service is running")
                .SetSmallIcon(Resource.Drawable.icon_about)
                .SetOngoing(true)
                .Build();

            StartForeground(1, notification);
        }

        private void StopForegroundService()
        {
            StopForeground(true);
            StopSelf();
        }

        private async void Accelerometer_ReadingChanged(object sender, AccelerometerChangedEventArgs e)
        {
            var data = e.Reading;
            var sensorData = new AccelerometerData
            {
                X = data.Acceleration.X,
                Y = data.Acceleration.Y,
                Z = data.Acceleration.Z,
                Timestamp = DateTime.Now,
            };
            var accelerometerData = new SensorData
            {
                ValueX = data.Acceleration.X,
                ValueY = data.Acceleration.Y,
                ValueZ = data.Acceleration.Z,
                DateTime = DateTime.Now,
            };

            
                await _database.SaveSensorDataAsync(accelerometerData);
            

            lock (_accelerometerDataList)
            {
                _accelerometerDataList.Add(sensorData);
            }
        }

        private void OnDataCollectionTimerElapsed(object sender, ElapsedEventArgs e)
        {
            List<AccelerometerData> dataToAnalyze;
            DateTime intervalEndTime = DateTime.Now;

            lock (_accelerometerDataList)
            {
                dataToAnalyze = new List<AccelerometerData>(_accelerometerDataList);
                _accelerometerDataList.Clear();
            }

            if (dataToAnalyze.Count > 0)
            {
                AnalyzeAccelerometerData(dataToAnalyze, _intervalStartTime, intervalEndTime);
            }

            _intervalStartTime = intervalEndTime;
        }

        private void AnalyzeAccelerometerData(List<AccelerometerData> data, DateTime startTime, DateTime endTime)
        {
            double threshold = 1.2; // Example threshold value for movement
            bool isInMotion = data.Any(d => Math.Sqrt(d.X * d.X + d.Y * d.Y + d.Z * d.Z) > threshold);
            double averageReading = data.Average(d => Math.Sqrt(d.X * d.X + d.Y * d.Y + d.Z * d.Z));
            double overallMagnitude = data.Sum(d => Math.Sqrt(d.X * d.X + d.Y * d.Y + d.Z * d.Z));

            string currentState = isInMotion ? "In Motion" : "Idle";
            System.Diagnostics.Debug.WriteLine($"Device state: {currentState}");

            if (currentState != _previousState)
            {
                var analysisData = new eHealth.Data.Models.AccelerometerAnalysis
                {
                    StartTime = _previousStateStartTime,
                    EndTime = startTime,
                    State = _previousState,
                    AverageReading = averageReading,
                    OverallMagnitude = overallMagnitude // Save the overall magnitude
                };

                // Save analysis data to the database
                Task.Run(async () => await SaveAnalysisDataAsync(analysisData));

                // Update previous state
                _previousState = currentState;
                _previousStateStartTime = startTime;
            }
        }

        private async Task SaveAnalysisDataAsync(eHealth.Data.Models.AccelerometerAnalysis analysis)
        {
            try
            {
                await _database.SaveAnalysisDataAsync(analysis);
                System.Diagnostics.Debug.WriteLine("Analysis data saved successfully.");
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error saving analysis data: {ex.Message}");
            }
        }

        public override void OnDestroy()
        {
            Accelerometer.ReadingChanged -= Accelerometer_ReadingChanged;
            if (Accelerometer.IsMonitoring)
            {
                Accelerometer.Stop();
            }
            _dataCollectionTimer.Elapsed -= OnDataCollectionTimerElapsed;
            _dataCollectionTimer.Stop();
            ReleaseWakeLock();
            base.OnDestroy();

            // Restart service if destroyed
            Intent broadcastIntent = new Intent(this, typeof(RestartServiceReceiver));
            SendBroadcast(broadcastIntent);
        }
    }

    public class AccelerometerData
    {
        public double X { get; set; }
        public double Y { get; set; }
        public double Z { get; set; }
        public DateTime Timestamp { get; set; } // Changed to string
    }

    [BroadcastReceiver(Enabled = true, Exported = false)]
    public class RestartServiceReceiver : BroadcastReceiver
    {
        public override void OnReceive(Context context, Intent intent)
        {
            context.StartService(new Intent(context, typeof(AccelerometerService)));
        }
    }
}
