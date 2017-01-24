<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AddListing.aspx.vb" MasterPageFile="~/AdminMasterPager.Master" Inherits="WendyProperties.AddListing" UnobtrusiveValidationMode="None"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
            <h2>Add New Listing</h2>
            <hr />
                <div>
                    <asp:Label ID="Label4" runat="server" Text="Marketing Heading "></asp:Label>
                    <asp:TextBox ID="txtMarkHeading" runat="server"  CssClass="form-control" Height="40px" Width="300px" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtReferenceNo" ErrorMessage="Please enter the marketing heading"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label7" runat="server" Text="Agent"></asp:Label>

                    <asp:DropDownList ID="ddlAgents" runat="server" AppendDataBoundItems="true"  CssClass="form-control" Height="40px" Width="300px" >
                    <asp:ListItem Value="0"> Select</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddlAgents" InitialValue="0" ErrorMessage="Please select an agent incharge of the property"></asp:RequiredFieldValidator>

                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Reference No "></asp:Label>
                    R <asp:TextBox ID="txtReferenceNo" runat="server"  CssClass="form-control" Height="40px" Width="300px" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtReferenceNo" ErrorMessage="Please enter a reference no"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Price"></asp:Label>
                    <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control" Height="40px" Width="300px" placeholder=" eg. 500000"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPrice"  ErrorMessage="What is the Property Price"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="No Of Bedrooms "></asp:Label>
                    <asp:TextBox ID="txtNoOfBedrooms" runat="server" CssClass="form-control" Height="40px" Width="300px"  placeholder=" eg. 3" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNoOfBedrooms" ErrorMessage="Specify the No of rooms"></asp:RequiredFieldValidator>

                    <br />
                    <asp:Label ID="Label5" runat="server" Text=" Description "></asp:Label>
                   <asp:TextBox ID="txtDescription" runat="server" Height="80px" CssClass="form-control" Width="320px" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDescription" ErrorMessage="Please enter the desciption"></asp:RequiredFieldValidator>
                    <br />

                    <asp:Label ID="Label6" runat="server" Text="Suburb"></asp:Label>
                    <asp:TextBox ID="txtSuburb" runat="server"  CssClass="form-control" Height="40px" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtSuburb" ErrorMessage="Please enter the suburb"></asp:RequiredFieldValidator>
                    <br />

      
                    <asp:FileUpload ID="imgUpload" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="imgUpload" ErrorMessage="Please enter an image of the listed property"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:Image ID="imgProp" runat="server" CssClass="img-responsive img-rounded" Width="372px" Height="172px" Visible="false" />
                    <br />
                    <br />
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>

                    <br />
                    <br />

                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"  CssClass="btn-success" Height="32px" Width="131px" />
        </div>
       
</asp:Content>


 