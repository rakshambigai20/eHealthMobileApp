using System.Collections.ObjectModel;
using System.Threading.Tasks;
using Xamarin.Forms;
using eHealth.Service.IService;
using eHealth.Data.Models;

namespace eHealth.ViewModels
{
    public class SensorViewModel : BaseViewModel
    {
        private ISensorService _sensorService;
        public ObservableCollection<AccelerometerAnalysis> AccelerometerDataList { get; }

        public SensorViewModel()
        {
            _sensorService = App.SensorService;
            AccelerometerDataList = new ObservableCollection<AccelerometerAnalysis>();

            LoadDataCommand = new Command(async () => await LoadDataAsync());

            // Automatically load data when the view model is created
            LoadDataAsync().ConfigureAwait(false);
        }

        public Command LoadDataCommand { get; }

        private async Task LoadDataAsync()
        {
            var data = await _sensorService.GetAccelerometerDataAsync();
            AccelerometerDataList.Clear();
            foreach (var item in data)
            {
                AccelerometerDataList.Add(item);
            }
        }
    }
}
