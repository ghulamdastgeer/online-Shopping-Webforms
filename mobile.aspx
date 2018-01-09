<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="mobile.aspx.cs" Inherits="WebApplication1.mobile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>Shop</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
     <div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                 <%foreach (var product in product_list)
                     { %>
                 <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                <div class="prodsum_item">
                   <a href="product-detail.aspx?id=<%=product.id %>"> <img  src="<%=product.image %>" height="100" width="100"  /></a>
                   <a href="product-detail.aspx?id=<%=product.id %>"> <h2><%=product.product_name %></h2></a>
                    <p class="prodsum_price" ><%=product.price %></p>
                     <a href="mobile.aspx?id=<%=product.id %>&Action=add" class="item_add"><span class="glyphicon glyphicon-shopping-cart"></span></a>
                </div>
            </div>   
               <%} %>
              
                        
                  
                    </div>
                </div>
                </div>
             <div class="row">
                <div class="col-md-12">
                    <div class="product-pagination text-center">
                        <nav>
                          <ul class="pagination">
                            <li>
                              <a href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                              </a>
                            </li>
                            <li><a href="#">1</a></li>
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
                    </div>
                </div>
            </div>
            </div>
</asp:Content>
