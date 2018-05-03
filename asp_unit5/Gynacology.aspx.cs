using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace asp_unit5
{
    public partial class Gynacology : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            for (int i = 0; i < 90; i++)
            {
                DropDown_PatientAge.Items.Add(i.ToString());
            }
        }
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Entity.unit5Entities1 db = new Entity.unit5Entities1();
            Entity.Gynacology gynacology = new Entity.Gynacology();

            ///insert ( mapping )
            ///

            //
            gynacology.patientName = textbox_PatientName.Text.Trim();
            gynacology.patientAge = DropDown_PatientAge.Text.Trim();
            gynacology.ticketId = textbox_TicketNumber.Text.Trim();
            gynacology.AdmissionDate = Date_AdmissionDate.Value;

            gynacology.ParityValue = textbox_Parity.Text.Trim();
            gynacology.AddedValue = textboxPlus.Text.Trim();


            gynacology.Dynamics = "";
            gynacology.Dynamics += "Parity 1:" + dropdown_parity1.Value.Replace("Select", "NA").Trim();
            gynacology.Dynamics += ",Parity 2:" + dropdown_parity2.Value.Replace("Select", "NA").Trim();
            gynacology.Dynamics += ",Parity 3:" + dropdown_parity3.Value.Replace("Select", "NA").Trim();
            gynacology.Dynamics += ",Parity 4:" + dropdown_parity4.Value.Replace("Select", "NA").Trim();
            gynacology.Dynamics += ",Parity 5:" + dropdown_parity5.Value.Replace("Select", "NA").Trim();
            gynacology.Dynamics += ",Parity 6:" + dropdown_parity6.Value.Replace("Select", "NA").Trim();
            gynacology.Dynamics += ",Parity 7:" + dropdown_parity7.Value.Replace("Select", "NA").Trim();
            gynacology.Dynamics += ",Parity 8:" + dropdown_parity8.Value.Replace("Select", "NA").Trim();
            gynacology.Dynamics += ",Parity 9:" + dropdown_parity9.Value.Replace("Select", "NA").Trim();
            gynacology.Dynamics += ",Parity 10:" + dropdown_parity10.Value.Replace("Select", "NA").Trim();
            gynacology.Presentation = DropDown_Diagnosis_Presentation.Text.Trim().Replace("Select", "NA").Trim();
            gynacology.ChildState = DropDown_Diagnosis_State.Text.Trim().Replace("Select", "NA").Trim();
            gynacology.NumberOfLivingMale = Convert.ToInt32(textbox_LivingMale.Text.Trim());
            gynacology.NumberOfLivingFemale = Convert.ToInt32(textbox_LivingFemale.Text.Trim());
            gynacology.OperativeDate = DateTime_OperativeDate.Value;
            gynacology.Intervention = DropDown_Intervention.Text.Trim().Replace("Select", "NA").Trim();
            gynacology.OtherIntervention = DropDown_OtherIntervention.Text.Trim().Replace("Select", "NA").Trim();
            gynacology.Surgeons = DropDown_Staff_Surgeon.Text.Trim().Replace("Select", "NA").Trim();
            gynacology.Assistants = DropDown_Staff_Assistant.Text.Trim().Replace("Select", "NA").Trim();
            gynacology.Supervisors = DropDown_Staff_Supervisor.Text.Trim().Replace("Select", "NA").Trim();
            gynacology.AdditionalNotes = TextArea_Others_Notes.InnerText.Trim();
            try
            {
                db.Gynacologies.Add(gynacology);
                db.SaveChanges();
            }
            catch (Exception ex)
            {

                throw;
            }



        }
    }
}