using SQLite;
using System;

namespace eHealth.Data.Models
{
    public class SensorData
    {
        
        public DateTime DateTime { get; set; }
        public double ValueX { get; set; }
        public double ValueY { get; set; }
        public double ValueZ { get; set; }
    }

    public class AggregatedSensorData
    {
        [PrimaryKey, AutoIncrement]
        public int Id { get; set; }
        public double ValueX { get; set; }
        public double ValueY { get; set; }
        public double ValueZ { get; set; }
        public string Hour { get; set; }
    }
}
