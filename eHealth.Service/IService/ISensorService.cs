using System.Collections.Generic;
using System.Threading.Tasks;
using eHealth.Data.Models;

namespace eHealth.Service.IService
{
    public interface ISensorService
    {
        Task<List<AccelerometerAnalysis>> GetAccelerometerDataAsync();
        void StartAccelerometer();
        void StopAccelerometer();
    }
}
