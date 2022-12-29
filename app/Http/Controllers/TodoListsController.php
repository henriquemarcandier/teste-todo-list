<?php

namespace App\Http\Controllers;

use App\Models\TodoLists;
use App\Models\TodoListsTasks;
use Illuminate\Http\Request;
date_default_timezone_set('America/Sao_Paulo');

class TodoListsController extends Controller
{
    public function list(){
        $todoLists = TodoLists::all();
        return view('index', [
            'todoLists' => $todoLists,
            'title' => 'Lista de To Do´s'
        ]);
    }

    public function register(){
        return view('create', [
            'title' => "Cadastro de To Do"
        ]);
    }

    public function store(Request $request){
        $todoLists = new TodoLists();
        $todoLists->name = $request->name;
        $todoLists->article = $request->article;
        $todoLists->save();
        return redirect()->route('index');
    }

    
    public function edit($id)
    {
        $todoList = TodoLists::find($id);  
        return view('edit', [
            'todoList' => $todoList,
            'title' => 'Edição de To Do'
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Page  $page
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $todoList = TodoLists::where("id", $id)->update([
            'name' => $request->name,
            'article' => $request->article
        ]);
        return redirect()->route('index');
    }
    
    public function destroy($id){
        $todoLists = TodoLists::find($id);
        $todoLists->delete($id);
        return redirect()->route('index');
    }
}
