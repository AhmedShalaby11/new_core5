<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="Clinical_Rounds_Postgraduate.aspx.cs" Inherits="asp_unit5.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div ng-controller="ngLecturesCasulity" class="container" style="zoom: .9">
        <div class="row justify-content-lg-start">
            <h3 class="display-4">Patient Portal | Postgarduate Clinical Rounds</h3>
        </div>
     
        <hr />
        <div class="row justify-content-center">   
            <div class="col-auto">
    <div class="form-group">
                    <label for=""> Date</label>

                    <input runat="server" type="datetime-local" class="form-control border-dark " id="DateTime_Lecutre" aria-describedby="" placeholder="">
                    <small id="" class="form-text text-muted"></small>
                </div>
            </div>

        </div>

         <div class="row justify-content-center">   
            <div class="col-auto">
                 <span>Lecutrer</span>
                <asp:DropDownList runat="server" ID="DropDown_Lecturer" DataSourceID="SqlDataSource1" DataTextField="doctor_name" DataValueField="doctor_name"></asp:DropDownList>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:unit5ConnectionString %>" SelectCommand="SELECT [doctor_name] FROM [doctor_profile]"></asp:SqlDataSource>
            </div>

        </div>
        
         <div class="row justify-content-center">   
            <div class="col-auto">
              <span>First Substitute</span>
                 <asp:DropDownList runat="server" ID="DropDown_firstSubstitute" DataSourceID="SqlDataSource1" DataTextField="doctor_name" DataValueField="doctor_name"></asp:DropDownList>
            </div>

        </div>

        
         <div class="row justify-content-center">   
            <div class="col-auto">
              <span>second Substitute</span>
                 <asp:DropDownList runat="server" ID="DropDownList_secondsubstitue" DataSourceID="SqlDataSource1" DataTextField="doctor_name" DataValueField="doctor_name"></asp:DropDownList>
            </div>

        </div>

         <div class="row justify-content-center">   
            <div class="col-auto">
                 <span>Time</span>
                <asp:DropDownList runat="server" ID="DropDownList_Time"  >
                    <asp:ListItem>10-12</asp:ListItem>
                    <asp:ListItem>12-2</asp:ListItem>
                 </asp:DropDownList>
 </div>

        </div>

         <div class="row justify-content-center">   
            <div class="col-auto">
                 <span>Group</span>
                <asp:DropDownList runat="server" ID="DropDownList_Group"  >
                    <asp:ListItem>X</asp:ListItem>
                    <asp:ListItem>Y</asp:ListItem>
                 </asp:DropDownList>
 </div>

        </div>

         <div class="row justify-content-center">   
            <div class="col-auto">
   
                <div class="form-group">
                    &nbsp;<small id="" class="form-text text-muted"></small></div>
            </div>

        </div>
        
                <div class="row justify-content-center mb-5">
            <asp:Button  runat="server" CssClass="align-content-center btn btn-danger w-25" Text="Submit" OnClick="Unnamed1_Click" />

            </div>
        </div>
</asp:Content>
