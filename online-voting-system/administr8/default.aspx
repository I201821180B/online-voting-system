<%@ Page Title="" Language="C#" MasterPageFile="~/administr8/admin.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="online_voting_system.admin._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container-fluid">
            <h2 class="jumbotron">Online Voting System - Admin Login</h2>
            <div class="form-group">
                    <label for="admin_uname" class="control-label col-sm-2">
                        Username : 
                    </label>
                <div class="col-sm-6">
                    <asp:TextBox CssClass="form-control" ID="admin_uname" runat="server" />
                </div>
                <asp:RequiredFieldValidator ID="admin_uname_req" runat="server" ControlToValidate="admin_uname" Text="*" ForeColor="Red" />
            </div>
            <div class="form-group">
                    <label for="admin_pass" class="control-label col-sm-2">
                        Password : 
                    </label>
                <div class="col-sm-6">
                    <asp:TextBox CssClass="form-control" TextMode="Password" ID="admin_pass" runat="server" />
                </div>
                <asp:RequiredFieldValidator ID="admin_pass_req" runat="server" ControlToValidate="admin_pass" Text="*" ForeColor="Red" />
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button ID="admin_login_btn" Text="Login" runat="server" CssClass="btn btn-primary" OnClick="admin_login_btn_Click" />
                </div>
            </div>
        </div>
</asp:Content>
