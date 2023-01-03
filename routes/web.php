<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [\App\Http\Controllers\TodoListsController::class, 'list'])->name('index');
Route::get('/register', [\App\Http\Controllers\TodoListsController::class, 'register'])->name('register');
Route::post('/store', [\App\Http\Controllers\TodoListsController::class, 'store'])->name('store');
Route::get('/{id}', [\App\Http\Controllers\TodoListsController::class, 'edit'])->name('edit');
Route::post('/update/{id}', [\App\Http\Controllers\TodoListsController::class, 'update'])->name('update');
Route::get('/delete/{id}', [\App\Http\Controllers\TodoListsController::class, 'destroy'])->name('delete');
Route::get('/listTasks/register/{id}', [\App\Http\Controllers\TodoListsTasksController::class, 'register'])->name('registerTasks');
Route::post('/listTasks/store', [\App\Http\Controllers\TodoListsTasksController::class, 'store'])->name('storeTask');
Route::get('/editTask/{idToDo}/{id}', [\App\Http\Controllers\TodoListsTasksController::class, 'edit'])->name('editTask');
Route::post('/listTasks/update', [\App\Http\Controllers\TodoListsTasksController::class, 'update'])->name('updateTask');
Route::get('/deleteTask/{idToDo}/{id}', [\App\Http\Controllers\TodoListsTasksController::class, 'destroy'])->name('deleteTask');
Route::get('/approveTasks/{id}/{idToDo}', [\App\Http\Controllers\TodoListsTasksController::class, 'approve'])->name('approveTasks');
Route::get('/desapproveTasks/{id}/{idToDo}', [\App\Http\Controllers\TodoListsTasksController::class, 'desapprove'])->name('desapproveTasks');
Route::get('/clearApproved/{id}', [\App\Http\Controllers\TodoListsTasksController::class, 'clearApproved'])->name('clearApproved');
Route::get('/executeVerification/{id}', [\App\Http\Controllers\TodoListsTasksController::class, 'executeVerification'])->name('executeVerification');
Route::get('/listTasks/{id}', [\App\Http\Controllers\TodoListsTasksController::class, 'list'])->name('listTasks');
Route::get('/listTasks/{id}/{data}', [\App\Http\Controllers\TodoListsTasksController::class, 'list'])->name('listTasks2');
