<%@ Page Title="" Language="C#" MasterPageFile="~/MasterViewIndex.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="PrCatImage_Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="products-right-grids-bottom">
        <div class="col-md-4 products-right-grids-bottom-grid">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BigstoredbConnectionString %>" SelectCommand=""></asp:SqlDataSource>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="CatNo" DataSourceID="SqlDataSource1" RepeatColumns="2">
                <ItemTemplate>

                       <div class="new-products animated wow slideInUp" data-wow-delay=".5s" style="width:340px; background-color:#fffcfc; height:400px; margin:2px 2px 2px 2px; border-radius:7px; box-shadow:#9d6d32">
					<h3 style="background-color:#fff5e5"><asp:Label ID="Label1" runat="server" Text='<%# Eval("ProdName") %>' Font-Bold="True" ForeColor="#FF9933"></asp:Label></h3>
					<div class="new-products-grids">
						<div class="new-products-grid">
							<div class="new-products-grid-left">

								<a href="DetailProducts.aspx?catno=<%#Eval("CatNo")%>&prono=<%#Eval("ProdNo")%>">
                                    <asp:Image ID="Image1" runat="server" CssClass="img-responsive" Width="100px" Height="145px" ImageUrl='<%# "ProImage/"+Eval("ProdNo")+".jpg" %>' /></a>
							</div>
							<div class="new-products-grid-right">
								<strong>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("ProdDescription") %>'></asp:Label></strong>
								<div class="rating">
									<div class="rating-left">
										<img src="images/2.png" alt=" " class="img-responsive">
									</div>
									<div class="rating-left">
										<img src="images/2.png" alt=" " class="img-responsive">
									</div>
									<div class="rating-left">
										<img src="images/2.png" alt=" " class="img-responsive">
									</div>
									<div class="rating-left">
										<img src="images/1.png" alt=" " class="img-responsive">
									</div>
									<div class="rating-left">
										<img src="images/1.png" alt=" " class="img-responsive">
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="simpleCart_shelfItem new-products-grid-right-add-cart">
									<p> <span class="item_price">
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("ProdPrice")+"$" %>'></asp:Label>

									    </span>
                                        <a class="item_add" href="DetailProducts.aspx?catno=<%#Eval("CatNo")%>&prono=<%#Eval("ProdNo")%>">More Details</a></p>
								</div>
							</div>
							<div class="clearfix"> </div>
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

