using eHealth.Views;
using System;
using System.Collections.Generic;
using System.Text;
using Xamarin.Forms;

namespace eHealth.ViewModels
{
    public class LoginViewModel : BaseViewModel
    {
        public Command LoginCommand { get; }

        public LoginViewModel()
        {
            LoginCommand = new Command(OnLoginClicked);
        }

        private async void OnLoginClicked(object obj)
        {
            throw new NotImplementedException();
            // Prefixing with `//` switches to a different navigation stack instead of pushing to the active one
            //await Shell.Current.GoToAsync($"//{nameof()}");
        }
    }
}
