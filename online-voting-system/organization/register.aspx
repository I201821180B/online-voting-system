<%@ Page Title="" Language="C#" MasterPageFile="~/organization/organization.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="online_voting_system.organization.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container-fluid">
            <h1> Political Party Registration </h1>
        <form class="form-horizontal" method="post" runat="server">
              <div class="form-group">
                <label class="control-label col-sm-2" for="oname">Organization Name:</label>
                <div class="col-sm-6">
                  <asp:TextBox ID="oname" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
              </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="addr">Address:</label>
                <div class="col-sm-6">
                  <asp:TextBox ID="addr" runat="server" CssClass="form-control" Rows="5"></asp:TextBox>
                </div>
              </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="city">City:</label>
                <div class="col-sm-6">
                  <asp:TextBox ID="city" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
              </div>
                <div class="form-group">
                <label class="control-label col-sm-2" for="state">State:</label>
                <div class="col-sm-6">
                  <asp:TextBox ID="state" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-sm-2" for="email">Email:</label>
                <div class="col-sm-6"> 
                  <asp:TextBox ID="email" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                </div>
              </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="contactno">Contact No.:</label>
                <div class="col-sm-6"> 
                  <asp:TextBox ID="contactno" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                </div>
              </div>
            
              <div class="form-group">
                <label class="control-label col-sm-2" for="username">Username:</label>
                <div class="col-sm-6"> 
                  <asp:TextBox ID="username" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
              </div>
            
              <div class="form-group">
                <label class="control-label col-sm-2" for="password">Password:</label>
                <div class="col-sm-6"> 
                  <asp:TextBox ID="password" runat="server" CssClass="form-control" CausesValidation="True" TextMode="Password"></asp:TextBox>
                </div>
              </div>
            
              <div class="form-group">
                <label class="control-label col-sm-2" for="cnfpassword">Confirm Password:</label>
                <div class="col-sm-6"> 
                  <asp:TextBox ID="cnfpassword" runat="server" CssClass="form-control" CausesValidation="True" TextMode="Password"></asp:TextBox>
                </div>
                  <div class="col-sm-3">
                      <asp:CompareValidator ID="passvalidate" runat="server" ControlToValidate="cnfpassword" ControlToCompare="password" Text="Passwords Do Not Match !" CssClass="alert-danger"/>
                  </div>
              </div>

              <div class="form-group"> 
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button ID="submit_btn" runat="server" Text="Register" CssClass="btn btn-default" OnClick="submit_btn_Click" />
                </div>
              </div>
            </form>
    </div>
</asp:Content>
