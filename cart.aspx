<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="WebApplication1.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        margin-top: 2px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
     
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
    </div> <!-- End Page title area -->
    
    
    <div class="single-product-area cart-page-change">
        <div class="zigzag-bottom"></div>
        <div class="container">
           
                    <div class="product-content img-responsive img-thumbnail aligncenter">
               


                                 <form runat="server" class="aligncenter">
                                     <div class="text-center">
    <asp:GridView ID="GV" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnSelectedIndexChanged="GV_SelectedIndexChanged" CssClass="auto-style2" Height="253px" Width="1122px" >
        <Columns>
            <asp:BoundField DataField="id" HeaderText="Id" Visible="False" />
            <asp:BoundField DataField="product_name" HeaderText="product"  />
            <asp:BoundField DataField="price" HeaderText="price" />
              <asp:ImageField DataImageUrlField="image"  HeaderText="image" ControlStyle-Height="300px" ControlStyle-Width="200px">
           <ControlStyle Height="300px" Width="200px"></ControlStyle>
            </asp:ImageField>
         
            <asp:CommandField ShowSelectButton="True" HeaderText="Delete" SelectText="Delete" />
        </Columns>

    </asp:GridView>
   
    
                                     </div>
   
    
    <div class="text-center">
        &nbsp;</div>
                   
                            </form>                  
                    </div>                    
              
        <a href="checkout.aspx" class="btn btn-success">procceed to checkout</a></div>
    </div>
</asp:Content>
