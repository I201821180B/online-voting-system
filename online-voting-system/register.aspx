<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="online_voting_system.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
              </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="city">City:</label>
                <div class="col-sm-6">
                  <asp:TextBox ID="city" runat="server" CssClass="form-control"></asp:TextBox>
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
                    <asp:Button ID="reg_button" runat="server" Text="Register" CssClass="btn btn-default" OnClick="reg_button_Click" />
                </div>
              </div>
            </form>
    </div>
</asp:Content>
