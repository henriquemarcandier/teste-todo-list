<?php

namespace App\Http\Controllers;

use App\Models\TodoLists;
use App\Models\TodoListsTasks;
use Illuminate\Http\Request;

class TodoListsController extends Controller
{
    public function list(){
        $todoLists = TodoLists::all();
        return view('index', [
            'todoLists' => $todoLists,
            'title' => 'Lista de To Do´s'
        ]);
    }

    public function listTasks($id){
        $todoLists = todoLists::where('id', $id)->get();
        $todoListsTasks = todoListsTasks::where('id_todo_lists', $id)->get();
        foreach ($todoListsTasks as $key => $value){
            if ($value->date == date('Y-m-d')){
                $todoListsTasks2[] = $value;
            }
        }  
        if (!isset($todoListsTasks2)){
            $todoListsTasks2 = 0;
        }  
        return view('listTasks', [
            'todoLists' => $todoLists,
            'todoListsTasks' => $todoListsTasks2,
            'title' => 'Visualização de Tarefas do Dia na '.$todoLists[0]->name
        ]);
    }
}
