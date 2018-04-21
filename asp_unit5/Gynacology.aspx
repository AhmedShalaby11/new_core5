<%@ Page Title="" EnableEventValidation="false" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="Casulity.aspx.cs" Inherits="asp_unit5.Casulity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Angular/CasulityController.js"></script>
</asp:Content>
<asp:Content  ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 
        
        <div ng-controller="ngControllerCasulity" class="container" style="zoom: .9">
        <div class="row justify-content-lg-start">
            <h3 class="display-4">Patient Portal</h3>

        </div>

        <h3 class="mt-3 mb-3 text-right text-dark text-left text-uppercase">Personal </h3>
        <hr />
        <div class="row justify-content-start">


            <div class="col-lg-5">

                <div class="form-group">
                    <label for="">Patient Name</label>
                    <asp:TextBox CssClass="form-control border-dark" ID="textbox_PatientName" runat="server" placeholder="Full Name"></asp:TextBox>

                    <small id="" class="form-text text-muted">Preferred Full Name</small>
                </div>

            </div>
            <div class="col-auto">
                <div style="text-align: left;" id="text4" class="form-group">
                    <label for="DropDownList5">Patient Age </label>

                    <asp:DropDownList ID="DropDown_PatientAge" CssClass="btn-secondary btn form-control border-dark " runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem ng-repeat="a in patienAgeRange">{{a}}</asp:ListItem>

                    </asp:DropDownList>

                </div>
            </div>
        </div>
        <h3 class="mt-3 mb-3 text-right text-dark text-left text-uppercase">Ticket </h3>
        <hr />
        <div class="row justify-content-start">
            <div class="col-auto">

                <div class="form-group">
                    <label for="">Addmission Number</label>
                    <asp:TextBox CssClass="form-control border-dark border-dark" ID="textbox_TicketNumber" runat="server" placeholder="Ticket Number"></asp:TextBox>

                    <small id="" class="form-text text-muted"></small>
                </div>




            </div>
            <div class="col-auto">
                <div class="form-group">
                    <label for="">Addmission Date</label>

                    <input runat="server" type="datetime-local" class="form-control border-dark " id="Date_AdmissionDate" aria-describedby="" placeholder="">
                    <small id="" class="form-text text-muted"></small>
                </div>
            </div>
        </div>

        <h3 class="mt-3 mb-3 text-right text-dark  text-uppercase">Diagnosis </h3>
        <hr />
            
        <div class="row justify-content-lg-start">
           
            <div class="col-sm-1">
                <div class="form-group">
                    <label for="">Parity</label>
                    <asp:TextBox  ng-model="ng0ParityNumber" CssClass="form-control border-dark" MaxLength="2" ID="textbox_Parity" runat="server" placeholder="#"></asp:TextBox>


                    <small id="" class="form-text text-muted"></small>
                </div>

            </div>
            <div class="col-sm-1">
                <div class="form-group">
                    <label for=""><strong>+</strong></label>
                    <asp:TextBox ng-model="ng0Plus" CssClass="form-control border-dark" MaxLength="2" ID="textboxPlus" runat="server" placeholder="#"></asp:TextBox>

                    <small id="" class="form-text text-muted"></small>
                </div>

            </div>

            <div class="col-auto">
                <div style="text-align: left;" id="text4" class="form-group">
                    <label for="forlabel">Weeks</label>

                    <asp:DropDownList ng-model="ng0Weeks" ID="DropDown_Diagnosis_Weeks" CssClass=" form-control border-dark btn-secondary btn " runat="server">
                        <asp:ListItem>Select</asp:ListItem>

                    </asp:DropDownList>

                </div>

            </div>
            <div class="col-auto">
                <div style="text-align: left;" id="text4" class="form-group">
                    <label for="forlabel">Days</label>

                    <asp:DropDownList ng-model="ng0Days" ID="DropDown_Diagnosis_Days" CssClass=" form-control border-dark btn-secondary btn" runat="server">
                        <asp:ListItem>Select</asp:ListItem>

                    </asp:DropDownList>

                </div>
            </div>
            <div class="col-auto">
                <div style="text-align: left;" id="text4" class="form-group">
                    <label for="forlabel">By </label>

                    <asp:DropDownList ng-model="ng0By" ID="DropDown_Diagnosis_By" CssClass="  form-control border-dark btn-secondary btn" runat="server" DataSourceID="sql_data_table_By" DataTextField="element_name" DataValueField="element_name">
                        <asp:ListItem>Select</asp:ListItem>

                    </asp:DropDownList>

                    <asp:SqlDataSource ID="sql_data_table_By" runat="server" ConnectionString="<%$ ConnectionStrings:unit5ConnectionString %>" SelectCommand="SELECT [element_name] FROM [conf_by]"></asp:SqlDataSource>

                </div>
            </div>
            <div class="col-sm-2">
                <div style="text-align: left;" id="text4" class="form-group">
                    <label for="forlabel">Obstetric Disorder </label>

                    <asp:DropDownList ID="DropDown_Diagnosis_Obstetric" CssClass="btn-secondary btn  form-control border-dark" runat="server" DataTextField="element_name" DataValueField="element_name" DataSourceID="sql_data_table_Obestetric_Disorder">
                        <asp:ListItem>Select</asp:ListItem>

                    </asp:DropDownList>


                    <asp:SqlDataSource ID="sql_data_table_Obestetric_Disorder" runat="server" ConnectionString="<%$ ConnectionStrings:unit5ConnectionString %>" SelectCommand="SELECT [element_name] FROM [conf_medicalDisorder]"></asp:SqlDataSource>


                </div>
            </div>

            <div class="col-sm-2">
                <div style="text-align: left;" id="text5" class="form-group">
                    <label for="forlabel">Medical Disorder </label>

                    <asp:DropDownList ID="DropDown_Diagnosis_Disorder" CssClass="btn-secondary btn btn-secondary btn-secondary form-control border-dark" runat="server"  DataTextField="element_name" DataValueField="element_name" DataSourceID="sql_data_table_MedicalDisorder">
                        <asp:ListItem>Select</asp:ListItem>

                    </asp:DropDownList>


                    <asp:SqlDataSource ID="sql_data_table_MedicalDisorder" runat="server" ConnectionString="<%$ ConnectionStrings:unit5ConnectionString %>" SelectCommand="SELECT [element_name] FROM [conf_medicalDisorder]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="sql_data_table_" runat="server"></asp:SqlDataSource>


                </div>
            </div>
        </div>

        
            <hr />
        <h5>For Baby</h5>
        <div class="mt-3 row justify-content-lg-start">

            <div class="col-sm-2">
                <div style="text-align: left;" id="text5" class="form-group">
                    <label for="forlabel">Presentation </label>

                    <asp:DropDownList ng-model="ng0Presentation" ID="DropDown_Diagnosis_Presentation" CssClass="btn-secondary btn btn-secondary btn-secondary form-control border-dark" runat="server"  DataTextField="presentation_name" DataValueField="presentation_name" DataSourceID="sql_data_table_Presentation">
                        <asp:ListItem>Select</asp:ListItem>

                    </asp:DropDownList>

                    <asp:SqlDataSource ID="sql_data_table_Presentation" runat="server" ConnectionString="<%$ ConnectionStrings:unit5ConnectionString %>" SelectCommand="SELECT [presentation_name] FROM [conf_child_presentation]"></asp:SqlDataSource>

                </div>
            </div>
            <div class="col-sm-2">
                <div style="text-align: left;" id="text5" class="form-group">
                    <label for="forlabel">State </label>

                    <asp:DropDownList ng-model="ng0State" ID="DropDown_Diagnosis_State" CssClass="btn-secondary btn btn-secondary btn-secondary form-control border-dark" runat="server"  DataTextField="state_name" DataValueField="state_name" DataSourceID="sql_data_table_State">
                        <asp:ListItem>Select</asp:ListItem>

                    </asp:DropDownList>


                    <asp:SqlDataSource ID="sql_data_table_State" runat="server" ConnectionString="<%$ ConnectionStrings:unit5ConnectionString %>" SelectCommand="SELECT [state_name] FROM [conf_child_state]"></asp:SqlDataSource>


                </div>
            </div>
            <div class="col-sm-3">
                <div class="form-group">
                    <label for="">Number of living Male</label>
                    <asp:TextBox CssClass="form-control border-dark" MaxLength="2" ID="textbox_LivingMale" runat="server" placeholder="# of living males"></asp:TextBox>
                    <small id="" class="form-text text-muted"></small>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="form-group">
                    <label for="">Number of living Female</label>
                    <asp:TextBox CssClass="form-control border-dark" MaxLength="2" ID="textbox_LivingFemale" runat="server" placeholder="# of living females"></asp:TextBox>
                    <small id="" class="form-text text-muted"></small>
                </div>
            </div>

        </div>
        <h3 class="mt-3 mb-3 text-right text-dark text-left text-uppercase">Intervention 
            <input ng-model="show_intervention" type="checkbox" name="name" value="" /></h3>
        <hr />

        

        <div class="row  justify-content-start">

            
            
                <div style="text-align: left;" id="text5" class="form-group">
                    <label for="forlabel">Indications </label>

                    <asp:DropDownList ID="DropDown_cs_Indications" CssClass="btn-secondary btn btn-secondary btn-secondary form-control border-dark" runat="server" DataTextField="cs_indication_name" DataValueField="cs_indication_name" DataSourceID="sql_data_table_Indications">
                        <asp:ListItem>Select</asp:ListItem>

                    </asp:DropDownList>





                    <asp:SqlDataSource ID="sql_data_table_Indications" runat="server" ConnectionString="<%$ ConnectionStrings:unit5ConnectionString %>" SelectCommand="SELECT [cs_indication_name] FROM [conf_cs_indication]"></asp:SqlDataSource>





                </div>
            </div>

        </div>






        <div class="justify-content-start row">
        </div>

        <h3 class="mt-3 mb-3 text-right text-dark text-left text-uppercase">Staff </h3>
        <hr />

        <div class="justify-content-lg-start row">
            <div class="col-sm-2">
                <div style="text-align: left;" id="text5" class="form-group">
                    <label for="forlabel">Surgeon</label>

                    <asp:DropDownList ng-model="ng0Surgeon" ID="DropDown_Staff_Surgeon" CssClass="btn-secondary btn btn-secondary btn-secondary form-control border-dark" runat="server" DataTextField="doctor_name" DataValueField="doctor_name" DataSourceID="sql_data_table_Doctors">
                        <asp:ListItem Value="1">Select</asp:ListItem>

                    </asp:DropDownList>


                    <asp:SqlDataSource ID="sql_data_table_Doctors" runat="server" ConnectionString="<%$ ConnectionStrings:unit5ConnectionString %>" SelectCommand="SELECT [doctor_name] FROM [doctor_profile]"></asp:SqlDataSource>


                </div>
            </div>
           
        </div>
        <h3 class="mt-3 mb-3 text-right text-dark text-left text-uppercase">Others </h3>
        <hr />
        <div class="justify-content-start row">
            <div class="col-4">
                <div class="form-group">
                    <label for="">Notes</label>
                    <textarea runat="server" ng-model="ng0additionalNotes" type="text" class=" form-control border-dark" id="TextArea_Others_Notes" aria-describedby="" placeholder=""></textarea>
                    <small id="" class="form-text text-muted">Additional Notes </small>
                </div>


            </div>
        </div>

        <div class="row justify-content-center mb-5">
            <asp:Button  runat="server" CssClass="align-content-center btn btn-danger w-25" Text="Submit" OnClick="Unnamed1_Click" />

            </div>



    </div>

</asp:Content>
