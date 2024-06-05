using System;
using System.Collections.ObjectModel;
using System.Threading.Tasks;
using eHealth.Data.Models;
using eHealth.Service.IService;
using Xamarin.Forms;

namespace eHealth.ViewModels
{
    public class UserViewModel : BaseViewModel
    {
        private readonly IUserService _userService;

        public ObservableCollection<User> Users { get; }
        public Command LoadUsersCommand { get; }
        public Command<User> AddUserCommand { get; }
        public Command<User> DeleteUserCommand { get; }

        public UserViewModel()
        {
            _userService = DependencyService.Get<IUserService>();
            Users = new ObservableCollection<User>();
            LoadUsersCommand = new Command(async () => await ExecuteLoadUsersCommand());
            AddUserCommand = new Command<User>(async (user) => await AddUser(user));
            DeleteUserCommand = new Command<User>(async (user) => await DeleteUser(user));
        }

        async Task ExecuteLoadUsersCommand()
        {
            IsBusy = true;

            try
            {
                Users.Clear();
                var users = await _userService.GetUsers();
                foreach (var user in users)
                {
                    Users.Add(user);
                }
            }
            catch (Exception ex)
            {
                // Handle exceptions
            }
            finally
            {
                IsBusy = false;
            }
        }

        async Task AddUser(User user)
        {

            await _userService.AddUser(user);
            Users.Add(user);
        }

        async Task DeleteUser(User user)
        {
            if (user == null || user.UserId == 0)
                return;

            await _userService.RemoveUser(user.UserId);
            Users.Remove(user);
        }
    }
}
