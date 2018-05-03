<%@ Page EnableEventValidation="false" Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="asp_unit5.search" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Angular/searchController.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div ng-controller="ngControllerCasulity" class="container" style="zoom: .9">
        <div class="row justify-content-lg-start">
            <h3 class="display-4">Search Portal</h3>

        </div>

        <h3 class="mt-3 mb-3 text-right text-dark text-left text-uppercase">Name | Ticket </h3>
        <hr />
        <h3 class="text-muted">Search by</h3>
        <div class="row justify-content-center">

            <div class="col-sm-3">
                <div class="form-group">
                    <label for="">Patient Name</label>
                    <input ng-model="ng_patientname" type="text" class="form-control border-dark" placeholder="الأسم Name "></input>

                    <small id="" class="form-text text-muted">Arabic or English - Not a case senstive</small>
                </div>

            </div>
            <div class="col-sm-3">
                <div class="form-group">
                    <label for="">Ticket ID</label>
                    <input ng-model="ng_ticketid" type="text" class="form-control border-dark" placeholder="Ticket ID"></input>

                    <small id="" class="form-text text-muted"></small>
                </div>
            </div>


        </div>
        <div class="justify-content-center row">
            <asp:Button Text="Search" CssClass="btn btn-danger w-25" OnClientClick="return false;" ng-click="search_patientdata(ng_patientname,ng_ticketid)" runat="server" />
        </div>

           
                <div class="form-group" ng-show="div_Search_Patient_info">
                    <label class="text-dark fa-lg" for="">Quick Filter</label>
                    <input ng-model="key" type="text" class=" form-control border-dark" placeholder="Type to filter"></input>

                    <small id="" class="form-text text-muted">Filtering all the page content</small>
               
                <h3>Found {{dataObject.length}} Results.</h3>    
                </div>

            <div class="overflow"  ng-show="div_Search_Patient_info">
        <div class="mt-4 " ng-repeat="p in dataObject | filter:key">
            
                 

            <div class="row justify-content-lg-start">
                <div class="col-9">
                    <h2 class="display-4">Patient #{{p.$id}}</h2>
                </div>
                <div class="col-auto">
                    <h5>Surgeon: <span class="text-lg-right">{{p.Surgeons.replace(',','\n')}}</span>
                    </h5>
                    <h5>Assistant: <span class="text-lg-right">{{p.Assistants.replace(',','\n')}}</span>
                    </h5>
                    <h5>Supervisor: <span class="text-lg-right">{{p.Supervisors.replace(',','\n')}}</span>
                    </h5>

                </div>

            </div>
            <div class="mt-4 container justify-content-start row" ng-show="div_Search_Patient_info">

                <div class="col-auto">
                    <h3 class="mb-3 text-danger">PERSONAL</h3>
                    <h5>Patient Name </h5>
                    <span class="text-lg-left">{{p.patientName}}</span>
                    <h5>Patient Age </h5>
                    <span class="text-lg-left">{{p.patientAge}}</span>
                    <h5>Patient Sex </h5>
                    <span class="text-lg-left">{{p.Sex}}</span>
                </div>

                <div class="col-auto">
                    <h3 class="mb-3 text-danger">TICKET</h3>
                    <h5>AdmissionDate</h5>
                    <span class="text-lg-left">{{p.AdmissionDate}}</span>

                    <h5>ticketId</h5>
                    <span class="text-lg-left">{{p.ticketId}}</span>

                </div>

                <div class="col-auto">
                    <h3 class="mb-3 text-danger">DIAGNOSIS {{p.AdmissionDate.replace('T',' ')}}</h3>
                    <h5>Parity</h5>
                    <span class="text-lg-left">{{p.ParityValue}} + {{p.AddedValue}}</span>


                    <h5>Weeks</h5>
                    <span class="text-lg-left">{{p.Weeks}}</span>
                    <h5>Days</h5>
                    <span class="text-lg-left">{{p.Days}}</span>

                </div>
                <div class="col-auto">

                    <h5 class="mt-5">By</h5>
                    <span class="text-lg-left">{{p.By}}</span>
                    <h5>Obstetric Disorder</h5>
                    <span class="text-lg-left">{{p.Obstetric}}</span>
                    <h5>Medical Disorder</h5>
                    <span class="text-lg-left">{{p.Disorder}}</span>
                </div>
                <div class="col-auto">

                    <h5 class="mt-5">presentation</h5>
                    <span class="text-lg-left">{{p.Presentation}}</span>
                    <h5>State</h5>
                    <span class="text-lg-left">{{p.ChildState}}</span>
                    <h5>Living Childs</h5>
                    <span class="text-lg-left">Male: {{p.NumberOfLivingMale}} - Female: {{p.NumberOfLivingFemale}}</span>
                </div>
                <div class="col-auto">
                    <h3 class="mb-3 mt-3 text-danger">INTERVENTION {{p.InterventionDate.replace('T',' ')}}</h3>
                    <h5>Intervention</h5>
                    <h5>ICU</h5>
                    <span class="text-lg-left">{{p.ICU}}</span>
                    <span class="text-lg-left">{{p.Intervention}}</span>
                    <h5>Complications</h5>
                    <span class="text-lg-left">{{p.Complications}}</span>
                    <h5>Additional Complication</h5>
                    <span class="text-lg-left">{{p.AdditionalComplications}}</span>

                </div>
                <div class="col-auto">

                    <h5 class="mt-5">Outcome</h5>
                    <span class="text-lg-left">{{p.Outcome}}</span>
                    <h5>Sex</h5>
                    <span class="text-lg-left">{{p.Sex}}</span>
                    <h5>Neonatal Condition</h5>
                    <span class="text-lg-left">{{p.NeonatalCondition}}</span>


                </div>

                <div class="col-auto">

                    <h5 class="mt-5">Other Intervention</h5>
                    <span class="text-lg-left">{{p.OtherIntervention}}</span>
                    <h5>Indications</h5>
                    <span class="text-lg-left">{{p.Indications}}</span>



                </div>




            </div>
            <hr />
        </div>
                </div>
        
        <h3 class="mt-3 mb-3 text-right text-dark text-left text-uppercase">Date Range </h3>
        <hr />
         <div class="row justify-content-center">

            <div class="col-sm-3">
                <div class="form-group">
                    <label for="">Date From</label>
   <input type="text"  id="textbox_datefrom" class="form_datetime  text-left border-dark form-control"/>
              
                </div>

            </div>
            <div class="col-sm-3">
                <div class="form-group">
                    <label for="">Date To</label>
   <input type="text"  id="textbox_dateto" class="form_datetime  text-left border-dark form-control" />
           
                    <small id="" class="form-text text-muted"></small>
                </div>
            </div>


        </div>
         <div class="justify-content-center row">
           
            <asp:Button Text="Get Data" CssClass="btn btn-danger w-25" OnClientClick="return false;" ng-click="search_patientdata_dateRange()" runat="server" />
        </div>
        <%-- Results --%>
   
            <div class="form-group" ng-show="div_Search_Date_Range">
                    <label class="text-dark fa-lg" for="">Quick Filter</label>
                    <input ng-model="keyDate" type="text" class=" form-control border-dark" placeholder="Type to filter"></input>

                    <small id="" class="form-text text-muted">Filtering all the page content</small>
               
                <h3>Found {{dataRangeObject.length}} Results.</h3>    
           
                <div class="overflow">
        <div class="mt-4 " ng-repeat="p in dataRangeObject | filter:keyDate">
            
                 

            <div class="row justify-content-lg-start">
                <div class="col-9">
                    <h2 class="display-4">Patient #{{p.$id}}</h2>
                </div>
                <div class="col-auto">
                    <h5>Surgeon: <span class="text-lg-right">{{p.Surgeons.replace(',','\n')}}</span>
                    </h5>
                    <h5>Assistant: <span class="text-lg-right">{{p.Assistants.replace(',','\n')}}</span>
                    </h5>
                    <h5>Supervisor: <span class="text-lg-right">{{p.Supervisors.replace(',','\n')}}</span>
                    </h5>

                </div>

            </div>
            <div class="mt-4 container justify-content-start row" ng-show="div_Search_Date_Range">

                <div class="col-auto">
                    <h3 class="mb-3 text-danger">PERSONAL</h3>
                    <h5>Patient Name </h5>
                    <span class="text-lg-left">{{p.patientName}}</span>
                    <h5>Patient Age </h5>
                    <span class="text-lg-left">{{p.patientAge}}</span>
                    <h5>Patient Sex </h5>
                    <span class="text-lg-left">{{p.Sex}}</span>
                </div>

                <div class="col-auto">
                    <h3 class="mb-3 text-danger">TICKET</h3>
                    <h5>AdmissionDate</h5>
                    <span class="text-lg-left">{{p.AdmissionDate}}</span>

                    <h5>ticketId</h5>
                    <span class="text-lg-left">{{p.ticketId}}</span>

                </div>

                <div class="col-auto">
                    <h3 class="mb-3 text-danger">DIAGNOSIS {{p.AdmissionDate.replace('T',' ')}}</h3>
                    <h5>Parity</h5>
                    <span class="text-lg-left">{{p.ParityValue}} + {{p.AddedValue}}</span>


                    <h5>Weeks</h5>
                    <span class="text-lg-left">{{p.Weeks}}</span>
                    <h5>Days</h5>
                    <span class="text-lg-left">{{p.Days}}</span>

                </div>
                <div class="col-auto">

                    <h5 class="mt-5">By</h5>
                    <span class="text-lg-left">{{p.By}}</span>
                    <h5>Obstetric Disorder</h5>
                    <span class="text-lg-left">{{p.Obstetric}}</span>
                    <h5>Medical Disorder</h5>
                    <span class="text-lg-left">{{p.Disorder}}</span>
                </div>
                <div class="col-auto">

                    <h5 class="mt-5">presentation</h5>
                    <span class="text-lg-left">{{p.Presentation}}</span>
                    <h5>State</h5>
                    <span class="text-lg-left">{{p.ChildState}}</span>
                    <h5>Living Childs</h5>
                    <span class="text-lg-left">Male: {{p.NumberOfLivingMale}} - Female: {{p.NumberOfLivingFemale}}</span>
                </div>
                <div class="col-auto">
                    <h3 class="mb-3 mt-3 text-danger">INTERVENTION {{p.InterventionDate.replace('T',' ')}}</h3>
                    <h5>Intervention</h5>
                    <h5>ICU</h5>
                    <span class="text-lg-left">{{p.ICU}}</span>
                    <span class="text-lg-left">{{p.Intervention}}</span>
                    <h5>Complications</h5>
                    <span class="text-lg-left">{{p.Complications}}</span>
                    <h5>Additional Complication</h5>
                    <span class="text-lg-left">{{p.AdditionalComplications}}</span>

                </div>
                <div class="col-auto">

                    <h5 class="mt-5">Outcome</h5>
                    <span class="text-lg-left">{{p.Outcome}}</span>
                    <h5>Sex</h5>
                    <span class="text-lg-left">{{p.Sex}}</span>
                    <h5>Neonatal Condition</h5>
                    <span class="text-lg-left">{{p.NeonatalCondition}}</span>


                </div>

                <div class="col-auto">

                    <h5 class="mt-5">Other Intervention</h5>
                    <span class="text-lg-left">{{p.OtherIntervention}}</span>
                    <h5>Indications</h5>
                    <span class="text-lg-left">{{p.Indications}}</span>



                </div>




            </div>
            <hr />
        </div>
                    </div>
                     </div>
    </div>
  
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:unit5ConnectionString %>" SelectCommand="SELECT * FROM [CasulityProfile]"></asp:SqlDataSource>
</asp:Content>
