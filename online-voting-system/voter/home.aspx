<%@ Page Title="" Language="C#" MasterPageFile="~/voter/voter_home.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="online_voting_system.voter.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Online Voting System - Voter Home</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <form runat="server">
            <h1>Welcome, <asp:Label ID="user_name" runat="server"></asp:Label></h1>
        </form>
    </div>
</asp:Content>
