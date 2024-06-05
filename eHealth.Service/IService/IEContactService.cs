using eHealth.Data.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Threading.Tasks;

namespace eHealth.Service.IService
{
    public interface IEContactService<T>
    {
        Task<List<EmergencyContacts>> GetContacts();
        Task<EmergencyContacts> GetContact(string id);
        Task AddContact(T contact);
        Task UpdateContact(T contact);
        Task RemoveContact(String id);
    }
}

