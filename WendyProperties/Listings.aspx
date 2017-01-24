<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Listings.aspx.vb" MasterPageFile="~/AdminMasterPager.Master" Inherits="WendyProperties.Listings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="upanel" runat="server">
        <ContentTemplate>
            <h2>Listings</h2>
            <hr />
                <div>
                    <br />
                 <div>
        <asp:GridView ID="gvLstings" runat="server" AutoGenerateColumns="false" AllowPaging="true"  AllowSorting="true" CssClass="table-responsive table table-striped projects" OnRowDataBound="gvLstings_RowDataBound" Width="100%">
                <Columns>
                <asp:TemplateField ItemStyle-Width="70px" ItemStyle-HorizontalAlign="Center" HeaderText="Marketing Heading">
                    <ItemTemplate> 
                           <asp:HiddenField ID="hdnlistingId" runat="server" Value='<%#Bind("listingId") %>' /> 
                          <asp:HiddenField ID="hdnAgentId" runat="server" Value='<%#Bind("AgentId") %>' />             
                            <asp:Label ID="lblMarketingHeading" runat="server" Text='<%#Bind("MrketHeading")%>'> </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
              <Columns>
                <asp:TemplateField ItemStyle-Width="70px" ItemStyle-HorizontalAlign="Center" HeaderText="Price">
                    <ItemTemplate>                  
                            <asp:Label ID="lblPrice" runat="server" Text='<%#Bind("Price")%>'> </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
             <Columns>
                <asp:TemplateField ItemStyle-Width="70px" ItemStyle-HorizontalAlign="Center" HeaderText="Description">
                    <ItemTemplate>  
                       
                        <asp:Label ID="Label2" runat="server" Text='<%#Bind("Description")%>' ></asp:Label>     
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
             <Columns>
                <asp:TemplateField ItemStyle-Width="70px" ItemStyle-HorizontalAlign="Center" HeaderText="No of Bed Rooms">
                    <ItemTemplate>                  
                            <asp:Label ID="lblNoOfBedRooms" runat="server" Text='<%#Bind("NoOfBedRooms")%>'> </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
              <Columns>
                <asp:TemplateField ItemStyle-Width="70px" ItemStyle-HorizontalAlign="Center" HeaderText="Reference No">
                    <ItemTemplate>                  
                        <asp:Label ID="lblrefNo" runat="server" Text='<%#Bind("refno")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
               <Columns>
                <asp:TemplateField ItemStyle-Width="70px" ItemStyle-HorizontalAlign="Center" HeaderText="Suburb">
                    <ItemTemplate>                  
                        <asp:Label ID="lblSuburb" runat="server" Text='<%#Bind("suburb")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <Columns>
                <asp:TemplateField ItemStyle-Width="70px" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>                  
                        <asp:ImageButton ID="ListingImage" runat="server" ImageUrl='<%#Bind("image")%>' Height="100px" Width="100px" CssClass="img-responsive img-rounded" CommandName="SeeDetails" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>

               <Columns>
                <asp:TemplateField ItemStyle-Width="70px" ItemStyle-HorizontalAlign="Center" HeaderText="Date Added">
                    <ItemTemplate>                  
                        <asp:Label ID="Label1" runat="server" Text='<%#Bind("DateAdded")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
                   
                  
                </div>

        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
   