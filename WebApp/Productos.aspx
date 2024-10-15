<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="TPC_equipo_5a.Productos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Artículos</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

    <div class="container mt-5">
        <h1 class="text-center">Artículos</h1>

        <div class="row mb-4">
            <div class="col-md-4">
                <h5>Filtrar por Categoría</h5>
                <select class="form-control" id="categoryFilter">
                    <option value="">Todos</option>
                    <option value="categoria1">Categoría 1</option>
                    <option value="categoria2">Categoría 2</option>
                    

                </select>
            </div>
            <div class="col-md-4">
                <h5>Filtrar por Marca</h5>
                <select class="form-control" id="brandFilter">
                    <option value="">Todas</option>
                    <option value="marca1">Marca 1</option>
                    <option value="marca2">Marca 2</option>
                    

                </select>
            </div>
            <div class="col-md-4">
                <h5>Filtrar por Tipo de Producto</h5>
                <select class="form-control" id="typeFilter">
                    <option value="">Todos</option>
                    <option value="tipo1">Tipo 1</option>
                    <option value="tipo2">Tipo 2</option>
                   

                </select>
            </div>
        </div>

        <div class="row" id="productList">



            <!-- Display de articulos -->
            <div class="col-md-4">
                <div class="card mb-4">
                    <img src="https://picsum.photos/123" class="card-img-top" alt="Nombre del Artículo">
                    <div class="card-body">
                        <h5 class="card-title">Nombre del Artículo</h5>
                        <p class="card-text">Descripción breve del artículo.</p>
                        <p class="card-text"><strong>Precio: $xx.xx</strong></p>
                        <a href="#" class="btn btn-primary">Ver Detalles</a>
                    </div>
                </div>
            </div>
        

            <div class="col-md-4">
                <div class="card mb-4">
                    <img src="https://picsum.photos/160" class="card-img-top" alt="Nombre del Artículo">
                    <div class="card-body">
                        <h5 class="card-title">Nombre del Artículo</h5>
                        <p class="card-text">Descripción breve del artículo.</p>
                        <p class="card-text"><strong>Precio: $xx.xx</strong></p>
                        <a href="#" class="btn btn-primary">Ver Detalles</a>
                    </div>
                </div>
            </div>




            <div class="col-md-4">
                <div class="card mb-4">
                    <img src="https://picsum.photos/120" class="card-img-top" alt="Nombre del Artículo">
                    <div class="card-body">
                        <h5 class="card-title">Nombre del Artículo</h5>
                        <p class="card-text">Descripción breve del artículo.</p>
                        <p class="card-text"><strong>Precio: $xx.xx</strong></p>
                        <a href="#" class="btn btn-primary">Ver Detalles</a>
                    </div>
                </div>
            </div>



            <div class="col-md-4">
                <div class="card mb-4">
                    <img src="https://picsum.photos/250" class="card-img-top" alt="Nombre del Artículo">
                    <div class="card-body">
                        <h5 class="card-title">Nombre del Artículo</h5>
                        <p class="card-text">Descripción breve del artículo.</p>
                        <p class="card-text"><strong>Precio: $xx.xx</strong></p>
                        <a href="#" class="btn btn-primary">Ver Detalles</a>
                    </div>
                </div>
            </div>



            <div class="col-md-4">
                <div class="card mb-4">
                    <img src="https://picsum.photos/200" class="card-img-top" alt="Nombre del Artículo">
                    <div class="card-body">
                        <h5 class="card-title">Nombre del Artículo</h5>
                        <p class="card-text">Descripción breve del artículo.</p>
                        <p class="card-text"><strong>Precio: $xx.xx</strong></p>
                        <a href="#" class="btn btn-primary">Ver Detalles</a>
                    </div>
                </div>
            </div>


            <div class="col-md-4">
                <div class="card mb-4">
                    <img src="https://picsum.photos/100" class="card-img-top" alt="Nombre del Artículo">
                    <div class="card-body">
                        <h5 class="card-title">Nombre del Artículo</h5>
                        <p class="card-text">Descripción breve del artículo.</p>
                        <p class="card-text"><strong>Precio: $xx.xx</strong></p>
                        <a href="#" class="btn btn-primary">Ver Detalles</a>
                    </div>
                </div>
            </div>







        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <%--<script>
    $(document).ready(function() {
        $('#categoryFilter, #brandFilter, #typeFilter').change(function() {
            const category = $('#categoryFilter').val();
            const brand = $('#brandFilter').val();
            const type = $('#typeFilter').val();

            
            $('#productList .card').each(function() {
                const card = $(this);
                const cardCategory = card.data('category'); 
                const cardBrand = card.data('brand'); 
                const cardType = card.data('type'); 

                if ((category === '' || cardCategory === category) &&
                    (brand === '' || cardBrand === brand) &&
                    (type === '' || cardType === type)) {
                    card.show();
                } else {
                    card.hide();
                }
            });
        });
    });
    </script>--%>





</body>
</html>





</asp:Content>
