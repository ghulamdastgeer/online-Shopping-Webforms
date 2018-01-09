<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel fade" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <div class="container">
             <img src="img/slide-2.png" alt="Slide" width="340">
             <div class="slider-caption">
             	<h1>Iphone 6 plus</h1>
             	<h5>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore</h5>
             	<a href="#">Shop Now</a>
             </div>
          </div>
        </div>
        <div class="item">
          <div class="container">
             <img src="img/slide-3.png" alt="Slide" width="340">
             <div class="slider-caption">
             	<h1>Galaxy S6 Edge Plus</h1>
             	<h5>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore</h5>
             	<a href="#">Shop Now</a>
             </div>
          </div>
        </div>
        <div class="item">
          <div class="container">
             <img src="img/slide-4.png" alt="Slide" width="340">
             <div class="slider-caption">
             	<h1>HTC One M8</h1>
             	<h5>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore</h5>
             	<a href="#">Shop Now</a>
             </div>
          </div>
        </div>
        <div class="item">
          <div class="container">
             <img src="img/slide-5.png" alt="Slide" width="340">
             <div class="slider-caption">
             	<h1>Nokia Lumia 920</h1>
             	<h5>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore</h5>
             	<a href="#">Shop Now</a>
             </div>
          </div>
        </div>
        
      </div>
      
    </div><!-- /.carousel -->
     <div class="promo-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-xs-6">
                    <div class="single-promo promo1">
                        <i class="fa fa-refresh"></i>
                        <p>30 Days return</p>
                    </div>
                </div>
                <div class="col-md-3 col-xs-6">
                    <div class="single-promo promo2">
                        <i class="fa fa-truck"></i>
                        <p>Free shipping</p>
                    </div>
                </div>
                <div class="col-md-3 col-xs-6">
                    <div class="single-promo promo3">
                        <i class="fa fa-lock"></i>
                        <p>Secure payments</p>
                    </div>
                </div>
                <div class="col-md-3 col-xs-6">
                    <div class="single-promo promo4">
                        <i class="fa fa-gift"></i>
                        <p>New products</p>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End promo area -->
    
    <div class="maincontent-area">
     <div class="container">
            <div class="row">
                 <%foreach (var product in product_list)
                     { %>
                 <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                <div class="prodsum_item">
                    <a href="product-detail.aspx?id=<%=product.id %>"><img src="<%=product.image %>" height="100" width="100"  /></a>
                    <a href="product-detail.aspx?id=<%=product.id %>"><h2><%=product.product_name %></h2></a>
                    <p class="prodsum_price" ><%=product.price %></p>
                     <a href="mobile.aspx?id=<%=product.id %>&Action=add" class="item_add"><span class="glyphicon glyphicon-shopping-cart"></span></a>
                </div>
            </div>   
               <%} %>
              
                        
                                            
                    </div>
                </div>
        
    <!-- End main content area -->
    </div>
    <div class="brands-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="brand-wrapper">
                        <div class="brand-list">
                            <img src="img/brand1.png" alt="">
                            <img src="img/brand2.png" alt="">
                            <img src="img/brand3.png" alt="">
                            <img src="img/brand4.png" alt="">
                            <img src="img/brand5.png" alt="">
                            <img src="img/brand6.png" alt="">
                            <img src="img/brand1.png" alt="">
                            <img src="img/brand2.png" alt="">                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End brands area -->
</asp:Content>
