using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace asp_unit5
{
    public partial class Research : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Entity.unit5Entities db = new Entity.unit5Entities();
            Entity.Research research = new Entity.Research();
            research.Registration_date = DateTime.Parse(Registration_DateTime.Value);
            research.Researcher_External = textbox_Researcher.Text.Trim();
            research.Researcher_Staff = DropDown_Researcher.Text.Trim().Replace("Select", "NA").Trim();
            research.Super1 = DropDownList_FirstSupervisor.Text.Trim().Replace("Select", "NA").Trim();
            research.Super2 = DropDownList_secondSupervisor.Text.Trim().Replace("Select", "NA").Trim();
            research.Super3 = DropDownList_thirdSupervisor.Text.Trim().Replace("Select", "NA").Trim();
            research.Super4 = DropDownList_FourthSupervisor.Text.Trim().Replace("Select", "NA").Trim();
            research.Super5 = DropDownList_FifthSupervisor.Text.Trim().Replace("Select", "NA").Trim();
            research.Research_Title = textbox_Title.Text.Trim();
            research.State = DropDown_State.Text.Trim().Replace("Select", "NA").Trim();
            try
            {
                db.Researches.Add(research);
                db.SaveChanges();
            }
            catch (Exception ex)
            {

                throw;
            }






        }
    }
}