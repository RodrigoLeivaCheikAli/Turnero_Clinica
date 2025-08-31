<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Register.aspx.vb" Inherits="ProyectoF_Web.Register" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Registro - Clínica</title>
    <link rel="stylesheet" type="text/css" href="css/Login.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <h2>Registro</h2>
            <asp:Label ID="lblMessage" runat="server" CssClass="error-message"></asp:Label>
          <asp:TextBox ID="txtUsername" runat="server" placeholder="Nombre de Usuario" CssClass="input-text"></asp:TextBox>
<asp:TextBox ID="txtPassword" runat="server" TextMode="password" placeholder="Contraseña" CssClass="input-text"></asp:TextBox>
<asp:TextBox ID="txtEmail" runat="server" TextMode="Email" placeholder="Correo Electrónico" CssClass="input-text"></asp:TextBox>

            <asp:Button ID="btnRegister" runat="server" Text="Registrarse"/>
            <asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="Login.aspx" Text="¿Ya tienes una cuenta? Inicia sesión aquí"></asp:HyperLink>
        </div>
    </form>
</body>
</html>
