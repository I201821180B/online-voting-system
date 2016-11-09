<%@ Page Title="" Language="C#" MasterPageFile="~/organization/org_home.Master" AutoEventWireup="true" CodeBehind="can_reg.aspx.cs" Inherits="online_voting_system.organization.can_reg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <h1> Candidate Registration </h1>
        <form class="form-horizontal" method="post" runat="server">
            <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager>
            <div class="form-group">
                <label class="control-label col-sm-2" for="cname">Candidate Name:</label>
                <div class="col-sm-6">
                  <asp:TextBox ID="cname" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                  <asp:RequiredFieldValidator ID="cname_required" runat="server" ControlToValidate="cname" Text="*" ForeColor="Red" ErrorMessage="Please Enter Name"/>
              </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="cadd">Candidate Address:</label>
                <div class="col-sm-6">
                  <asp:TextBox ID="cadd" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="cadd" Text="*" ForeColor="Red" ErrorMessage="Please Enter Address"/>
              </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="cphone">Candidate Phone No:</label>
                <div class="col-sm-6">
                  <asp:TextBox ID="cphone" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                </div>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="cphone" Text="*" ForeColor="Red" ErrorMessage="Please Enter Phone No."/>
              </div>
            <div class="form-group">
                <asp:Image ID="ImgUpload" runat="server" Height="200px" Width="200px" />
                <div class="col-sm-6">
                  <input ID="FileUpload" type="file" class="form-control" name="file" onchange="previewFile()"  runat="server" />
                </div>
            </div>
            
        </form>
    </div>
    <script type="text/javascript">
       function previewFile() {  
       var ImagePreview = document.querySelector('#<%=ImgUpload.ClientID %>');  
       var ImageFile = document.querySelector('#<%=FileUpload.ClientID %>').files[0];  
       var reader = new FileReader();  
  
       reader.onloadend = function () {  
           ImagePreview.src = reader.result;  
       }  
  
       if (ImageFile) {  
           reader.readAsDataURL(ImageFile);  
       } else {  
           ImagePreview.src = "";  
       }  
   }  
    </script>
</asp:Content>
