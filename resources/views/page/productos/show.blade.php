@extends('app')

@section('content')

	<div class="container container-fluid-secciones" id="productos-row" style="padding-top: 2%">
		<div class="breadcrumb-productos">
			<a href="{{ action('SeccionProductoController@index') }}">Productos</a> | <a href="{{ action('SeccionProductoController@show', $familia->id) }}">{{$familia->nombre}}</a> 
		</div>

		<div class="row">

			@forelse($subfamilias_familia as $s)
				<div class="col s12 m12 l3 center">
					<div class="card z-depth-0" id="subfamilia">
						<div class="subfamilia-productos">
					        <div class="efecto  hide-on-med-and-down">
								<a href="{{ action('SeccionProductoController@showProducto', $s->id) }}">
									<img src="{{ asset('images/subfamilias/hover-subfamilias.png') }}" class="responsive-img" style="width: 100%; margin-left: 3%">	    
								</a>                
							</div>
							<a href="{{ action('SeccionProductoController@showProducto', $s->id) }}"><img src="{{ asset('images/subfamilias/'.$s->file_image) }}"></a>
						</div>
						<div class="card-content" id="image-subfamilias-card-content" style="height: 50px;" >
							<span class="card-title center" id="image-subfamilias-card-content-title">{{ $s->nombre }}</span>
						</div>
					</div>
				</div>
			@empty
				<p>
					No conseguimos productos relacionados a esta categoría
				</p>
			@endforelse


	</div>

@include('layouts.script')
@endsection
</body>
</html>


