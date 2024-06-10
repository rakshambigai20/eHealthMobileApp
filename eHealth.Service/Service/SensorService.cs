using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Xamarin.Essentials;
using eHealth.Data;
using eHealth.Data.Models;
using eHealth.Service.IService;
using System.Timers;
using System.Globalization;

namespace eHealth.Service.Service
{
    public class SensorService : ISensorService
    {
        private readonly eHealthDatabase _database;
        private bool _isAccelerometerActive;
        private DateTime _lastMovementTime;
        private List<SensorData> _currentHourData;
        private Timer _hourlyTimer;

        public SensorService(eHealthDatabase database)
        {
            _database = database;
            _isAccelerometerActive = false;
            _lastMovementTime = DateTime.Now;
            _currentHourData = new List<SensorData>();
            _hourlyTimer = new Timer(3600000); // 1 hour interval (3600000 milliseconds)
            _hourlyTimer.Elapsed += AggregateHourlyData;
            _hourlyTimer.Start();
        }

        public async Task InitializeAsync()
        {
            await _database.InitializeAsync();
        }

        public void StartAccelerometer()
        {
            if (Accelerometer.IsMonitoring)
                return;

            Accelerometer.ReadingChanged += Accelerometer_ReadingChanged;
            Accelerometer.Start(SensorSpeed.UI);
            _isAccelerometerActive = true;
        }

        public void StopAccelerometer()
        {
            if (!Accelerometer.IsMonitoring)
                return;

            Accelerometer.ReadingChanged -= Accelerometer_ReadingChanged;
            Accelerometer.Stop();
            _isAccelerometerActive = false;
        }

        private async void Accelerometer_ReadingChanged(object sender, AccelerometerChangedEventArgs e)
        {
            var data = e.Reading;
            _lastMovementTime = DateTime.Now; // Update last movement time

            var sensorData = new SensorData
            {
                ValueX = data.Acceleration.X,
                ValueY = data.Acceleration.Y,
                ValueZ = data.Acceleration.Z,
                DateTime = DateTime.Now,
            };

            _currentHourData.Add(sensorData);
            // Uncomment the line below if you want to save each reading immediately
            // await _database.SaveSensorDataAsync(sensorData);
        }

        private async void AggregateHourlyData(object sender, ElapsedEventArgs e)
        {
            if (_currentHourData.Any())
            {
                var startTime = _currentHourData.First().DateTime;
                var endTime = _currentHourData.Last().DateTime;
                var avgX = _currentHourData.Average(d => d.ValueX);
                var avgY = _currentHourData.Average(d => d.ValueY);
                var avgZ = _currentHourData.Average(d => d.ValueZ);
                var overallMagnitude = Math.Sqrt(avgX * avgX + avgY * avgY + avgZ * avgZ);
                var averageReading = (_currentHourData.Average(d => Math.Sqrt(d.ValueX * d.ValueX + d.ValueY * d.ValueY + d.ValueZ * d.ValueZ)));

                var analysisData = new AccelerometerAnalysis
                {
                    StartTime = startTime,
                    EndTime = endTime,
                    State = "Active", // Or some other logic to determine state
                };

                await _database.SaveAccelerometerAnalysisAsync(analysisData);

                // Clear the current hour data after aggregation
                _currentHourData.Clear();
            }
        }

        public async Task<List<AccelerometerAnalysis>> GetAccelerometerDataAsync()
        {
            return await _database.GetAllAccelerometerAnalysisAsync();
        }

        // Keeping the old method for aggregated sensor data
        public async Task<List<AggregatedSensorData>> GetAggregatedSensorDataAsync()
        {
            return await _database.GetAllAggregatedSensorDataAsync();
        }
    }
}
