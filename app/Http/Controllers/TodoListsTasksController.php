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
        $todoListsTasksConcluidas = todoListsTasks::where('id_todo_lists', $id)->where('date', $data)->where('completed', '1')->get();
        return view('listTasks', [
            'todoLists' => $todoLists,
            'todoListsTasks' => $todoListsTasks,
            'todoListsTasksConcluidas' => count($todoListsTasksConcluidas),
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
    
    public function edit($idToDo, $id)
    {
        $todoListTask = TodoListsTasks::find($id);  
        return view('editTask', [
            'id' => $id,
            'idToDo' => $idToDo,
            'todoListTask' => $todoListTask,
            'title' => 'Edição de Tarefa'
        ]);
    }

    public function update(Request $request)
    {
        $todoList = TodoListsTasks::where("id", $request->id)->update([
            'name' => $request->name,
            'text' => $request->text,
            'date' => $request->date
        ]);
        return redirect()->route('listTasks', $request->idToDo);
    }
    
    public function approve($idToDo, $id){
        $todoListsTask = TodoListsTasks::where('id', $id)->update([
            'completed' => '1'
        ]);
        return redirect()->route('listTasks', $idToDo);
    }
    
    public function desapprove($idToDo, $id){
        $todoListsTask = TodoListsTasks::where('id', $id)->update([
            'completed' => '0'
        ]);
        return redirect()->route('listTasks', $idToDo);
    }

    public function clearApproved($id){
        $todoListsTask = TodoListsTasks::where("id_todo_lists", $id)->where('completed', '1')->get();
        if (count($todoListsTask)){
            foreach ($todoListsTask as $key => $value){
                $todoListTask = TodoListsTasks::find($value->id);
                $todoListTask->delete();
            }
        }
        return redirect()->route('listTasks', $id);
    }

    public function destroy($idToDo, $id){
        $todoListsTask = TodoListsTasks::find($id);
        $todoListsTask->delete();
        return redirect()->route('listTasks', $idToDo);
    }
}
