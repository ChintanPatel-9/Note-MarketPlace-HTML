
namespace NotesMarketplace
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.Web;

    public partial class UserProfile
    {

        public int ID { get; set; }
        public int F_K_User { get; set; }

        [DataType(DataType.Date)]
        public Nullable<System.DateTime> DOB { get; set; }

        public string Gender { get; set; }

        [Phone]
        public string PhoneNumber { get; set; }

        [Required]
        [Display(Name = "Phonenumber")]
        [Phone]
        [RegularExpression("^[0-9]*$", ErrorMessage = "Enter valid phonenumber")]
        public string Number { get; set; }

        [Required]
        public string CountryCode { get; set; }

        public HttpPostedFileBase File { get; set; }

        public string ProfilePicture { get; set; }

        [Required]
        public string Address1 { get; set; }

        [Required]
        public string Address2 { get; set; }

        [Required]
        public string City { get; set; }

        [Required]
        public string State { get; set; }

        [Required]
        public string ZipCode { get; set; }

        [Required]
        public string Country { get; set; }

        public string University { get; set; }
        public string College { get; set; }
        public Nullable<System.DateTime> ModifiedDate { get; set; }
        public Nullable<int> ModifiedBy { get; set; }
        public bool IsActive { get; set; }

        public virtual User User { get; set; }
    }
}