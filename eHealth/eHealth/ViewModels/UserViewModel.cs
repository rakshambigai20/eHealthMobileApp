using System;
using System.Diagnostics;
using System.Threading.Tasks;
using eHealth.Data.Models;
using eHealth.Service.IService;
using eHealth.Services;
using eHealth.Views;
using Xamarin.Forms;

namespace eHealth.ViewModels
{
    public class UserViewModel : BaseViewModel
    {
        private readonly IUserService<User> _userService;
        private User _user;
        private string _toolbarButtonText;

        public User User
        {
            get => _user;
            set
            {
                SetProperty(ref _user, value);
                OnPropertyChanged(nameof(IsUserEmpty));
                ToolbarButtonText = IsUserEmpty ? "Add" : "Edit";
            }
        }

        public string ToolbarButtonText
        {
            get => _toolbarButtonText;
            set => SetProperty(ref _toolbarButtonText, value);
        }

        public bool IsUserEmpty => User == null;

        public Command LoadUserCommand { get; }
        public Command AddOrEditUserCommand { get; }

        public UserViewModel()
        {
            _userService = new UserService();
            Title = "User Details";
            LoadUserCommand = new Command(async () => await ExecuteLoadUserCommand());
            AddOrEditUserCommand = new Command(OnAddOrEditUser);
            ToolbarButtonText = "Add";
        }

        async Task ExecuteLoadUserCommand()
        {
            IsBusy = true;

            try
            {
                User = await _userService.GetUser();
                Debug.WriteLine("User loaded: " + User?.Name);
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Failed to Load User: " + ex);
            }
            finally
            {
                IsBusy = false;
            }
        }

        private async void OnAddOrEditUser()
        {
            // Navigate to AddUserDetailsPage
            await Shell.Current.GoToAsync(nameof(AddUserDetailsPage));
        }
    }
}
