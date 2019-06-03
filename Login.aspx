<%@ Page Title="" Language="C#" MasterPageFile="~/ReGisteration.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="Default.aspx"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Login Page</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- login -->
	<div class="login">
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">Login Form</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia 
				deserunt mollit anim id est laborum.</p>
			<div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label><br />
				<form runat="server">
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtemail" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
					 <asp:TextBox ID="txtemail" TextMode="Email" placeholder="Email Address ..." runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtpass" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
					 <asp:TextBox ID="txtpass" TextMode="Password" placeholder="Password ..." runat="server"></asp:TextBox>
					<div class="register-check-box">
						<div class="check">
							<label class="checkbox">
                                <asp:CheckBox ID="CheckBox1" runat="server" /><i> </i>Yes, Remember Me</label>
						</div>
					</div>
                    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
				</form>
			</div>
			<h4 class="animated wow slideInUp" data-wow-delay=".5s">For New People</h4>
			<p class="animated wow slideInUp" data-wow-delay=".5s"><a href="Register.aspx">Register Here</a> (Or) go back to <a href="Default.aspx">Home<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span></a></p>
		</div>
	</div>
</asp:Content>

