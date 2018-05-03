<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="Lectures_UnderGraduate.aspx.cs" Inherits="asp_unit5.Lectures" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <div ng-controller="ngLecturesCasulity" class="container" style="zoom: .9">
        <div class="row justify-content-lg-start">
            <h3 class="display-4">Patient Portal | UnderGradutes Lectures</h3>
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
              <span>Substitute</span>
                 <asp:DropDownList runat="server" ID="DropDown_Substitute" DataSourceID="SqlDataSource1" DataTextField="doctor_name" DataValueField="doctor_name"></asp:DropDownList>
            </div>

        </div>
         <div class="row justify-content-center">   
            <div class="col-auto">
   
                <div class="form-group">
                    <label for="">Topic</label>
                    <asp:TextBox CssClass="form-control border-dark" ID="textbox_Topic" runat="server" placeholder="Topic Name"></asp:TextBox>

                    <small id="" class="form-text text-muted"></small>
                </div>
            </div>

        </div>
        
        <div class="row justify-content-center mb-5">
            <asp:Button  runat="server" CssClass="align-content-center btn btn-danger w-25" Text="Submit" OnClick="Unnamed1_Click" />

            </div>
        </div>
</asp:Content>
