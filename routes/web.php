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
Route::get('/register', [\App\Http\Controllers\TodoListsController::class, 'store'])->name('register');
Route::get('/{id}', [\App\Http\Controllers\TodoListsController::class, 'list'])->name('edit');
Route::get('/delete/{id}', [\App\Http\Controllers\TodoListsController::class, 'list'])->name('delete');
Route::get('/listTasks/{id}', [\App\Http\Controllers\TodoListsController::class, 'listTasks'])->name('listTasks');
Route::get('/listTasks/{id}/{data}', [\App\Http\Controllers\TodoListsController::class, 'listTasks'])->name('listTasks');
