<%@ Page Title="" Language="C#" MasterPageFile="~/ReGisteration.master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Chekout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="checkout">
        <div class="container">
            <h3 class="animated wow slideInLeft" data-wow-delay=".5s">Your shopping cart contains: <span>
                <asp:Label ID="Label2" runat="server"></asp:Label>&nbsp;Products</span></h3>
            <div class="checkout-right animated wow slideInUp" data-wow-delay=".5s">
                <form runat="server">
                <asp:GridView ID="GridView1" runat="server" class="timetable_sub" SelectedIndex="0" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleted="GridView1_RowDeleted" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                    <Columns>
                        <asp:BoundField DataField="CatNo" HeaderText="Category" ReadOnly="True" />
                        <asp:BoundField DataField="ProdNo" HeaderText="ID" ReadOnly="True" />
                        <asp:BoundField DataField="ProdName" HeaderText="Product" ReadOnly="True" />
                        <asp:BoundField DataField="ProdPrice" HeaderText="Price" ReadOnly="True" />
                        <asp:BoundField DataField="ProdQuantity" HeaderText="Count Of Pro" />
                        <asp:BoundField DataField="SubTotal" HeaderText="SubTotal" ReadOnly="True" />
                        <asp:TemplateField HeaderText="Pro-Pic">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# "ProImage/"+Eval("ProdNo")+".jpg" %>' Width="103px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField HeaderText="Edit Quantity" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" />
                    </Columns>
                    </asp:GridView>
                    </form>
            </div>
            <div class="checkout-left">
                <div class="checkout-left-basket animated wow slideInLeft" data-wow-delay=".5s">
                    <h4>Continue to basket</h4>
                    <ul>
                        <li>Total <i>-</i> <span><span>$</span><asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#FFC229"></asp:Label></span></li>
                    </ul>
                </div>
                <div class="checkout-right-basket animated wow slideInRight" data-wow-delay=".5s">
                    <a href="single.html"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>Continue Shopping</a>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</asp:Content>

