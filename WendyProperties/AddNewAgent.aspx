<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AddNewAgent.aspx.vb" Inherits="WendyProperties.AddNewAgent" MasterPageFile="~/AdminMasterPager.Master" UnobtrusiveValidationMode="None"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <%-- <asp:UpdatePanel ID="upanel" runat="server">
        <ContentTemplate>--%>
            <h2>Add New Agent</h2>
            <hr />
              <div>
        <asp:Label ID="Label1" runat="server" Text="First Name" ></asp:Label>
        <asp:TextBox ID="txtFirstname" runat="server" CssClass="form-control" Height="40px" Width="300px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstname" ErrorMessage="Please enter first name"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
        <asp:TextBox ID="txtLastname" runat="server" CssClass="form-control" Height="40px" Width="300px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastname" ErrorMessage="Please enter last name"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Cellphone No"></asp:Label>
        <asp:TextBox ID="txtCellphoneNo" runat="server" MaxLength="10" Height="40px" Width="250px" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCellphoneNo" ErrorMessage="Please enter cellphone No"></asp:RequiredFieldValidator>
 
        <br />
        <asp:Label ID="Label4" runat="server" Text="Email Address"></asp:Label>
        <asp:TextBox ID="txtEmailAddress" runat="server" Height="40px" Width="450px" CssClass="form-control" TextMode="Email"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmailAddress" ErrorMessage="Please enter email address"></asp:RequiredFieldValidator>
        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="^[a-zA-Z0-9[\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$" ControlToValidate="txtEmailAddress" ErrorMessage="Please enter a valid email address"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Please Upload Image"></asp:Label>
        <asp:FileUpload  ID="imgUpload" runat="server"/>
       
        <br />
        <br />
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
        <br />
        <asp:Image ID="Image1" runat="server"  CssClass="img-responsive img-circle" width="155px" Height="147px" Visible="false"/>
        <br />
        <br />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" type="submit" CssClass="btn-success" Height="32px" Width="131px" />
    </div>
       <%-- </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="Button1"  />
        </Triggers>
    </asp:UpdatePanel>--%>
</asp:Content>
  
 