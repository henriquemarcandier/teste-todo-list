@extends('master.layout')
@section('content')
<a href="{{route('listTasks', $idToDo)}}">&laquo; Voltar</a>
<form method="POST" action="{{route('storeTask', $idToDo)}}" id="formRegisterTask">
    @csrf
    <input type="hidden" value="{{$idToDo}}" name="idToDo" id="idToDo">
    <label for="name">Nome: </label><input type="text" class="form-control" name="name" id="name" required placeholder="Informe o nome da tarefa aqui corretamente..."><br>
    <label for="text">Texto: </label>
    <textarea name="text" id="text" class="form-control" required></textarea><br>
    <label for="date">Data: </label><input type="date" class="form-control" name="date" id="date" required placeholder="Informe a data da tarefa aqui corretamente..." value="{{date('Y-m-d')}}"><br>
    <div class="text-center">
        <input type="submit" value="Cadastrar" class="btn btn-primary">
        <input type="button" onclick="location.href='{{route('listTasks', $idToDo)}}'" value="Voltar" class="btn btn-danger">
    </div>
</form>
@endsection