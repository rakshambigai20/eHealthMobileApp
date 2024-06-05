using System.Collections.Generic;
using System.Threading.Tasks;
using eHealth.Data.Models;
using eHealth.Data;
using eHealth.Service.IService;
using System.IO;
using System;

namespace eHealth.Services
{
    public class UserService : IUserService
    {
        private readonly eHealthDatabase _database;

        public UserService()
        {
            _database = new eHealthDatabase(Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "eHealth.db3"));
        }

        public Task<List<User>> GetUsers()
        {
            return _database.GetUsersAsync();
        }

        public Task<User> GetUser(int id)
        {
            return _database.GetUserAsync(id);
        }

        public Task AddUser(User user)
        {
            return _database.SaveUserAsync(user);
        }

        public Task UpdateUser(User user)
        {
            return _database.SaveUserAsync(user); // Assuming SaveUserAsync handles both insert and update
        }

        public async Task RemoveUser(int id)
        {
            var user = await _database.GetUserAsync(id);
            if (user != null)
            {
                await _database.DeleteUserAsync(user);
            }
        }
    }
}
