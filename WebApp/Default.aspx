<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPC_equipo_5a.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    
    

    <%--Hero--%>
    <div class="jumbotron text-center">
    <h1 class="display-4">Bienvenido a Comercio X</h1>
    <p class="lead">Encuentre los mejores productos al mejor precio.</p>
        <br />
    <a class="btn btn-primary btn-lg" href="Productos.aspx" role="button">Explorar Productos</a>
</div>
    <br />
    <br />
    <br />


<%--    Productos destacados--%>

    <div class="container">
    <h2 class="text-center">Productos Destacados</h2>
    <div class="row">
        <div class="col-md-4">
            <div class="card">
                <img src="https://picsum.photos/id/96/150/150" class="card-img-top" alt="Producto 1">
                <div class="card-body">
                    <h5 class="card-title">Producto 1</h5>
                    <p class="card-text">$19.99</p>
                    <a href="#" class="btn btn-primary">Comprar</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <img src="https://picsum.photos/id/145/200/200" class="card-img-top" alt="Producto 2">
                <div class="card-body">
                    <h5 class="card-title">Producto 2</h5>
                    <p class="card-text">$29.99</p>
                    <a href="#" class="btn btn-primary">Comprar</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <img src="https://picsum.photos/id/211/200/200" class="card-img-top" alt="Producto 3">
                <div class="card-body">
                    <h5 class="card-title">Producto 3</h5>
                    <p class="card-text">$39.99</p>
                    <a href="#" class="btn btn-primary">Comprar</a>
                </div>
            </div>
        </div>
    </div>
</div>




</asp:Content>
