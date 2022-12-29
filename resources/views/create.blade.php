@extends('master.layout')
@section('content')
<a href="{{route('index')}}">&laquo; Voltar</a>
<form method="POST" action="{{route('store')}}" id="formRegister">
    @csrf
    <label for="name">Nome: </label><input type="text" class="form-control" name="name" id="name" required placeholder="Informe o nome do To Do aqui corretamente..."><br>
    <label for="article">Artículo: </label>
    <select class="form-control" name="article" id="article" required>
        <option value="">Selecione o artículo abaixo corretamente...</option>
        <option value="a">a</option>
        <option value="o">o</option>
    </select>
    <br>
    <div class="text-center">
        <input type="submit" value="Cadastrar" class="btn btn-primary">
        <input type="button" onclick="document.getElementById('formRegister').reset(); $('#name').focus();" value="Limpar Campos" class="btn btn-danger">
    </div>
</form>
@endsection