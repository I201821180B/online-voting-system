<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="online_voting_system.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <form class="form-horizontal" method="post">
              <div class="form-group">
                <label class="control-label col-sm-2" for="fname">First Name:</label>
                <div class="col-sm-6">
                  <input type="text" class="form-control" id="fname" placeholder="First Name">
                </div>
              </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="lname">Last Name:</label>
                <div class="col-sm-6">
                  <input type="email" class="form-control" id="lname" placeholder="Last Name">
                </div>
              </div>
                <div class="form-group">
                <label class="control-label col-sm-2" for="email">Email:</label>
                <div class="col-sm-6">
                  <input type="email" class="form-control" id="email" placeholder="Enter email">
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-sm-2" for="pwd">Password:</label>
                <div class="col-sm-6"> 
                  <input type="password" class="form-control" id="pwd" placeholder="Enter password">
                </div>
              </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="cnfpwd">Confirm Password:</label>
                <div class="col-sm-6"> 
                  <input type="password" class="form-control" id="cnfpwd" placeholder="Repeat password">
                </div>
              </div>
              <div class="form-group"> 
                <div class="col-sm-offset-2 col-sm-10">
                  <button type="submit" class="btn btn-default">Submit</button>
                </div>
              </div>
            </form>
    </div>
</asp:Content>
