@extends('master.layout')
@section('content')
<a href="{{route('index')}}">&laquo; Voltar</a>
<form method="POST" action="{{route('update', $todoList->id)}}" id="formEdit">
    @csrf
    <input type='hidden' id="id" name="id" value="{{$todoList->id}}">
    <label for="name">Nome: </label><input type="text" class="form-control" name="name" id="name" required placeholder="Informe o nome do To Do aqui corretamente..." value="{{$todoList->name}}"><br>
    <label for="article">Artículo: </label>
    <select class="form-control" name="article" id="article" required>
        <option value="">Selecione o artículo abaixo corretamente...</option>
        <option value="a" @if ($todoList->article == 'a') selected @endif >a</option>
        <option value="o" @if ($todoList->article == 'o') selected @endif >o</option>
    </select>
    <br>
    <div class="text-center">
        <input type="submit" value="Editar" class="btn btn-primary">
        <input type="button" onclick="document.getElementById('formEdit').reset(); $('#name').focus();" value="Limpar Campos" class="btn btn-danger">
    </div>
</form>
@endsection