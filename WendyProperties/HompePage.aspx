<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="HompePage.aspx.vb" MasterPageFile="~/HomePageMaster.Master"  Inherits="WendyProperties.HompePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
      
    <!-- Title -->
			<div class="title_sec">
				<h1>The Virtual Agent - Wendy Properties</h1>
				<h2>We Find you best properties</h2>
			</div>	
    <!-- End Title -->	

    <!-- Main Section - 2 Properties -->
			<div class="col-lg-8 col-md-8 col-sm-8 ">
				<div class="sngl_blg">						
					<img src="img/Property1.jpg" alt=""/>
					<div class="post_info">
						<div class="post_intro">
							<h2>Urban House</h2>	
							<i class="fa fa-picture-o"></i>									
						</div>
						<ul>											
							<li>Sept 23 1992 //</li>
							<li>Current //</li>
							
						</ul>
					</div>
					<div class="post_content">
						<p>Houses as strong as the one you see before you do not have the proper descriptions to give them.This house was built at Umlazi BB Section in the year  1992 September 23rd and owned by a loving Husband and Wife and 2 children. They have the desires to move to a differenct area in which they had always wanted to stay in whilst staying at this residence but because they loved theire home they stayed a while longer. It has come to that day that they leave this nice 2500m squared land that has been occupied by a 2 garaged house, 3 bathroom house with a kitchen and 3 bedrooms. The yard is enough to fit 13 cars. If you are looking for a beautiful home like this do explore more of this site for details</p>
						
					</div>
				</div>	

                	<div class="sngl_blg">						
					<img src="img/Property3.jpg" alt=""/>
					<div class="post_info">
						<div class="post_intro">
							<h2>Township Houses</h2>	
							<i class="fa fa-picture-o"></i>									
						</div>
						<ul>											
							<li>June 19 2005 //</li>
							<li>Current//</li>
							
						</ul>
					</div>
					<div class="post_content">
						<p>Housing in townships is a very rich investment when you want to become a landlord for the local citizens that have yet to find urban rentals, not many think it would be ideal but with a house such as this one that provides a garage, kitchen,  bathrooms and 2 bedrooms, front yard. this house is situated at BB Section at Umlazi and is at a glorious price of R 750 000. </p>
						
					</div>
				</div>	

			</div>				
			
			<div class="col-lg-4 col-md-4 col-sm-4">
				<div class="sidebar">	 
					<div class="widget">
                  
                        <ul>
                            <li class="fa fa-search"><a href="FindListings.aspx">SEARCH LISTINGS</a></li>|
                            <li class=" fa fa-cogs"><a href="Login.aspx">ADMIN</a></li>	
                        </ul>	
                    </div>		
					<div class="widget">
						<h2>Properties</h2>
						<div class="title_br"></div>
						<ul>
							<li><a href="">Houses</a></li>
							<li><a href="">Studios</a></li>
							<li><a href="">Land</a></li>
							<li><a href="">Duplexes</a></li>
							<li><a href="">Office Spaces</a></li>
						</ul>
					</div>				
					<div class="widget">
						<h2>Suburbs</h2>
						<div class="title_br"></div>
						<ul>
							<li><a href="">Umhlanga</a></li>
							<li><a href="">Amanzimtoti</a></li>
							<li><a href="">Umlazi</a></li>
							<li><a href="">Hill Crest</a></li>
							<li><a href="">QueensBurgh</a></li>
						</ul>
					</div>				
					<div class="widget">
						<h2>Sites</h2>
						<div class="title_br"></div>
						<ul class="flickr">
							
							<li><img src="img/sep/Property3.jpg" alt=""/></li>
							<li><img src="img/sep/Property5.jpg" alt=""/></li>
							<li><img src="img/sep/Property8.jpg" alt=""/></li>
							<li><img src="img/sep/Property6.jpeg" alt=""/></li>
							
						</ul>
					</div>
								
				</div>
			</div>
            	
    <!-- End Main Section -->
    </div>
</asp:Content>

    
