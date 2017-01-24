<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FindListings.aspx.vb" MasterPageFile="~/HomePageMaster.Master"  UnobtrusiveValidationMode="None"  Inherits="WendyProperties.FindListings" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div>
          <div class="title_sec">
				<h1>Search  </h1>
			<h2>Find a listing of your preference</h2>
			</div>		
                <br />
               
                <div class="search_widget" width="100%">
                    <div class="col-lg-4 col-md-4 col-sm-4">
                        <asp:Label ID="Label4" runat="server" Text="Suburb"></asp:Label>
                        <asp:TextBox ID="txtSuburb" runat="server" CssClass="form-control" placeholder="Search Suburb ...." ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSuburb" ErrorMessage="Please enter the suburb area that you may be looking for"></asp:RequiredFieldValidator>
                    </div>
           
                     <div class="col-lg-4 col-md-4 col-sm-4">
                        <asp:Label ID="Label2" runat="server" Text="Price"></asp:Label>
                        <asp:DropDownList ID="ddlPrice" runat="server" CssClass="form-control">
                        <asp:ListItem Value="0"> Select </asp:ListItem>
                        <asp:ListItem Value="Any"> Any </asp:ListItem>
                        <asp:ListItem Value="100000 and 500000"> R100 000 - R500 000 </asp:ListItem>
                        <asp:ListItem Value="500000 and 1000000"> R500 000 - R1 Million </asp:ListItem>
                        <asp:ListItem Value="1500000 and 2000000"> R1,5 Million - R2 Million </asp:ListItem>
                        <asp:ListItem Value="2500000 and 3000000"> R2,5 Million - R3 Million </asp:ListItem>
                        <asp:ListItem Value="3500000 and 4000000">R3,5 Million - R4 Million  </asp:ListItem>
                        <asp:ListItem Value="4000000 "> R4 Million or More </asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" InitialValue="0" ControlToValidate="ddlPrice" ErrorMessage="Please select the price range"></asp:RequiredFieldValidator>
                    </div>
                
                     <div class="col-lg-4 col-md-4 col-sm-4">
                        <asp:Label ID="Label3" runat="server" Text="No Of Bed Rooms"></asp:Label>
                        <asp:DropDownList ID="ddlNoOfBedRooms" runat="server" CssClass="form-control">
                            <asp:ListItem Value="0"> Select </asp:ListItem>
                            <asp:ListItem Value="Any"> Any </asp:ListItem>
                            <asp:ListItem Value="1"> 1 </asp:ListItem>
                            <asp:ListItem Value="2"> 2</asp:ListItem>
                            <asp:ListItem Value="3"> 3 </asp:ListItem>
                            <asp:ListItem Value="4"> 4 </asp:ListItem>
                            <asp:ListItem Value="5"> 5 or More </asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlNoOfBedRooms" InitialValue="0" ErrorMessage="Please select the No of Bedrooms you might be looking for"></asp:RequiredFieldValidator>
                    </div>          
                    <br />
                    <div class="col-lg-4 col-md-4 col-sm-4  ">
                        <asp:Button ID="btnSubmit" runat="server" Text="Find" Onclick="btnSubmit_Click" CssClass="btn-info" align="center" Height="38px" Width="155px" />
                    </div>
                </div>
              
                &nbsp;
         
 
    </div>
</asp:Content>
  

