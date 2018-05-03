<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="ClinicalScheduels.aspx.cs" Inherits="asp_unit5.ClinicalScheduels" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Angular/ClinicalController.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="container" ng-controller="ClinicalController">
     
           <div class="row justify-content-lg-center">
               <div class="col-auto">
                        <h3 class="display-4">Clinical</h3>
               </div>

        </div>
          
     
        <hr class="text-dark"/>
        <div class="  row justify-content-center">
            <div class="col-auto">
                            <span>Filter table </span> <input type="text" ng-model="key" class="btn border-danger mb-3" name="name" value="" />

                <h3 class="text-capitalize text-dark text-center">Clinical table</h3>
                <table class="table table-hover ">
                    <thead>
                        <tr>
                            <th>Lecturer </th>
                            <th>First Subsitute </th>
                            <th>Second Subsitute </th>
                            <th>Attended </th>
                          <%--  <th>Student </th>--%>
                            <th>Time</th>
                            <th>Group</th>
                            <th>Lecture date</th>
                        </tr>
                    </thead>
                    <tr ng-repeat ="r in ClinicalObject | filter:key">
                      
                        <td>{{r.Lecturer_name}}</td>
                        <td>{{r.First_Subsitute_name}}</td>
                        <td>{{r.Second_Subsitute_name}}</td>
                        <td>{{r.Attended_flag}}</td>
                    <%--      <td>{{r.Student_flag}}</td>--%>
                        <td>{{r.Time}}</td>
                         <td>{{r.group}}</td>
                        <td>{{r.Lecture_date.replace('T',' ')}}</td>
                        </tr>
                </table>
            </div>
        </div>
        
        </div>
</asp:Content>
