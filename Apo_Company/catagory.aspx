<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="catagory.aspx.cs" Inherits="Apo_Company.catagory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="public/assets/styles/catagory.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="wrapper">
        <asp:ListView ID="catagory_list" runat="server">
                <ItemTemplate>
                    <div class="card">
                     <a href="/product_info.aspx?product_id=<%#Eval("productID") %>"><asp:Image CssClass="img" ImageUrl='<%#Eval("image") %>' runat="server"/></a>
                      <h1><asp:Label runat="server"><%#Eval("product_name") %></asp:Label></h1>
                      <p class="price"><%#Eval("price") %>$</p>
                      <p>Brand: <%#Eval("brand") %></p>
                      <p><button>Add to Cart</button></p>
                    </div>
                </ItemTemplate>
            </asp:ListView>
        </div>

</asp:Content>
