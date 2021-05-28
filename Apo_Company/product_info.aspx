<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="product_info.aspx.cs" Inherits="Apo_Company.product_info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="public/assets/styles/Product_info.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="wrapper">

        <div class="info">
            <div class="card">
                <asp:Image ID="product_info_img" CssClass="img" runat="server"/>
                <h1><asp:Label ID="label_name" runat="server"></asp:Label></h1>
                <p class="price"><asp:Label ID="price" runat="server" Text=""></asp:Label></p>
                <p><asp:Label ID="brand" runat="server"></asp:Label></p>
                <p><button>Add to Cart</button></p>
            </div>

            <div class="disc"><h1>Discripion</h1>
                <p>
                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has 
                    been the industry's standard dummy text ever since the 1500s, when an unknown printer took a 
                    galley of type
                    and 
                    scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.



                </p></div>
        </div>

        

    </div>

</asp:Content>
