Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Imports Microsoft.Practices.EnterpriseLibrary.Data
Imports System.Configuration
Public Class Usuarios
    Dim o_Database As Database
    Public Sub New()

        o_Database = DatabaseFactory.CreateDatabase("Conn")

    End Sub
    Public Function BuscarUsuarios(ByVal Username As String) As DataSet
        Return o_Database.ExecuteDataSet("BuscarUsuarios", Username)
    End Function

    Public Function Registrar(ByVal Username As String, ByVal Password As String, ByVal Email As String) As Double
        Return o_Database.ExecuteScalar("RegistrarUsuarios", Username, Password, Email)

    End Function
    Public Function VerificarUsuarios(ByVal Username As String, ByVal Password As String) As DataSet
        Return o_Database.ExecuteDataSet("VerificarUsuarios", Username, Password)
    End Function
End Class
