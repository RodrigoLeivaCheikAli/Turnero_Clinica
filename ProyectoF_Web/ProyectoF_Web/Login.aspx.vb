Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.Data
Imports Template_AD

Partial Class Login1
    Inherits System.Web.UI.Page

    Dim oDs As New DataSet
    Dim o_Us As New Usuarios

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            ' Cerrar la sesión
            Session.Clear() ' Elimina todas las variables de sesión
            Session.Abandon() ' Destruye la sesión actual

            ' Solo redirigir si no estamos en la página de inicio de sesión
            If Not Request.RawUrl.Contains("Login.aspx") Then
                Response.Redirect("Login.aspx")
            End If
        End If
    End Sub




    ' Método manejador de eventos para el botón btnLogin
    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        Dim username As String = txtUsername.Text.Trim()
        Dim password As String = txtPassword.Text.Trim()

        ' Conexión a la base de datos
        Dim connectionString As String = WebConfigurationManager.ConnectionStrings("Conn").ConnectionString

        If String.IsNullOrEmpty(username) Or String.IsNullOrEmpty(password) Then

            Response.Write("<script>alert('Todos los campos son obligatorios');</script>")
            Return
        End If

        Using conn As New SqlConnection(connectionString)
            conn.Open()

            ' Verificar el usuario y contraseña
            Dim ds As DataSet = o_Us.VerificarUsuarios(username, password)

            If ds IsNot Nothing AndAlso ds.Tables(0).Rows.Count > 0 Then
                ' Obtener el UserID desde la base de datos
                Dim userId As Integer = Convert.ToInt32(ds.Tables(0).Rows(0)("Id"))

                ' Si el usuario es válido, crear la sesión
                Session("Username") = username
                Session("UserID") = userId ' Almacenar el ID del usuario en la sesión

                Response.Redirect("Inicio.aspx")
            Else

                Response.Write("<script>alert('Nombre de usuario o contraseña incorrectos.');</script>")
            End If
        End Using
    End Sub
End Class

