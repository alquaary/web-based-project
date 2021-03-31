<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Apo_Company.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Banner -->
        <section>
          <div class="banner">
            <video autoplay muted loop>
              <source src="public/images/banner.mp4" type="video/mp4">
            </video>
        
          </div> 
        </section>

    
        <!-- Boxes -->
        <section class="Products-section">
      
          <div class="container-section">
            <div class="container">
              <div class="box">
                <div class="icon">01</div>
                <div class="content">
                  <h3>3D Printers</h3>
                  <p>Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500'lerden
                  </p>
                  <a href="#">Read More</a>
                </div>
              </div>

              <div class="box">
                <div class="icon">02</div>
                <div class="content">
                  <h3>Drones</h3>
                  <p>Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500'lerden
                  </p>
                  <a href="#">Read More</a>
                </div>
              </div>

              <div class="box">
                <div class="icon">03</div>
                <div class="content">
                  <h3>CNC Machines</h3>
                  <p>Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500'lerden
                  </p>
                  <a href="#">Read More</a>
                </div>
              </div>
            </div>
          </div>

        </section>
</asp:Content>
