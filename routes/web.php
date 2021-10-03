<?php

use App\Http\Controllers\PostController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PokemonController;
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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/posts', [PostController::class, 'index']); 
Route::put('/posts/{id}', [PostController::class, 'update']);

Route::get('/pokemons', [PokemonController::class, 'index']); 
Route::put('/pokemons/{id}', [PokemonController::class, 'update']);
Route::post('/pokemons', [PokemonController::class, 'create']);
Route::get('/pokemons/{id}', [PokemonController::class, 'destroy']);
Route::delete('/pokemons/{id}', [PokemonController::class, 'destroy']);