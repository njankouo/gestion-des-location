<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Livewire\Utilisateurs;
use Illuminate\Support\Facades\Auth;
use App\Providers\AuthServiceProvider;
use App\Http\Controllers\UserController;
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

Route::get("livewire/utilisateurs/create",[HomeController::class,"creation"])->name("form.utilisateurs");

Route::get("index",[HomeController::class]);
Auth::routes();

Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

// Le groupe des routes relatives aux administrateurs uniquement
Route::group([
    "middleware" => ["auth", "auth.admin"],
    'as' => 'admin.'
], function(){

    Route::group([
        "prefix" => "habilitations",
        'as' => 'habilitations.'
    ], function(){

        Route::get("/utilisateurs",Utilisateurs::class)->name("users.index");
        

    }); 
});