<%@ Page Title="" Language="C#" MasterPageFile="~/organization/org_home.Master" AutoEventWireup="true" CodeBehind="can_list.aspx.cs" Inherits="online_voting_system.organization.can_list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div class="container-fluid">
        <h1> Candidate List</h1> 
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online-Voting-SystemConnectionString %>" SelectCommand="SELECT [C_Id], [Name], [Address], [Image], [User_Name] FROM [Candidate_Reg]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-responsive table-hover" AutoGenerateColumns="False" DataKeyNames="C_Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                <Columns>
                    <asp:BoundField DataField="C_Id" HeaderText="Candidate ID" InsertVisible="False" ReadOnly="True" SortExpression="C_Id" />
                    <asp:BoundField DataField="Name" HeaderText="Candidate Name" SortExpression="Name" />
                    <asp:BoundField DataField="Address" HeaderText="Candidate Address" SortExpression="Address" />
                    <asp:BoundField DataField="User_Name" HeaderText="Candidate username" SortExpression="User_Name" />
                </Columns>
            </asp:GridView>
    </div>
    </form>
</asp:Content>
