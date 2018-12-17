@include('adm.descuentos.partials.header')
				</div>
				<h5>Descuentos</h5>					
				<div class="divider"></div>
				<table class="index-table-logos responsive-table ">
					<thead>
						<tr>
							<th>Tipo</th>
							<th>Porcentaje</th>
							<th>Opciones</th>
						</tr>
					</thead>
					<tbody>
						@forelse($descuentos as $d)
							<tr>
								<td>{{ $d->tipo }}</td>
								<td>{{ $d->monto }}%</td>
								<td>
									<a href=" {{ action('DescuentoController@edit', $d->id)}} " class="btn-floating btn-large waves-effect waves-light orange"><i class="fas fa-pencil-alt"></i></a>
								</td>
							</tr>
						@empty
							<tr>
								<td colspan="3">No existen registros</td>
							</tr>
						@endforelse
					</tbody>
				</table>

			</div>
		</div>
	</div>
</main>

@include('adm.layouts.script')

<script>
	$(document).ready(function(){		
		M.AutoInit();
		$('.collapsible').collapsible();
		$('select').formSelect();  

	});

</script>
</body>
</html>