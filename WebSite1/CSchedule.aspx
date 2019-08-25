<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CSchedule.aspx.cs" Inherits="CSchedule" MaintainScrollPositionOnPostback="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder05" Runat="Server">
                            <!-- Nav -->
						<nav id="nav">
							<ul>
                               
										<li><a href="VSchedule.aspx">View Schedule</a></li>
										<li><a href="CSchedule.aspx">Create Schedule</a></li>
                                
								<li><a href="RegAgent.aspx">Register</a></li>
								<li><a href="Logout.aspx">Logout</a></li>
							</ul>
						</nav>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="login-card">
    <h1>Create Schedule<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:logindbconnect %>" SelectCommand="SELECT * FROM [Schedule]"></asp:SqlDataSource>
        </h1>
    <asp:Label ID="Label1" runat="server" Text="Date of Departure"></asp:Label>    
    <asp:calendar ID="departcalendar" runat="server" BackColor="#9c6262" BorderColor="#9c6262" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
        <DayHeaderStyle BackColor="#54c4b4" Font-Bold="True" Font-Size="7pt" />
        <NextPrevStyle VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="white" />
        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
        <SelectorStyle BackColor="#54c4b4" />
        <TitleStyle BackColor="#813b8f" BorderColor="Black" Font-Bold="True" />
        <TodayDayStyle BackColor="#54c4b4" ForeColor="Black" />
        <WeekendDayStyle BackColor="#7985f2" />
        </asp:calendar>
    <asp:Label ID="Label2" runat="server" Text="Date of Arrival"></asp:Label>
      <asp:calendar ID="arrivalcalendar" runat="server" BackColor="#9c6262" BorderColor="#9c6262" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
        <DayHeaderStyle BackColor="#54c4b4" Font-Bold="True" Font-Size="7pt" />
        <NextPrevStyle VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="white" />
        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
        <SelectorStyle BackColor="#54c4b4" />
        <TitleStyle BackColor="#813b8f" BorderColor="Black" Font-Bold="True" />
        <TodayDayStyle BackColor="#54c4b4" ForeColor="Black" />
        <WeekendDayStyle BackColor="#7985f2" />
        </asp:calendar>
    <asp:Label ID="Label3" runat="server" Text="Time"></asp:Label>
    <asp:TextBox ID="time" runat="server"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" Text="Ship Name"></asp:Label>
    <asp:TextBox ID="shipname" runat="server"></asp:TextBox>
    <asp:Label ID="Label5" runat="server" Text="Departure Place"></asp:Label>
    <asp:TextBox ID="departure" runat="server"></asp:TextBox>
    <asp:Label ID="Label6" runat="server" Text="Arrival Place"></asp:Label>
    <asp:TextBox ID="arrival" runat="server"></asp:TextBox>
    <asp:Button ID="creBtn" runat="server" Text="Create" OnClick="creBtn_Click" />
    <asp:Label ID="Msg" runat="server" Text="Schedule Successfully Created."></asp:Label>
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <!-- Banner -->
	<div id="banner">					
		<div class="container">					
			<section>					
				<header class="major">					
					
						<h2><span class="byline">Schedule Create </span></h2>				
				</header>					
			</section>								
		</div>					
	</div>					                   
</asp:Content>