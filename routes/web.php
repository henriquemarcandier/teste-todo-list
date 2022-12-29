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
Route::get('/listTasks/{id}', [\App\Http\Controllers\TodoListsTasksController::class, 'list'])->name('listTasks');
Route::get('/listTasks/{id}/{data}', [\App\Http\Controllers\TodoListsTasksController::class, 'list'])->name('listTasks');
