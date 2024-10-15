<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TPC_equipo_5a.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container mt-5">
    <div class="row">
        <h1 class="text-center">Iniciar Sesión</h1>
        <asp:Label ID="lblError" runat="server" ForeColor="Red" CssClass="text-center d-block mb-3"></asp:Label>
        <asp:Label ID="lblSuccess" runat="server" ForeColor="Green" CssClass="text-center d-block mb-3"></asp:Label>

        <div class="col-md-6 offset-md-3">
            <div class="mb-3">
                <label for="txtEmail" class="form-label">Email</label>
                <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" />
            </div>
            <asp:Label ID="lblEmailError" runat="server" ForeColor="Red"></asp:Label>

            <div class="mb-3">
                <label for="txtPassword" class="form-label">Contraseña</label>
                <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control" TextMode="Password" />
            </div>
            <asp:Label ID="lblPasswordError" runat="server" ForeColor="Red"></asp:Label>

            <div class="form-check mb-3">
                <asp:CheckBox runat="server" ID="chkRecordar" CssClass="form-check-input" />
                <label class="form-check-label" for="chkRecordar">Recordarme</label>
            </div>

            <div class="d-flex justify-content-center">
                <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-primary me-3" Text="Iniciar Sesión" />
                <asp:Button ID="btnOlvido" runat="server" CssClass="btn btn-link" Text="¿Olvidaste tu contraseña?" />
                
            </div>
            <br />
<br />
<br />
<br />
<br />
        </div>
    </div>
</div>






</asp:Content>
