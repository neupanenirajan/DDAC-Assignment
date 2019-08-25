<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RegAgent.aspx.cs" Inherits="RegAgent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .login-card {
            height: 497px;
        }
    </style>
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
    <h1>Register Agent<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:logindbconnect %>" SelectCommand="SELECT * FROM [LoginTbl]"></asp:SqlDataSource>
        </h1>
    <asp:Label ID="Label1" runat="server" Text="Agent Username"></asp:Label>
    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:Button ID="regBtn" runat="server" Text="Register" OnClick="regBtn_Click" />
       <h3> <asp:Label ID="Msg" runat="server" Text="Agent Successfully Added."></asp:Label>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Invalid  Credentials"></asp:RequiredFieldValidator>
       </h3> <br />
        <br />
        </div>
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <!-- Banner -->
	</asp:Content>