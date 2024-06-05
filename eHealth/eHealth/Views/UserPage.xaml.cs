using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using eHealth.ViewModels;
using eHealth.Data.Models;

namespace eHealth.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class UserPage : ContentPage
    {
        public UserPage()
        {
            InitializeComponent();
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            var viewModel = BindingContext as UserViewModel;
            if (viewModel != null)
            {
                viewModel.LoadUsersCommand.Execute(null);
            }
        }

        private void Button_Clicked(object sender, System.EventArgs e)
        {
            var viewModel = BindingContext as UserViewModel;
            if (viewModel != null)
            {
                // Create the user object from the input fields
                var user = new User
                {
                    Name = NameEntry.Text,
                    DOB = DOBPicker.Date,
                    Email = EmailEntry.Text,
                    PhoneNumber = MobileEntry.Text
                };

                // Execute the command if it's valid to do so
                if (viewModel.AddUserCommand.CanExecute(user))
                {
                    viewModel.AddUserCommand.Execute(user);
                }
            }
        }
    }
}
