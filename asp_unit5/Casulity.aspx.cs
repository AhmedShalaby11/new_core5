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
            

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            unit5Entities db = new unit5Entities();
            CasulityProfile casulity = new CasulityProfile();

            ///insert ( mapping )
            ///

            casulity.patientName = textbox_PatientName.Text;
            casulity.patientAge = DropDown_PatientAge.Text;
            casulity.ticketId = textbox_TicketNumber.Text;
            casulity.AdmissionDate = Date_AdmissionDate.Value;
            
            casulity.ParityValue = textbox_Parity.Text;
            casulity.AddedValue = textboxPlus.Text;
            casulity.Weeks =  Convert.ToInt32(DropDown_Diagnosis_Weeks.Text);
            casulity.Days = Convert.ToInt32(DropDown_Diagnosis_Days.Text);
            casulity.By = DropDown_Diagnosis_By.Text;
            casulity.Obstetric = DropDown_Diagnosis_Obstetric.Text;
            casulity.Disorder = DropDown_Diagnosis_Disorder.Text;
            casulity.Presentation = DropDown_Diagnosis_Presentation.Text;
            casulity.ChildState = DropDown_Diagnosis_State.Text;
            casulity.NumberOfLivingMale = Convert.ToInt32(textbox_LivingMale.Text);
            casulity.NumberOfLivingFemale = Convert.ToInt32(textbox_LivingFemale.Text);
            casulity.InterventionDate = Date_InterventionDate.Value;
            casulity.Intervention = DropDown_Intervention_InterventionSelection.Text;
            casulity.Complications = DropDown_Intervention_Complications.Text;
            casulity.AdditionalComplications = DropDown_Intervention_ExtraComplications.Text;
            casulity.ICU = checkbox_ICU.Text;
            casulity.Outcome = DropDown_Intervention_Outcome.Text;
            casulity.Sex = DropDown_Intervention_Sex.Text;
            casulity.NeonatalCondition = DropDown_Intervention_NeonatalCondition.Text;
            casulity.OtherIntervention = DropDown_Other_Interventions.Text;
            casulity.Indications = DropDown_cs_Indications.Text;
            casulity.Surgeons = DropDown_Staff_Surgeon.Text;
            casulity.Assistants = DropDown_Staff_Assistant.Text;
            casulity.Supervisors = DropDown_Staff_Supervisor.Text;
            casulity.AdditionalNotes = TextArea_Others_Notes.InnerText;
















        }
    }
}