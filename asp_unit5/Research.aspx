<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="Research.aspx.cs" Inherits="asp_unit5.Research" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div ng-controller="ngLecturesCasulity" class="container" style="zoom: .9">
        <div class="row justify-content-lg-start">
            <h3 class="display-4">Patient Portal | Research</h3>
        </div>
     
        <hr />
        
         <div class="row justify-content-center">   
            <div class="col-auto">
                 <span>Internal Researcher</span>
                <asp:DropDownList runat="server" ID="DropDown_Researcher" DataSourceID="SqlDataSource1" DataTextField="doctor_name" DataValueField="doctor_name"></asp:DropDownList>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:unit5ConnectionString %>" SelectCommand="SELECT [doctor_name] FROM [doctor_profile]"></asp:SqlDataSource>
            </div>

        </div>

                 <div class="row justify-content-center">   
            <div class="col-auto">
   
                <div class="">
                    <span>External Researcher</span>
                    <asp:TextBox CssClass="form-control border-dark" ID="textbox_Researcher" runat="server" placeholder="Reseacher Name"></asp:TextBox>

                    <small id="" class="form-text text-muted"></small>
                </div>
            </div>

        </div>

                 <div class="row justify-content-center">   
            <div class="col-auto">
                 <span>First Supervisor</span>
                <asp:DropDownList runat="server" ID="DropDownList_FirstSupervisor" DataSourceID="SqlDataSource1" DataTextField="doctor_name" DataValueField="doctor_name"></asp:DropDownList>
                 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:unit5ConnectionString %>" SelectCommand="SELECT [doctor_name] FROM [doctor_profile]"></asp:SqlDataSource>
            </div>

        </div>

        

                 <div class="row justify-content-center">   
            <div class="col-auto">
                 <span>Second Supervisor</span>
                <asp:DropDownList runat="server" ID="DropDownList_secondSupervisor" DataSourceID="SqlDataSource1" DataTextField="doctor_name" DataValueField="doctor_name"></asp:DropDownList>
                 <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:unit5ConnectionString %>" SelectCommand="SELECT [doctor_name] FROM [doctor_profile]"></asp:SqlDataSource>
            </div>

        </div>

        

                 <div class="row justify-content-center">   
            <div class="col-auto">
                 <span>Third Supervisor</span>
                <asp:DropDownList runat="server" ID="DropDownList_thirdSupervisor" DataSourceID="SqlDataSource1" DataTextField="doctor_name" DataValueField="doctor_name"></asp:DropDownList>
                 <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:unit5ConnectionString %>" SelectCommand="SELECT [doctor_name] FROM [doctor_profile]"></asp:SqlDataSource>
            </div>

        </div>

        

                 <div class="row justify-content-center">   
            <div class="col-auto">
                 <span>Fourth Supervisor</span>
                <asp:DropDownList runat="server" ID="DropDownList_FourthSupervisor" DataSourceID="SqlDataSource1" DataTextField="doctor_name" DataValueField="doctor_name"></asp:DropDownList>
                 <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:unit5ConnectionString %>" SelectCommand="SELECT [doctor_name] FROM [doctor_profile]"></asp:SqlDataSource>
            </div>

        </div>

        

                 <div class="row justify-content-center">   
            <div class="col-auto">
                 <span>Fifth Supervisor</span>
                <asp:DropDownList runat="server" ID="DropDownList_FifthSupervisor" DataSourceID="SqlDataSource1" DataTextField="doctor_name" DataValueField="doctor_name"></asp:DropDownList>
                 <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:unit5ConnectionString %>" SelectCommand="SELECT [doctor_name] FROM [doctor_profile]"></asp:SqlDataSource>
            </div>

        </div>

          <div class="row justify-content-center">   
            <div class="col-auto">
   
                <div class="form-group">
                    <label for="">Title</label>
                    <asp:TextBox CssClass="form-control border-dark" ID="textbox_Title" runat="server" placeholder="Topic Name"></asp:TextBox>

                    <small id="" class="form-text text-muted"></small>
                </div>
            </div>

        </div>


        <div class="row justify-content-center">   
            <div class="col-auto">
    <div class="form-group">
                    <label for="">Registration Date</label>

                    <input runat="server" type="datetime-local" class="form-control border-dark " id="Registration_DateTime" aria-describedby="" placeholder="">
                    <small id="" class="form-text text-muted"></small>
                </div>
            </div>

        </div>

         <div class="row justify-content-center">   
            <div class="col-auto">
              <span>State</span>
                 <asp:DropDownList runat="server" ID="DropDown_State" DataTextField="State" DataValueField="State">
                     <asp:ListItem>Protocol</asp:ListItem>
                     <asp:ListItem>Recruting</asp:ListItem>
                     <asp:ListItem>Results</asp:ListItem>
                     <asp:ListItem>Completed</asp:ListItem>
                </asp:DropDownList>
            </div>

        </div>
       
        
        <div class="row justify-content-center mb-5">
            <asp:Button  runat="server" CssClass="align-content-center btn btn-danger w-25" Text="Submit" OnClick="Unnamed1_Click" />

            </div>
        </div>
</asp:Content>
