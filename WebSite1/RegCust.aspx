<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RegCust.aspx.cs" Inherits="RegCust" %>

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
    <div class="login-card">
    <h1>Add Customer<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:logindbconnect %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
        </h1>
    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
    <asp:TextBox ID="name" runat="server"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" Text="Company Name"></asp:Label>
    <asp:TextBox ID="companyname" runat="server"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" Text="Company Contact No."></asp:Label>
    <asp:TextBox ID="companyphoneno" runat="server"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" Text="Phone Number"></asp:Label>
    <asp:TextBox ID="phoneno" runat="server"></asp:TextBox>
            <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="email" runat="server"></asp:TextBox>
            <asp:Label ID="Label6" runat="server" Text="Agent Name"></asp:Label>
    <asp:TextBox ID="agentname" runat="server"></asp:TextBox>
        <asp:Button ID="regBtn" runat="server" Text="Add" OnClick="regBtn_Click" />
        <h3><asp:Label ID="Msg" runat="server" Text="Customer Successfully Added."></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="companyname"  ErrorMessage="Invalid credentials"></asp:RequiredFieldValidator>
        </h3>
        </div>
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     </asp:Content>