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
    
    public partial class Lecture
    {
        public int Id { get; set; }
        public Nullable<System.DateTime> rec_date { get; set; }
        public string Topic { get; set; }
        public string Attended_flag { get; set; }
        public string Students_Flag { get; set; }
        public Nullable<System.DateTime> Lecture_Date { get; set; }
        public string Lecturer_Name { get; set; }
        public string Substitute_Name { get; set; }
    }
}
