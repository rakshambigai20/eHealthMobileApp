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
using System.Net;
using System.Net.Mail;
using eHealth.Services;

namespace eHealth.Service.Service
{
    public class EContactService : IEContactService<EmergencyContacts>
    {
        private readonly eHealthDatabase _database;
        IUserService<User> _userService;


        public EContactService()
        {
            _userService = new UserService();
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
        public Task<EmergencyContacts> GetContactbyEmail(string id)
        {
            return _database.GetEmergencyContactbyEmailAsync(id);
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

        public async void SendEmail(string emailAddress, string senderEmail, string senderPassword)
        {
            User user =await _userService.GetUser();
            EmergencyContacts contact = await GetContactbyEmail(emailAddress);
            try
            {
                var smtpClient = new SmtpClient("smtp.gmail.com")
                {
                    Port = 587,
                    Credentials = new NetworkCredential(senderEmail, senderPassword),
                    EnableSsl = true,
                };

                var mailMessage = new MailMessage
                {
                    From = new MailAddress(senderEmail),
                    Subject = "Urgent: Abnormal Activity Detected",
                    Body = $"<h1>Urgent: Abnormal Activity Detected</h1>" +
                   $"<p>Dear {contact.Name},</p>" +
                   $"<p>We have detected abnormal activity in the account of {user.Name}. Please take the following actions immediately:</p>" +
                   "<ul>" +
                   "<li>Check on the individual to ensure their safety.</li>" +
                   "<li>Review recent activities in the eHealth app.</li>" +
                   "<li>If you suspect any issues or if the individual needs help, contact emergency services.</li>" +
                   "</ul>" +
                   "<p>If you have any questions or need further assistance, please contact our support team.</p>" +
                   "<p>Thank you for your prompt attention to this matter.</p>" +
                   "<p>Best regards,</p>" +
                   "<p>The eHealth Team</p>",
                    IsBodyHtml = true,
                };
                mailMessage.To.Add(emailAddress);

                smtpClient.Send(mailMessage);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        public async Task MakePhoneCall(string phoneNumber)
        {
            var phoneDialer = CrossMessaging.Current.PhoneDialer;
            if (phoneDialer.CanMakePhoneCall)
            {
                phoneDialer.MakePhoneCall(phoneNumber);
            }
        }

        public async Task HandleEmergency(string senderEmail, string senderPassword)
        {
            System.Diagnostics.Debug.WriteLine("function called");

            var allContacts = await GetContacts();
            foreach (var contact in allContacts)
            {
                if (contact.PhoneNumber != null && contact.Email != null)
                {
                    // MakePhoneCall(contact.PhoneNumber);
                    SendSms(contact.PhoneNumber);
                    SendEmail(contact.Email, senderEmail, senderPassword);
                    System.Diagnostics.Debug.WriteLine("email sent");

                }
                else
                {
                    Console.WriteLine($"Contact details not found for {contact.Name}.");
                }
            }
        }
    }
}
