<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ventas.aspx.cs" Inherits="TPC_equipo_5a.Ventas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex">
  <nav id="sidebar" class="bg-dark text-white p-3">
    <ul class="nav flex-column">
      <li class="nav-item"><a class="nav-link text-white" href="#">Dashboard</a></li>
      <li class="nav-item"><a class="nav-link text-white" href="#">Usuarios</a></li>
      <li class="nav-item"><a class="nav-link text-white" href="#">Productos</a></li>
      <li class="nav-item"><a class="nav-link text-white" href="#">Ventas</a></li>
    </ul>
  </nav>
  <div class="content flex-grow-1 p-4">
    <!-- Aquí va el contenido -->
  </div>
</div>

</asp:Content>
