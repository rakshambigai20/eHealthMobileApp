using SQLite;
using System.Collections.Generic;
using System.Threading.Tasks;
using eHealth.Data.Models;
using System.Globalization;
using System;

namespace eHealth.Data
{
    public class eHealthDatabase
    {
        private readonly SQLiteAsyncConnection database;

        public eHealthDatabase(string dbPath)
        {
            database = new SQLiteAsyncConnection(dbPath);
        }

        public async Task InitializeAsync()
        {
            await database.CreateTableAsync<User>();
            await database.CreateTableAsync<SensorData>();
            await database.CreateTableAsync<EmergencyContacts>();
            await database.CreateTableAsync<AggregatedSensorData>();
            await database.CreateTableAsync<AccelerometerAnalysis>(); // Ensure the new table is created
        }
        public static string FormatDateTime(long ticks)
        {
            DateTime dateTime = new DateTime(ticks);
            return dateTime.ToString("dd:MM:yyyy HH:mm:ss", CultureInfo.InvariantCulture);
        }


        // User CRUD operations
        public Task<List<User>> GetUsersAsync()
        {
            return database.Table<User>().ToListAsync();
        }

        public Task<User> GetUserAsync(int id)
        {
            return database.Table<User>()
                            .Where(i => i.UserId == id)
                            .FirstOrDefaultAsync();
        }

        public Task<int> SaveUserAsync(User user)
        {
            if (user.UserId != 0)
            {
                return database.UpdateAsync(user);
            }
            else
            {
                return database.InsertAsync(user);
            }
        }

        public Task<int> DeleteUserAsync(User user)
        {
            return database.DeleteAsync(user);
        }

        // SensorData CRUD operations
        public Task<SensorData> GetSensorAsync(System.DateTime date)
        {
            return database.Table<SensorData>()
                            .Where(i => i.DateTime == date)
                            .FirstOrDefaultAsync();
        }

        public Task<int> SaveSensorDataAsync(SensorData sensorData)
        {
            return database.InsertAsync(sensorData);
        }

        public Task<List<SensorData>> GetAllSensorDataAsync()
        {
            return database.Table<SensorData>().ToListAsync();
        }

        public Task<int> DeleteSensorAsync(SensorData sensor)
        {
            return database.DeleteAsync(sensor);
        }

        public Task<int> DeleteAllSensorDataAsync()
        {
            return database.DeleteAllAsync<SensorData>();
        }

        // AggregatedSensorData CRUD operations
        public Task<int> SaveAggregatedSensorDataAsync(AggregatedSensorData aggregatedSensorData)
        {
            return database.InsertAsync(aggregatedSensorData);
        }

        public Task<List<AggregatedSensorData>> GetAllAggregatedSensorDataAsync()
        {
            return database.Table<AggregatedSensorData>().ToListAsync();
        }

        // AccelerometerAnalysis CRUD operations
        public Task<int> SaveAnalysisDataAsync(AccelerometerAnalysis analysis)
        {
            return database.InsertAsync(analysis);
        }

        public Task<List<AccelerometerAnalysis>> GetAllAnalysisDataAsync()
        {
            return database.Table<AccelerometerAnalysis>().ToListAsync();
        }

        // EmergencyContacts CRUD operations
        public Task<List<EmergencyContacts>> GetEmergencyContactsAsync()
        {
            return database.Table<EmergencyContacts>().ToListAsync();
        }

        public Task<List<EmergencyContacts>> GetEmergencyContactsForUserAsync(int userId)
        {
            return database.Table<EmergencyContacts>()
                           .Where(i => i.UserId == userId)
                           .ToListAsync();
        }

        public Task<EmergencyContacts> GetEmergencyContactAsync(string id)
        {
            return database.Table<EmergencyContacts>()
                            .Where(i => i.ContactId == id)
                            .FirstOrDefaultAsync();
        }

        public Task<int> SaveEmergencyContactAsync(EmergencyContacts contact)
        {
            if (contact.ContactId != null)
            {
                return database.UpdateAsync(contact);
            }
            else
            {
                return database.InsertAsync(contact);
            }
        }

        public Task<int> DeleteEmergencyContactAsync(EmergencyContacts contact)
        {
            return database.DeleteAsync(contact);
        }
    }
}
