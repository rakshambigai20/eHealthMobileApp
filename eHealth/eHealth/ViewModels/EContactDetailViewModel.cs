using eHealth.Models;
using System;
using System.Diagnostics;
using System.Threading.Tasks;
using Xamarin.Forms;
using eHealth.Service.IService;
using eHealth.Service.Service;
using eHealth.Data.Models;

namespace eHealth.ViewModels
{
    [QueryProperty(nameof(ContactId), nameof(ContactId))]
    public class EContactDetailViewModel : BaseViewModel
    {
        private int contactId; // Changed to int
        private string name;
        private string relationship;
        private string email;
        private string phoneNumber;
        IEContactService<EmergencyContacts> econtactService = new EContactService();

        public EContactDetailViewModel()
        {
            HandleEmergencyCommand = new Command(async () => await HandleEmergency());
        }

        public string Name
        {
            get => name;
            set => SetProperty(ref name, value);
        }

        public string Relationship
        {
            get => relationship;
            set => SetProperty(ref relationship, value);
        }

        public string Email
        {
            get => email;
            set => SetProperty(ref email, value);
        }

        public string PhoneNumber
        {
            get => phoneNumber;
            set => SetProperty(ref phoneNumber, value);
        }

        public int ContactId // Changed to int
        {
            get => contactId;
            set
            {
                contactId = value;
                LoadContactId(value);
            }
        }

        public Command HandleEmergencyCommand { get; }

        public async void LoadContactId(int contactId)
        {
            try
            {
                var contact = await econtactService.GetContact(contactId);
                Name = contact.Name;
                Relationship = contact.Relationship;
                Email = contact.Email;
                PhoneNumber = contact.PhoneNumber;
            }
            catch (Exception)
            {
                Debug.WriteLine("Failed to Load Item");
            }
        }

        private async Task HandleEmergency()
        {
            await econtactService.HandleEmergency();
        }
    }
}
