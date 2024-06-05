using eHealth.Data.Models;
using eHealth.Views;
using System;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using eHealth.Service.Service;
using eHealth.Service.IService;
using eHealth.Models;


namespace eHealth.ViewModels
{
    public class EContactViewModel : BaseViewModel
    {
        private EmergencyContacts _selectedContact;
        IEContactService<EmergencyContacts> eContactService;

        public ObservableCollection<EmergencyContacts> Contacts { get; }
        public Command LoadContactsCommand { get; }
        public Command AddContactCommand { get; }
        public Command<EmergencyContacts> ContactTapped { get; }

        public EContactViewModel()
        {
            eContactService = new EContactService();
            Title = "Emergency Contacts";
            Contacts = new ObservableCollection<EmergencyContacts>();
            LoadContactsCommand = new Command(async () => await ExecuteLoadContactsCommand());

            ContactTapped = new Command<EmergencyContacts>(OnContactSelected);

            AddContactCommand = new Command(OnAddContact);
        }

        async Task ExecuteLoadContactsCommand()
        {
            IsBusy = true;

            try
            {
                Contacts.Clear();
                var allContacts = await eContactService.GetContacts() ;
                foreach (var contact in allContacts)
                {
                    Contacts.Add(contact);
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex);
            }
            finally
            {
                IsBusy = false;
            }
        }

        public void OnAppearing()
        {
            IsBusy = true;
            SelectedContact = null;
        }

        public EmergencyContacts SelectedContact
        {
            get => _selectedContact;
            set
            {
                SetProperty(ref _selectedContact, value);
                OnContactSelected(value);
            }
        }

        private async void OnAddContact(object obj)
        {
            await Shell.Current.GoToAsync(nameof(AddEmergencyContactPage));
        }

        async void OnContactSelected(EmergencyContacts contact)
        {
            if (contact == null) return;

            await Shell.Current.GoToAsync($"{nameof(EContactDetailPage)}?ContactId={contact.ContactId}");
        }

    }
}