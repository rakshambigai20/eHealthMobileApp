using System.Collections.Generic;
using System.Threading.Tasks;
using eHealth.Data.Models;

namespace eHealth.Service.IService
{
   
        public interface ISensorService
        {
            Task<List<SensorData>> GetAccelerometerDataAsync();
            Task<List<AggregatedSensorData>> GetAggregatedSensorDataAsync();
        void StartAccelerometer();
            void StopAccelerometer();
        }
    
}
