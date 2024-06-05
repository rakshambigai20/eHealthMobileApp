using eHealth.Data.Models;

namespace eHealth.Service.IService
{
    public interface IAccelerometerService
    {
        void StartService();
        void StopService();
        void SaveSensorData(SensorData data); // Add this method to save data
    }
}
