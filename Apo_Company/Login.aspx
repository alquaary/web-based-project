<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Apo_Company.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="./public/assets/styles/login.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="wrapper">
        <div class="container">
        <div class="form" id="login">
            <h1 class="form__title">Login</h1>
            <div class="form__message form__message--error"></div>
            <div class="form__input-group">
                <asp:TextBox ID="TextBox1" CssClass="form__input" placeholder="Username or email" runat="server"></asp:TextBox>
                <div class="form__input-error-message"></div>
            </div>
            <div class="form__input-group">
                <asp:TextBox ID="TextBox2" type="password" CssClass="form__input" placeholder="Password" runat="server"></asp:TextBox>
                <div class="form__input-error-message"></div>
            </div>
            <asp:Button ID="Button1" CssClass="form__button" runat="server" Text="Continue" OnClick="Button1_Click"/>
            
            <p class="form__text">
                <a class="form__link" href="./" id="linkCreateAccount">Don't have an account? Create account</a>
            </p>
            <p class="form__text">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </p>
        </div>




        <div class="form form--hidden" id="createAccount">
            <h1 class="form__title">Create Account</h1>
            <div class="form__message form__message--error"></div>

            
            <div class="form__input-group">
                <asp:TextBox ID="TextBox3" CssClass="form__input" placeholder="ID" runat="server"></asp:TextBox>
                <div class="form__input-error-message"></div>
            </div>
            <div class="form__input-group">
                <asp:TextBox ID="TextBox4"  CssClass="form__input" placeholder="Name" runat="server"></asp:TextBox>
                <div class="form__input-error-message"></div>
            </div>
            <div class="form__input-group">
                <asp:TextBox ID="TextBox5" CssClass="form__input" placeholder="Surname" runat="server"></asp:TextBox>
                <div class="form__input-error-message"></div>
            </div>
            <div class="form__input-group">
                <asp:TextBox ID="TextBox6"  CssClass="form__input" placeholder="Phone" runat="server"></asp:TextBox>
                <div class="form__input-error-message"></div>
            </div>
            <div class="form__input-group">
                <asp:TextBox ID="TextBox7" CssClass="form__input" placeholder="Address" runat="server"></asp:TextBox>
                <div class="form__input-error-message"></div>
            </div>
            <div class="form__input-group">
                <asp:TextBox ID="TextBox8"  CssClass="form__input" placeholder="Password" runat="server"></asp:TextBox>
                <div class="form__input-error-message"></div>
            </div>
            <div class="form__input-group">
                <asp:TextBox ID="TextBox9" CssClass="form__input" placeholder="Email" runat="server"></asp:TextBox>
                <div class="form__input-error-message"></div>
            </div>
            
            <asp:Button ID="Button2" CssClass="form__button" runat="server" Text="Continue" OnClick="Button2_Click"/>
            <p class="form__text">
                <a class="form__link" href="./" id="linkLogin">Already have an account? Sign in</a>
            </p>

            <p class="form__text">
                <asp:Label ID="Label2" runat="server" Text="Label2"></asp:Label>
            </p>
        </div>
    </div>
    </div>
    <script>
        function user_error() {
            alert("User name or password may be wrong");
        }
        function User_register() {
            alert("User name or password may be wrong");
        }
        function register_error() {
            alert("User name or password may be wrong");
        }
    </script>
    <script src="public/assets/javascript/login.js"></script>

</asp:Content>
