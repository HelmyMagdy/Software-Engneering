<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
class cartcontroller extends Controller
{
    public function cart(){
        if (Auth::check()) {
            return view('pages.cart');
        }
        else{
            return view('404.404');
        }
    }
}
