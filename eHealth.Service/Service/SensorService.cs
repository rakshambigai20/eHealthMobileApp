using System;
using System.Collections.Generic;
using System.Diagnostics;
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
            _hourlyTimer = new Timer(500000); // 1 hour interval
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
            //await _database.SaveSensorDataAsync(sensorData);
        }

        private async void AggregateHourlyData(object sender, ElapsedEventArgs e)
        {
            if (_currentHourData.Any())
            {
                var avgX = _currentHourData.Average(d => d.ValueX);
                var avgY = _currentHourData.Average(d => d.ValueY);
                var avgZ = _currentHourData.Average(d => d.ValueZ);
                var hour = DateTime.Now.Date.AddHours(DateTime.Now.Hour);

                var aggregatedData = new AggregatedSensorData
                {
                    ValueX = avgX,
                    ValueY = avgY,
                    ValueZ = avgZ,
                    Hour = hour.ToString("HH:mm",CultureInfo.InvariantCulture)
                };

                await _database.SaveAggregatedSensorDataAsync(aggregatedData);
                
            }
        }

        public async Task<List<SensorData>> GetAccelerometerDataAsync()
        {
            return await _database.GetAllSensorDataAsync();
        }

        public async Task<List<AggregatedSensorData>> GetAggregatedSensorDataAsync()
        {
            return await _database.GetAllAggregatedSensorDataAsync();
        }
    }
}
