@extends('layouts.master')

@section('title')
    Editar Indicador
@endsection

@section('content')
	<div class="row">
		<div class="col-md-6 col-sm-8">
			<form action="{{ route('update-indicador',['id' => $indicador->id]) }}" name="form-editar-indicador" id="form-editar-indicador" method="post">
				<div class="form-group">
					<label for="nome">Nome</label>
					<input type="text" name="nome" class="form-control" value="{{ $indicador->nome }}">
				</div>
				<!-- Usado para fazer o ajax -->
				<input type="text" id="urlAjaxAcoesIndicadorEdit" value="{{route('chama-acoes-indicador')}}" hidden>
				<div class="form-group">
					<label for="plano">Plano</label>
					<select class="form-control" name="plano" id="planos-ajax-indicador-edit">
						<option value="">Selecione</option>
						@foreach ($planos as $plano)
							@if($indicador->plano->id == $plano->id)
							    <option selected value="{{ $plano->id }}">{{ $plano->nome }}</option>
							@else
							    <option value="{{ $plano->id }}">{{ $plano->nome }}</option>
							@endif
						@endforeach
					</select>
				</div>
				<div class="form-group">
					<label for="acao">Ação</label>
					<select class="form-control" name="acao" id="acao">
						<option value="">Selecione</option>
						@foreach ($acoes as $acao)
							@if($indicador->acao->id == $acao->id)
							    <option selected value="{{ $acao->id }}">{{ $acao->nome.' - '.$acao->codigo_acao }}</option>
							@else
							    <option value="{{ $acao->id }}">{{ $acao->nome.' - '.$acao->codigo_acao }}</option>
							@endif
						@endforeach
					</select>
				</div>
				<div class="form-group">
					<label for="meta_1_tri">Meta 1º Trimestre</label>
					<input type="text" name="meta_1_tri" id="meta_1_tri" class="form-control" value="{{ $indicador->meta_1_tri }}">
				</div>
				<div class="form-group">
					<label for="meta_2_tri">Meta 2º Trimestre</label>
					<input type="text" name="meta_2_tri" id="meta_2_tri" class="form-control" value="{{ $indicador->meta_2_tri }}">
				</div>
				<div class="form-group">
					<label for="meta_3_tri">Meta 3º Trimestre</label>
					<input type="text" name="meta_3_tri" id="meta_3_tri" class="form-control" value="{{ $indicador->meta_3_tri }}">
				</div>
				<div class="form-group">
					<label for="meta_4_tri">Meta 4º Trismestre</label>
					<input type="text" name="meta_4_tri" id="meta_4_tri" class="form-control" value="{{ $indicador->meta_4_tri }}">
				</div>
				<!--Necessário para o laravel-->
				<input type="hidden" name="_token" value="{{ Session::token() }}">
				<button type="submit" class="btn btn-primary">Editar</button>
			</form>
		</div>
	</div>
@endsection