@extends('layouts.master')

@section('title')
    Programas
@endsection

@section('content')
    <div class="row">
        <div class="col-md-12 col-sm-12">
            <ul class="list-unstyled">
                @foreach($programas as $programa)
                    <li>
                        <h2>
                            <a href="{{ route('listar-atividades-por-programa',['id' => $programa->id])}}" target="_blank">
                                {{$programa->nome}}
                            </a>
                        </h2>
                    </li>
                @endforeach
            </ul>
        </div>
    </div>
@endsection