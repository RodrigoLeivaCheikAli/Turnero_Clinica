
<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="ProyectoF_Web.Login1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head2" runat="server">
    <title>Login - Clínica</title>
   <link rel="stylesheet" type="text/css" href="~/css/Login.css" />

</head>
<body>
    <form id="form2" runat="server">
        <div class="login-container">
            <h2>Iniciar Sesión</h2>
            <asp:Label ID="lblMessage" runat="server" CssClass="error-message"></asp:Label>
                   <asp:TextBox ID="txtUsername" runat="server" placeholder="Nombre de Usuario" CssClass="input-text"></asp:TextBox>
<asp:TextBox ID="txtPassword" runat="server" TextMode="password" placeholder="Contraseña" CssClass="input-text"></asp:TextBox>
            <asp:Button ID="btnLogin" runat="server" Text="Ingresar" />
            <asp:HyperLink ID="hlRegister" runat="server" NavigateUrl="Registro.aspx" Text="¿No tienes una cuenta? Regístrate aquí"></asp:HyperLink>
        </div>
    </form>
</body>
</html>
