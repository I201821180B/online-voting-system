<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="online_voting_system.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Login</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <h1>Online Voting System - Single Login</h1>
        <form class="form-horizontal" method="post" runat="server">
            
            <div class="form-group">
                <br/>
                    <center>
                        <asp:Label ID="Label1" runat="server" CssClass="alert alert-danger fade in" Visible="False"></asp:Label>
                    </center>
                <br/><br/>
                <label class="control-label col-sm-2" for="logintype">Login Type:</label>
            &nbsp;<div class="col-sm-6">
                    <asp:DropDownList ID="logintype" runat="server" CssClass="form-control">
                        <asp:ListItem>Organization</asp:ListItem>
                        <asp:ListItem>Candidate</asp:ListItem>
                        <asp:ListItem>Voter</asp:ListItem>
                    </asp:DropDownList>
                </div>
              </div>
              
            <div class="form-group">
                <label class="control-label col-sm-2" for="username">Username:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="username" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
              </div>

              <div class="form-group">
                <label class="control-label col-sm-2" for="pwd">Password:</label>
                <div class="col-sm-6"> 
                  <asp:TextBox ID="pwd" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                </div>
              </div>
              <div class="form-group"> 
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button ID="login_btn" runat="server" Text="Login" CssClass="btn btn-default" OnClick="login_btn_Click"/>
                </div>
              </div>
            </form>
    </div>
</asp:Content>
