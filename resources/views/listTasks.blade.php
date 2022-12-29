@extends('master.layout')
@section('content')
    <a href="{{route('index')}}">&laquo; Voltar</a> | <a href="">Cadastrar Nova Tarefa</a>
    <table id="example2" class="table table-bordered table-hover w-100">
        <thead>
            <tr>
                <th>Nome</th>
                <th>Ações</th>
            </tr>
        </thead>
        <tbody>
            @if ($todoListsTasks != 0)
                @foreach ($todoListsTasks as $key => $value)
            <tr>
                <td class="w-50">{{$value->name}}</td>
                <td class="w-50">
                    <img src="{{env('APP_URL')}}img/lista.png" width="25" title="Tarefas da {{$value->name}}" style="cursor:pointer" onclick="location.href='{{env('APP_URL')}}listTasks/{{$value->id}}'">
                    <img src="{{env('APP_URL')}}img/editar.png" width="25" title="Editar {{$value->name}}" style="cursor:pointer" onclick="location.href='{{env('APP_URL')}}{{$value->id}}'">
                    <img src="{{env('APP_URL')}}img/excluir.png" width="25" title="Excluir {{$value->name}}" style="cursor:pointer" onclick="if (confirm('Tem certeza que deseja excluir essa parte do dia?')){ location.href='{{env('APP_URL')}}delete/{{$value->id}}'; }">
                </td>
            </tr>
                @endforeach
            @endif
        </tbody>
    </table>
@endsection