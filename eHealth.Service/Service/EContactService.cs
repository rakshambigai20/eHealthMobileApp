using eHealth.Data.Models;
using eHealth.Data;
using eHealth.Service.IService;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using Xamarin.Essentials;
using Plugin.Messaging;

namespace eHealth.Service.Service
{
    public class EContactService : IEContactService<EmergencyContacts>
    {
        private readonly eHealthDatabase _database;

        public EContactService()
        {
            _database = new eHealthDatabase(Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "eHealth.db3"));
        }

        public Task<List<EmergencyContacts>> GetContacts()
        {
            return _database.GetEmergencyContactsAsync();
        }

        public Task<List<EmergencyContacts>> GetContactForUser(int id)
        {
            return _database.GetEmergencyContactsForUserAsync(id);
        }

        public Task<EmergencyContacts> GetContact(int id)
        {
            return _database.GetEmergencyContactAsync(id);
        }

        public async Task<(string PhoneNumber, string EmailAddress)> GetContactDetailsAsync(int contactId)
        {
            var contact = await _database.GetEmergencyContactAsync(contactId);

            if (contact != null)
            {
                return (contact.PhoneNumber, contact.Email);
            }
            else
            {
                return (null, null); // Handle this appropriately in your application
            }
        }

        public Task AddContact(EmergencyContacts contact)
        {
            return _database.SaveEmergencyContactAsync(contact);
        }

        public Task UpdateContact(EmergencyContacts contact)
        {
            return _database.SaveEmergencyContactAsync(contact); // Assuming SaveUserAsync handles both insert and update
        }

        public async Task RemoveContact(int id)
        {
            var contact = await _database.GetEmergencyContactAsync(id);
            if (contact != null)
            {
                await _database.DeleteEmergencyContactAsync(contact);
            }
        }

        public void SendSms(string phoneNumber)
        {
            try
            {
                var smsMessenger = CrossMessaging.Current.SmsMessenger;
                if (smsMessenger.CanSendSmsInBackground)
                {
                    smsMessenger.SendSmsInBackground(phoneNumber, "This is a test message from eHealth. Please contact support if you received this in error.");
                }
                else if (smsMessenger.CanSendSms)
                {
                    smsMessenger.SendSms(phoneNumber, "This is a test message from eHealth. Please contact support if you received this in error.");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        public void SendEmail(string emailAddress)
        {
            try
            {
                var emailMessenger = CrossMessaging.Current.EmailMessenger;
                if (emailMessenger.CanSendEmail)
                {
                    var email = new EmailMessageBuilder()
                        .To(emailAddress)
                        .Subject("Alert!")
                        .Body("Abnormal activity")
                        .Build();
                    emailMessenger.SendEmail(email);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        public void MakePhoneCall(string phoneNumber)
        {
            var phoneDialer = CrossMessaging.Current.PhoneDialer;
            if (phoneDialer.CanMakePhoneCall)
            {
                phoneDialer.MakePhoneCall(phoneNumber);
            }
        }

        public async Task HandleEmergency()
        {
            var contactDetails = await GetContactDetailsAsync(1); // Assuming you want the contact with id 1

            if (contactDetails.PhoneNumber != null && contactDetails.EmailAddress != null)
            {
                //MakePhoneCall(contactDetails.PhoneNumber);
                SendSms(contactDetails.PhoneNumber);
                SendEmail(contactDetails.EmailAddress);
            }
            else
            {
                Console.WriteLine("Contact details not found.");
            }
        }
    }
}
