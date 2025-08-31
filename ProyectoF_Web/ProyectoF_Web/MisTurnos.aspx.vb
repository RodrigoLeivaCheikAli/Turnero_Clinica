Imports System.Data
Imports ProyectoF_Web.Inicio
Imports Template_AD

Public Class MisTurnos
    Inherits System.Web.UI.Page
    Dim oDs As New DataSet
    Dim o_Tem As New Turnos
    Dim contador As Integer = 0
    Dim doctorNombre As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            ' Recuperar el ID del usuario desde la sesión
            LlenarGrilla()
        End If
    End Sub

    Public Sub LlenarGrilla()
        Dim userID As Integer = Convert.ToInt32(Session("UserID"))
        If userID > 0 Then
            oDs = New DataSet
            oDs = o_Tem.ConsultarTurnosPorUsuario(userID)
            If oDs IsNot Nothing AndAlso oDs.Tables.Count > 0 AndAlso oDs.Tables(0).Rows.Count > 0 Then
                With GridView1
                    .DataSource = oDs.Tables(0)
                    .DataBind()
                End With

                ' Formatear la columna de fecha para que no muestre la hora
                For Each row As GridViewRow In GridView1.Rows
                    Dim fecha As DateTime
                    If DateTime.TryParse(row.Cells(6).Text, fecha) Then ' Ajusta el índice según la columna correcta
                        row.Cells(6).Text = fecha.ToString("dd/MM/yyyy")
                    End If
                    Dim hora As DateTime
                    If DateTime.TryParse(row.Cells(7).Text, hora) Then ' Ajusta el índice según la columna correcta
                        row.Cells(7).Text = hora.ToString("HH:mm") ' Formato de 24 horas sin milésimas
                        ' Si prefieres el formato de 12 horas, usa: hora.ToString("hh:mm tt")
                    End If
                Next

                btnEliminar.Visible = True
                btnModificar.Visible = True
            Else
                Response.Write("<script>alert('No se encontraron turnos para el usuario.');</script>")
            End If
        Else
            Response.Write("<script>alert('Usuario no autenticado.');</script>")
        End If
    End Sub



    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        ' Recuperar la fila seleccionada
        Dim row As GridViewRow = GridView1.SelectedRow
        If row IsNot Nothing Then
            ' Asignar valores a los campos de la interfaz
            txtID.Text = row.Cells(1).Text.Trim() ' Asigna el ID del turno

            ' Convertir la fecha desde la GridView a DateTime y luego a texto
            Dim fecha As DateTime
            If DateTime.TryParse(row.Cells(6).Text.Trim(), fecha) Then
                txtfecha.Text = fecha.ToString("yyyy-MM-dd") ' Asigna la fecha en el formato deseado
                ' Cargar combo de horarios disponibles según la fecha y el doctor
                Cargar_Combo_HorariosDisponibles(HttpUtility.HtmlDecode(row.Cells(5).Text.Trim()), txtfecha.Text.Trim())
            Else
                Response.Write("<script>alert('Formato de fecha no válido.');</script>")
            End If
        Else
            Response.Write("<script>alert('No se encontró la fila seleccionada.');</script>")
        End If
    End Sub

    Protected Sub txtfecha_TextChanged(sender As Object, e As EventArgs) Handles txtfecha.TextChanged
        ' Asignar doctorNombre desde la fila seleccionada en GridView, si aún no está asignado
        Dim row As GridViewRow = GridView1.SelectedRow
        If row IsNot Nothing Then
            doctorNombre = HttpUtility.HtmlDecode(row.Cells(5).Text.Trim())
        End If

        ' Cargar combo de horarios disponibles según la nueva fecha y el doctor
        Cargar_Combo_HorariosDisponibles(doctorNombre, txtfecha.Text.Trim())
    End Sub



    Public Sub Cargar_Combo_HorariosDisponibles(ByVal doctor As String, ByVal fecha As String)
        ' Obtener el DataSet del método ObtenerDoctor
        Dim dsDoctor As DataSet = o_Tem.ObtenerDoctor(doctor)

        ' Asegurarse de que el DataSet tenga al menos una fila
        If dsDoctor IsNot Nothing AndAlso dsDoctor.Tables.Count > 0 AndAlso dsDoctor.Tables(0).Rows.Count > 0 Then
            ' Obtener el ID del doctor de la primera fila del DataSet
            Dim doctorID As Integer = Convert.ToInt32(dsDoctor.Tables(0).Rows(0)("ID_Doctor"))

            ' Obtener los horarios reservados para el doctor y la fecha seleccionada en txtfecha
            Dim turnosReservados As DataSet = o_Tem.ObtenerTurnosReservados(doctorID, fecha)

            ' Obtener todos los horarios disponibles usando el método Cargar_Combo_Horarios
            Dim oDs As DataSet = o_Tem.Cargar_Combo_Horarios(doctorID)

            ' Crear un HashSet con los horarios ya reservados
            Dim horariosReservados As New HashSet(Of String)
            If turnosReservados IsNot Nothing AndAlso turnosReservados.Tables.Count > 0 Then
                For Each row As DataRow In turnosReservados.Tables(0).Rows
                    horariosReservados.Add(row("Horario").ToString())
                Next
            End If

            ' Cargar el DropDownList solo con los horarios disponibles
            cboHorarios.Items.Clear()
            If oDs IsNot Nothing AndAlso oDs.Tables.Count > 0 Then
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

                ' Comprobar si no se añadieron horarios disponibles
                If cboHorarios.Items.Count = 0 Then
                    cboHorarios.Items.Add(New ListItem("No hay horarios disponibles", "-1"))
                Else
                    cboHorarios.SelectedIndex = 0 ' Seleccionar el primer horario disponible
                End If
            Else
                cboHorarios.Items.Add(New ListItem("No hay horarios disponibles", "-1"))
            End If
        Else
            ' Si no se encontró el doctor
            Response.Write("<script>alert('No se encontró el doctor.');</script>")
        End If
    End Sub





    Protected Sub btnModificar_Click(sender As Object, e As EventArgs) Handles btnModificar.Click
        txtfecha.Visible = True
        txtID.Visible = True
        cboHorarios.Visible = True
        btnEnviar.Visible = True
        lblHorario.Visible = True
        lblFecha.Visible = True

        ViewState("contador") = 1 ' 1 para modificación
    End Sub

    Protected Sub btnEliminar_Click(sender As Object, e As EventArgs) Handles btnEliminar.Click
        txtfecha.Visible = False

        btnEnviar.Visible = True
        lblFecha.Visible = False
        lblHorario.Visible = False
        cboHorarios.Visible = False
        txtID.Visible = True
        ViewState("contador") = 2 ' 2 para eliminación
    End Sub

    Protected Sub btnEnviar_Click(sender As Object, e As EventArgs) Handles btnEnviar.Click
        Dim contador As Integer = If(ViewState("contador") IsNot Nothing, Convert.ToInt32(ViewState("contador")), 0)

        If txtfecha.Visible Then
            ModificarTurno()
        Else
            EliminarTurno()
        End If
    End Sub

    Private Sub ModificarTurno()
        If String.IsNullOrEmpty(txtID.Text) Or String.IsNullOrEmpty(txtfecha.Text) Then
            Response.Write("<script>alert('Complete los datos.');</script>")
            Return
        End If

        Dim resultado As DataSet = o_Tem.ConsultarxID(txtID.Text)
        If resultado IsNot Nothing AndAlso resultado.Tables.Count > 0 AndAlso resultado.Tables(0).Rows.Count > 0 Then
            ' Convertir la fecha y el horario seleccionados
            Dim fecha As Date
            If Date.TryParse(txtfecha.Text, fecha) Then
                Dim horario As TimeSpan
                If TimeSpan.TryParse(cboHorarios.SelectedItem.Text, horario) Then
                    ' Llamar al método de modificar el turno
                    o_Tem.ModificarTurnos(Convert.ToInt32(txtID.Text), fecha, horario)
                    Response.Write("<script>alert('Se modificó con éxito.');</script>")
                Else
                    ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Horario inválido.');", True)
                End If
            Else
                ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Fecha inválida.');", True)
            End If
        Else
            Response.Write("<script>alert('No se encontró el turno.');</script>")
        End If

        Response.Redirect(Request.RawUrl) ' Redirigir después de la modificación
    End Sub



    Private Sub EliminarTurno()
        If String.IsNullOrEmpty(txtID.Text) Then
            Response.Write("<script>alert('Ingrese el número del turno.');</script>")
            Return
        End If

        Dim resultado As DataSet = o_Tem.ConsultarxID(txtID.Text)

        If resultado IsNot Nothing AndAlso resultado.Tables.Count > 0 AndAlso resultado.Tables(0).Rows.Count > 0 Then
            o_Tem.EliminarTurnos(txtID.Text)
            Response.Write("<script>alert('Se eliminó con éxito.');</script>")
        Else
            Response.Write("<script>alert('No se encontró el turno.');</script>")
        End If

        Response.Redirect(Request.RawUrl) ' Redirigir después de la eliminación
    End Sub


End Class