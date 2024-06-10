using Android.App;
using Android.Content;
using Android.OS;
using Xamarin.Essentials;
using eHealth.Data.Models;
using System;
using System.Collections.Generic;
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
            StartForegroundService(); // Call this immediately
            RequestIgnoreBatteryOptimizations();
            AcquireWakeLock();
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

        private void Accelerometer_ReadingChanged(object sender, AccelerometerChangedEventArgs e)
        {
            var data = e.Reading;
            var sensorData = new AccelerometerData
            {
                X = data.Acceleration.X,
                Y = data.Acceleration.Y,
                Z = data.Acceleration.Z,
                Timestamp = DateTime.Now
            };

            lock (_accelerometerDataList)
            {
                _accelerometerDataList.Add(sensorData);
            }
        }

        private async void OnDataCollectionTimerElapsed(object sender, ElapsedEventArgs e)
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
                double averageMagnitude = dataToAnalyze.Average(d => d.Magnitude);
                var location = await GetLocationAsync();

                var sensorData = new SensorData
                {
                    ValueX = dataToAnalyze.Average(d => d.X),
                    ValueY = dataToAnalyze.Average(d => d.Y),
                    ValueZ = dataToAnalyze.Average(d => d.Z),
                    Magnitude = averageMagnitude,
                    DateTime = intervalEndTime,
                    Latitude = location?.Latitude ?? 0,
                    Longitude = location?.Longitude ?? 0
                };

                //Task.Run(async () => await _database.SaveSensorDataAsync(sensorData));

                // Call the AnalyzeAccelerometerData method
                AnalyzeAccelerometerData(dataToAnalyze, _intervalStartTime, intervalEndTime);
            }

            _intervalStartTime = intervalEndTime;
        }

        private async Task<Location> GetLocationAsync()
        {
            try
            {
                var status = await MainThread.InvokeOnMainThreadAsync(async () => await Permissions.CheckStatusAsync<Permissions.LocationWhenInUse>());
                if (status != PermissionStatus.Granted)
                {
                    status = await MainThread.InvokeOnMainThreadAsync(async () => await Permissions.RequestAsync<Permissions.LocationWhenInUse>());
                }

                if (status == PermissionStatus.Granted)
                {
                    var request = new GeolocationRequest(GeolocationAccuracy.Medium, TimeSpan.FromSeconds(10));
                    var location = await Geolocation.GetLocationAsync(request);

                    if (location != null)
                    {
                        return location;
                    }
                }
                else
                {
                    throw new Exception("Location permission denied");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error getting location: {ex.Message}");
            }
            return null;
        }

        private void AnalyzeAccelerometerData(List<AccelerometerData> data, DateTime startTime, DateTime endTime)
        {
            double threshold = 1.2; // Example threshold value for movement
            bool isInMotion = data.Any(d => d.Magnitude > threshold);

            string currentState = isInMotion ? "In Motion" : "Idle";
            System.Diagnostics.Debug.WriteLine($"Device state: {currentState}");

            if (currentState != _previousState)
            {
                var analysisData = new eHealth.Data.Models.AccelerometerAnalysis
                {
                    StartTime = _previousStateStartTime,
                    EndTime = startTime,
                    State = _previousState,
                };

                // Save analysis data to the database
                Task.Run(async () => await SaveAccelerometerAnalysisAsync(analysisData));
                System.Diagnostics.Debug.WriteLine($"Analysis data saved: StartTime={analysisData.StartTime}, EndTime={analysisData.EndTime}, State={analysisData.State}");

                // Update previous state
                _previousState = currentState;
                _previousStateStartTime = startTime;
            }
        }

        private async Task SaveAccelerometerAnalysisAsync(eHealth.Data.Models.AccelerometerAnalysis analysis)
        {
            try
            {
                await _database.SaveAccelerometerAnalysisAsync(analysis);
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
        public DateTime Timestamp { get; set; }
        public double Magnitude => Math.Sqrt(X * X + Y * Y + Z * Z);
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
