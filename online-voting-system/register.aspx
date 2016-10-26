<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="online_voting_system.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Online Voting System - Voter Registration</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <h1> Voter Registration </h1>
        <form class="form-horizontal" method="post" runat="server">
              <div class="form-group">
                <label class="control-label col-sm-2" for="vname">Voter Name:</label>
                <div class="col-sm-6">
                  <asp:TextBox ID="vname" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                  <asp:RequiredFieldValidator ID="vname_required" runat="server" ControlToValidate="vname" Text="*" ForeColor="Red" ErrorMessage="Please Enter Name"/>
              </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="dob">Date Of Birth:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="dob" runat="server" CssClass="form-control" TextMode="Date" ToolTip="Enter the Date Of Birth"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="dob_req" runat="server" ControlToValidate="dob" Text="*" ForeColor="Red" ErrorMessage="Please Enter Date Of Birth"/>
                </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="city">City:</label>
                <div class="col-sm-6">
                  <asp:TextBox ID="city" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="city_required" runat="server" ControlToValidate="city" Text="*" ForeColor="Red" ErrorMessage="Please Enter City"/>
              </div>
              <div class="form-group">
                <label class="control-label col-sm-2" for="username">Username:</label>
                <div class="col-sm-6"> 
                  <asp:TextBox ID="username" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                  <asp:RequiredFieldValidator ID="username_required" runat="server" ControlToValidate="username" Text="*" ForeColor="Red" ErrorMessage="Please Enter Username"/>
              </div>
            
              <div class="form-group">
                <label class="control-label col-sm-2" for="password">Password:</label>
                <div class="col-sm-6"> 
                  <asp:TextBox ID="password" runat="server" CssClass="form-control" CausesValidation="True" TextMode="Password"></asp:TextBox>
                </div>
                  <asp:RequiredFieldValidator ID="password_required" runat="server" ControlToValidate="password" Text="*" ForeColor="Red" ErrorMessage="Please Enter Password"/>
              </div>
            
              <div class="form-group">
                <label class="control-label col-sm-2" for="cnfpassword">Confirm Password:</label>
                <div class="col-sm-6"> 
                  <asp:TextBox ID="cnfpassword" runat="server" CssClass="form-control" CausesValidation="True" TextMode="Password"></asp:TextBox>
                </div>
                  <asp:RequiredFieldValidator ID="cnfpass_required" runat="server" ControlToValidate="cnfpassword" Text="*" ForeColor="Red" ErrorMessage="Please Confirm The Password"/>
                  <asp:CompareValidator ID="passvalidate" runat="server" ControlToValidate="cnfpassword" ControlToCompare="password" ErrorMessage="Passwords Do Not Match !" CssClass="alert alert-danger"/>
              </div>

              <div class="form-group"> 
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button ID="reg_button" runat="server" Text="Register" CssClass="btn btn-default" OnClick="reg_button_Click" CausesValidation="true"/>
                </div>
              </div>

            <div class="form-group">
                <div class="col-sm-8">
                    <asp:ValidationSummary ID="reg_summary" runat="server" CssClass="alert alert-danger" />
                </div>
            </div>
            </form>
    </div>
</asp:Content>
