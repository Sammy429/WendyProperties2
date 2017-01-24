<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ListingResults.aspx.vb" MasterPageFile="~/HomePageMaster.Master" Inherits="WendyProperties.ListingResults" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <div class="title_sec">
        <h1>Listing Results</h1>
        </div>		        
        <br />
        <asp:GridView ID="gvResults" runat="server" AutoGenerateColumns="false" OnRowDataBound="gvResults_RowDataBound" OnRowCommand="gvResults_RowCommand"  Width="100%" AllowPaging="true" CssClass="table-responsive table-striped table-hover" AllowSorting="true">
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
                     
                        
                        <asp:LinkButton ID="LinkButton1" runat="server" Text='<%#Bind("Description")%>' CommandName="SeeMore" ></asp:LinkButton>
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
                <asp:TemplateField ItemStyle-Width="70px" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>                  
                        <asp:ImageButton ID="ListingImage" runat="server" ImageUrl='<%#Bind("image")%>' Height="100px" Width="100px"  CommandName="SeeDetails"/>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
         
    </div>
</asp:Content>
    
  