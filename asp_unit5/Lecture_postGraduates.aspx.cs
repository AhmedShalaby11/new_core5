﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace asp_unit5
{
    public partial class Lecture_postGraduates : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Entity.unit5Entities db = new Entity.unit5Entities();
            Entity.Lecture lecture = new Entity.Lecture();
            lecture.Lecture_Date = DateTime_Lecutre.Value;
            lecture.Lecturer_Name = DropDown_Lecturer.Text.Trim().Replace("Select", "NA").Trim();
            lecture.Substitute_Name = DropDown_Substitute.Text.Trim().Replace("Select", "NA").Trim();
            lecture.Topic = textbox_Topic.Text.Trim();
            lecture.Students_Flag = "P";
            try
            {
                db.Lectures.Add(lecture);
                db.SaveChanges();
            }
            catch (Exception ex)
            {

                throw;
            }
        }
    }
}