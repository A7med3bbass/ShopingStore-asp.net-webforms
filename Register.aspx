<%@ Page Title="" Language="C#" MasterPageFile="~/ReGisteration.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Register Page</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- register -->
	<div class="register">
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">Register Here</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia 
				deserunt mollit anim id est laborum.</p>
            <div class="login-form-grids">
                <form class="animated wow slideInUp" data-wow-delay=".5s" runat="server">
                    <h5 class="animated wow slideInUp" data-wow-delay=".5s">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                    </h5>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtfirstname" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtfirstname" placeholder="First Name ..." runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtlastname" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtlastname" placeholder="Last Name ..." runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtemail" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtemail" TextMode="Email" placeholder="Email Address ..." runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtpass" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

                    <!-- ================================================================================= -->
                     <asp:Button ID="Button2" runat="server" Text="Chose Random Password" OnClick="Button2_Click" Height="35px" Width="212px" />
                    <asp:TextBox ID="txtpass" TextMode="Password" placeholder="Password ..." runat="server">

                     <!-- ================================================================================ -->
                    </asp:TextBox>
                    <div class="register-check-box">
                    <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
                </form>
            </div>
			<div class="register-home animated wow slideInUp" data-wow-delay=".5s">
				<a href="Default.aspx">Home</a>
			</div>
           </div>
		</div>
	</div>
    <script src="js/Mapping.js"></script>
</asp:Content>

