using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace asp_unit5
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Entity.unit5Entities db = new Entity.unit5Entities();
            Entity.Clinical_Rounds CR = new Entity.Clinical_Rounds();
            CR.Lecture_date = DateTime_Lecutre.Value;
            CR.Lecturer_name = DropDown_Lecturer.Text.Trim().Replace("Select", "NA").Trim();
            CR.First_Subsitute_name = DropDown_firstSubstitute.Text.Trim().Replace("Select", "NA").Trim();
            CR.Second_Subsitute_name = DropDownList_secondsubstitue.Text.Trim().Replace("Select", "NA").Trim();
            CR.group = DropDownList_Group.Text.Trim().Replace("Select", "NA").Trim();
            CR.Time = DropDownList_Time.Text.Trim().Replace("Select", "NA").Trim();
            CR.Student_flag = "P";
            try
            {
                db.Clinical_Rounds.Add(CR);
                db.SaveChanges();
            }
            catch (Exception ex)
            {

                throw;
            }
        }
    }
}