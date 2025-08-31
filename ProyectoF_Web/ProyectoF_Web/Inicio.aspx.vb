Imports System.Data
Imports Template_AD
Imports System.Net
Imports System.IO
Imports System.Data.SqlClient
Imports System.Web.Configuration

Public Class Inicio
    Inherits System.Web.UI.Page

    Dim oDs As New DataSet
    Dim o_Tem As New Turnos

    ' Propiedad para almacenar los turnos temporalmente en ViewState
    Protected Property TurnosCarrito() As List(Of Turno)
        Get
            If ViewState("TurnosCarrito") Is Nothing Then
                ViewState("TurnosCarrito") = New List(Of Turno)()
            End If
            Return DirectCast(ViewState("TurnosCarrito"), List(Of Turno))
        End Get
        Set(ByVal value As List(Of Turno))
            ViewState("TurnosCarrito") = value
        End Set
    End Property

    ' Clase para representar los turnos
    <Serializable>
    Public Class Turno
        Public Property TurnoID As Integer
        Public Property Doctor As String
        Public Property NombrePaciente As String
        Public Property Departamento As String ' Agregar esta propiedad
        Public Property DNI As String
        Public Property Telefono As String
        Public Property Motivo As String
        Public Property Fecha As Date
        Public Property Especialidad As String
        Public Property DoctorID As Integer ' Asegúrate de que esta propiedad exista
        Public Property DepartamentoID As Integer ' Asegúrate de que esta propiedad exista
        Public Property UserID As Integer
        Public Property Horario As String ' El horario del turno
    End Class

    ' Evento que carga la página
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim turnos As List(Of Turno) = CType(Session("CarritoTurnos"), List(Of Turno))
            Cargar_Combo_Depto()

            If String.IsNullOrEmpty(txtfecha.Text) Then
                txtfecha.Text = DateTime.Now.ToString("yyyy-MM-dd") ' Formato YYYY-MM-DD para asegurarte de que sea compatible
            End If
            If cboDepartamento.Items.Count > 0 Then
                cboDepartamento.SelectedIndex = 0 ' Selecciona el primer departamento
                Cargar_Combo_Doctores() ' Carga los doctores del primer departamento
            End If
            ' Cargar los turnos en el GridView
            If turnos IsNot Nothing AndAlso turnos.Count > 0 Then
                gvCarritoTurnos.DataSource = turnos
                gvCarritoTurnos.DataBind()

                ' Verificar si el botón debe ser visible
                btnEnviarTodos.Visible = True
            Else
                btnEnviarTodos.Visible = False
            End If
        End If
    End Sub


    ' Cargar departamentos en el DropDownList
    Public Sub Cargar_Combo_Depto()
        oDs = o_Tem.Cargar_Combo_Depto()
        cboDepartamento.DataSource = oDs.Tables(0)
        cboDepartamento.DataTextField = oDs.Tables(0).Columns(1).ToString
        cboDepartamento.DataValueField = oDs.Tables(0).Columns(0).ToString
        cboDepartamento.DataBind()
        Cargar_Combo_Doctores()
    End Sub

    ' Cargar doctores según el departamento seleccionado
    Public Sub Cargar_Combo_Doctores()
        If String.IsNullOrEmpty(cboDepartamento.SelectedValue) Then Return

        oDs = o_Tem.Cargar_Combo_Doctores(cboDepartamento.SelectedValue)
        cboDoctor.DataSource = oDs.Tables(0)
        cboDoctor.DataTextField = oDs.Tables(0).Columns(1).ToString
        cboDoctor.DataValueField = oDs.Tables(0).Columns(0).ToString
        cboDoctor.DataBind()

        If cboDoctor.Items.Count > 0 Then
            cboDoctor.SelectedIndex = 0
            CargarDoctorInfo()
            Cargar_Combo_Horarios()
        End If
    End Sub

    Protected Sub Cargar_Combo_Horarios()
        If String.IsNullOrEmpty(cboDoctor.SelectedValue) OrElse String.IsNullOrEmpty(txtfecha.Text) Then Return

        ' Obtener los horarios del doctor seleccionado
        oDs = o_Tem.Cargar_Combo_Horarios(cboDoctor.SelectedValue)

        ' Convertir la fecha seleccionada en el formato correcto
        Dim fechaSeleccionada As DateTime
        If Not DateTime.TryParse(txtfecha.Text, fechaSeleccionada) Then
            ' Si la fecha no es válida, salir

            Return
        End If

        ' Obtener los turnos reservados para la misma fecha y el mismo doctor
        Dim turnosReservados As DataSet = o_Tem.ObtenerTurnosReservados(cboDoctor.SelectedValue, fechaSeleccionada)

        ' Crear un HashSet con los horarios ya reservados
        Dim horariosReservados As New HashSet(Of String)
        For Each row As DataRow In turnosReservados.Tables(0).Rows
            horariosReservados.Add(row("Horario").ToString())
        Next

        ' Cargar el DropDownList solo con los horarios disponibles
        cboHorarios.Items.Clear()

        For Each row As DataRow In oDs.Tables(0).Rows
            Dim horario As String = row("Horario").ToString()

            ' Convertir el horario a DateTime para formatearlo
            Dim horaFormateada As DateTime
            If DateTime.TryParse(horario, horaFormateada) Then
                ' Agregar el horario formateado (en formato 24 horas "HH:mm")
                If Not horariosReservados.Contains(horario) Then
                    cboHorarios.Items.Add(New ListItem(horaFormateada.ToString("HH:mm"), row("ID_Horario").ToString()))
                End If
            End If
        Next

        If cboHorarios.Items.Count > 0 Then
            cboHorarios.SelectedIndex = 0
        End If
    End Sub


    ' Cargar información del doctor seleccionado
    Private Sub CargarDoctorInfo()
        Dim ID_Doctores As Integer = Convert.ToInt32(cboDoctor.SelectedValue)
        oDs = o_Tem.DoctoresInfo(ID_Doctores)
        gvDoctorInfo.DataSource = oDs.Tables(0)
        gvDoctorInfo.DataBind()
    End Sub

    Private Function ObtenerNuevoID() As Integer
        Dim nuevoID As Integer = 0

        Using conn As New SqlConnection(WebConfigurationManager.ConnectionStrings("Conn").ConnectionString)
            conn.Open()
            Dim cmd As New SqlCommand("SELECT MAX(ID_Turno) FROM Turnos", conn)
            Dim result = cmd.ExecuteScalar()
            nuevoID = If(result IsNot DBNull.Value, Convert.ToInt32(result) + 1, 1)
        End Using

        Return nuevoID
    End Function

    ' Evento para agregar el turno al carrito (GridView)
    Protected Sub btnAgregarTurno_Click(sender As Object, e As EventArgs)
        ' Validar que todos los TextBox estén completos
        If String.IsNullOrWhiteSpace(txtPaciente.Text) OrElse
       String.IsNullOrWhiteSpace(txtDNI.Text) OrElse
       String.IsNullOrWhiteSpace(txtTelefono.Text) OrElse
       String.IsNullOrWhiteSpace(txtMotivo.Text) OrElse
       String.IsNullOrWhiteSpace(txtfecha.Text) OrElse
       cboDepartamento.SelectedValue = "" OrElse
       cboDoctor.SelectedValue = "" OrElse
       cboHorarios.SelectedItem Is Nothing Then

            ' Mostrar un mensaje de error
            Response.Write("<script>alert('Por favor, complete todos los campos requeridos.');</script>")
            Return ' Salir del método si hay campos vacíos
        End If

        ' Obtener la lista de turnos disponibles y el carrito de la sesión
        Dim turnosSeleccionados As List(Of Turno) = CType(Session("CarritoTurnos"), List(Of Turno))
        If turnosSeleccionados Is Nothing Then
            turnosSeleccionados = New List(Of Turno)()
        End If

        ' Crea un nuevo objeto turno con la información seleccionada
        Dim nuevoTurno As New Turno() With {
        .TurnoID = ObtenerNuevoID(),
        .UserID = Convert.ToInt32(Session("UserID")),
        .DepartamentoID = Convert.ToInt32(cboDepartamento.SelectedValue),
        .DoctorID = Convert.ToInt32(cboDoctor.SelectedValue),
        .NombrePaciente = txtPaciente.Text,
        .DNI = txtDNI.Text,
        .Telefono = txtTelefono.Text,
        .Motivo = txtMotivo.Text,
        .Fecha = Convert.ToDateTime(txtfecha.Text), ' Asumir que txtfecha tiene el formato correcto
        .Especialidad = "Especialidad del Doctor",
        .Doctor = cboDoctor.SelectedItem.Text,
        .Departamento = cboDepartamento.SelectedItem.Text,
        .Horario = cboHorarios.SelectedItem.Text ' Guardar el horario seleccionado
    }

        ' Agregar el turno al carrito
        turnosSeleccionados.Add(nuevoTurno)
        Session("CarritoTurnos") = turnosSeleccionados

        ' Hacer visible el botón si hay turnos en el carrito
        btnEnviarTodos.Visible = turnosSeleccionados.Count > 0

        ' Eliminar el horario seleccionado de la lista de horarios disponibles y del DropDownList
        If cboHorarios.SelectedItem IsNot Nothing Then
            ' Eliminar del DropDownList
            cboHorarios.Items.Remove(cboHorarios.SelectedItem)

            ' Eliminar de la lista de turnos disponibles
            Dim turnosDisponibles As HashSet(Of String) = CType(Session("TurnosDisponibles"), HashSet(Of String))
            If turnosDisponibles IsNot Nothing Then
                turnosDisponibles.Remove(cboHorarios.SelectedItem.Text)
                Session("TurnosDisponibles") = turnosDisponibles
            End If
        End If

        ' Actualizar el DataSource y formatear la fecha en el GridView
        gvCarritoTurnos.DataSource = turnosSeleccionados
        gvCarritoTurnos.DataBind()

        ' Formatear la columna de fecha para que no muestre la hora
        For Each row As GridViewRow In gvCarritoTurnos.Rows
            Dim fecha As DateTime
            If DateTime.TryParse(row.Cells(4).Text, fecha) Then
                row.Cells(4).Text = fecha.ToString("dd/MM/yyyy")
            End If
            Dim hora As DateTime
            If DateTime.TryParse(row.Cells(5).Text, hora) Then ' Ajusta el índice según la columna correcta
                row.Cells(5).Text = hora.ToString("HH:mm") ' Formato de 24 horas sin milésimas
                ' Si prefieres el formato de 12 horas, usa: hora.ToString("hh:mm tt")
            End If
        Next
    End Sub



    ' Evento para enviar un turno a la base de datos
    Protected Sub gvCarritoTurnos_RowCommand(sender As Object, e As GridViewCommandEventArgs)
        If e.CommandName = "Eliminar" Then
            Dim turnoID As Integer = Convert.ToInt32(e.CommandArgument)

            ' Obtener la lista de turnos del carrito desde la sesión
            Dim turnos As List(Of Turno) = CType(Session("CarritoTurnos"), List(Of Turno))
            Dim turnosDisponibles As HashSet(Of String) = CType(Session("TurnosDisponibles"), HashSet(Of String))

            If turnos IsNot Nothing Then
                ' Buscar y eliminar el turno correspondiente
                Dim turnoEliminar = turnos.FirstOrDefault(Function(t) t.TurnoID = turnoID)
                If turnoEliminar IsNot Nothing Then
                    turnos.Remove(turnoEliminar) ' Elimina el turno
                    Session("CarritoTurnos") = turnos ' Actualiza la sesión

                    ' Restaurar el horario eliminado a la lista de turnos disponibles
                    If turnosDisponibles IsNot Nothing Then
                        turnosDisponibles.Add(turnoEliminar.Horario) ' Agrega el horario a la lista de disponibles
                        Session("TurnosDisponibles") = turnosDisponibles ' Actualiza la sesión con la lista de disponibles

                        ' Asegúrate de que el DropDownList muestre todos los horarios
                        cboHorarios.Items.Add(New ListItem(turnoEliminar.Horario, turnoEliminar.TurnoID.ToString()))
                    End If
                End If
            End If

            ' Hacer visible el botón si hay turnos en el carrito
            btnEnviarTodos.Visible = turnos.Count > 0

            ' Reenlazar el GridView con los turnos restantes
            gvCarritoTurnos.DataSource = turnos
            gvCarritoTurnos.DataBind()
            Cargar_Combo_Horarios()
        End If
    End Sub


    ' Evento para enviar todos los turnos a la base de datos
    Protected Sub btnEnviarTodos_Click(sender As Object, e As EventArgs)
        Dim turnos As List(Of Turno) = CType(Session("CarritoTurnos"), List(Of Turno))

        If turnos IsNot Nothing AndAlso turnos.Count > 0 Then
            Dim userID As Integer = Convert.ToInt32(Session("UserID"))

            If userID > 0 Then
                For Each turno As Turno In turnos
                    ' Asignar la hora desde el objeto turno
                    Dim horarioString As String = turno.Horario.ToString() ' Asegúrate de que la propiedad Horario sea un tipo que tenga ToString
                    Dim hora As TimeSpan

                    ' Intentar convertir la cadena a TimeSpan
                    If TimeSpan.TryParse(horarioString, hora) Then
                        ' La conversión fue exitosa
                        o_Tem.CargarTurnos(turno.DoctorID, turno.DepartamentoID, userID, turno.NombrePaciente, turno.DNI, turno.Motivo, turno.Telefono, turno.Fecha, hora)
                    Else
                        ' Manejo de error si no se puede convertir
                        ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Error al convertir el horario para el turno.');", True)
                    End If
                Next

                ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Todos los turnos se han enviado a la base de datos.');", True)

                ' Limpiar el carrito después de enviar
                Session("CarritoTurnos") = New List(Of Turno)()
                gvCarritoTurnos.DataSource = Nothing
                gvCarritoTurnos.DataBind()
            Else
                ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Error: ID de usuario no encontrado.');", True)
            End If
        Else
            ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('No hay turnos para enviar.');", True)
        End If
    End Sub

    Protected Sub cboDepartamento_SelectedIndexChanged(sender As Object, e As EventArgs)
        Cargar_Combo_Doctores()
    End Sub

    Protected Sub cboDoctor_SelectedIndexChanged(sender As Object, e As EventArgs)
        Cargar_Combo_Horarios()
        CargarDoctorInfo()

    End Sub

    Protected Sub txtfecha_TextChanged(sender As Object, e As EventArgs)
        Cargar_Combo_Horarios()
    End Sub
End Class
