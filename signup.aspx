<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="WebApplication1.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="Form1" runat="server">
                                
      <div class="col-lg-offset-3 col-lg-6">
            <div class="panel panel-primary">
                <div class="panel-heading"> SIGNUP</div>
                <div class="panel-body">
                  
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                                <!--<input id="loginid" type="text" placeholder="Login Id" class="form-control" onblur='return isempty("loginid","formsg1")' />-->                                
                                <asp:TextBox ID="NAME" placeholder="enter your name" runat="server"></asp:TextBox>                     
                            </div>
                            <span class="text-danger"  id="formsg1"></span>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                                <!--<input id="password" type="password" placeholder="Password" class="form-control" onblur='return isempty("password","formsg2")' />-->                                
                                <asp:TextBox ID="password" placeholder="enter your password" runat="server"></asp:TextBox>
                            </div>
                            
                        </div>
                        <div class="form-group">
                            <asp:Button runat="server" ID="SIGNUP" Text="SIGNUP" OnClick="SIGNUP_Click" class="btn btn-primary" />
                        </div>
                      
                </div>
            </div>
        </div>  
                            </form>

</asp:Content>
