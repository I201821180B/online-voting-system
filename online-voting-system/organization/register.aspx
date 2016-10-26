<%@ Page Title="" Language="C#" MasterPageFile="~/organization/organization.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="online_voting_system.organization.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Online Voting System - Organization Registration</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container-fluid">
            <h1> Political Party/Organization Registration </h1>
        <form class="form-horizontal" method="post" runat="server">
              <div class="form-group">
                <label class="control-label col-sm-2" for="oname">Organization Name:</label>
                <div class="col-sm-6">
                  <asp:TextBox ID="oname" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                    <asp:RequiredFieldValidator ID="oname_req" runat="server" ControlToValidate="oname" Text="*" ForeColor="Red" ErrorMessage="Please Enter the Organization Name" />
              </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="addr">Address:</label>
                <div class="col-sm-6">
                  <asp:TextBox ID="addr" runat="server" CssClass="form-control" Rows="5"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="addr_req" runat="server" ControlToValidate="addr" Text="*" ForeColor="Red" ErrorMessage="Please Enter the Organization Address" />
              </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="city">City:</label>
                <div class="col-sm-6">
                  <asp:TextBox ID="city" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="city_req" runat="server" ControlToValidate="city" Text="*" ForeColor="Red" ErrorMessage="Please Enter the Organization City" />
              </div>
              <div class="form-group">
                <label class="control-label col-sm-2" for="email">Email:</label>
                <div class="col-sm-6"> 
                  <asp:TextBox ID="email" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                </div>
                  <asp:RequiredFieldValidator ID="email_req" runat="server" ControlToValidate="email" Text="*" ForeColor="Red" ErrorMessage="Please Enter the Organization Email Address" />
              </div>
            
              <div class="form-group">
                <label class="control-label col-sm-2" for="username">Username:</label>
                <div class="col-sm-6"> 
                  <asp:TextBox ID="username" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                  <asp:RequiredFieldValidator ID="username_req" runat="server" ControlToValidate="username" Text="*" ForeColor="Red" ErrorMessage="Please Enter the Username" />
              </div>
            
              <div class="form-group">
                <label class="control-label col-sm-2" for="password">Password:</label>
                <div class="col-sm-6"> 
                  <asp:TextBox ID="password" runat="server" CssClass="form-control" CausesValidation="True" TextMode="Password"></asp:TextBox>
                </div>
                  <asp:RequiredFieldValidator ID="password_req" runat="server" ControlToValidate="password" Text="*" ForeColor="Red" ErrorMessage="Please Enter the Password" />
              </div>
            
              <div class="form-group">
                <label class="control-label col-sm-2" for="cnfpassword">Confirm Password:</label>
                <div class="col-sm-6"> 
                  <asp:TextBox ID="cnfpassword" runat="server" CssClass="form-control" CausesValidation="True" TextMode="Password"></asp:TextBox>
                </div>
                  <asp:RequiredFieldValidator ID="cnfpassword_req" runat="server" ControlToValidate="cnfpassword" Text="*" ForeColor="Red" ErrorMessage="Please Confirm the Password" />
                  <div class="col-sm-3">
                      <asp:CompareValidator ID="passvalidate" runat="server" ControlToValidate="cnfpassword" ControlToCompare="password" ErrorMessage="Passwords Do Not Match !" CssClass="alert alert-danger"/>
                  </div>
              </div>

              <div class="form-group"> 
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button ID="submit_btn" runat="server" Text="Register" CssClass="btn btn-default" OnClick="submit_btn_Click" CausesValidation="true" />
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
