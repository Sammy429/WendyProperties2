<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Users.aspx.vb" MasterPageFile="~/AdminMasterPager.Master" Inherits="WendyProperties.Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="upanel" runat="server">
        <ContentTemplate>
            <h2>Admin Users</h2>
            <hr />
            <asp:GridView ID="gvUsers" runat="server" AllowPaging="true" CssClass="table-responsive table table-striped projects"></asp:GridView>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

