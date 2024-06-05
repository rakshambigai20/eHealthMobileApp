using eHealth.Data.Models;
using eHealth.Data;
using eHealth.Service.IService;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using System.IO;

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
        public Task<EmergencyContacts> GetContact(string id)
        {
            return _database.GetEmergencyContactAsync(id);
        }
        public Task AddContact(EmergencyContacts contact)
        {
            return _database.SaveEmergencyContactAsync(contact);
        }

        public Task UpdateContact(EmergencyContacts contact)
        {
            return _database.SaveEmergencyContactAsync(contact); // Assuming SaveUserAsync handles both insert and update
        }

        public async Task RemoveContact(string id)
        {
            var contact = await _database.GetEmergencyContactAsync(id);
            if (contact != null)
            {
                await _database.DeleteEmergencyContactAsync(contact);
            }
        }
    }
}

