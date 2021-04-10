namespace NotesMarketplace
{
    using System;
    using System.Collections.Generic;

    public partial class AdminProfile
    {
        public int ID { get; set; }
        public int F_K_User { get; set; }
        public string PhoneNumber { get; set; }
        public string ProfilePicture { get; set; }
        public string SecondaryEmail { get; set; }
        public bool IsActive { get; set; }
        public Nullable<System.DateTime> ModifiedDate { get; set; }
        public Nullable<int> ModifiedBy { get; set; }

        public virtual User User { get; set; }
    }
}