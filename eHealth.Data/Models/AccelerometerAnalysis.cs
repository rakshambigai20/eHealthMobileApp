using SQLite;
using System;

namespace eHealth.Data.Models
{
    public class AccelerometerAnalysis
    {
        [PrimaryKey, AutoIncrement]
        public int Id { get; set; }
        public DateTime StartTime { get; set; }
        public DateTime EndTime { get; set; }
        public string State { get; set; }
        public double AverageReading { get; set; }
        public double OverallMagnitude { get; set; } 
    }
}
