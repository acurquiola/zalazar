
<nav id="header" class=" z-depth-0">
	<div class="nav-wrapper z-depth-0 hide-on-med-and-down" id="header-top">
		<div class="container">		
	        <ul id="nav-mobile header-top" class="right hide-on-med-and-down header-top-ul" style=";height: 35px; display: flex; justify-content: center; align-items: center;">         
	            <li> <i style="color: #B0B0B0" class="fas fa-user-circle"></i> </li>
	            <li style="padding-right: 10px !important; "> ZONA PRIVADA </li> 
	            <li style="font-size: 25px !important; font-family: 'Montserrat' !important; margin-top: -4px">|</li>
	            <li><i class="fab fa-whatsapp"  style="margin-right: -15px; color: #4DC95C" ></i></li>
	            <li><a style="color: #505050" href="tel:{{ $whatsapp->descripcion }}">{{ $whatsapp->descripcion }}</a></li>
	        </ul>
		</div>
	</div>
	<div class="nav-content">
		<a href="{{ route('home') }}" class="brand-logo">
			<img id="logo" src="{{ asset("images/logos/".$logos->file_image) }}" alt="" class="responsive-img">
			<a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons" style="color: #3E3F41">menu</i></a>
		</a>
		<div class="col s12">
			<div class="col s2">
				<ul id="nav-mobile" class="right hide-on-med-and-down">
					<li>
			          <i style="color: #5C89C5; margin-top: 15%" class="material-icons prefix right">search</i>
			          <input id="icon_prefix" type="text" class="validate right " style="width: 40%; margin-top: 15%">
			      	</li>     
				</ul>
			</div>
			<div class="col s10">						
				<ul id="nav-mobile" class="right hide-on-med-and-down header-secciones" >
					<li><a href=" {{ route('home') }} " {{ (\Request::is('/'))?"id=seccion-active":"" }}>Inicio</a></li>
					<li><a href=" {{ url('/empresa')}} " {{ (\Request::is('empresa*'))?"id=seccion-active":"" }}>Empresa</a></li>
					<li><a href=" {{ url('/productos')}} " {{ (\Request::is('productos*'))?"id=seccion-active":"" }}>Productos</a></li>
					<li><a href=" {{ url('/novedades')}} " {{ (\Request::is('novedades*'))?"id=seccion-active":"" }}>Catálogo</a></li>
					<li><a href=" {{ url('/calidad')}} " {{ (\Request::is('calidad*'))?"id=seccion-active":"" }}>Novedades</a></li>      
					<li><a href=" {{ url('/contacto')}} " {{ (\Request::is('contacto*'))?"id=seccion-active":"" }}>Contacto</a></li>            
				</ul>
			</div>
			
		</div>
	</div>
</nav>

<ul class="sidenav" id="mobile-demo">
	<li><a href=" {{ route('home') }} " {{ (\Request::is('/'))?"id=seccion-active":"" }}>INICIO</a></li>
	<li><a href=" {{ url('/empresa')}} " {{ (\Request::is('empresa*'))?"id=seccion-active":"" }}>EMPRESA</a></li>
	<li><a href=" {{ url('/productos')}} " {{ (\Request::is('venta*'))?"id=seccion-active":"" }}>PRODUCTOS</a></li>
	<li><a href=" {{ url('/novedades')}} " {{ (\Request::is('novedades*'))?"id=seccion-active":"" }}>NOVEDADES</a></li>
	<li><a href=" {{ url('/calidad')}} " {{ (\Request::is('calidad*'))?"id=seccion-active":"" }}>CALIDAD</a></li>      
	<li><a href=" {{ url('/contacto')}} " {{ (\Request::is('contacto*'))?"id=seccion-active":"" }}>CONTACTO</a></li>     
</ul>

