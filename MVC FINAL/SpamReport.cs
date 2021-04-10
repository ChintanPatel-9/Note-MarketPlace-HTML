
namespace NotesMarketplace
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public partial class SpamReport
    {
        public int ID { get; set; }
        public int F_K_Note { get; set; }
        public int F_K_User { get; set; }

        [Required]
        public string Remark { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<int> CreatedBy { get; set; }
        public Nullable<System.DateTime> ModifiedDate { get; set; }
        public Nullable<int> ModifiedBy { get; set; }

        public virtual NotesDetail NotesDetail { get; set; }
        public virtual User User { get; set; }
    }
}