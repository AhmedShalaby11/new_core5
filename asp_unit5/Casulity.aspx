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
                    <asp:TextBox CssClass="form-control" ID="textbox_PatientName" runat="server" placeholder="Full Name"></asp:TextBox>

                    <small id="" class="form-text text-muted">Preferred Full Name</small>
                </div>

            </div>
            <div class="col-auto">
                <div style="text-align: left;" id="text4" class="form-group">
                    <label for="DropDownList5">Patient Age </label>

                    <asp:DropDownList ID="DropDown_PatientAge" CssClass="btn-secondary btn form-control " runat="server">
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
                    <asp:TextBox CssClass="form-control" ID="textbox_TicketNumber" runat="server" placeholder="Ticket Number"></asp:TextBox>

                    <small id="" class="form-text text-muted"></small>
                </div>




            </div>
            <div class="col-auto">
                <div class="form-group">
                    <label for="">Addmission Date</label>

                    <input runat="server" type="datetime-local" class="form-control " id="Date_AdmissionDate" aria-describedby="" placeholder="">
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
                    <asp:TextBox ng-change="appendDropdown(ng0ParityNumber)" ng-model="ng0ParityNumber" CssClass="form-control" MaxLength="2" ID="textbox_Parity" runat="server" placeholder="#"></asp:TextBox>


                    <small id="" class="form-text text-muted"></small>
                </div>

            </div>
            <div class="col-sm-1">
                <div class="form-group">
                    <label for=""><strong>+</strong></label>
                    <asp:TextBox CssClass="form-control" MaxLength="2" ID="textboxPlus" runat="server" placeholder="#"></asp:TextBox>

                    <small id="" class="form-text text-muted"></small>
                </div>

            </div>

            <div class="col-auto">
                <div style="text-align: left;" id="text4" class="form-group">
                    <label for="forlabel">Weeks</label>

                    <asp:DropDownList ID="DropDown_Diagnosis_Weeks" CssClass=" form-control btn-secondary btn " runat="server">
                        <asp:ListItem>Select</asp:ListItem>

                    </asp:DropDownList>

                </div>

            </div>
            <div class="col-auto">
                <div style="text-align: left;" id="text4" class="form-group">
                    <label for="forlabel">Days</label>

                    <asp:DropDownList ID="DropDown_Diagnosis_Days" CssClass=" form-control btn-secondary btn" runat="server">
                        <asp:ListItem>Select</asp:ListItem>

                    </asp:DropDownList>

                </div>
            </div>
            <div class="col-auto">
                <div style="text-align: left;" id="text4" class="form-group">
                    <label for="forlabel">By </label>

                    <asp:DropDownList ID="DropDown_Diagnosis_By" CssClass="  form-control btn-secondary btn" runat="server">
                        <asp:ListItem>Select</asp:ListItem>

                    </asp:DropDownList>

                </div>
            </div>
            <div class="col-sm-2">
                <div style="text-align: left;" id="text4" class="form-group">
                    <label for="forlabel">Obstetric Disorder </label>

                    <asp:DropDownList ID="DropDown_Diagnosis_Obstetric" CssClass="btn-secondary btn  form-control" runat="server">
                        <asp:ListItem>Select</asp:ListItem>

                    </asp:DropDownList>

                </div>
            </div>

            <div class="col-sm-2">
                <div style="text-align: left;" id="text5" class="form-group">
                    <label for="forlabel">Medical Disorder </label>

                    <asp:DropDownList ID="DropDown_Diagnosis_Disorder" CssClass="btn-secondary btn btn-secondary btn-secondary form-control" runat="server">
                        <asp:ListItem>Select</asp:ListItem>

                    </asp:DropDownList>

                </div>
            </div>
        </div>

        <div id="subdropdowns" class="row  justify-content-lg-start">

            </div>

        <h5>For Baby</h5>
        <div class="mt-3 row justify-content-lg-start">

            <div class="col-sm-2">
                <div style="text-align: left;" id="text5" class="form-group">
                    <label for="forlabel">Presentation </label>

                    <asp:DropDownList ID="DropDown_Diagnosis_Presentation" CssClass="btn-secondary btn btn-secondary btn-secondary form-control" runat="server" DataSourceID="Presentation_CS" DataTextField="presentation_name" DataValueField="presentation_name">
                        <asp:ListItem>Select</asp:ListItem>

                    </asp:DropDownList>

                    <asp:SqlDataSource ID="Presentation_CS" runat="server" ConnectionString="<%$ ConnectionStrings:unit5ConnectionString %>" SelectCommand="SELECT [presentation_name] FROM [conf_child_presentation]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

                </div>
            </div>
            <div class="col-sm-2">
                <div style="text-align: left;" id="text5" class="form-group">
                    <label for="forlabel">State </label>

                    <asp:DropDownList ID="DropDown_Diagnosis_State" CssClass="btn-secondary btn btn-secondary btn-secondary form-control" runat="server" DataSourceID="State_CS" DataTextField="state_name" DataValueField="state_name">
                        <asp:ListItem>Select</asp:ListItem>

                    </asp:DropDownList>

                    <asp:SqlDataSource ID="State_CS" runat="server" ConnectionString="<%$ ConnectionStrings:unit5ConnectionString %>" SelectCommand="SELECT [state_name] FROM [conf_child_state]"></asp:SqlDataSource>

                </div>
            </div>
            <div class="col-sm-3">
                <div class="form-group">
                    <label for="">Number of living Male</label>
                    <asp:TextBox CssClass="form-control" MaxLength="2" ID="textbox_LivingMale" runat="server" placeholder="# of living males"></asp:TextBox>
                    <small id="" class="form-text text-muted"></small>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="form-group">
                    <label for="">Number of living Female</label>
                    <asp:TextBox CssClass="form-control" MaxLength="2" ID="textbox_LivingFemale" runat="server" placeholder="# of living females"></asp:TextBox>
                    <small id="" class="form-text text-muted"></small>
                </div>
            </div>

        </div>
        <h3 class="mt-3 mb-3 text-right text-dark text-left text-uppercase">Intervention 
            <input ng-model="show_intervention" type="checkbox" name="name" value="" /></h3>
        <hr />

        <div ng-show="show_intervention">
            <div class="justify-content-start row">
                <div class="col-auto">
                    <div class="form-group">
                        <label for="">Intervention Date</label>
                        <input runat="server" type="datetime-local" class="form-control " id="Date_InterventionDate" aria-describedby="" placeholder="">
                        <small id="" class="form-text text-muted"></small>
                    </div>
                </div>
            </div>

            <div class="row justify-content-start mb-3">
                <h5>Intervention Category</h5>
                <div class="col-sm-2 ">

                    <div style="text-align: left;" id="text5" class="form-group">
                        <label for="forlabel">Intervention </label>

                        <asp:DropDownList ng-change="Get_InterventionType(ng0interventionName)" ng-model="ng0interventionName" ID="DropDown_Intervention_InterventionSelection" CssClass="btn-secondary btn btn-secondary btn-secondary form-control" runat="server" DataSourceID="Intervention_CS" DataTextField="intervention_name" DataValueField="intervention_name">
                            <asp:ListItem>Select</asp:ListItem>

                        </asp:DropDownList>

                        <asp:SqlDataSource ID="Intervention_CS" runat="server" ConnectionString="<%$ ConnectionStrings:unit5ConnectionString %>" SelectCommand="SELECT [intervention_name] FROM [conf_Intervention]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>

                    </div>
                </div>

                <div class="col-sm-2 ">
                    <div style="text-align: left;" id="text5" class="form-group">
                        <label for="forlabel">Complications </label>

                        <asp:DropDownList ID="DropDown_Intervention_Complications" CssClass="btn-secondary btn btn-secondary btn-secondary form-control" runat="server">
                            <asp:ListItem>Select</asp:ListItem>

                        </asp:DropDownList>

                    </div>

                </div>
                <div class="col-sm-auto">

                    <div style="text-align: left;" id="text5" class="form-group">
                        <label for="forlabel">Additional Complication </label>

                        <asp:DropDownList ID="DropDown_Intervention_ExtraComplications" CssClass="btn-secondary btn btn-secondary btn-secondary form-control" runat="server">
                            <asp:ListItem>Select</asp:ListItem>

                        </asp:DropDownList>

                    </div>
                </div>

                <div class="col-sm-auto">
                    <asp:CheckBox CssClass="" Font-Size="large" Font-Bold="true" runat="server" ID="checkbox_ICU" Text="&nbsp;ICU" />
                </div>
            </div>
            <div class="justify-content-lg-start row">



                <h5 ng-show="showIntervention_With_Outcome">For Outcome</h5>

                <div ng-show="showIntervention_With_Outcome" class="col-sm-2 ml-3">
                    <div style="text-align: left;" id="text5" class="form-group">
                        <label for="forlabel">Outcome </label>

                        <asp:DropDownList ID="DropDown_Intervention_Outcome" CssClass="btn-secondary btn btn-secondary btn-secondary form-control" runat="server" DataSourceID="Outcome_CS" DataTextField="Outcome_name" DataValueField="Outcome_name">
                            <asp:ListItem>Select</asp:ListItem>

                        </asp:DropDownList>

                        <asp:SqlDataSource ID="Outcome_CS" runat="server" ConnectionString="<%$ ConnectionStrings:unit5ConnectionString %>" SelectCommand="SELECT [Outcome_name] FROM [conf_Outcome]"></asp:SqlDataSource>

                    </div>
                </div>


                <div class="col-sm-2">
                    <div style="text-align: left;" id="text5" class="form-group">
                        <label for="forlabel">Sex </label>

                        <asp:DropDownList ID="DropDown_Intervention_Sex" CssClass="btn-secondary btn btn-secondary btn-secondary form-control" runat="server">
                            <asp:ListItem>Select</asp:ListItem>

                        </asp:DropDownList>

                    </div>
                </div>
                <div class="col-sm-2">
                    <div style="text-align: left;" id="text5" class="form-group">
                        <label for="forlabel">Neonatal Condition </label>

                        <asp:DropDownList ID="DropDown_Intervention_NeonatalCondition" CssClass="btn-secondary btn btn-secondary btn-secondary form-control" runat="server" DataSourceID="NeonataOutcome_CS" DataTextField="Name" DataValueField="Name">
                            <asp:ListItem>Select</asp:ListItem>

                        </asp:DropDownList>

                        <asp:SqlDataSource ID="NeonataOutcome_CS" runat="server" ConnectionString="<%$ ConnectionStrings:unit5ConnectionString %>" SelectCommand="SELECT [Name] FROM [NeonatalOutcome]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>

                    </div>

                </div>
            </div>
            <div class="col-sm-3 ml-3">
                <div style="text-align: left;" id="text5" class="form-group">
                    <label for="forlabel">Other Intervention </label>

                    <asp:DropDownList ID="DropDown_Other_Interventions" CssClass="btn-secondary btn btn-secondary btn-secondary form-control" runat="server" DataSourceID="data_without_outcome" DataTextField="intervention_name" DataValueField="intervention_name">
                        <asp:ListItem>Select</asp:ListItem>

                    </asp:DropDownList>
                    <asp:SqlDataSource ID="data_without_outcome" runat="server" ConnectionString="<%$ ConnectionStrings:unit5ConnectionString %>" SelectCommand="SELECT [intervention_name] FROM [conf_Intervention] Where [Type] = 'N'"></asp:SqlDataSource>
                </div>
            </div>

        </div>

        <div class="row  justify-content-start">

            <h5 ng-show="showIntervention_With_Indication">Indications</h5>
            <div ng-show="showIntervention_With_Indication" class="col-sm-5 ml-3">
                <div style="text-align: left;" id="text5" class="form-group">
                    <label for="forlabel">Indications </label>

                    <asp:DropDownList ID="DropDown_cs_Indications" CssClass="btn-secondary btn btn-secondary btn-secondary form-control" runat="server" DataSourceID="cs_Indications" DataTextField="cs_indication_name" DataValueField="cs_indication_name">
                        <asp:ListItem>Select</asp:ListItem>

                    </asp:DropDownList>


                    <asp:SqlDataSource ID="cs_Indications" runat="server" ConnectionString="<%$ ConnectionStrings:unit5ConnectionString %>" SelectCommand="SELECT [cs_indication_name] FROM [conf_cs_indication]"></asp:SqlDataSource>



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

                    <asp:DropDownList ng-model="ng0Surgeon" ID="DropDown_Staff_Surgeon" CssClass="btn-secondary btn btn-secondary btn-secondary form-control" runat="server" DataSourceID="Doctor_Name_CS" DataTextField="doctor_name" DataValueField="doctor_name">
                        <asp:ListItem Value="1">Select</asp:ListItem>

                    </asp:DropDownList>

                    <asp:SqlDataSource ID="Doctor_Name_CS" runat="server" ConnectionString="<%$ ConnectionStrings:unit5ConnectionString %>" SelectCommand="SELECT [doctor_name] FROM [doctor_profile]"></asp:SqlDataSource>

                </div>
            </div>
            <div ng-show="ng0Surgeon" class="col-sm-2">
                <div style="text-align: left;" id="text5" class="form-group">
                    <label for="forlabel">Assistant</label>

                    <asp:DropDownList ID="DropDown_Staff_Assistant" CssClass="btn-secondary btn btn-secondary btn-secondary form-control" runat="server" DataSourceID="Doctor_Name_CS" DataTextField="doctor_name" DataValueField="doctor_name">
                        <asp:ListItem>Select</asp:ListItem>

                    </asp:DropDownList>

                </div>
            </div>
            <div ng-show="ng0Surgeon" class="col-sm-2">
                <div style="text-align: left;" id="text5" class="form-group">
                    <label for="forlabel">Supervisor</label>

                    <asp:DropDownList ID="DropDown_Staff_Supervisor" CssClass="btn-secondary btn btn-secondary btn-secondary form-control" runat="server" DataSourceID="Doctor_Name_CS" DataTextField="doctor_name" DataValueField="doctor_name">
                        <asp:ListItem>Select</asp:ListItem>

                    </asp:DropDownList>

                </div>
            </div>
        </div>
        <h3 class="mt-3 mb-3 text-right text-dark text-left text-uppercase">Others </h3>
        <hr />
        <div class="justify-content-start row">
            <div class="col-4">
                <div class="form-group">
                    <label for="">Notes</label>
                    <textarea runat="server" ng-model="ng0additionalNotes" type="text" class=" form-control" id="TextArea_Others_Notes" aria-describedby="" placeholder=""></textarea>
                    <small id="" class="form-text text-muted">Additional Notes </small>
                </div>


            </div>
        </div>

        <div class="row justify-content-center mb-5">
            <asp:Button runat="server" CssClass="align-content-center btn btn-danger w-25" Text="Submit" OnClick="Unnamed1_Click" />
        </div>



    </div>

</asp:Content>
