using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace asp_unit5
{
    public partial class Casulity : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            for (int i = 0; i < 90; i++)
            {
                DropDown_Diagnosis_Weeks.Items.Add(i.ToString());
                DropDown_Diagnosis_Days.Items.Add(i.ToString());
                DropDown_PatientAge.Items.Add(i.ToString());
            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Entity.unit5Entities db  = new Entity.unit5Entities();
            Entity.CasulityProfile casulity = new Entity.CasulityProfile();

            ///insert ( mapping )
            ///
         
                //
            casulity.patientName = textbox_PatientName.Text.Trim();
            casulity.patientAge = DropDown_PatientAge.Text.Trim();
            casulity.ticketId = textbox_TicketNumber.Text.Trim();
            casulity.AdmissionDate = DateTime.Parse(Date_AdmissionDate.Value);
            
            casulity.ParityValue = textbox_Parity.Text.Trim();
            casulity.AddedValue = textboxPlus.Text.Trim();


            casulity.Dynamics = "";
            casulity.Dynamics += "Parity 1:"+dropdown_parity1.Value.Replace("Select","NA").Trim();
            casulity.Dynamics += ",Parity 2:" + dropdown_parity2.Value.Replace("Select", "NA").Trim();
            casulity.Dynamics += ",Parity 3:" + dropdown_parity3.Value.Replace("Select", "NA").Trim();
            casulity.Dynamics += ",Parity 4:" + dropdown_parity4.Value.Replace("Select", "NA").Trim();
            casulity.Dynamics += ",Parity 5:" + dropdown_parity5.Value.Replace("Select", "NA").Trim();
            casulity.Dynamics += ",Parity 6:" + dropdown_parity6.Value.Replace("Select", "NA").Trim();
            casulity.Dynamics += ",Parity 7:" + dropdown_parity7.Value.Replace("Select", "NA").Trim();
            casulity.Dynamics += ",Parity 8:" + dropdown_parity8.Value.Replace("Select", "NA").Trim();
            casulity.Dynamics += ",Parity 9:" + dropdown_parity9.Value.Replace("Select", "NA").Trim();
            casulity.Dynamics += ",Parity 10:" + dropdown_parity10.Value.Replace("Select", "NA").Trim();


            casulity.Weeks = DropDown_Diagnosis_Weeks.Text.Trim();
            casulity.Days = DropDown_Diagnosis_Days.Text.Trim();
            casulity.By = DropDown_Diagnosis_By.Text.Trim().Replace("Select", "NA").Trim();
            casulity.Obstetric = DropDown_Diagnosis_Obstetric.Text.Trim().Replace("Select", "NA").Trim();
            casulity.Disorder = DropDown_Diagnosis_Disorder.Text.Trim().Replace("Select", "NA").Trim();
            casulity.Presentation = DropDown_Diagnosis_Presentation.Text.Trim().Replace("Select", "NA").Trim();
            casulity.ChildState = DropDown_Diagnosis_State.Text.Trim().Replace("Select", "NA").Trim();
            casulity.NumberOfLivingMale = textbox_LivingMale.Text.Trim();
            casulity.NumberOfLivingFemale = textbox_LivingFemale.Text.Trim();
            casulity.InterventionDate = DateTime.Parse(Date_InterventionDate.Value);
            casulity.Intervention = DropDown_Intervention_InterventionSelection.Text.Trim().Replace("Select", "NA").Trim();
            casulity.Complications = DropDown_Intervention_Complications.Text.Trim().Replace("Select", "NA").Trim();
            casulity.AdditionalComplications = DropDown_Intervention_ExtraComplications.Text.Trim().Replace("Select", "NA").Trim();
            casulity.ICU = checkbox_ICU.Text.Trim();
            casulity.Outcome = DropDown_Intervention_Outcome.Text.Trim().Replace("Select", "NA").Trim();
            casulity.Sex = DropDown_Intervention_Sex.Text.Trim().Replace("Select", "NA").Trim();
            casulity.NeonatalCondition = DropDown_Intervention_NeonatalCondition.Text.Trim().Replace("Select", "NA").Trim();
         //   casulity.OtherIntervention = DropDown_Other_Interventions.Text.Trim().Replace("Select", "NA").Trim();
            casulity.OtherIntervention = "test";
            casulity.Indications = DropDown_cs_Indications.Text.Trim().Replace("Select", "NA").Trim();
            casulity.Surgeons = DropDown_Staff_Surgeon.Text.Trim().Replace("Select", "NA").Trim();
            casulity.Assistants = DropDown_Staff_Assistant.Text.Trim().Replace("Select", "NA").Trim();
            casulity.Supervisors = DropDown_Staff_Supervisor.Text.Trim().Replace("Select", "NA").Trim();
            casulity.AdditionalNotes = TextArea_Others_Notes.InnerText.Trim() ;
            try
            {
                db.CasulityProfiles.Add(casulity);
                db.SaveChanges();
            }
            catch (Exception ex)
            {
               
                throw;
            }
      


        }
    }
}