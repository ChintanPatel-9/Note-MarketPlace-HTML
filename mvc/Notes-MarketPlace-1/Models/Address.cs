using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NoteMarketplace_1.Models
{
    public class Address
    {
        public string ID { get; set; }
        public string Name { get; set; }
        public string CountryCode { get; set; }
        public string CreatedDate { get; set; }
        public string CreatedBy { get; set; }
        public string ModifiedDate { get; set; }
        public string ModifiedBy { get; set; }
        public string IsActive { get; set; }
    }
}