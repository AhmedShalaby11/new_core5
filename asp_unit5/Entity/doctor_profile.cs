//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace asp_unit5.Entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class doctor_profile
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public doctor_profile()
        {
            this.Clinical_Rounds = new HashSet<Clinical_Rounds>();
            this.Clinical_Rounds1 = new HashSet<Clinical_Rounds>();
            this.Clinical_Rounds2 = new HashSet<Clinical_Rounds>();
            this.Lectures = new HashSet<Lecture>();
            this.Lectures1 = new HashSet<Lecture>();
            this.Researches = new HashSet<Research>();
            this.Researches1 = new HashSet<Research>();
            this.Researches2 = new HashSet<Research>();
        }
    
        public int recid { get; set; }
        public Nullable<System.DateTime> doctor_bach_year { get; set; }
        public Nullable<System.DateTime> doctor_birthdate { get; set; }
        public string doctor_degree { get; set; }
        public string doctor_image_URL { get; set; }
        public Nullable<System.DateTime> doctor_MCS_year { get; set; }
        public string doctor_name { get; set; }
        public string doctor_other_degrees { get; set; }
        public string doctor_other_qualifications { get; set; }
        public Nullable<System.DateTime> doctor_PHD_year { get; set; }
        public string doctor_precense { get; set; }
        public string doctor_title { get; set; }
        public Nullable<System.DateTime> record_date { get; set; }
        public string DoctorLocation { get; set; }
        public string DoctorMail { get; set; }
        public string DoctorMobile { get; set; }
        public string DoctorAcademicDegree { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Clinical_Rounds> Clinical_Rounds { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Clinical_Rounds> Clinical_Rounds1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Clinical_Rounds> Clinical_Rounds2 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Lecture> Lectures { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Lecture> Lectures1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Research> Researches { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Research> Researches1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Research> Researches2 { get; set; }
    }
}
