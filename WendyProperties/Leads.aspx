<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Leads.aspx.vb" MasterPageFile="~/AdminMasterPager.Master" Inherits="WendyProperties.Leads" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="upanel" runat="server">
        <ContentTemplate>
            <h2>Leads</h2>
            <hr />
                <div>
                    <br />
                    <div>
                        <asp:GridView ID="gvLeads" runat="server" AutoGenerateColumns="false" AllowPaging="true" OnRowDataBound="gvLeads_RowDataBound" CssClass="table-responsive table table-striped projects" Width="100%" >
                            <Columns>
                            <asp:TemplateField ItemStyle-Width="70px" ItemStyle-HorizontalAlign="Center" HeaderText="First Name">
                                <ItemTemplate> 
                                         <asp:HiddenField ID="hdnlistingId" runat="server" Value='<%#Bind("listingId") %>' /> 
                                        <asp:Label ID="lblFirstname" runat="server" Text='<%#Bind("Firstname")%>'> </asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            </Columns>
                            <Columns>
                                <asp:TemplateField ItemStyle-Width="70px" ItemStyle-HorizontalAlign="Center" HeaderText="Last Name">
                                    <ItemTemplate>                  
                                            <asp:Label ID="lblLastname" runat="server" Text='<%#Bind("Lastname")%>'> </asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                           
                            <Columns>
                                <asp:TemplateField ItemStyle-Width="70px" ItemStyle-HorizontalAlign="Center" HeaderText="Email Address">
                                    <ItemTemplate>                  
                                            <asp:Label ID="lblEmailAddress" runat="server" Text='<%#Bind("Emailaddress")%>'> </asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <Columns>
                                <asp:TemplateField ItemStyle-Width="70px" ItemStyle-HorizontalAlign="Center" HeaderText="Message">
                                    <ItemTemplate>                      
                                        <asp:Label ID="Label1" runat="server" Text='<%#Bind("Message")%>'></asp:Label>   
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <Columns>
                                <asp:TemplateField ItemStyle-Width="70px" ItemStyle-HorizontalAlign="Center" HeaderText=" Listing">
                                    <ItemTemplate>                      
                                        <asp:Label ID="lblMarketHeading" runat="server"></asp:Label>   
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <Columns>
                                <asp:TemplateField ItemStyle-Width="70px" ItemStyle-HorizontalAlign="Center" HeaderText="Price ">
                                    <ItemTemplate>                      
                                        <asp:Label ID="lblPrice" runat="server"></asp:Label>   
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <Columns>
                                <asp:TemplateField ItemStyle-Width="70px" ItemStyle-HorizontalAlign="Center" HeaderText="Reference No.">
                                    <ItemTemplate>                      
                                        <asp:Label ID="lblRefNo" runat="server"></asp:Label>   
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <Columns>
                                <asp:TemplateField ItemStyle-Width="70px" ItemStyle-HorizontalAlign="Center" HeaderText="Suburb">
                                    <ItemTemplate>                      
                                        <asp:Label ID="lblSuburb" runat="server"></asp:Label>   
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                              
                        </asp:GridView>
                    </div>
   
                </div>

        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
   
