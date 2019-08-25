<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SSchedule.aspx.cs" Inherits="SSchedule" %>

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
            <asp:BoundField DataField="Date Of Departure" HeaderText="Date of Departure" />
            <asp:BoundField DataField="Date Of Arrival" HeaderText="Date of Arrival" />
            <asp:BoundField DataField="Time" HeaderText="Time" />
            <asp:BoundField DataField="Ship Name" HeaderText="Ship Name" />
            <asp:BoundField DataField="Departure" HeaderText="Departure" />
            <asp:BoundField DataField="Arrival" HeaderText="Arrival" />
            <asp:BoundField DataField="Availability" HeaderText="Availability" />
            <asp:TemplateField>
                <ItemTemplate>           
                    <asp:LinkButton ID="AddItem" Text="Add Item" runat="server" CommandArgument='<%#Eval("Schedule ID") %>' onClick="AddItem_Click"/>                  
                </ItemTemplate>       
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="ViewItem" Text="View Items" runat="server" CommandArgument='<%#Eval("Schedule ID") %>' onClick="ViewItem_Click"/>
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
					
						<h2><span class="byline">Schedule</span></h2>				
				</header>					
			</section>								
		</div>					
	</div>					                   
</asp:Content>