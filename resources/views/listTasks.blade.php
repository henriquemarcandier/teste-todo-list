@extends('master.layout')
@section('content')
    <a href="{{route('index')}}">&laquo; Voltar</a> | <a href="">Cadastrar Nova Tarefa</a>
    @if ($todoListsTasks != 0)
    <table id="example2" class="table table-bordered table-hover w-100">
        <thead>
            <tr>
                <th>Nome</th>
                <th>Ações</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($todoListsTasks as $key => $value)
            <tr>
                <td class="w-50">{{$value->name}}</td>
                <td class="w-50">
                    @if ($value->completed == 1)<img src="{{env('APP_URL')}}img/nao-feito.png" width="25" title="Tarefa não concluída" style="cursor:pointer" onclick="location.href='{{env('APP_URL')}}listTasks/{{$value->id}}'">@endif
                    <img src="{{env('APP_URL')}}img/editar.png" width="25" title="Editar {{$value->name}}" style="cursor:pointer" onclick="location.href='{{env('APP_URL')}}{{$value->id}}'">
                    <img src="{{env('APP_URL')}}img/excluir.png" width="25" title="Excluir {{$value->name}}" style="cursor:pointer" onclick="if (confirm('Tem certeza que deseja excluir essa parte do dia?')){ location.href='{{env('APP_URL')}}delete/{{$value->id}}'; }">
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
    @else
    <br><div class='text-center'><div class='btn btn-danger'>Sem nenhum registro encontrado!</div></div>
    @endif
@endsection