<%@ Page Title="" Language="C#" MasterPageFile="~/voter/voter_home.Master" AutoEventWireup="true" CodeBehind="update_picture.aspx.cs" Inherits="online_voting_system.voter.update_picture" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <form runat="server">
            <div class="col-sm-6">
                <asp:FileUpload ID="img_upload" runat="server" CssClass="form-control"/>
            </div>
            <div class="col-sm-1">
                <asp:Button ID="upload_btn" Text="Upload" runat="server" CssClass="btn btn-primary" OnClick="upload_btn_Click" />
            </div>
        </form>
    </div>
</asp:Content>
