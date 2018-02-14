@extends('layouts.master')

@section('title')
    Planos para Relatório Trimestral de Atividades
@endsection

@section('content')
    <div class="row">
        <div class="col-md-12 col-sm-12">
            <ul class="list-unstyled">
                @foreach($planos as $plano)
                    <li>
                        <h2>
                            <a href="{{route('relatorio-trimestral',["id" => $plano->id])}}" target="_blank">
                                {{$plano->nome}}
                            </a>
                        </h2>
                    </li>
                @endforeach
            </ul>
        </div>
    </div>
@endsection