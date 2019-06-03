<%@ Page Title="" Language="C#" MasterPageFile="~/ReGisteration.master" AutoEventWireup="true" CodeFile="DetailProducts.aspx.cs" Inherits="DetailProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form id="form1" runat="server">
     <div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="Products.aspx"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Back</a></li>
				<li class="active">Details Of Product</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- register -->
	<div class="register">
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">Product Details</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia 
				deserunt mollit anim id est laborum.</p>
            <div class="login-form-grids"style="background-color:#8a0f0f">
                <table class="nav-justified">
                    <tr>
                        <td colspan="4">
                           <h5>&nbsp;</h5> 
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="12" style="width: 178px; background-color:#8a0f0f" >
                            <asp:Image ID="Image1" runat="server" Height="195px" Width="134px" BorderColor="Black"/>
                        </td>
                        <td style="width: 231px; height: 35px;">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="CATEGORY" ForeColor="White"></asp:Label>
                        </td>
                        <td style="width: 206px; height: 35px;">
                           <span class="badge"><asp:Label ID="lblCat" runat="server" ForeColor="White" Font-Bold="True" Font-Size="Large"></asp:Label></span>
                        </td>
                        <td style="height: 35px"></td>
                    </tr>
                    <tr>
                        <td style="width: 231px; height: 30px;">
                          <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="PRODUCT ID" ForeColor="White"></asp:Label>
                        </td>
                        <td style="width: 206px; height: 30px;">
                            <span class="badge badge-primary"> <asp:Label ID="lblProID" runat="server" ForeColor="White" Font-Size="Large"></asp:Label></span>
                        </td>
                        <td style="height: 30px"></td>
                    </tr>
                    <tr>
                        <td style="width: 231px; height: 29px;">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="PRODUCT NAME" ForeColor="White"></asp:Label>
                        </td>
                        <td style="width: 206px; height: 29px;">
                            <asp:Label ID="lblProName" runat="server" ForeColor="White"></asp:Label>
                        </td>
                        <td style="height: 29px"></td>
                    </tr>
                    <tr>
                        <td style="width: 231px; height: 30px;">
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="PRICE" ForeColor="White"></asp:Label>
                        </td>
                        <td style="width: 206px; height: 30px;">
                            <span class=" badge badge-success"> <asp:Label ID="lblPrice" runat="server" ForeColor="White" Font-Size="Large"></asp:Label></span>
                        </td>
                        <td style="height: 30px"></td>
                    </tr>
                    <tr>
                        <td style="width: 231px">
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="MAX QUANTITY" ForeColor="White"></asp:Label>
                        </td>
                        <td style="width: 206px">
                            <span class=" badge badge-warning"> <asp:Label ID="lblQty" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label></span>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtQuantity" runat="server" Width="42px" CssClass="text-danger" BackColor="#F7F7F9" Height="20px" TextMode="Number" Visible="False" ReadOnly="True" Font-Bold="True" ForeColor="White"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 231px">
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="DESCRIPTION" ForeColor="White"></asp:Label>
                        </td>
                        <td colspan="2" rowspan="5">
                            <asp:Label ID="lblDesc" runat="server" ForeColor="White"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 231px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 231px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 231px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 231px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 231px">
                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Quantity You Want" ForeColor="White"></asp:Label>
                        </td>
                        <td style="width: 206px">
                            <asp:TextBox ID="txtShop" runat="server" Width="43px" CssClass="text-danger" Height="18px" TextMode="Number">1</asp:TextBox>
                        </td>
                        <td>
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/shop.png" Width="29px" OnClick="ImageButton1_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtQuantity" ControlToValidate="txtShop" ErrorMessage="Bye Less Than Or Equal Max Quantity" Font-Italic="True" ForeColor="Red" Operator="LessThanEqual"></asp:CompareValidator>
                        </td>
                    </tr>
                </table>
				         
				</div>
            </div>
        </div>
                </form>
            
			<div class="register-home animated wow slideInUp" data-wow-delay=".5s">
				<a href="Category.aspx">Go To Category</a>
			</div>
    <br />
    
</asp:Content>

