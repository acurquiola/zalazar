@extends('app')

@section('content')


<body>

	<div class="container">
		<div class="row">
			<div class="col s12" id="seccion-nombre" style="margin-top: 5%">
				<span>Catálogo</span>
			</div>

			@forelse($descargas as $d)
			<div class="col s12 m6 l3">
				<div class="card z-depth-0 card-catalogo" >
					<div class="card-image waves-effect waves-block waves-light" style="background: #e0e0e0; height: 180px; ">
						<img class="activator" src="{{ asset('images/catalogo/card-catalogo.png') }}" style="left: 30% !important;  top: 70% !important; width: auto !important">
					</div>
					<div class="card-content card-content-catalogo">
						<span class="card-title card-title-catalogo">{{ $d->nombre }}</span>
					</div>
					<div class="card-content card-content-down-catalogo">
						<div class="col l6 center">
							<a href=" {{route('descargas-view', $d->file)}}" target="_blank">
								<i class="fas fa-eye" style="color: #5C89C5; font-size: 20px;"></i>
							</a>
						</div>
						<div class="col l6">
							<a href=" {{route('descargas-down', $d->file)}}">
								<i class="fas fa-download"  style="color: #A3A3A3; font-size: 20px;"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
			@empty
			<p>No hay catálogos disponibles en este momento</p>
			@endforelse
		</div>

	</div>

	@endsection

	@include('layouts.script')

</body>
</html>


