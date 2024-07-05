using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Input;
using eHealth.Data.Models;
using eHealth.Service.IService;
using eHealth.Services;
using eHealth.Views;
using Microcharts;
using SkiaSharp;
using Xamarin.Forms;

namespace eHealth.ViewModels
{
    public class UserViewModel : BaseViewModel
    {
        private readonly IUserService<User> _userService;
        private readonly ISensorService _sensorService;
        private User _user;
        private string _toolbarButtonText;
        private DateTime _startOfWeek;
        private DateTime _endOfWeek;
        private DateTime _currentDay;
        private DateTime _startOfMonth;
        private DateTime _endOfMonth;

        public User User
        {
            get => _user;
            set
            {
                SetProperty(ref _user, value);
                OnPropertyChanged(nameof(IsUserEmpty));
                ToolbarButtonText = IsUserEmpty ? "Add" : "Edit";
            }
        }

        public string ToolbarButtonText
        {
            get => _toolbarButtonText;
            set => SetProperty(ref _toolbarButtonText, value);
        }

        public bool IsUserEmpty => User == null;

        public ICommand LoadUserCommand { get; }
        public ICommand AddOrEditUserCommand { get; }
        public ICommand PreviousWeekCommand { get; }
        public ICommand NextWeekCommand { get; }
        public ICommand PreviousDayCommand { get; }
        public ICommand NextDayCommand { get; }
        public ICommand PreviousMonthCommand { get; }
        public ICommand NextMonthCommand { get; }
        public ObservableCollection<SensorData> SensorDataList { get; }
        public ICommand LoadSensorDataCommand { get; }

        private Chart _dailyChart;
        public Chart DailyChart
        {
            get => _dailyChart;
            set => SetProperty(ref _dailyChart, value);
        }

        private Chart _weeklyChart;
        public Chart WeeklyChart
        {
            get => _weeklyChart;
            set => SetProperty(ref _weeklyChart, value);
        }

        private Chart _monthlyChart;
        public Chart MonthlyChart
        {
            get => _monthlyChart;
            set => SetProperty(ref _monthlyChart, value);
        }

        public string WeekDateRange => $"{_startOfWeek:MMM dd} - {_endOfWeek:MMM dd}";
        public string DayDate => _currentDay.ToString("MMM dd, yyyy");
        public string MonthDateRange => $"{_startOfMonth:MMM dd} - {_endOfMonth:MMM dd}";
        public bool CanNavigatePreviousWeek => _startOfWeek > DateTime.Now.AddDays(-30);
        public bool CanNavigateNextWeek => _endOfWeek < DateTime.Now;
        public bool CanNavigatePreviousDay => _currentDay > DateTime.Now.AddDays(-30);
        public bool CanNavigateNextDay => _currentDay.Date < DateTime.Now.Date;
        public bool CanNavigatePreviousMonth => _startOfMonth > DateTime.Now.AddMonths(-1);
        public bool CanNavigateNextMonth => _endOfMonth < DateTime.Now;

        public UserViewModel()
        {
            _userService = new UserService();
            _sensorService = App.SensorService;

            Title = "User Details";
            LoadUserCommand = new Command(async () => await ExecuteLoadUserCommand());
            AddOrEditUserCommand = new Command(OnAddOrEditUser);
            PreviousWeekCommand = new Command(OnPreviousWeek, () => CanNavigatePreviousWeek);
            NextWeekCommand = new Command(OnNextWeek, () => CanNavigateNextWeek);
            PreviousDayCommand = new Command(OnPreviousDay, () => CanNavigatePreviousDay);
            NextDayCommand = new Command(OnNextDay, () => CanNavigateNextDay);
            PreviousMonthCommand = new Command(OnPreviousMonth, () => CanNavigatePreviousMonth);
            NextMonthCommand = new Command(OnNextMonth, () => CanNavigateNextMonth);
            ToolbarButtonText = "Add";

            SensorDataList = new ObservableCollection<SensorData>();
            LoadSensorDataCommand = new Command(async () => await ExecuteLoadSensorDataCommand());

            _currentDay = DateTime.Now;
            SetCurrentWeek();
            SetCurrentMonth();
            LoadUserCommand.Execute(null);
            LoadSensorDataCommand.Execute(null);
        }

        private void SetCurrentWeek()
        {
            _startOfWeek = DateTime.Now.StartOfWeek(DayOfWeek.Sunday);
            _endOfWeek = _startOfWeek.AddDays(6);
        }

        private void SetCurrentMonth()
        {
            _startOfMonth = new DateTime(DateTime.Now.Year, DateTime.Now.Month, 1);
            _endOfMonth = _startOfMonth.AddMonths(1).AddDays(-1);
        }

        private void OnPreviousWeek()
        {
            _startOfWeek = _startOfWeek.AddDays(-7);
            _endOfWeek = _startOfWeek.AddDays(6);
            OnPropertyChanged(nameof(WeekDateRange));
            OnPropertyChanged(nameof(CanNavigatePreviousWeek));
            OnPropertyChanged(nameof(CanNavigateNextWeek));
            LoadSensorDataCommand.Execute(null);
        }

        private void OnNextWeek()
        {
            _startOfWeek = _startOfWeek.AddDays(7);
            _endOfWeek = _startOfWeek.AddDays(6);
            OnPropertyChanged(nameof(WeekDateRange));
            OnPropertyChanged(nameof(CanNavigatePreviousWeek));
            OnPropertyChanged(nameof(CanNavigateNextWeek));
            LoadSensorDataCommand.Execute(null);
        }

        private void OnPreviousDay()
        {
            _currentDay = _currentDay.AddDays(-1);
            OnPropertyChanged(nameof(DayDate));
            OnPropertyChanged(nameof(CanNavigatePreviousDay));
            OnPropertyChanged(nameof(CanNavigateNextDay));
            LoadSensorDataCommand.Execute(null);
        }

        private void OnNextDay()
        {
            _currentDay = _currentDay.AddDays(1);
            OnPropertyChanged(nameof(DayDate));
            OnPropertyChanged(nameof(CanNavigatePreviousDay));
            OnPropertyChanged(nameof(CanNavigateNextDay));
            LoadSensorDataCommand.Execute(null);
        }

        private void OnPreviousMonth()
        {
            _startOfMonth = _startOfMonth.AddMonths(-1);
            _endOfMonth = _startOfMonth.AddMonths(1).AddDays(-1);
            OnPropertyChanged(nameof(MonthDateRange));
            OnPropertyChanged(nameof(CanNavigatePreviousMonth));
            OnPropertyChanged(nameof(CanNavigateNextMonth));
            LoadSensorDataCommand.Execute(null);
        }

        private void OnNextMonth()
        {
            _startOfMonth = _startOfMonth.AddMonths(1);
            _endOfMonth = _startOfMonth.AddMonths(1).AddDays(-1);
            OnPropertyChanged(nameof(MonthDateRange));
            OnPropertyChanged(nameof(CanNavigatePreviousMonth));
            OnPropertyChanged(nameof(CanNavigateNextMonth));
            LoadSensorDataCommand.Execute(null);
        }

        private async Task ExecuteLoadUserCommand()
        {
            IsBusy = true;

            try
            {
                User = await _userService.GetUser();
                Debug.WriteLine("User loaded: " + User?.Name);
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Failed to Load User: " + ex);
            }
            finally
            {
                IsBusy = false;
            }
        }

        private async Task ExecuteLoadSensorDataCommand()
        {
            IsBusy = true;

            try
            {
                var sensorData = await _sensorService.GetSensorDataAsync();

                // Pre-populate daily data with zeros for each minute interval
                var dailyData = Enumerable.Range(0, 24 * 60).Select(i => new
                {
                    Time = new DateTime(_currentDay.Year, _currentDay.Month, _currentDay.Day, i / 60, i % 60, 0),
                    Magnitude = 0.0
                }).ToList();

                // Update with actual sensor data
                var actualDailyData = sensorData.Where(d => d.DateTime.Date == _currentDay.Date)
                    .GroupBy(d => new DateTime(d.DateTime.Year, d.DateTime.Month, d.DateTime.Day, d.DateTime.Hour, d.DateTime.Minute, 0))
                    .Select(g => new {
                        Time = g.Key,
                        Magnitude = g.Max(d => d.Magnitude)
                    })
                    .ToList();

                dailyData = dailyData.Select(d => {
                    var actualData = actualDailyData.FirstOrDefault(ad => ad.Time == d.Time);
                    return actualData != null ? actualData : d;
                }).ToList();

                var dailyEntries = dailyData.Select(d => new ChartEntry((float)d.Magnitude)
                {
                    Label = d.Time.Minute % 5 == 0 ? d.Time.ToString("HH:mm") : "",
                    ValueLabel = d.Time.Minute % 5 == 0 ? d.Magnitude.ToString("0.00") : "",
                    Color = SKColor.Parse(d.Magnitude == 0 ? "#FF0000" : d.Magnitude < 0.99 || d.Magnitude > 10 ? "#FF0000" : "#00FF00")
                }).ToList();

                DailyChart = new LineChart
                {
                    Entries = dailyEntries,
                    LineMode = LineMode.Straight,
                    LineSize = 2,
                    PointMode = PointMode.Circle,
                    PointSize = 4,
                    LabelTextSize = 20,
                    BackgroundColor = SKColors.White,
                    ValueLabelOrientation = Orientation.Vertical,
                    LabelOrientation = Orientation.Vertical,
                    MinValue = 0,
                    MaxValue = 15,
                };

                // Initialize weekly data with all days of the week
                var weeklyData = Enum.GetValues(typeof(DayOfWeek))
                    .Cast<DayOfWeek>()
                    .Select(day => new { Day = day, ActiveHours = 0.0 })
                    .ToList();

                // Process actual sensor data for the week
                var sensorWeeklyData = sensorData.Where(d => d.DateTime >= _startOfWeek && d.DateTime <= _endOfWeek)
                    .GroupBy(d => d.DateTime.DayOfWeek)
                    .Select(g => new { Day = g.Key, ActiveHours = g.Count(d => d.Magnitude > 1) * 5 / 60.0 / 60 })
                    .ToList();

                // Merge the initialized weekly data with the actual data
                weeklyData = weeklyData.Select(wd =>
                {
                    var sensorDayData = sensorWeeklyData.FirstOrDefault(sd => sd.Day == wd.Day);
                    return new { wd.Day, ActiveHours = sensorDayData?.ActiveHours ?? wd.ActiveHours };
                }).ToList();

                var weeklyEntries = weeklyData.Select(d => new ChartEntry((float)d.ActiveHours)
                {
                    Label = d.Day.ToString(),
                    ValueLabel = d.ActiveHours.ToString("0.00"),
                    Color = SKColor.Parse(d.ActiveHours < 1 ? "#FF0000" : "#00FF00")
                }).ToList();

                WeeklyChart = new BarChart
                {
                    Entries = weeklyEntries,
                    LabelTextSize = 25,
                    BackgroundColor = SKColors.White, // Light yellow background
                    ValueLabelOrientation = Orientation.Horizontal,
                    LabelOrientation = Orientation.Horizontal,
                    MinValue = 0,
                    MaxValue = 24, // Assuming a max of 24 hours for simplicity
                    BarAreaAlpha = 128, // Set transparency for bars
                };

                // Pre-populate monthly data with zeros for each day of the month
                var daysInMonth = DateTime.DaysInMonth(_startOfMonth.Year, _startOfMonth.Month);
                var monthlyData = Enumerable.Range(1, daysInMonth).Select(day => new
                {
                    Date = new DateTime(_startOfMonth.Year, _startOfMonth.Month, day),
                    ActiveHours = 0.0
                }).ToList();

                // Update with actual sensor data
                var actualMonthlyData = sensorData.Where(d => d.DateTime >= _startOfMonth && d.DateTime <= _endOfMonth)
                    .GroupBy(d => d.DateTime.Date)
                    .Select(g => new { Date = g.Key, ActiveHours = g.Count(d => d.Magnitude > 1) * 5 / 60.0 / 60 })
                    .ToList();

                monthlyData = monthlyData.Select(d => {
                    var actualData = actualMonthlyData.FirstOrDefault(ad => ad.Date == d.Date);
                    return actualData != null ? actualData : d;
                }).ToList();

                var monthlyEntries = monthlyData.Select(d => new ChartEntry((float)d.ActiveHours)
                {
                    Label = d.Date.ToString("dd/MM/yyyy"),
                    ValueLabel = d.ActiveHours.ToString("0.00"),
                    Color = SKColor.Parse(d.ActiveHours == 0 ? "#FF0000" : "#33FF57")
                }).ToList();

                MonthlyChart = new LineChart
                {
                    Entries = monthlyEntries,
                    LineMode = LineMode.Straight,
                    LineSize = 2,
                    PointMode = PointMode.Circle,
                    PointSize = 4,
                    LabelTextSize = 25,
                    BackgroundColor = SKColors.White,
                    ValueLabelOrientation = Orientation.Horizontal,
                    LabelOrientation = Orientation.Vertical,
                    MinValue = 0,
                    MaxValue = 24 // Assuming a max of 24 hours for simplicity
                };
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Failed to Load Sensor Data: " + ex);
            }
            finally
            {
                IsBusy = false;
            }
        }

        private async void OnAddOrEditUser()
        {
            await Shell.Current.GoToAsync(nameof(AddUserDetailsPage));
        }
    }

    public static class DateTimeExtensions
    {
        public static DateTime StartOfWeek(this DateTime dt, DayOfWeek startOfWeek)
        {
            int diff = (7 + (dt.DayOfWeek - startOfWeek)) % 7;
            return dt.AddDays(-1 * diff).Date;
        }
    }
}
