<%@ Page Title="" Language="C#" MasterPageFile="~/organization/org_home.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="online_voting_system.organization.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Online Voting System - Organization Home</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
    <h1> Organization Home </h1>
    <form runat="server">
        <asp:Menu ID="Menu1" runat="server">
            <Items>
                <asp:MenuItem Text="Home" NavigateUrl="~/organization/home.aspx" />
                <asp:MenuItem Text="Candidate Registration" NavigateUrl="~/organization/can_reg.aspx"/>
                <asp:MenuItem Text="Results" NavigateUrl="#" />
                <asp:MenuItem Text="Register For Election" NavigateUrl="~/organization/register_for_election.aspx" />
                <asp:MenuItem Text="View/Delete Candidate List" NavigateUrl="~/organization/can_list.aspx" />
            </Items>
        </asp:Menu>
    </form>
</div>
</asp:Content>
