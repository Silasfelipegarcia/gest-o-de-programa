@extends('layouts.master')

@section('title')
    Listagem de Programas
@endsection

@section('content')
	<div class="row">
		<div class="col-md-8 col-sm-8">
			<div class="table table-responsive">
				<table class="table table-striped table-bordered"> 
					<thead> 
						<tr> 
							<th>Nome</th> 
							<th>Plano</th> 
							<th>Tipagem</th> 
							<th>Descrição</th>
						</tr> 
					</thead> 
					<tbody> 
						@foreach ($programas as $programa)
						<tr>
							<td>{{$programa->nome}}</td>
							<td>{{$programa->plano->nome}}</td>
							<td>{{$programa->tipagem->nome}}</td>
							<td>{{$programa->descricao}}</td>
							<td>
								<ul class="list-inline">
									<li>
										<a href="{{ route('editar-programa',["id" => $programa->id]) }}" class="btn btn-warning">Editar</a>
										<a href="{{ route('delete-programa',["id" => $programa->id]) }}" class="btn btn-danger">Excluir</a>
									</li>
								</ul>
							</td>
						</tr>
						@endforeach
					</tbody> 
				</table>
			</div>
			<a href="cadastra-programa" class="btn btn-primary">Cadastrar novo Programa</a>
		</div>
	</div>
@endsection