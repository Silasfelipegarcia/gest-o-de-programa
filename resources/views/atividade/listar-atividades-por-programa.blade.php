@extends('layouts.master')

@section('title')
    Listagem de Atividades
@endsection

@section('content')
	<div class="row">
		<div class="col-md-12 col-sm-12">
			<div class="table table-responsive">
				<table class="table table-striped table-bordered"> 
					<thead> 
						<tr> 
							<th>Nome</th>
							<th>Data</th>
							<th>Horario</th>
							<th>Artista</th>
							<th>Plano</th>
							<th>Programa</th>
						</tr> 
					</thead> 
					<tbody> 
						@foreach ($atividades as $atividade)
						<tr>
							<td>{{$atividade->nome}}</td>
							<td>{{$atividade->data}}</td>
							<td>{{$atividade->horario}}</td>
							<td>{{$atividade->artista}}</td>
							<td>{{$atividade->plano->nome}}</td>
							<td>{{$atividade->programa->nome}}</td>
							<td>
								<ul class="list-inline">
									<li>
										<a href="{{ route('editar-atividade',["id" => $atividade->id]) }}" class="btn btn-warning">Editar</a>
										<a href="{{ route('delete-atividade',["id" => $atividade->id]) }}" class="btn btn-danger">Excluir</a>
									</li>
								</ul>
							</td>
						</tr>
						@endforeach
					</tbody> 
				</table>
			</div>
			<a href="{{route('cadastra-atividade',['id' => $programa_id])}}" class="btn btn-primary">Cadastrar nova atividade</a>
		</div>
	</div>
@endsection