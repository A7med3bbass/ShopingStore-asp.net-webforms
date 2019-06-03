<%@ Page Title="" Language="C#" MasterPageFile="~/MasterViewIndex.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="products-right-grids-bottom">
        <div class="col-md-4 products-right-grids-bottom-grid">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BigstoredbConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="CatNo" DataSourceID="SqlDataSource1" CellPadding="0" Height="355px" Width="710px" RepeatColumns="2">
                <ItemTemplate>
                    <div class="row">
                        <div class="col-md-4" style="width: 350px; height: 500px; top: 0px; left: 0px;">
                            <div class="thumbnail">
                                <a href="Products.aspx?catno=<%#Eval("CatNo")%>">
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "PrCatImage/"+Eval("CatNo")+".jpg" %>' />
                                </a>
                                <div class="caption">
                                    <h4>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("CatName") %>' Font-Bold="True" ForeColor="#FF9933"></asp:Label></h4>
                                    <br />
                                    <br />
                                    <h5><strong>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("CatDesc") %>' Font-Bold="True"></asp:Label></strong></h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
        <div class="clearfix"></div>
    </div>
    <nav class="numbering animated wow slideInRight" data-wow-delay=".5s">
				  <ul class="pagination paging">
					<li>
					  <a href="#" aria-label="Previous">
						<span aria-hidden="true">&laquo;</span>
					  </a>
					</li>
					<li class="active"><a href="#">1<span class="sr-only">(current)</span></a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li>
					  <a href="#" aria-label="Next">
						<span aria-hidden="true">&raquo;</span>
					  </a>
					</li>
				  </ul>
				</nav>
</asp:Content>

