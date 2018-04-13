using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace asp_unit5
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Register_Click(object sender, EventArgs e)
        {
            unit5Entities db = new unit5Entities();
            doctor_profile dbProfile = new doctor_profile();

            //
            dbProfile.DoctorLocation = textbox_clinic.Text;
            dbProfile.doctor_name = textbox_fullname.Text;
            dbProfile.DoctorMail = textbox_mail.Text;
            dbProfile.DoctorMobile = textbox_mobile.Text;
            //
            dbProfile.DoctorAcademicDegree = Select_AcademicDegree.Text;
            dbProfile.doctor_degree = Select_Degree.Text;
            dbProfile.doctor_precense = Select_DoctorPresence.Text;
            dbProfile.doctor_title = Select_Title.Text;
            //
            dbProfile.doctor_other_degrees = TextArea_otherQualifications.InnerText;
            dbProfile.doctor_other_qualifications = TextArea_otherQualifications.InnerText;
            //
            dbProfile.doctor_PHD_year = DateTime.Parse(date_PHD.Value);
            dbProfile.doctor_MCS_year = DateTime.Parse(date_MCS.Value);
            dbProfile.doctor_bach_year = DateTime.Parse(date_BCH.Value);
            dbProfile.doctor_birthdate = DateTime.Parse(date_birthday.Value);

            db.doctor_profile.Add(dbProfile);
            db.SaveChanges();

        }
    }
}