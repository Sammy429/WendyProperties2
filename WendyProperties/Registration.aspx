<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Registration.aspx.vb" MasterPageFile="~/AdminMasterPager.Master" Inherits="WendyProperties.Registration"  UnobtrusiveValidationMode="None" %>


   <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="upanel" runat="server">
        <ContentTemplate>
        <h2>Sign Up User</h2>
        <hr />
            <div>
                <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                <asp:TextBox ID="txtFirstname" runat="server" CssClass="form-control" Height="40px" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstname" ErrorMessage="Please enter first name"></asp:RequiredFieldValidator>
        
                 <br />
        
                <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                <asp:TextBox ID="txtLastname" runat="server" CssClass="form-control" Height="40px" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastname" ErrorMessage="Please enter last name"></asp:RequiredFieldValidator>

                 <br />

                 <asp:Label ID="Label3" runat="server" Text="Email Address"  ></asp:Label>
                <asp:TextBox ID="txtEmailAddress" runat="server"  CssClass="form-control" Height="40px" Width="450px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmailAddress" ErrorMessage="Please enter an email address"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="^[a-zA-Z0-9[\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$" ControlToValidate="txtEmailAddress" ErrorMessage="Please enter a valid email address"></asp:RegularExpressionValidator>
                <br />
        
                <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" Height="40px" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please enter password" ></asp:RequiredFieldValidator>

                <br />

                <asp:Label ID="Label5" runat="server" Text="Re-Password"></asp:Label>
                <asp:TextBox ID="txtRePassword" runat="server" TextMode="Password"  CssClass="form-control" Height="40px" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtRePassword" ErrorMessage="Please confirm your password"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtRePassword" ControlToCompare="txtPassword" ErrorMessage="Passwords do not match"></asp:CompareValidator>
                         <br />
                <br />
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="btn-success" Height="32px" Width="131px" />

                         <br />
                <br />
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
                <br />
                <br />
        </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
   
  