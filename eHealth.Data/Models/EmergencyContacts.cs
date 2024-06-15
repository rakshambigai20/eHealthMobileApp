using System;
using SQLite;

namespace eHealth.Data.Models
{
    public class EmergencyContacts
    {
        [PrimaryKey, AutoIncrement]
        public int ContactId { get; set; } // Changed to int
        public string Name { get; set; }
        public string Relationship { get; set; }
        public string PhoneNumber { get; set; }
        public string Email { get; set; }
        public int UserId { get; set; } // Already int
        
    }
}
