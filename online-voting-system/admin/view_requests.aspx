<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_panel_home.Master" AutoEventWireup="true" CodeBehind="view_requests.aspx.cs" Inherits="online_voting_system.admin.view_requests" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class ="container-fluid">
        <h1 class="jumbotron">View Requests</h1>
        <br />

        <asp:GridView ID="GridView1" runat="server" CssClass="table table-responsive table-hover" AutoGenerateColumns="False" DataKeyNames="E_ID,O_Id1" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="E_ID" HeaderText="Election ID" InsertVisible="False" ReadOnly="True" SortExpression="E_ID" />
                <asp:BoundField DataField="Name" HeaderText="Requested By" SortExpression="Name" />
                <asp:BoundField DataField="Req_Doe" HeaderText="Requested Date Of Election" SortExpression="Req_Doe" />
                <asp:BoundField DataField="Reason" HeaderText="Reason for Date" SortExpression="Reason" />
                <asp:BoundField DataField="Location" HeaderText="Location(s)" SortExpression="Location" />
                <asp:BoundField DataField="status" HeaderText="Election Status" SortExpression="status" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online-Voting-SystemConnectionString %>" SelectCommand="SELECT req.*,party.Name, party.O_Id
FROM Election_Request req, org_table party
WHERE party.O_Id = req.O_ID"></asp:SqlDataSource>

    </div>
</asp:Content>
