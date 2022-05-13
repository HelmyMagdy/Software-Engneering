<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\homecontroller;
use GuzzleHttp\Middleware;
use App\Http\Controllers\usercontroller;
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
    return view('auth.register');
});



Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});


Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/index', function () {
        return view('index');
    })->name('index');
});


Route::get('/', 'App\Http\Controllers\homecontroller@home')->name('home');
Route::get('/user', 'App\Http\Controllers\usercontroller@user')->name('user');
Route::get('/forgot-password', 'App\Http\Controllers\password_resetcontroller@password_reset')->name('forgot-password');



Route::group(['middleware' => ['auth', 'admin']], function () {
    Route::get('/redirect', function () {
        return view('admin.admin-home');
    });
});




