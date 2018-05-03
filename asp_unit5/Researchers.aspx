<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="Researchers.aspx.cs" Inherits="asp_unit5.Researchers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Angular/LecturesController.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div ng-controller="LecturesController">
     
           <div class="row justify-content-lg-center">
               <div class="col-auto">
                        <h3 class="display-4">Lectures</h3>
               </div>

        </div>
          
     
        <hr class="text-dark"/>
        <div class="row justify-content-center">
            <div class="col-auto">
                            <span>Filter table </span> <input type="text" ng-model="key" class="btn border-danger mb-3" name="name" value="" />

                <h3 class="text-capitalize text-dark text-center">Lectures table</h3>
                <table class="table table-hover ">
                    <thead>
                    
                        <th>Topic</th>
                        <th>Lecture Date</th>
                        <th>Lecturer Name</th>
                        <th>Substitute Name</th>
                        <th>Actual attended</th>
                    </thead>
                    <tr ng-repeat ="r in lecsObject | filter:key">
                      
                        <td>{{r.Topic}}</td>
                        <td>{{r.Lecture_Date.replace('T',' ')}}</td>
                        <td>{{r.Lecturer_Name}}&nbsp; <input ng-click="set_attendence($index,r.Lecturer_Name)" type="checkbox" name="name" value="" /></td>
                        <td>{{r.Substitute_Name}}&nbsp; <input ng-click="set_attendence($index,r.Substitute_Name)" type="checkbox" name="name" value="" /></td>
                          <td>{{r.Attended_flag}}</td>
                        </tr>
                </table>
            </div>
        </div>
        
        </div>

</asp:Content>
