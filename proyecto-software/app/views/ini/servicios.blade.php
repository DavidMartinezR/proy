@extends ('layouts.master')

@section ('title') Hospital Veterinario Provet @stop

@section ('content')


      <nav class="navbar navbar-inverse" role="navigation">
         <div class="container-fluid">

            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
              </button>

              <a class="navbar-brand" href='index'>Inicio</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav">
                <li class="active"><a href="loggin">Iniciar Sesión</a></li>
                <li><a href="quienessomos">Quiénes Somos</a></li>
                <li><a href="servicios">Servicios</a></li>
              <li><a href="contacto">Contacto</a></li>
                  </ul>
          </div><!-- /.container-fluid -->
      </nav>



      <div>
        <p>
          Qué hacemos:
          En Hospital Veterinario Provet ofrecemos a las mascotas de nuestros clientes servicios como:
          Medicina.
          Cirugía.
		      Rayos X.
		      Ecografía.
      		Vacunas.
      		Peluquería canina.
      		Disponemos de servicio a domicilio, además, contamos con farmacia veterinaria.
      		Ofrecemos atención las 24 horas, estamos en Puente Alto
      		</p>
    </div>


          <?php echo HTML::link('ini/','Volver a INICIO')?>


@stop