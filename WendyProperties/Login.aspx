<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="WendyProperties.Login"  UnobtrusiveValidationMode="None" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="css/Login.css" />

</head>
<body>

    <div class="wrapper">

        <div class="container">
            <table style="width: 100%">
                <tr>
                    <td style="text-align:left; width:20%">
                        <img src="Images/logo.jpg" alt="logo" />
                    </td>
                    <td style="text-align:left; width:80%">

                        <h1>Welcome</h1>
                        <form class="form" runat="server">
                            <asp:TextBox ID="txtEmailAddress" runat="server" placeholder="Email Address"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmailAddress" ErrorMessage="Please enter your email address"></asp:RequiredFieldValidator>
        
                              <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please enter your password"></asp:RequiredFieldValidator>
        
                            <br /><asp:Label ID="lblMessage" runat="server"></asp:Label>
                            <br />
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />

                             <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" />
                             
                        </form>
                    </td>
                </tr>
            </table>

        </div>

        <ul class="bg-bubbles">
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
    </div>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
</body>
</html>
