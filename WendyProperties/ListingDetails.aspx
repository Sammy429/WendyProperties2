<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ListingDetails.aspx.vb" MasterPageFile="~/HomePageMaster.Master" Inherits="WendyProperties.ListingDetails"  UnobtrusiveValidationMode="None" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="title_sec">
				<h1>Listing Details</h1>
	</div>		
        <div class="col-lg-8 col-md-8 col-sm-8 ">
				<div class="sngl_blg">						
					  <asp:Image ID="imgListing" runat="server" />
					<div class="post_info">
						<div class="post_intro">
							<h2><asp:Label ID="lblMHeading" runat="server"></asp:Label></h2>	
							<div class="fa fa-money">  R<asp:Label ID="lblPrice" runat="server"></asp:Label></div>									
						</div>
																	
							<div class="fa fa-bed"> NO OF BEDROOMS :<asp:Label ID="lblNoOfBedrooms" runat="server"></asp:Label></div>|
							<div class="fa fa-file-text"> REF NO : <asp:Label ID="lblRefNO" runat="server"></asp:Label></div>|
							<div class="fa fa-location-arrow"> SUBURB :<asp:Label ID="lblSuburb" runat="server"></asp:Label></div>
					
					</div>
					<div class="post_content">
						<p><asp:Label ID="lblDescription" runat="server"></asp:Label></p>
						
					</div>
                    <br />
                    <div class="author_info">
					<a><asp:Image ID="imgAgent" CssClass="img-responsive" runat="server" Height="100px" Width="100px" /></a>
					<div class="author_dec">
                        <ul class="social_link">
						
						</ul>					
						<h3>Agent Information</h3>

                        <p>If you have any interest in this particular listing, please contact this agent by filling out the form on your right hand side and clicking send. And within no time an agent will contact you for more proceedings</p>		
                        <ul>					
                        	<li class="fa fa-user"><asp:Label ID="lblAgentsName" runat="server"></asp:Label></li>
                        	<li class="fa fa-mobile-phone"> <asp:Label ID="lblCellphoneNo" runat="server"></asp:Label></li>
                        	<li class="fa fa-envelope"> <asp:Label ID="lblEmailAddress" runat="server"></asp:Label></li>
                        </ul>
					</div>
				</div>	
				</div>	
			</div>				
			
			<div class="col-lg-4 col-md-4 col-sm-4">
				<div class="sidebar">						
									
					<div class="widget">
						<h2>Contact Agent</h2>
						<div class="title_br"></div>
                        <br />
                         <div id="cnt_form">
                            <div class="status alert alert-success" style="display: none"></div>
                                <div id="contact-form" class="contact" name="contact-form" method="post" action="send-mail.php">
                                        <div class="form-group">
                                            <asp:TextBox ID="txtFirstname" runat="server" name="name" class="form-control name-field" required="required" placeholder="Your First Name"></asp:TextBox>
                                        </div>
                                    <br />
                                        <div class="form-group">
                                            <asp:TextBox ID="txtLastname" runat="server" name="name" class="form-control name-field" required="required" placeholder="Your Last Name"></asp:TextBox>     
                                        </div>
                                    <br />
                                        <div class="form-group">
                                            <asp:TextBox ID="txtEmailAddress" runat="server" name="email" class="form-control mail-field" required="required" placeholder="Your Email" TextMode="Email"></asp:TextBox>
                                        </div>
                                    <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmailAddress" ErrorMessage="We need your email address"></asp:RequiredFieldValidator>
                                    <br />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="^[a-zA-Z0-9[\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$" ControlToValidate="txtEmailAddress" ErrorMessage="Please enter a valid email address"></asp:RegularExpressionValidator>
                                    <br />
                                    <br />                   
                                        <div class="form-group">
                                            <textarea name="message" runat="server" id="txtMessage" required="required" class="form-control" rows="8" placeholder="Message"></textarea>
                                        </div> 
                                    <br />
                                        <asp:Label ID="lblMessage" runat="server"></asp:Label>
                                    <br />
                                    <br />
                                <div class="form-group">
                                    <asp:Button ID="btnSubmit" runat="server"  type="submit"  Text="Send" class="btn btn-primary" Height="32px" Width="131px" OnClick="btnSubmit_Click"/>            
                                </div><br /><br />
                            </div>       
                        </div>        		
					</div>							
				</div>
			</div>	
        <hr />     			
</asp:Content>

