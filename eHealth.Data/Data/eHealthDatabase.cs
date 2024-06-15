using SQLite;
using System.Collections.Generic;
using System.Globalization;
using System.Threading.Tasks;
using eHealth.Data.Models;
using System;

namespace eHealth.Data
{
    public class eHealthDatabase
    {
        private readonly SQLiteAsyncConnection _database;

        public eHealthDatabase(string dbPath)
        {
            _database = new SQLiteAsyncConnection(dbPath);
        }

        public async Task InitializeAsync()
        {
            await CreateTablesAsync();
        }

        private async Task CreateTablesAsync()
        {
            // Create new tables with the correct schema
            await _database.CreateTableAsync<User>();
            await _database.CreateTableAsync<SensorData>();
            await _database.CreateTableAsync<EmergencyContacts>();
            await _database.CreateTableAsync<AccelerometerAnalysis>();
        }

        public static string FormatDateTime(long ticks)
        {
            DateTime dateTime = new DateTime(ticks);
            return dateTime.ToString("dd:MM:yyyy HH:mm:ss", CultureInfo.InvariantCulture);
        }

        // User CRUD operations
        public Task<List<User>> GetUsersAsync()
        {
            return _database.Table<User>().ToListAsync();
        }

        public Task<User> GetUserAsync()
        {
            return _database.Table<User>()
                            .FirstOrDefaultAsync();
        }

        public Task<int> SaveUserAsync(User user)
        {
            if (user.UserId != 0)
            {
                return _database.UpdateAsync(user);
            }
            else
            {
                return _database.InsertAsync(user);
            }
        }

        public Task<int> DeleteUserAsync(User user)
        {
            return _database.DeleteAsync(user);
        }

        // SensorData CRUD operations
        public Task<SensorData> GetSensorAsync(DateTime date)
        {
            return _database.Table<SensorData>()
                            .Where(i => i.DateTime == date)
                            .FirstOrDefaultAsync();
        }

        public Task<int> SaveSensorDataAsync(SensorData sensorData)
        {
            return _database.InsertAsync(sensorData);
        }

        public Task<List<SensorData>> GetAllSensorDataAsync()
        {
            return _database.Table<SensorData>().ToListAsync();
        }

        public Task<int> DeleteSensorAsync(SensorData sensor)
        {
            return _database.DeleteAsync(sensor);
        }

        public Task<int> DeleteAllSensorDataAsync()
        {
            return _database.DeleteAllAsync<SensorData>();
        }

        

        // AccelerometerAnalysis CRUD operations
        public Task<int> SaveAccelerometerAnalysisAsync(AccelerometerAnalysis analysis)
        {
            return _database.InsertAsync(analysis);
        }

        public Task<List<AccelerometerAnalysis>> GetAllAccelerometerAnalysisAsync()
        {
            return _database.Table<AccelerometerAnalysis>().ToListAsync();
        }

        // EmergencyContacts CRUD operations
        public Task<List<EmergencyContacts>> GetEmergencyContactsAsync()
        {
            return _database.Table<EmergencyContacts>().ToListAsync();
        }

        public Task<List<EmergencyContacts>> GetEmergencyContactsForUserAsync(int userId)
        {
            return _database.Table<EmergencyContacts>()
                           .Where(i => i.UserId == userId)
                           .ToListAsync();
        }

        public Task<EmergencyContacts> GetEmergencyContactAsync(int id)
        {
            return _database.Table<EmergencyContacts>()
                            .Where(i => i.ContactId == id)
                            .FirstOrDefaultAsync();
        }
        public Task<EmergencyContacts> GetEmergencyContactbyEmailAsync(string id)
        {
            return _database.Table<EmergencyContacts>()
                            .Where(i => i.Email == id)
                            .FirstOrDefaultAsync();
        }

        public async Task<int> SaveEmergencyContactAsync(EmergencyContacts contact)
        {
            if (contact.ContactId != 0)
            {
                Console.WriteLine($"Updating Emergency Contact: {contact.ContactId}");
                var result = await _database.UpdateAsync(contact);
                Console.WriteLine($"Update result: {result}");
                return result;
            }
            else
            {
                Console.WriteLine("Inserting new Emergency Contact");
                var result = await _database.InsertAsync(contact);
                Console.WriteLine($"Insert result: {result}");
                return result;
            }
        }

        public Task<int> DeleteEmergencyContactAsync(EmergencyContacts contact)
        {
            return _database.DeleteAsync(contact);
        }
    }
}
