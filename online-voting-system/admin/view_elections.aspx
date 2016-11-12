<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_panel_home.Master" AutoEventWireup="true" CodeBehind="view_elections.aspx.cs" Inherits="online_voting_system.admin.view_elections" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Online Voting System - View All Elections</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" method="post">
    <div class="container-fluid">
        <h1 class="jumbotron">View All Elections</h1>
        <p>
                <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover table-condensed" runat="server" AutoGenerateColumns="False" DataKeyNames="E_Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="E_Id" HeaderText="Election ID" ReadOnly="true" SortExpression="E_Id" />
                    <asp:BoundField DataField="vote_date" HeaderText="Date Of Voting" SortExpression="vote_date" />
                    <asp:BoundField DataField="E_Name" HeaderText="Election Name" SortExpression="E_Name" />
                    <asp:BoundField DataField="votes" HeaderText="Total Votes" ReadOnly="true" SortExpression="votes" />
                    <asp:BoundField DataField="active" HeaderText="Is Active ?" SortExpression="active" />
                    <asp:BoundField DataField="result_generated" HeaderText="Is Result Generated ?" SortExpression="result_generated" />
                    <asp:CommandField ButtonType="Button" HeaderText="Action" ShowEditButton="True" ShowHeader="True" ControlStyle-CssClass="btn btn-primary" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online-Voting-SystemConnectionString %>" SelectCommand="SELECT * FROM [election]" UpdateCommand="UPDATE [election] SET [vote_date] = @vote_date, [votes] = @votes, [active] = @active, [result_generated] = @result_generated, [E_Name] = @E_Name WHERE [E_Id] = @E_Id" DeleteCommand="DELETE FROM [election] WHERE [E_Id] = @E_Id" InsertCommand="INSERT INTO [election] ([vote_date], [votes], [active], [result_generated], [E_Name]) VALUES (@vote_date, @votes, @active, @result_generated, @E_Name)">
                <DeleteParameters>
                    <asp:Parameter Name="E_Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter DbType="Date" Name="vote_date" />
                    <asp:Parameter Name="votes" Type="Int32" />
                    <asp:Parameter Name="active" Type="String" />
                    <asp:Parameter Name="result_generated" Type="String" />
                    <asp:Parameter Name="E_Name" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter DbType="Date" Name="vote_date" />
                    <asp:Parameter Name="votes" Type="Int32" />
                    <asp:Parameter Name="active" Type="String" />
                    <asp:Parameter Name="result_generated" Type="String" />
                    <asp:Parameter Name="E_Name" Type="String" />
                    <asp:Parameter Name="E_Id" Type="Int32" />
                </UpdateParameters>
                </asp:SqlDataSource>
        </p>

    </div>
    </form>
</asp:Content>
