Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.Data
Imports Template_AD
Partial Class Register
    Inherits System.Web.UI.Page
    Dim oDs As New DataSet
    Dim o_Us As New Usuarios
    Protected Sub btnRegister_Click(sender As Object, e As EventArgs) Handles btnRegister.Click
        Dim username As String = txtUsername.Text.Trim()
        Dim password As String = txtPassword.Text.Trim()
        Dim email As String = txtEmail.Text.Trim()

        If String.IsNullOrEmpty(username) Or String.IsNullOrEmpty(password) Or String.IsNullOrEmpty(email) Then
            lblMessage.Text = "Todos los campos son obligatorios."
            Return
        End If

        ' Conexión a la base de datos
        Dim connectionString As String = WebConfigurationManager.ConnectionStrings("Conn").ConnectionString

        ' Aquí ya no necesitas conn.Close(), Using gestiona el cierre automáticamente
        Using conn As New SqlConnection(connectionString)

            conn.Open()

            ' Verificar si el usuario ya existe
            Dim ds As DataSet = o_Us.BuscarUsuarios(username)
            Dim userExists As Boolean = ds.Tables(0).Rows.Count > 0

            If userExists Then
                lblMessage.Text = "El nombre de usuario ya existe."
                Return
            Else
                ds.Clear()
           
                o_Us.Registrar(username, password, email)
                ds = o_Us.BuscarUsuarios(username)
                Dim result As Boolean = ds.Tables(0).Rows.Count > 0
                If result Then
                    lblMessage.CssClass = "success-message"
                    lblMessage.Text = "Registro exitoso. ¡Inicia sesión ahora!"
                    txtUsername.Text = Nothing
                    txtEmail.Text = Nothing
                Else
                    lblMessage.Text = "Hubo un error al registrar el usuario. Inténtalo de nuevo."
                End If
            End If

            ' Insertar nuevo usuario


           
        End Using
    End Sub

End Class
