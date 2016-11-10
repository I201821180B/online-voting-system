<%@ Page Title="" Language="C#" MasterPageFile="~/organization/organization.Master" AutoEventWireup="true" CodeBehind="EleRequest.aspx.cs" Inherits="online_voting_system.organization.EleRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
        <h1> Election-Request </h1>
         <form class="form-horizontal" method="post" runat="server">
         <div class="form-group">
                <label class="control-label col-sm-2" for="dob">Requested Date Of Electoin:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="R_Doe" runat="server" CssClass="form-control" TextMode="Date" ToolTip="Enter the Requested Date Of Election"></asp:TextBox>
                </div>
        </div>
              <div class="form-group">
                <label class="control-label col-sm-2" for="reason">Reason:</label>
                <div class="col-sm-6">
                  <asp:TextBox ID="ereason" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                  <asp:RequiredFieldValidator ID="ereason_required" runat="server" ControlToValidate="ereason" Text="*" ForeColor="Red" ErrorMessage="Please Enter reason"/>
              </div>
             <div class="form-group">
                <label class="control-label col-sm-2" for="city">Location:</label>
                <div class="col-sm-6">
                  <asp:TextBox ID="city" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="city_required" runat="server" ControlToValidate="city" Text="*" ForeColor="Red" ErrorMessage="Please Enter Location"/>
              </div>
           
              <div class="form-group"> 
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button ID="reg_button" runat="server" Text="Register" CssClass="btn btn-primary" OnClick="reg_button_Click" CausesValidation="true"/>
                    <asp:Label ID="reg_msg" runat="server" Visible="false"></asp:Label>
                </div>
              </div>  
           </form>   
     </div>
</asp:Content>
