@extends('master.layout')
@section('content')
<a href="{{route('index')}}">&laquo; Voltar</a>
<form method="POST" action="{{route('updateTask')}}" id="formEdit">
    @csrf
    <input type='hidden' id="id" name="id" value="{{$id}}">
    <input type='hidden' id="idToDo" name="idToDo" value="{{$idToDo}}">
    <label for="name">Nome: </label><input type="text" class="form-control" name="name" id="name" required placeholder="Informe o nome da tarefa aqui corretamente..." value="{{$todoListTask->name}}"><br>
    <label for="text">Texto: </label>
    <textarea name="text" id="text" class="form-control" required>{{$todoListTask->text}}</textarea><br>
    <label for="date">Data: </label><input type="date" class="form-control" name="date" id="date" required placeholder="Informe a data da tarefa aqui corretamente..." value="{{$todoListTask->date}}"><br>
    <div class="text-center">
        <input type="submit" value="Editar" class="btn btn-primary">
        <input type="button" onclick="location.href='{{route('index')}}'" value="Voltar" class="btn btn-danger">
    </div>
</form>
@endsection