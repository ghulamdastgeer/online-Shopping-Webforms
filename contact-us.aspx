<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact-us.aspx.cs" Inherits="WebApplication1.contact_us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <section class="contact-banner-sec">
        <div class="container">
            <h1>How can we help you ?</h1>
            <div class="search-contact">
                <input type="text" name="search" placeholder="Please type your query here. eg. I want to track my order.">
                <button type="submit"><i class="fa fa-angle-right" aria-hidden="true"></i></button>
            </div>
        </div>
    </section>
    <section>
        <div class="container">
            <div class="query-form">
                <h2>Please fill the Query Form</h2>
                <form>
                    <select class="select-opt">
                        <option>I have an issue with my account</option>
                        <option>I have a query on an item/on delivery</option>
                        <option>I want information on Mobile store offers</option>
                        <option>I want information on your return policy</option>
                    </select>
                    <input type="text" name="name" class="input-field" placeholder="Name">
                    <input type="text" name="name" class="input-field" placeholder="Registered Email">
                    <input type="text" name="name" class="input-field" placeholder="Phone Number">
                    <textarea class="input-field comment-area" placeholder="Comments"></textarea>
                    <button type="submit" class="contact-btn">Send Now</button>
                </form>
            </div>
        </div>
    </section>
</asp:Content>
