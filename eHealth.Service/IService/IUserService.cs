using eHealth.Data.Models;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace eHealth.Service.IService
{
    public interface IUserService
    {
        Task<List<User>> GetUsers();
        Task<User> GetUser(int id);
        Task AddUser(User user);
        Task UpdateUser(User user);
        Task RemoveUser(int id);
    }
}
