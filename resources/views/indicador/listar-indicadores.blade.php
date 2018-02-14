@extends('layouts.master')

@section('title')
    Listagem de Indicadores
@endsection

@section('content')
	<div class="row">
		<div class="col-md-12 col-sm-12">
			<div class="table table-responsive">
				<table class="table table-striped table-bordered"> 
					<thead> 
						<tr> 
							<th>Nome</th>
							<th>Plano</th>
							<th>Ação</th>
							<th>Meta</th>
						</tr> 
					</thead> 
					<tbody> 
						@foreach ($indicadores as $indicador)
						<tr> 
							<th>{{ $indicador->nome }}</th>
							<th>{{ $indicador->plano->nome }}</th>							 
							<th>{{ $indicador->acao->nome.' - '.$indicador->acao->codigo_acao }}</th> 
							<th>{{ $indicador->meta }}</th> 
							<td>
								<ul class="list-inline">
									<li>
										<a href="{{ route('editar-indicador',["id" => $indicador->id]) }}" class="btn btn-warning">Editar</a>
										<a href="{{ route('delete-indicador',["id" => $indicador->id]) }}" class="btn btn-danger">Excluir</a>
									</li>
								</ul>
							</td>
						</tr>
						@endforeach
					</tbody> 
				</table>
			</div>
			<a href="{{ route('cadastra-indicador') }}" class="btn btn-primary">Cadastrar novo indicador</a>
		</div>
	</div>
@endsection