<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ItemCreate.aspx.cs" Inherits="ItemCreate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder05" Runat="Server">
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

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="login-card">
    <h1>Add Item<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:logindbconnect %>" SelectCommand="SELECT * FROM [Item]"></asp:SqlDataSource>
        </h1>
    <asp:Label ID="Label1" runat="server" Text="Item Name"></asp:Label>
    <asp:TextBox ID="name" runat="server"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" Text="Weight"></asp:Label>
    <asp:TextBox ID="weight" runat="server"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" Text="Quantity"></asp:Label>
    <asp:TextBox ID="quantity" runat="server"></asp:TextBox>
        <asp:Button ID="addBtn" runat="server" Text="Add" OnClick="addBtn_Click" />
        <asp:Label ID="Msg" runat="server" Text="Item Successfully Added."></asp:Label>
        </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <!-- Banner -->
	<div id="banner">					
		<div class="container">					
			<section>					
				<header class="major">					
										
					<h2>	<span class="byline">Add Item</span>	</h2>			
				</header>					
			</section>								
		</div>					
	</div>					                   
</asp:Content>