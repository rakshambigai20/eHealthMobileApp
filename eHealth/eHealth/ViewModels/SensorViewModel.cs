using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;
using eHealth.Service.IService;
using eHealth.Data.Models;
using Microcharts;
using SkiaSharp;
using System.Collections.Generic;

namespace eHealth.ViewModels
{
    public class SensorViewModel : BaseViewModel
    {
        private ISensorService _sensorService;
        public ObservableCollection<SensorData> SensorDataList { get; }
        public ICommand LoadDataCommand { get; }

        private Chart _chart;
        public Chart Chart
        {
            get => _chart;
            set => SetProperty(ref _chart, value);
        }

        public SensorViewModel()
        {
            _sensorService = App.SensorService;
            SensorDataList = new ObservableCollection<SensorData>();

            LoadDataCommand = new Command(async () => await LoadDataAsync());

            // Automatically load data when the view model is created
            LoadDataAsync().ConfigureAwait(false);
        }

        private async Task LoadDataAsync()
        {
            var data = await _sensorService.GetSensorDataAsync();
            var todayData = data.Where(d => d.DateTime.Date == DateTime.Today).ToList();

            SensorDataList.Clear();
            foreach (var item in todayData)
            {
                SensorDataList.Add(item);
            }

            CreateChart(todayData);
        }

        private void CreateChart(IEnumerable<SensorData> data)
        {
            var hourlyData = data.GroupBy(d => d.DateTime.Hour)
                                 .Select(g => new
                                 {
                                     Hour = g.Key,
                                     MaxMagnitude = g.Max(d => d.Magnitude)
                                 })
                                 .OrderBy(d => d.Hour)
                                 .ToList();

            var entries = hourlyData.Select(d => new ChartEntry((float)d.MaxMagnitude)
            {
                Label = $"{d.Hour}:00",
                ValueLabel = d.MaxMagnitude.ToString("0.00"),
                Color = SKColor.Parse("#2c3e50")
            }).ToArray();

            Chart = new LineChart
            {
                Entries = entries,
                LineMode = LineMode.Straight,
                LineSize = 4,
                PointMode = PointMode.Circle,
                PointSize = 8,
                MinValue = 0,  // Optionally set the minimum value of the y-axis
                MaxValue = entries.Max(e => e.Value),  // Optionally set the maximum value of the y-axis
                ValueLabelOrientation = Orientation.Horizontal,
                LabelTextSize = 30
            };
        }
    }
}
