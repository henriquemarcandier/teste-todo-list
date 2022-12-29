<?php

namespace App\Http\Controllers;

use App\Models\TodoLists;
use App\Models\TodoListsTasks;
use Illuminate\Http\Request;
date_default_timezone_set('America/Sao_Paulo');

class TodoListsTasksController extends Controller
{
    public function list($id, $data = null){
        if (!$data){
            $data = date('Y-m-d');
        }
        $todoLists = todoLists::where('id', $id)->get();
        $todoListsTasks = todoListsTasks::where('id_todo_lists', $id)->where('date', $data)->get();
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
