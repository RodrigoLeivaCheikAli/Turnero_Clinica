<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Inicio.aspx.vb" Inherits="ProyectoF_Web.Inicio" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <!-- Meta Tags -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="keywords" content="Site keywords here">
	<meta name="description" content="">
	<meta name='copyright' content=''>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<!-- Title -->
 <title>Mediplus - Free Medical and Doctor Directory HTML Template.</title>
	
	<!-- Favicon -->
 <link rel="icon" href="img/favicon.png">
	
	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- Nice Select CSS -->
	<link rel="stylesheet" href="css/nice-select.css">
	<!-- Font Awesome CSS -->
 <link rel="stylesheet" href="css/font-awesome.min.css"/>
	<!-- icofont CSS -->
 <link rel="stylesheet" href="css/icofont.css"/>
	<!-- Slicknav -->
	<link rel="stylesheet" href="css/slicknav.min.css"/>
	<!-- Owl Carousel CSS -->
 <link rel="stylesheet" href="css/owl-carousel.css"/>
	<!-- Datepicker CSS -->
	<link rel="stylesheet" href="css/datepicker.css"/>
	<!-- Animate CSS -->
 <link rel="stylesheet" href="css/animate.min.css"/>
	<!-- Magnific Popup CSS -->
 <link rel="stylesheet" href="css/magnific-popup.css"/>
	
	<!-- Medipro CSS -->
 <link rel="stylesheet" href="css/normalize.css"/>
 <link rel="stylesheet" href="style.css"/>
 <link rel="stylesheet" href="css/responsive.css"/>
 <link rel="stylesheet" type="text/css" href="css/Turnero.css" />
 <link rel="stylesheet" type="text/css" href="css/DoctorPerfil.css" />
 <link rel="stylesheet" href="css/Turnos.css"/>
 <script src="/Scripts/Whatsapp.js" type="text/javascript"></script>


</script>
		 <script type="text/javascript">
		     var inactivityTime = function () {
		         var time;
		         window.onload = resetTimer;
		         window.onmousemove = resetTimer;
		         window.onkeypress = resetTimer;

		         function logout() {
		             window.location.href = 'Login.aspx'; // Redirige a la página de cierre de sesión
		         }

		         function resetTimer() {
		             clearTimeout(time);
		             time = setTimeout(logout, 300000); // 300000 ms = 5 minutos 
		         }
		     };

		     inactivityTime(); // Llama a la función cuando cargue la página
    </script>
</head>
<body>
     <form id="form1" runat="server" >
  
<!-- Preloader -->
      <div class="preloader">
          <div class="loader">
              <div class="loader-outter"></div>
              <div class="loader-inner"></div>

              <div class="indicator"> 
                  <svg width="16px" height="12px">
                      <polyline id="back" points="1 6 4 6 6 11 10 1 12 6 15 6"></polyline>
                      <polyline id="front" points="1 6 4 6 6 11 10 1 12 6 15 6"></polyline>
                  </svg>
              </div>
          </div>
      </div>
      <!-- End Preloader -->

<!
	
<!-- Header Area -->
<header class="header" >
	<!-- Topbar -->
	<div class="topbar">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-5 col-12">
					<!-- Contact -->
				
					<!-- End Contact -->
				</div>
				<div class="col-lg-6 col-md-7 col-12">
					<!-- Top Contact -->
					<ul class="top-contact">
						<li><i class="fa fa-phone"></i>+880 1234 56789</li>
						<li><i class="fa fa-envelope"></i><a href="mailto:support@yourmail.com">support@yourmail.com</a></li>
					</ul>
					<!-- End Top Contact -->
				</div>
			</div>
		</div>
	</div>
	<!-- End Topbar -->
	<!-- Header Inner -->
	<div class="header-inner">
		<div class="container">
			<div class="inner">
				<div class="row">
					<div class="col-lg-3 col-md-3 col-12">
						<!-- Start Logo -->
						<div class="logo">
							<a href="inicio.aspx"><img src="img/logo.png" alt="#"></a>
						</div>
						<!-- End Logo -->
						<!-- Mobile Nav -->
						<div class="mobile-nav"></div>
						<!-- End Mobile Nav -->
					</div>
					<div class="col-lg-7 col-md-9 col-12">
						<!-- Main Menu -->
						<div class="main-menu">
							<nav class="navigation">
								<ul class="nav menu">
									<li class="active"><a href="Inicio.aspx" >Menu <i class="icofont-rounded-down"></i></a>
										
									</li>
								
								
									<li><a href="#">Paginas <i class="icofont-rounded-down"></i></a>
										<ul class="dropdown">
											<li><a href="404.html">404 Error</a></li>
										</ul>
									</li>
									<li><a href="#">Vlogs <i class="icofont-rounded-down"></i></a>
										<ul class="dropdown">
											<li><a href="blog-single.html">Detalles</a></li>
										</ul>
									</li>
									<li><a href="contact.html">Contactanos</a></li>
								</ul>
							</nav>
						</div>
						<!--/ End Main Menu -->
					</div>
					<div class="col-lg-2 col-12">
						<div class="get-quote">
							<a href="MisTurnos.aspx" class="btn">Mis Turnos</a>
                            <a href="Login.aspx" class="btn">Cerrar sesion</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/ End Header Inner -->
</header>
<!-- End Header Area -->
	<section class="appointment">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="section-title">
					<h2>Siempre estamos listos para ayudarte. Reserva una cita</h2>
					<img src="img/section-img.png" alt="#">
					
				</div>
			</div>
		</div>
        <div class="page-container">
		 <div class="form-container">
	
 <form id="form2" >
    <div class="row">
        <!-- Dropdown for Departments -->
        <div class="col-lg-6 col-md-6 col-12">
            <div class="form-group">
                <span class="current">Departamentos</span>
                <asp:DropDownList ID="cboDepartamento" AutoPostBack="True" OnSelectedIndexChanged="cboDepartamento_SelectedIndexChanged" class="current" runat="server"></asp:DropDownList>
            </div>
        </div>

        <!-- Dropdown for Doctors -->
        <div class="col-lg-6 col-md-6 col-12">
            <div class="form-group">
                <span class="current">Doctor</span>
                <asp:DropDownList ID="cboDoctor" AutoPostBack="True" OnSelectedIndexChanged="cboDoctor_SelectedIndexChanged" class="current" runat="server"></asp:DropDownList>
            </div>
        </div>

        <!-- Dropdown for Available Schedules -->
        <div class="col-lg-6 col-md-6 col-12">
            <div class="form-group">
                <span class="current">Horarios</span>
                <asp:DropDownList ID="cboHorarios" AutoPostBack="True" class="current" runat="server"></asp:DropDownList>
            </div>
        </div>

        <!-- TextBox for Appointment Date -->
        <div class="col-lg-6 col-md-6 col-12">
            <div class="form-group">
                <span class="current">Fecha del Turno</span>
                <asp:TextBox ID="txtfecha" runat="server" AutoPostBack="True" class="current" TextMode="Date" OnTextChanged="txtfecha_TextChanged"></asp:TextBox>
            </div>
        </div>
    </div>

    <!-- GridView for Doctor Information -->
    <div class="doctor-container">
        <asp:GridView ID="gvDoctorInfo" runat="server" AutoGenerateColumns="False" CssClass="table table-striped">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <div class="doctor-profile">
                            <div class="doctor-info">
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Foto") %>' Width="140px" Height="140px" />
                                <div>
                                    <div class="doctor-info-header"><%# Eval("NombreDoctor") %></div>
                                    <div class="doctor-info-subheader"><%# Eval("Especialidad") %></div>
                                </div>
                            </div>
                            <div class="doctor-contact-info">
                                <div><strong>Matrícula:</strong> <%# Eval("Matricula") %></div>
                                <div><strong>Departamento:</strong> <%# Eval("NombreDepartamento") %></div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns> 
        </asp:GridView>
    </div>

    <!-- WhatsApp Button -->
    <div class="row">
        <button type="button" class="whatsapp-button" onclick="consultarWhatsApp()">
            <img src="https://upload.wikimedia.org/wikipedia/commons/6/6b/WhatsApp.svg" alt="WhatsApp" style="width: 24px; height: 24px; vertical-align: middle;" />
            Consultar 
        </button>
    </div>

    <!-- GridView for Appointment Cart -->
    <div class="grid-container">
        <asp:GridView ID="gvCarritoTurnos" runat="server" AutoGenerateColumns="False" CssClass="custom-gridview" OnRowCommand="gvCarritoTurnos_RowCommand">
            <Columns>
                <asp:BoundField DataField="NombrePaciente" HeaderText="Paciente">
                    <HeaderStyle CssClass="grid-header" />
                    <ItemStyle CssClass="text-center" />
                </asp:BoundField>
                <asp:BoundField DataField="DNI" HeaderText="DNI">
                    <HeaderStyle CssClass="grid-header" />
                    <ItemStyle CssClass="text-center" />
                </asp:BoundField>
                <asp:BoundField DataField="Telefono" HeaderText="Teléfono">
                    <HeaderStyle CssClass="grid-header" />
                    <ItemStyle CssClass="text-center" />
                </asp:BoundField>
                <asp:BoundField DataField="Motivo" HeaderText="Motivo">
                    <HeaderStyle CssClass="grid-header" />
                    <ItemStyle CssClass="text-center" />
                </asp:BoundField>
                <asp:BoundField DataField="Fecha" HeaderText="Fecha">
                    <HeaderStyle CssClass="grid-header" />
                    <ItemStyle CssClass="text-center" />
                </asp:BoundField>
                <asp:BoundField DataField="Horario" HeaderText="Horario">
                    <HeaderStyle CssClass="grid-header" />
                    <ItemStyle CssClass="text-center" />
                </asp:BoundField>
                <asp:BoundField DataField="Doctor" HeaderText="Doctor">
                    <HeaderStyle CssClass="grid-header" />
                    <ItemStyle CssClass="text-center" />
                </asp:BoundField>
                <asp:BoundField DataField="Departamento" HeaderText="Departamento">
                    <HeaderStyle CssClass="grid-header" />
                    <ItemStyle CssClass="text-center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Acciones">
                    <ItemTemplate>
                        <asp:Button ID="btnEliminar" runat="server" CommandName="Eliminar" CommandArgument='<%# Eval("TurnoID") %>' Text="Eliminar" AutoPostBack="True"  CssClass="btn btn-danger btn-sm" />
                    </ItemTemplate>
                    <HeaderStyle CssClass="grid-header" />
                    <ItemStyle CssClass="text-center" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle CssClass="grid-footer" />
        </asp:GridView>
    </div>

    <!-- Reserve Appointments Button -->
    <div class="row">
        <div class="col-lg-5 col-md-4 col-12">
            <div class="form-group">
                <div class="button-container" id="btnContainer">
                    <asp:Button ID="btnEnviarTodos" runat="server" Text="Reservar Turnos" CssClass="btn btn-primary" OnClick="btnEnviarTodos_Click" />
                </div>
            </div>
        </div>
    </div>

    <!-- Form fields for adding new appointment -->
    <div class="row">
        <div class="col-lg-6 col-md-6 col-12">
            <div class="form-group">
                <asp:TextBox ID="txtPaciente" placeholder="Nombre" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="col-lg-6 col-md-6 col-12">
            <div class="form-group">
                <asp:TextBox ID="txtDNI" placeholder="DNI" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="col-lg-6 col-md-6 col-12">
            <div class="form-group">
                <asp:TextBox ID="txtTelefono" placeholder="Teléfono" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="col-lg-12 col-md-12 col-12">
            <div class="form-group">
                <asp:TextBox ID="txtMotivo" placeholder="Motivo" runat="server"></asp:TextBox>
            </div>
        </div>
    </div>

    <div class="col-lg-6 col-md-6 col-12">
        <div class="form-group">
            <div class="button">
                <asp:Button ID="btnAgregarTurno" class="btn" runat="server" Text="Agregar Turno al Carrito" OnClick="btnAgregarTurno_Click" />
            </div>
        </div>
    </div>
</form>

			</div>
			</div>




			</div>
			<div class="col-lg-6 col-md-12 ">
				<div class="appointment-image">
					<img src="img/contact-img.png" alt="#">
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Slider Area -->
<section class="slider">
	<div class="hero-slider">
		<!-- Start Single Slider -->
		<div class="single-slider" style="background-image:url('img/slider2.jpg')">
			<div class="container">
				<div class="row">
					<div class="col-lg-7">
						<div class="text">
							<h1>¡Ofrecemos servicios <span>médicos</span> en los que puede <span>confiar!</span></h1>
							
							<div class="button">
								<a href="indice.aspx" class="btn">Reserva tu Turno</a>
								<a href="MisTurnos.aspx" class="btn primary">Vea Sus Turnos</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Single Slider -->
		<!-- Start Single Slider -->
		<div class="single-slider" style="background-image:url('img/slider.jpg')">
			<div class="container">
				<div class="row">
					<div class="col-lg-7">
						
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Start End Slider -->
		<!-- Start Single Slider -->
		<div class="single-slider" style="background-image:url('img/slider3.jpg')">
			<div class="container">
				<div class="row">
					<div class="col-lg-7">
						<div class="text">
							
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Single Slider -->
	</div>
</section>
<!--/ End Slider Area -->

<!-- Start Schedule Area -->
<section class="schedule">
	<div class="container">
		<div class="schedule-inner">
			<div class="row">
				<div class="col-lg-4 col-md-6 col-12 ">
					<!-- single-schedule -->
					<div class="single-schedule first">
						<div class="inner">
							<div class="icon">
								<i class="fa fa-ambulance"></i>
							</div>
							<div class="single-content">
							
								<h4>Casos de Emergencia</h4>
							
								
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-12">
					<!-- single-schedule -->
					<div class="single-schedule middle">
						<div class="inner">
							<div class="icon">
								<i class="icofont-prescription"></i>
							</div>
							<div class="single-content">
								<span>Fusce Porttitor</span>
								<h4>HORARIOS</h4>
								
								<a href="#">LEER MAS<i class="fa fa-long-arrow-right"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-12 col-12">
					<!-- single-schedule -->
					<div class="single-schedule last">
						<div class="inner">
							<div class="icon">
								<i class="icofont-ui-clock"></i>
							</div>
							<div class="single-content">
								<span>Donec luctus</span>
								<h4>HORARIOS</h4>
								<ul class="time-sidual">
									<li class="day">Lunes - Viernes <span>8.00-20.00</span></li>
									<li class="day">Sabado <span>9.00-18.30</span></li>
								</ul>
								<a href="#">Leer Mas<i class="fa fa-long-arrow-right"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!--/End Start schedule Area -->

<!-- Start Feautes -->
<section class="Feautes section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="section-title">
					<h2>Siempre estamos listos para ayudarlo a usted y a su familia</h2>
					<img src="img/section-img.png" alt="#">
			
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-4 col-12">
				<!-- Start Single features -->
				<div class="single-features">
					<div class="signle-icon">
						<i class="icofont icofont-ambulance-cross"></i>
					</div>
					
					
				</div>
				<!-- End Single features -->
			</div>
			<div class="col-lg-4 col-12">
				<!-- Start Single features -->
				<div class="single-features">
					<div class="signle-icon">
						<i class="icofont icofont-medical-sign-alt"></i>
					</div>
					<h3>Farmacia</h3>
					
				</div>
				<!-- End Single features -->
			</div>
			<div class="col-lg-4 col-12">
				<!-- Start Single features -->
				<div class="single-features last">
					<div class="signle-icon">
						<i class="icofont icofont-stethoscope"></i>
					</div>
					<h3>Tratamiento Medico</h3>
				
				</div>
				<!-- End Single features -->
			</div>
		</div>
	</div>
</section>
<!--/ End Feautes -->

<!-- Start Fun-facts -->
<div id="fun-facts" class="fun-facts section overlay">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-6 col-12">
				<!-- Start Single Fun -->
				<div class="single-fun">
					<i class="icofont icofont-home"></i>
					<div class="content">
						<span class="counter">3468</span>
						<p>Habitaciones</p>
					</div>
				</div>
				<!-- End Single Fun -->
			</div>
			<div class="col-lg-3 col-md-6 col-12">
				<!-- Start Single Fun -->
				<div class="single-fun">
					<i class="icofont icofont-user-alt-3"></i>
					<div class="content">
						<span class="counter">557</span>
						<p>Especialistas</p>
					</div>
				</div>
				<!-- End Single Fun -->
			</div>
			<div class="col-lg-3 col-md-6 col-12">
				<!-- Start Single Fun -->
				<div class="single-fun">
					<i class="icofont-simple-smile"></i>
					<div class="content">
						<span class="counter">4379</span>
						<p>Pacientes Felices</p>
					</div>
				</div>
				<!-- End Single Fun -->
			</div>
			<div class="col-lg-3 col-md-6 col-12">
				<!-- Start Single Fun -->
				<div class="single-fun">
					<i class="icofont icofont-table"></i>
					<div class="content">
						<span class="counter">32</span>
						<p>Años de Experiencia</p>
					</div>
				</div>
				<!-- End Single Fun -->
			</div>
		</div>
	</div>
</div>
<!--/ End Fun-facts -->

<!-- Start Why choose -->
<section class="why-choose section" >
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="section-title">
					<h2>Ofrecemos diferentes servicios para mejorar tu salud</h2>
					<img src="img/section-img.png" alt="#">
				
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-6 col-12">
				<!-- Start Choose Left -->
				<div class="choose-left">
					<h3>Quienes somos</h3>
					
					<div class="row">
						<div class="col-lg-6">
							<ul class="list">
								<li><i class="fa fa-caret-right"></i>Maecenas vitae luctus nibh. </li>
								<li><i class="fa fa-caret-right"></i>Duis massa massa.</li>
								<li><i class="fa fa-caret-right"></i>Aliquam feugiat interdum.</li>
							</ul>
						</div>
						<div class="col-lg-6">
							<ul class="list">
								<li><i class="fa fa-caret-right"></i>Maecenas vitae luctus nibh. </li>
								<li><i class="fa fa-caret-right"></i>Duis massa massa.</li>
								<li><i class="fa fa-caret-right"></i>Aliquam feugiat interdum.</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- End Choose Left -->
			</div>
			<div class="col-lg-6 col-12">
				<!-- Start Choose Rights -->
				<div class="choose-right">
					<div class="video-image">
						<!-- Video Animation -->
						<div class="promo-video">
							<div class="waves-block">
								<div class="waves wave-1"></div>
								<div class="waves wave-2"></div>
								<div class="waves wave-3"></div>
							</div>
						</div>
						<!--/ End Video Animation -->
						<a href="https://www.youtube.com/watch?v=RFVXy6CRVR4" class="video video-popup mfp-iframe"><i class="fa fa-play"></i></a>
					</div>
				</div>
				<!-- End Choose Rights -->
			</div>
		</div>
	</div>
</section>
<!--/ End Why choose -->

<!-- Start Call to action -->
<section class="call-action overlay" data-stellar-background-ratio="0.5">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-12">
				<div class="content">
				<h2>¿Necesita atención médica de emergencia? Llama al 1234 56789</h2>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque porttitor dictum turpis nec gravida.</p>
					<div class="button">
						<a href="#" class="btn">Contact Now</a>
						<a href="#" class="btn second">Learn More<i class="fa fa-long-arrow-right"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!--/ End Call to action -->

<!-- Start portfolio -->
<section class="portfolio section" >
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="section-title">
					<h2>Mantenemos normas de limpieza dentro de nuestro hospital</h2>
					<img src="img/section-img.png" alt="#">
					<p>Lorem ipsum dolor sit amet consectetur adipiscing elit praesent aliquet. pretiumts</p>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12 col-12">
				<div class="owl-carousel portfolio-slider">
					<div class="single-pf">
						<img src="img/pf1.jpg" alt="#">
						<a href="portfolio-details.html" class="btn">View Details</a>
					</div>
					<div class="single-pf">
						<img src="img/pf2.jpg" alt="#">
						<a href="portfolio-details.html" class="btn">View Details</a>
					</div>
					<div class="single-pf">
						<img src="img/pf3.jpg" alt="#">
						<a href="portfolio-details.html" class="btn">View Details</a>
					</div>
					<div class="single-pf">
						<img src="img/pf4.jpg" alt="#">
						<a href="portfolio-details.html" class="btn">View Details</a>
					</div>
					<div class="single-pf">
						<img src="img/pf1.jpg" alt="#">
						<a href="portfolio-details.html" class="btn">View Details</a>
					</div>
					<div class="single-pf">
						<img src="img/pf2.jpg" alt="#">
						<a href="portfolio-details.html" class="btn">View Details</a>
					</div>
					<div class="single-pf">
						<img src="img/pf3.jpg" alt="#">
						<a href="portfolio-details.html" class="btn">View Details</a>
					</div>
					<div class="single-pf">
						<img src="img/pf4.jpg" alt="#">
						<a href="portfolio-details.html" class="btn">View Details</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!--/ End portfolio -->

<!-- Start service -->
<section class="services section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="section-title">
					<h2>Ofrecemos Diferentes Servicios Para Mejorar Tu Salud</h2>
					<img src="img/section-img.png" alt="#">
					<p>Lorem ipsum dolor sit amet consectetur adipiscing elit praesent aliquet. pretiumts</p>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-4 col-md-6 col-12">
				<!-- Start Single Service -->
				<div class="single-service">
					<i class="icofont icofont-prescription"></i>
					<h4><a href="service-details.html">Tratamientos Generales </a></h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus dictum eros ut imperdiet. </p>	
				</div>
				<!-- End Single Service -->
			</div>
			<div class="col-lg-4 col-md-6 col-12">
				<!-- Start Single Service -->
				<div class="single-service">
					<i class="icofont icofont-tooth"></i>
					<h4><a href="service-details.html">Blanqueamiento dental</a></h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus dictum eros ut imperdiet. </p>	
				</div>
				<!-- End Single Service -->
			</div>
			<div class="col-lg-4 col-md-6 col-12">
				<!-- Start Single Service -->
				<div class="single-service">
					<i class="icofont icofont-heart-alt"></i>
					<h4><a href="service-details.html">Cirugía de corazón</a></h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus dictum eros ut imperdiet. </p>	
				</div>
				<!-- End Single Service -->
			</div>
			<div class="col-lg-4 col-md-6 col-12">
				<!-- Start Single Service -->
				<div class="single-service">
					<i class="icofont icofont-listening"></i>
					<h4><a href="service-details.html">Ear Treatment</a></h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus dictum eros ut imperdiet. </p>	
				</div>
				<!-- End Single Service -->
			</div>
			<div class="col-lg-4 col-md-6 col-12">
				<!-- Start Single Service -->
				<div class="single-service">
					<i class="icofont icofont-eye-alt"></i>
					<h4><a href="service-details.html">Vision de Problemas</a></h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus dictum eros ut imperdiet. </p>	
				</div>
				<!-- End Single Service -->
			</div>
			<div class="col-lg-4 col-md-6 col-12">
				<!-- Start Single Service -->
				<div class="single-service">
					<i class="icofont icofont-blood"></i>
					<h4><a href="service-details.html">Transfusiones Sanguineas</a></h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus dictum eros ut imperdiet. </p>	
				</div>
				<!-- End Single Service -->
			</div>
		</div>
	</div>
</section>
<!--/ End service -->

<!-- Pricing Table -->
<section class="pricing-table section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="section-title">
					<h2>Le brindamos el mejor tratamiento a un precio razonable</h2>
					<img src="img/section-img.png" alt="#">
					<p>Lorem ipsum dolor sit amet consectetur adipiscing elit praesent aliquet. pretiumts</p>
				</div>
			</div>
		</div>
		<div class="row">
			<!-- Single Table -->
			<div class="col-lg-4 col-md-12 col-12">
				<div class="single-table">
					<!-- Table Head -->
					<div class="table-head">
						<div class="icon">
							<i class="icofont icofont-ui-cut"></i>
						</div>
						<h4 class="title">Plastic Suggery</h4>
						<div class="price">
							<p class="amount">$199<span>/ Per Visit</span></p>
						</div>	
					</div>
					<!-- Table List -->
					<ul class="table-list">
						<li><i class="icofont icofont-ui-check"></i>Lorem ipsum dolor sit</li>
						<li><i class="icofont icofont-ui-check"></i>Cubitur sollicitudin fentum</li>
						<li class="cross"><i class="icofont icofont-ui-close"></i>Nullam interdum enim</li>
						<li class="cross"><i class="icofont icofont-ui-close"></i>Donec ultricies metus</li>
						<li class="cross"><i class="icofont icofont-ui-close"></i>Pellentesque eget nibh</li>
					</ul>
					<div class="table-bottom">
						<a class="btn" href="#">Book Now</a>
					</div>
					<!-- Table Bottom -->
				</div>
			</div>
			<!-- End Single Table-->
			<!-- Single Table -->
			<div class="col-lg-4 col-md-12 col-12">
				<div class="single-table">
					<!-- Table Head -->
					<div class="table-head">
						<div class="icon">
							<i class="icofont icofont-tooth"></i>
						</div>
						<h4 class="title">Teeth Whitening</h4>
						<div class="price">
							<p class="amount">$299<span>/ Per Visit</span></p>
						</div>	
					</div>
					<!-- Table List -->
					<ul class="table-list">
						<li><i class="icofont icofont-ui-check"></i>Lorem ipsum dolor sit</li>
						<li><i class="icofont icofont-ui-check"></i>Cubitur sollicitudin fentum</li>
						<li><i class="icofont icofont-ui-check"></i>Nullam interdum enim</li>
						<li class="cross"><i class="icofont icofont-ui-close"></i>Donec ultricies metus</li>
						<li class="cross"><i class="icofont icofont-ui-close"></i>Pellentesque eget nibh</li>
					</ul>
					<div class="table-bottom">
						<a class="btn" href="#">Book Now</a>
					</div>
					<!-- Table Bottom -->
				</div>
			</div>
			<!-- End Single Table-->
			<!-- Single Table -->
			<div class="col-lg-4 col-md-12 col-12">
				<div class="single-table">
					<!-- Table Head -->
					<div class="table-head">
						<div class="icon">
							<i class="icofont-heart-beat"></i>
						</div>
						<h4 class="title">Heart Suggery</h4>
						<div class="price">
							<p class="amount">$399<span>/ Per Visit</span></p>
						</div>	
					</div>
					<!-- Table List -->
					<ul class="table-list">
						<li><i class="icofont icofont-ui-check"></i>Lorem ipsum dolor sit</li>
						<li><i class="icofont icofont-ui-check"></i>Cubitur sollicitudin fentum</li>
						<li><i class="icofont icofont-ui-check"></i>Nullam interdum enim</li>
						<li><i class="icofont icofont-ui-check"></i>Donec ultricies metus</li>
						<li><i class="icofont icofont-ui-check"></i>Pellentesque eget nibh</li>
					</ul>
					<div class="table-bottom">
						<a class="btn" href="#">Book Now</a>
					</div>
					<!-- Table Bottom -->
				</div>
			</div>
			<!-- End Single Table-->
		</div>	
	</div>	
</section>	
<!--/ End Pricing Table -->



<!-- Start Blog Area -->
<section class="blog section" id="blog">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="section-title">
					<h2>Manténgase al día con nuestras noticias médicas más recientes.</h2>
					<img src="img/section-img.png" alt="#">
					<p>Lorem ipsum dolor sit amet consectetur adipiscing elit praesent aliquet. pretiumts</p>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-4 col-md-6 col-12">
				<!-- Single Blog -->
				<div class="single-news">
					<div class="news-head">
						<img src="img/blog1.jpg" alt="#">
					</div>
					<div class="news-body">
						<div class="news-content">
							<div class="date">22 Aug, 2020</div>
							<h2><a href="blog-single.html">Hemos anunciado nuestro nuevo producto.</a></h2>
							<p class="text">Lorem ipsum dolor a sit ameti, consectetur adipisicing elit, sed do eiusmod tempor incididunt sed do incididunt sed.</p>
						</div>
					</div>
				</div>
				<!-- End Single Blog -->
			</div>
			<div class="col-lg-4 col-md-6 col-12">
				<!-- Single Blog -->
				<div class="single-news">
					<div class="news-head">
						<img src="img/blog2.jpg" alt="#">
					</div>
					<div class="news-body">
						<div class="news-content">
							<div class="date">15 Jul, 2020</div>
							<h2><a href="blog-single.html">Las cinco mejores formas de resolver los problemas dentales.</a></h2>
							<p class="text">Lorem ipsum dolor a sit ameti, consectetur adipisicing elit, sed do eiusmod tempor incididunt sed do incididunt sed.</p>
						</div>
					</div>
				</div>
				<!-- End Single Blog -->
			</div>
			<div class="col-lg-4 col-md-6 col-12">
				<!-- Single Blog -->
				<div class="single-news">
					<div class="news-head">
						<img src="img/blog3.jpg" alt="#">
					</div>
					<div class="news-body">
						<div class="news-content">
							<div class="date">05 Jan, 2020</div>
							<h2><a href="blog-single.html">Ofrecemos soluciones altamente comerciales.</a></h2>
							<p class="text">Lorem ipsum dolor a sit ameti, consectetur adipisicing elit, sed do eiusmod tempor incididunt sed do incididunt sed.</p>
						</div>
					</div>
				</div>
				<!-- End Single Blog -->
			</div>
		</div>
	</div>
</section>
<!-- End Blog Area -->

<!-- Start clients -->
<div class="clients overlay">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-12">
				<div class="owl-carousel clients-slider">
					<div class="single-clients">
						<img src="img/client1.png" alt="#">
					</div>
					<div class="single-clients">
						<img src="img/client2.png" alt="#">
					</div>
					<div class="single-clients">
						<img src="img/client3.png" alt="#">
					</div>
					<div class="single-clients">
						<img src="img/client4.png" alt="#">
					</div>
					<div class="single-clients">
						<img src="img/client5.png" alt="#">
					</div>
					<div class="single-clients">
						<img src="img/client1.png" alt="#">
					</div>
					<div class="single-clients">
						<img src="img/client2.png" alt="#">
					</div>
					<div class="single-clients">
						<img src="img/client3.png" alt="#">
					</div>
					<div class="single-clients">
						<img src="img/client4.png" alt="#">
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--/Ens clients -->

<!-- Start Appointment -->
	
<!-- End Appointment -->

<!-- Start Newsletter Area -->
<section class="newsletter section">
	<div class="container">
		<div class="row ">
			<div class="col-lg-6  col-12">
				<!-- Start Newsletter Form -->
				<div class="subscribe-text ">
					<h6>Suscríbete al boletín informativo</h6>
					<p class="">Cu qui soleat partiendo urbanitas. Eum aperiri indoctum eu,<br> homero alterum.</p>
				</div>
				<!-- End Newsletter Form -->
			</div>
			<div class="col-lg-6  col-12">
				<!-- Start Newsletter Form -->
				<div class="subscribe-form ">
					<form action="mail/mail.php" method="get" target="_blank" class="newsletter-inner">
						<input name="EMAIL" placeholder="Your email address" class="common-input" onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'Your email address'" required="" type="email">
						<button class="btn">Subscribe</button>
					</form>
				</div>
				<!-- End Newsletter Form -->
			</div>
		</div>
	</div>
</section>
<!-- /End Newsletter Area -->

<!-- Footer Area -->
<footer id="footer" class="footer ">
	<!-- Footer Top -->
	<div class="footer-top">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 col-12">
					<div class="single-footer">
						<h2>About Us</h2>
						<p>Lorem ipsum dolor sit am consectetur adipisicing elit do eiusmod tempor incididunt ut labore dolore magna.</p>
						<!-- Social -->
						<ul class="social">
							<li><a href="#"><i class="icofont-facebook"></i></a></li>
							<li><a href="#"><i class="icofont-google-plus"></i></a></li>
							<li><a href="#"><i class="icofont-twitter"></i></a></li>
							<li><a href="#"><i class="icofont-vimeo"></i></a></li>
							<li><a href="#"><i class="icofont-pinterest"></i></a></li>
						</ul>
						<!-- End Social -->
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-12">
					<div class="single-footer f-link">
						<h2>Quick Links</h2>
						<div class="row">
							<div class="col-lg-6 col-md-6 col-12">
								<ul>
									<li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Home</a></li>
									<li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>About Us</a></li>
									<li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Services</a></li>
									<li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Our Cases</a></li>
									<li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Other Links</a></li>	
								</ul>
							</div>
							<div class="col-lg-6 col-md-6 col-12">
								<ul>
									<li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Consuling</a></li>
									<li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Finance</a></li>
									<li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Testimonials</a></li>
									<li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>FAQ</a></li>
									<li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Contact Us</a></li>	
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-12">
					<div class="single-footer">
						<h2>Open Hours</h2>
						<p>Lorem ipsum dolor sit ame consectetur adipisicing elit do eiusmod tempor incididunt.</p>
						<ul class="time-sidual">
							<li class="day">Monday - Fridayp <span>8.00-20.00</span></li>
							<li class="day">Saturday <span>9.00-18.30</span></li>
							<li class="day">Monday - Thusday <span>9.00-15.00</span></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-12">
					<div class="single-footer">
						<h2>Newsletter</h2>
						<p>subscribe to our newsletter to get allour news in your inbox.. Lorem ipsum dolor sit amet, consectetur adipisicing elit,</p>
						<form action="mail/mail.php" method="get" target="_blank" class="newsletter-inner">
							<input name="email" placeholder="Email Address" class="common-input" onfocus="this.placeholder = ''"
								onblur="this.placeholder = 'Your email address'" required="" type="email">
							<button class="button"><i class="icofont icofont-paper-plane"></i></button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/ End Footer Top -->
	<!-- Copyright -->
	<div class="copyright">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-12">
					<div class="copyright-content">
						<p>© Copyright 2018  |  All Rights Reserved by <a href="https://www.wpthemesgrid.com" target="_blank">wpthemesgrid.com</a> </p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/ End Copyright -->
</footer>
<!--/ End Footer Area -->

<!-- jquery Min JS -->
      <script src="js/jquery.min.js"></script>
<!-- jquery Migrate JS -->
<script src="js/jquery-migrate-3.0.0.js"></script>
<!-- jquery Ui JS -->
<script src="js/jquery-ui.min.js"></script>
<!-- Easing JS -->
      <script src="js/easing.js"></script>
<!-- Color JS -->
<script src="js/colors.js"></script>
<!-- Popper JS -->
<script src="js/popper.min.js"></script>
<!-- Bootstrap Datepicker JS -->
<script src="js/bootstrap-datepicker.js"></script>
<!-- Jquery Nav JS -->
      <script src="js/jquery.nav.js"></script>
<!-- Slicknav JS -->
<script src="js/slicknav.min.js"></script>
<!-- ScrollUp JS -->
      <script src="js/jquery.scrollUp.min.js"></script>
<!-- Niceselect JS -->
<script src="js/niceselect.js"></script>
<!-- Tilt Jquery JS -->
<script src="js/tilt.jquery.min.js"></script>
<!-- Owl Carousel JS -->
      <script src="js/owl-carousel.js"></script>
<!-- counterup JS -->
<script src="js/jquery.counterup.min.js"></script>
<!-- Steller JS -->
<script src="js/steller.js"></script>
<!-- Wow JS -->
<script src="js/wow.min.js"></script>
<!-- Magnific Popup JS -->
<script src="js/jquery.magnific-popup.min.js"></script>
<!-- Counter Up CDN JS -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
<!-- Bootstrap JS -->
<script src="js/bootstrap.min.js"></script>
<!-- Main JS -->
<script src="js/main.js"></script>

  </form>
</body>
</html>
