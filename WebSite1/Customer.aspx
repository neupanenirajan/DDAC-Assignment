<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Customer.aspx.cs" Inherits="Customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder05" Runat="Server">
                            <!-- Nav -->
						<nav id="nav">
							<ul>
                                <li><a href="SSchedule.aspx">Schedule</a></li>
                                <li><a href="Customer.aspx">Customer</a></li>
								<li><a href="RegCust.aspx">Add</a></li>
								<li><a id="logout" href="Logout.aspx">Logout</a></li>
							</ul>
						</nav>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="Schedule" runat="server" AutoGenerateColumns ="False" Width="1200px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Customer Name" />
            <asp:BoundField DataField="Company Name" HeaderText="Company Name" />
            <asp:BoundField DataField="Company Contact No." HeaderText="Company Contact No." />
            <asp:BoundField DataField="Phone Number" HeaderText="Phone Number" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="Agent Name" HeaderText="Agent Name" />
            <asp:TemplateField>
                <ItemTemplate>                            
                    <asp:LinkButton ID="AddItem" Text="Add Item" runat="server" CommandArgument='<%#Eval("Customer ID") %>' onClick="AddItem_Click"/>  
                </ItemTemplate>       
            </asp:TemplateField>
                        <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="ViewItem" Text="View Items" runat="server" CommandArgument='<%#Eval("Customer ID") %>' onClick="ViewItem_Click"/>
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
										
						<h2></h2><span class="byline">Customer </span><h2></h2>				
				</header>					
			</section>								
		</div>					
	</div>					                   
</asp:Content>