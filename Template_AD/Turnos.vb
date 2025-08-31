Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Imports Microsoft.Practices.EnterpriseLibrary.Data
Imports System.Configuration
Public Class Turnos
    Dim o_Database As Database
    Public Sub New()

        o_Database = DatabaseFactory.CreateDatabase("Conn")

    End Sub
    Public Function CargarTurnos(ByVal ID_Doctor_cbo As Integer, ByVal ID_Departamento_cbo As Integer, ByVal ID_Usuario As Integer, ByVal Paciente As String, ByVal DNI As Integer, ByVal Motivo As String, ByVal Telefono As String, ByVal Fecha As Date, ByVal Horario As TimeSpan) As Double
        Return o_Database.ExecuteScalar("CargarTurnos", ID_Doctor_cbo, ID_Departamento_cbo, ID_Usuario, Paciente, DNI, Motivo, Telefono, Fecha, Horario)

    End Function
    Public Function Cargar_Combo_Doctores(ByVal ID As Integer) As DataSet
        Return o_Database.ExecuteDataSet("Cargar_Combo_Doctores", ID)

    End Function
    Public Function Cargar_Combo_Depto() As DataSet
        Return o_Database.ExecuteDataSet("Cargar_Combo_Depto")

    End Function
    Public Function Cargar_Combo_Horarios(ByVal ID_Doctor As Integer) As DataSet
        Return o_Database.ExecuteDataSet("Cargar_Combo_Horarios", ID_Doctor)
    End Function
    Public Function Cargar_Combo_Horarios2(doctorName As String) As DataSet

        Return o_Database.ExecuteDataSet("Cargar_Combo_Horarios2", doctorName)
    End Function
    Public Function ObtenerTurnosReservados(ByVal doctorID As Integer, ByVal fecha As DateTime) As DataSet

        Return o_Database.ExecuteDataSet("ObtenerTurnosReservados", doctorID, fecha)
    End Function

    Public Function ObtenerDoctor(ByVal doctor As String) As DataSet

        Return o_Database.ExecuteDataSet("ObtenerDoctor", doctor)
    End Function
    Public Function ModificarTurnos(ByVal ID As Integer, ByVal Fecha As Date, ByVal Horario As TimeSpan) As Double
        Return o_Database.ExecuteScalar("Modificar_Turno", ID, Fecha, Horario)
    End Function


    Public Function EliminarTurnos(ByVal ID As Integer) As Double
        Return o_Database.ExecuteScalar("Eliminar_Armazon", ID)

    End Function
    Public Function ConsultarTurnosPorUsuario(ByVal userID As Integer) As DataSet
        Return o_Database.ExecuteDataSet("ConsultarTurnosPorUsuario", userID)
    End Function
    Public Function ConsultarxDNI(ByVal DNI As Integer) As DataSet
        Return o_Database.ExecuteDataSet("Consultar_Turnos", DNI)

    End Function
    Public Function ConsultarxID(ByVal ID As Integer) As DataSet
        Return o_Database.ExecuteDataSet("Consultar_ID", ID)

    End Function
    Public Function ConsultarxDescripcion(ByVal Descripcion As String) As DataSet
        Return o_Database.ExecuteDataSet("Consultar_Descripcion", Descripcion)

    End Function
    Public Function DoctoresInfo(ByVal ID_Doctores As Integer) As DataSet
        Return o_Database.ExecuteDataSet("DoctoresInfo", ID_Doctores)
    End Function
    Public Function GetPacienteInfo(ByVal ID As Integer) As DataSet
        Return o_Database.ExecuteDataSet("GetPacienteInfo", ID)
    End Function
End Class

