<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ItemViewAgent.aspx.cs" Inherits="ItemViewAgent" %>

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
    <asp:GridView ID="Schedule" runat="server" AutoGenerateColumns ="False" Width="1200px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="schedule" HeaderText="Schedule ID" />
            <asp:BoundField DataField="itemid" HeaderText="Item ID" />
            <asp:BoundField DataField="itemname" HeaderText="Name" />
            <asp:BoundField DataField="itemweight" HeaderText="Weight" />
            <asp:BoundField DataField="itemquantity" HeaderText="Quantity" />
            <asp:BoundField DataField="custname" HeaderText="Customer Name" />          
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black"  HorizontalAlign="Center"/>
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <!-- Banner -->
	<div id="banner">					
		<div class="container">					
			<section>					
				<header class="major">					
										
						<h2><span class="byline">Agent Item View </span>	</h2>			
				</header>					
			</section>								
		</div>					
	</div>					                   
</asp:Content>