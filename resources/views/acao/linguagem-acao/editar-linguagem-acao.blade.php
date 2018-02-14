@extends('layouts.master')

@section('title')
    Editar Linguagem da Ação
@endsection

@section('content')
	<div class="row">
		<div class="col-md-6 col-sm-8">
			<form action="{{ route('update-linguagem-acao',['id' => $linguagem_acao->id]) }}" name="form-editar-linguagem-acao" id="form-editar-linguagem-acao" method="post">
				<div class="form-group">
					<label for="nome">Nome</label>
					<input type="text" name="nome" class="form-control" value="{{ $linguagem_acao->nome }}">
				</div>
				<button type="submit" class="btn btn-primary">Editar</button>
				<!--Necessário para o laravel-->
				<input type="hidden" name="_token" value="{{ Session::token() }}">
			</form>
		</div>
	</div>
@endsection