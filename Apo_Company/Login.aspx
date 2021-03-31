<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Apo_Company.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="./public/assets/styles/login.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-login">

        <div class="container-box">
            <div class="login-box">
                
                <asp:TextBox ID="TextBox1" CssClass="txtlogin" runat="server" placeholder="Enter Your Email"></asp:TextBox>
                <asp:TextBox ID="TextBox2" CssClass="txtlogin" runat="server" placeholder="Enter Your Email"></asp:TextBox>
            </div>
            

        </div>

    </div>

</asp:Content>
