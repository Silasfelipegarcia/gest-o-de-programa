@extends('layouts.master')

@section('title')
    Cadastro de Atividade
@endsection

@section('content')
	<div class="row">
		<div class="col-md-6 col-sm-8">
			<form class="form" name="form-cadastro-atividade" id="form-cadastro-atividade" action="{{ route('cria-atividade') }}" method="POST">
				<div class="form-group">
					<label for="nome">Nome</label>
					<input type="text" name="nome" class="form-control">
				</div>
				<div class="form-group">
					<label for="data">Data</label>
					<input type="text" name="data" id="data" class="form-control" readonly>
				</div>
				<div class="form-group">
					<label for="horario">Horario</label>
					<input name="horario" id="horario" class="form-control" readonly>
				</div>
				<div class="form-group">
					<label for="dia_semana">Dia da Semana</label>
					<select class="form-control" name="dia_semana" id="dia_semana">
							<option value="">Selecione</option>
						    <option value="0">Segunda-Feira</option>
						    <option value="1">Terça-Feira</option>
						    <option value="2">Quarta-Feira</option>
						    <option value="3">Quinta-Feira</option>
						    <option value="4">Sexta-Feira</option>
						    <option value="5">Sábado</option>
						    <option value="6">Domingo</option>
					</select>
				</div>
				<div class="form-group">
					<label for="data_fim">Data Fim</label>
					<input type="text" name="data_fim" id="data_fim" class="form-control" readonly>
				</div>
				<div class="form-group">
					<label for="local">Local</label>
					<input type="text" name="local" id="local" class="form-control">
				</div>
				<div class="form-group">
					<label for="capacidade">Capacidade</label>
					<input type="number" min="0" name="capacidade" id="capacidade" class="form-control">
				</div>
				<div class="form-group">
					<label for="num_total_pessoas">Nº Total de Pessoas</label>
					<input type="number" min="0" name="num_total_pessoas" id="num_total_pessoas" class="form-control">
				</div>
				<div class="form-group">
					<label for="num_total_tecnicos">Nº Total de Técnicos</label>
					<input type="number" min="0" name="num_total_tecnicos" id="num_total_tecnicos" class="form-control">
				</div>
				<div class="form-group">
					<label for="num_total_artistas">Nº Total de Artistas</label>
					<input type="number" min="0" name="num_total_artistas" id="num_total_artistas" class="form-control">
				</div>
				<div class="form-group">
					<label for="inteiras">Inteiras</label>
					<input type="number" min="0" name="inteiras" id="inteiras" class="form-control">
				</div>
				<div class="form-group">
					<label for="meias">Meias</label>
					<input type="number" min="0" name="meias" id="meias" class="form-control">
				</div>
				<div class="form-group">
					<label for="moradores_entorno">Moradores do Entorno</label>
					<input type="number" min="0" name="moradores_entorno" id="moradores_entorno" class="form-control">
				</div>
				<div class="form-group">
					<label for="prom">Prom</label>
					<input type="number" min="0" name="prom" id="prom" class="form-control">
				</div>
				<div class="form-group">
					<label for="total_pagantes">Total Pagantes</label>
					<input type="number" min="0" name="total_pagantes" id="total_pagantes" class="form-control">
				</div>
				<div class="form-group">
					<label for="convites_prod">Convites Produção</label>
					<input type="number" min="0" name="convites_prod" id="convites_prod" class="form-control">
				</div>
				<div class="form-group">
					<label for="convites_apaa">Convites Apaa</label>
					<input type="number" min="0" name="convites_apaa" id="convites_apaa" class="form-control">
				</div>
				<div class="form-group">
					<label for="educativo_producao">Educativo Produção</label>
					<input type="number" min="0" name="educativo_producao" id="educativo_producao" class="form-control">
				</div>
				<div class="form-group">
					<label for="educativo_apaa">Educativo Apaa</label>
					<input type="number" min="0" name="educativo_apaa" id="educativo_apaa" class="form-control">
				</div>
				<div class="form-group">
					<label for="atend_social_producao">Atendimento Social Produção</label>
					<input type="number" min="0" name="atend_social_producao" id="atend_social_producao" class="form-control">
				</div>
				<div class="form-group">
					<label for="atend_social_apaa">Atendimento Social Apaa</label>
					<input type="number" min="0" name="atend_social_apaa" id="atend_social_apaa" class="form-control">
				</div>
				<div class="form-group">
					<label for="sessao_acessivel">Sessão Acessível</label>
					<select class="form-control" name="sessao_acessivel" id="sessao_acessivel">
							<option value="">Selecione</option>
						    <option value="0">Não</option>
						    <option value="1">Sim</option>
					</select>
				</div>
				<div class="form-group">
					<label for="acessibilidade_acompanhante">Acessibilidade Acompanhante</label>
					<select class="form-control" name="acessibilidade_acompanhante" id="acessibilidade_acompanhante">
							<option value="">Selecione</option>
						    <option value="0">Não</option>
						    <option value="1">Sim</option>
					</select>
				</div>
				<div class="form-group">
					<label for="bilheteria">Bilheteria</label>
					<input type="number" min="0" step="any" name="bilheteria" id="bilheteria" class="form-control">
				</div>
				<div class="form-group">
					<label for="porcentagem_bilheteria">% Bilheteria</label>
					<input type="number" min="0" step="any" name="porcentagem_bilheteria" id="porcentagem_bilheteria" class="form-control">
				</div>
				<div class="form-group">
					<label for="artista">Artísta/Banda/Apresentação</label>
					<input type="text" name="artista" id="artista" class="form-control">
				</div>
				@if(Auth::user()->perfil == 2)
					<div class="form-group">
						<label for="plano">Plano</label>
						<select class="form-control" name="plano" id="planos-ajax-atividade">
							<option value="">Selecione</option>
							@foreach ($planos as $plano)
							    <option value="{{ $plano->id }}">{{ $plano->nome }}</option>
							@endforeach
						</select>
					</div>
					<div class="form-group">
						<label for="programa">Programa</label>
						<select class="form-control" name="programa" id="programa">
							<option value="">Selecione</option>
							@foreach ($programas as $programa)
							    <option value="{{ $programa->id }}">{{ $programa->nome }}</option>
							@endforeach
						</select>
					</div>
				@elseif(Auth::user()->perfil == 1)
					<input type="hidden" name="plano" value="{{$programa->plano->id}}">
					<input type="hidden" name="programa" value="{{$programa->id}}">
				@endif
				<div class="form-group">
					<label for="tipo_publico">Tipo Público</label>
					<select class="form-control" name="tipo_publico" id="tipo_publico">
						<option value="">Selecione</option>
						@foreach ($tipo_publicos as $tipo_publico)
						    <option value="{{ $tipo_publico->id }}">{{ $tipo_publico->nome }}</option>
						@endforeach
					</select>
				</div>
				<div class="form-group">
					<label for="realizador">Realizador</label>
					<select class="form-control" name="realizador" id="realizador">
						<option value="">Selecione</option>
						@foreach ($realizadores as $realizador)
						    <option value="{{ $realizador->id }}">{{ $realizador->nome }}</option>
						@endforeach
					</select>
				</div>
				<div class="form-group">
					<label for="linguagem_programa">Linguagem Programa</label>
					<select class="form-control" name="linguagem_programa" id="linguagem_programa">
						<option value="">Selecione</option>
						@foreach ($linguagens_programa as $linguagem_programa)
						    <option value="{{ $linguagem_programa->id }}">{{ $linguagem_programa->nome }}</option>
						@endforeach
					</select>
				</div>
				
				<div class="form-group">
					<label for="municipio">Município</label>
					<select class="form-control" name="municipio" id="municipio">
						<option value="">Selecione</option>
						@foreach ($municipios as $municipio)
						    <option value="{{ $municipio->id }}">{{ $municipio->nome }}</option>
						@endforeach
					</select>
				</div>
				<div class="form-group">
					<label for="tipo_evento">Tipo Evento</label>
					<select class="form-control" name="tipo_evento" id="tipo_evento">
						<option value="">Selecione</option>
						@foreach ($tipos_evento as $tipo_evento)
						    <option value="{{ $tipo_evento->id }}">{{ $tipo_evento->nome }}</option>
						@endforeach
					</select>
				</div>
				<div class="form-group">
					<label for="observacoes">Observações</label>
					<textarea name="observacoes" id="observacoes" class="form-control"></textarea>
				</div>
				<button type="submit" class="btn btn-primary">Cadastrar</button>
				<!--Necessário para o laravel-->
				<input type="hidden" name="_token" value="{{ Session::token() }}">
			</form>
		</div>
	</div>
@endsection