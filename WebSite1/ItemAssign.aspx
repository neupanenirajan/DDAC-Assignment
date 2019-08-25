<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ItemAssign.aspx.cs" Inherits="ItemAssign" %>

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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:logindbconnect %>" SelectCommand="SELECT * FROM [ItemOnSchedule]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:logindbconnect %>" SelectCommand="SELECT [Item ID] AS Item_ID, [Quantity] FROM [Item]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:logindbconnect %>" SelectCommand="SELECT [Schedule ID] AS Schedule_ID, [Date Of Departure] AS Date_Of_Departure, [TotalItem], [Availability] FROM [Schedule]"></asp:SqlDataSource>
    <asp:GridView ID="Schedule" runat="server" AutoGenerateColumns ="False" Width="1200px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="Item ID" HeaderText="Item ID" />
            <asp:BoundField DataField="Name" HeaderText="Item Name" />
            <asp:BoundField DataField="Weight" HeaderText="Weight" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="CustName" HeaderText="Customer Name" />
            <asp:TemplateField>
                <ItemTemplate>           
                    <asp:LinkButton ID="AddItem" Text="Add Item To Ship" runat="server" CommandArgument='<%#Eval("Item ID") %>' onClick="AddItem_Click"/>                  
                </ItemTemplate>       
            </asp:TemplateField>
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
										
						<h2><span class="byline">Item Assign </span></h2>				
				</header>					
			</section>								
		</div>					
	</div>					                   
</asp:Content>