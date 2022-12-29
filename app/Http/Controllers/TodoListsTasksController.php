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
        return view('listTasks', [
            'todoLists' => $todoLists,
            'todoListsTasks' => $todoListsTasks,
            'id' => $id,
            'data' => $data,
            'title' => 'Visualização de Tarefas do Dia na '.$todoLists[0]->name
        ]);
    }
    public function register($idToDo){
        return view('createTask', [
            'title' => "Cadastro de Tarefa",
            'idToDo' => $idToDo
        ]);
    }

    public function store(Request $request){
        $todoLists = new TodoListsTasks();
        $todoLists->id_todo_lists = $request->idToDo;
        $todoLists->name = $request->name;
        $todoLists->text = $request->text;
        $todoLists->date = $request->date;
        $todoLists->completed = 0;
        $todoLists->save();
        return redirect()->route('listTasks', $request->idToDo);
    }

    
    
    public function approve($id, $idToDo){
        $todoListsTask = TodoListsTasks::where('id', $id)->update([
            'completed' => '1'
        ]);
        dd($todoListsTask);
        return redirect()->route('listTasks', $id);
    }

    public function destroy($idToDo, $id){
        $todoListsTask = TodoListsTasks::find($id);
        $todoListsTask->delete();
        return redirect()->route('listTasks', $idToDo);
    }
}
