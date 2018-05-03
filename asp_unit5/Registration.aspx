<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="asp_unit5.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    <main role="main">
         <div class="container">
                    <h1 class=" ml-3 display-4 text-capitalize">Registration </h1>
                    <p class="lead text-dark  text-muted">Submit now to be enrolled to the staff list , access to the patient's profiles and manage your teaching schedule.</p>
                    <p>
                    </p>

                </div>
        <section class="jumbotron text-center">
            <div class="row">
               




                <div id="div_doctorPersonalInfo" class="container col-auto">
                    <div class="row justify-content-lg-start">
                        <h3 class="display-4">Personal Data</h3>
                
                    </div>
                            <hr />
                    
                    <div style="text-align: left;" id="text1" class="form-group">
                        <label for="forlabel">Full Name </label>
                        <asp:TextBox CssClass="form-control" ID="textbox_fullname" runat="server" placeholder="ex.Mohamed/Ahmed"></asp:TextBox>
                        <small id="" class="form-text text-muted"></small>
                    </div>
                    <div style="text-align: left;" id="text1" class="form-group">
                        <label for="forlabel">Mail</label>
                        <asp:TextBox CssClass="form-control" ID="textbox_mail" runat="server" placeholder="example@domain.vom"></asp:TextBox>

                        <small id="" class="form-text text-muted"></small>
                    </div>
                    <div style="text-align: left;" id="text1" class="form-group">
                        <label for="forlabel">Mobile</label>
      <asp:TextBox  CssClass="form-control" ID="textbox_mobile" runat="server" placeholder="01xxxxxxxx"></asp:TextBox>

                        <small id="" class="form-text text-muted"></small>
                    </div>
                    <div style="text-align: left;" id="text1" class="form-group">
                        <label for="forlabel">Location </label>
                              <asp:TextBox  CssClass="form-control" ID="textbox_clinic" runat="server" placeholder="clinic location"></asp:TextBox>

                        <small id="" class="form-text text-muted"></small>
                    </div>

                    <div style="text-align: left;" id="text2" class="form-group">
                        <label for="">Date of birth </label>
                        <input runat="server" id="date_birthday" type="text" class="datepicker form-control datepicker ">
                        <small id="" class="form-text text-muted"></small>
                    </div>
                 
                </div>

                <div id="div_doctorProfessionalInfo" class="container col-auto">

                      <div class="row justify-content-lg-start">
                        <h3 class="display-4">Work Data</h3>
                
                    </div>
                            <hr />
                       <div style="text-align: left;" id="text4" class="form-group">
                        <label for="forlabel">Title </label>

                           <asp:DropDownList ID="Select_Title" CssClass="btn w-50" runat="server">
                               <asp:ListItem>Doctor</asp:ListItem>
                             
                           </asp:DropDownList>
                  
                        <small id="" class="form-text text-muted">Your current title.</small>
                    </div>
             
                <%--    <div style="text-align: left;" id="text3" class="form-group">
                        <label for="forlabel">Degree </label>
                              <asp:DropDownList ID="Select_Degree" CssClass="btn w-50" runat="server">
                               <asp:ListItem>Degree</asp:ListItem>
                             
                           </asp:DropDownList>

                        <small id="" class="form-text text-muted">Your current degree</small>
                    </div>--%>
                    <div style="text-align: left;" id="text1" class="form-group">
                        <label for="forlabel">Academic Degree</label>
                        <asp:DropDownList ID="Select_AcademicDegree" CssClass="btn w-50" runat="server">
                               <asp:ListItem>Degree Academic</asp:ListItem>
                             
                           </asp:DropDownList>
                        <small id="" class="form-text text-muted"></small>
                    </div>

                    <div style="text-align: left;" id="text5" class="form-group">
                        <label for="">Bach. Year </label>
                        <input runat="server" type="text" class="datepicker form-control datepicker " id="date_BCH">
                        <small id="" class="form-text text-muted"></small>
                    </div>

                    <div style="text-align: left;" id="text6" class="form-group">
                        <label for="">MCS Year </label>
                        <input runat="server" class="datepicker form-control datepicker " id="date_MCS">
                        <small id="" class="form-text text-muted"></small>
                    </div>
                    <div style="text-align: left;" id="text7" class="form-group">
                        <label for="">PHD Year </label>
                        <input runat="server" type="text" class="datepicker form-control datepicker " id="date_PHD">
                        <small id="" class="form-text text-muted"></small>
                    </div>
             

                           <div style="text-align: left;" id="text9" class="form-group">
                        <label for="forlabel">Other Degrees </label>
                        <textarea runat="server" id="TextArea_otherDegrees" class="form-control" cols="20" rows="4"></textarea>
                          
                        <small id="" class="form-text text-muted">Additional Degrees </small>
                    </div>
                    <div style="text-align: left;" id="text10" class="form-group">
                        <label for="forlabel">Other Qualifications </label>
                       <textarea runat="server" id="TextArea_otherQualifications" class="form-control" cols="20" rows="4"></textarea>

                         
                        <small id="" class="form-text text-muted">Conferences,Researches</small>
                    </div>
                           <span>Doctor Presence</span>
                          <asp:DropDownList ID="Select_DoctorPresence" CssClass="btn w-50" runat="server">
                               <asp:ListItem>Available</asp:ListItem>
                                        <asp:ListItem>Abroad</asp:ListItem>
                           </asp:DropDownList>
                    <small id="" class="form-text text-muted">ex.Available,Abroad</small>
                </div>

            </div>
            <asp:Button ID="btn_Register" runat="server" Text="Submit" CssClass="btn btn-danger w-25" OnClick="btn_Register_Click" />
            <div id="">
              
            </div>

        </section>

</asp:Content>
