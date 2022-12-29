@extends('master.layout')
@section('content')
    <a href="{{route('index')}}">&laquo; Voltar</a> | <a style="cursor:pointer" onclick="abreFecha('filtro')">Filtrar</a> | <a href="{{route('registerTasks', $id)}}">Cadastrar Nova Tarefa</a><br>
    <div id="filtro" style="position:absolute; display:none; border:1px solid #e7e7e7; background-color:#FFFFFF; padding:5px; width:95%">
        <div style="position:absolute; float:left; left:95%; cursor:pointer;" onclick="fecha('filtro')">&times;</div>
        <h3>Filtro</h3>
        <form action="" method="GET" id="filtrar" onSubmit="return false">
            <input type="date" value="{{isset($data) ? $data : date('Y-m-d')}}" name="dataFiltro" id="dataFiltro" class="form-control">
            <div class="text-center">
                <input type="button" value="Filtrar" onclick="filtro('{{env('APP_URL')}}listTasks/{{$id}}')" class="btn btn-primary">
            </div>
        </form>
    </div>
    1 de {{count($todoListsTasks) != 0 ? count($todoListsTasks) : 0}} tarefas concluídas
    @if (count($todoListsTasks) != 0)
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
                    @if ($value->completed == 1)<img src="{{env('APP_URL')}}img/nao-feito.png" width="25" title="Cancelar Conclusão da Tarefa" style="cursor:pointer" onclick="if (confirm('Tem certeza que deseja marcar essa tarefa como não concluída?')){ location.href='{{env('APP_URL')}}desapproveTasks/{{$id}}/{{$value->id}}'; }">@else<img src="{{env('APP_URL')}}img/feito.png" width="25" title="Concluir Tarefa" style="cursor:pointer" onclick="if (confirm('Tem certeza que deseja marcar essa tarefa como concluída?')){ location.href='{{env('APP_URL')}}approveTasks/{{$id}}/{{$value->id}}'; }">@endif
                    <img src="{{env('APP_URL')}}img/editar.png" width="25" title="Editar {{$value->name}}" style="cursor:pointer" onclick="location.href='{{env('APP_URL')}}editTask/{{$id}}/{{$value->id}}'">
                    <img src="{{env('APP_URL')}}img/excluir.png" width="25" title="Excluir {{$value->name}}" style="cursor:pointer" onclick="if (confirm('Tem certeza que deseja excluir essa tarefa?')){ location.href='{{env('APP_URL')}}deleteTask/{{$id}}/{{$value->id}}'; }">
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
    @else
    <br><div class='text-center'><div class='btn btn-danger'>Sem nenhum registro encontrado!</div></div>
    @endif
@endsection