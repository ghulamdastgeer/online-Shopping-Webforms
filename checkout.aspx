<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="WebApplication1.checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>Shopping Cart</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="single-product-area cart-page-change">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row"> 
                <div class="col-md-12 pull-right">
                    <div class="product-content-right">
                        <div class="woocommerce">
                            
                        <form runat="server">
                <div class="panel-body">
                    
                    <label>NAME:<asp:textbox  runat="server" ID="name" CssClass="form-control"></asp:textbox></label>
                    <br />
                    <label>phone:<asp:textbox runat="server" ID="phone" CssClass="form-control"></asp:textbox></label>
                   <br/>
                    <label>Address:<asp:textbox runat="server" ID="address" CssClass="form-control"></asp:textbox></label>
                   <br/>
                    <br/>
                    <label>Email:<asp:textbox runat="server" ID="email" CssClass="form-control"></asp:textbox></label>
                   <br/>
                    
                                    </div>
                <div class="panel-footer">

                    <asp:button runat="server" ID="checkout_btn" OnClick="checkout_click" Text="checkout" CssClass="btn-btn-primary" />
            
                     </div>
                       </form>
                        </div>
                    </div>                    
                </div>


               

            </div>
        </div>
    </div>

</asp:Content>
