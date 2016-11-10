<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_panel_home.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="online_voting_system.admin.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <h2 class ="jumbotron">
            Welcome, <asp:Label ID="username_text" runat="server"></asp:Label>
        </h2>
    </div>
</asp:Content>
