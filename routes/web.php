<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\homecontroller;
use App\Http\Controllers\ProductController;
use GuzzleHttp\Middleware;
use App\Http\Controllers\usercontroller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use App\Http\Controllers\DetailController;
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

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});





Route::get('/register', 'App\Http\Controllers\registercontroller@register')->name('register');
Route::get('/user', 'App\Http\Controllers\usercontroller@user')->name('user');
Route::get('/forgot password', 'App\Http\Controllers\password_resetcontroller@password_reset')->name('forgot-password');
//Route::get('/', 'App\Http\Controllers\registercontroller@RegisterController')->name('registercontroller');
Route::get('/login', 'App\Http\Controllers\logincontroller@login')->name('login');
Route::get('/products', 'App\Http\Controllers\ProductController@index')->name('index');
Route::get('/user cart', 'App\Http\Controllers\cartcontroller@cart')->name('cart');
Route::get("/detail/{id}",[DetailController::class,'detail']);
Route::group(['middleware' => ['auth', 'admin']], function () {
    Route::get('/', function () {
        return view('admin.admin-home');
    });
});
