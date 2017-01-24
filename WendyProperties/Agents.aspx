<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Agents.aspx.vb" MasterPageFile="~/AdminMasterPager.Master" Inherits="WendyProperties.Agents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="upanel" runat="server">
        <ContentTemplate>
            <h2>All Agents</h2>
            <hr />
               <div>
    
        <asp:GridView ID="gvAgents" runat="server" AllowPaging="true" AutoGenerateColumns="false" CssClass=" table-responsive table table-striped projects" OnRowDataBound="gvAgents_RowDataBound" Width="100%">
             <Columns>
                <asp:TemplateField ItemStyle-Width="70px" ItemStyle-HorizontalAlign="Center" HeaderText="First Name">
                    <ItemTemplate> 
                           
                          <asp:HiddenField ID="hdnAgentId" runat="server" Value='<%#Bind("AgentId") %>' />             
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
                <asp:TemplateField ItemStyle-Width="70px" ItemStyle-HorizontalAlign="Center" HeaderText="Cellphone No">
                    <ItemTemplate>  
                     
                        <asp:Label ID="Label1" runat="server" Text='<%#Bind("Cellphone")%>'></asp:Label>   
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
                <asp:TemplateField ItemStyle-Width="70px" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>                  
                        <asp:ImageButton ID="AgentImage" runat="server" ImageUrl='<%#Bind("image")%>' CssClass="img-responsive img-rounded" Height="100px" Width="100px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

 
