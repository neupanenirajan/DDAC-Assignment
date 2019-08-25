<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AgentPage.aspx.cs" Inherits="AgentPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder05" Runat="Server">
                        <!-- Nav -->
						<nav id="nav">
							<ul>
                                <li><a href="SSchedule.aspx">Schedule</a></li>
                                <li><a href="Customer.aspx">Customer</a></li>
								<li><a href="RegCust.aspx">Register</a></li>
								<li><a id="logout" href="Logout.aspx">Logout</a></li>
							</ul>
						</nav>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <!-- Banner -->
	<div id="banner">					
		<div class="container">					
			<section>					
				<header class="major">					

						<h2><span id='spanid'   class="byline" runat="server"/></h2>				
				</header>					
			</section>								
		</div>					
	</div>					                   
</asp:Content>