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
Route::get('/listTasks/{id}', [\App\Http\Controllers\TodoListsController::class, 'listTasks'])->name('listTasks');
