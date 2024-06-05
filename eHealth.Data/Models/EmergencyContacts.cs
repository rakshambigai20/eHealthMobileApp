using System;
using SQLite;

namespace eHealth.Data.Models
{
    public class EmergencyContacts
    {
        [PrimaryKey, AutoIncrement]
        public string ContactId { get; set; }
        public string Name { get; set; }
        public string Relationship { get; set; }
        public string PhoneNumber { get; set; }
        public string Email { get; set; }

        // Change UserId to int
        public int UserId { get; set; }
    }
}
