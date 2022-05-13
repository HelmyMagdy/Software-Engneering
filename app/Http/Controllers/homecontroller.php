<?php

namespace App\Http\Controllers;
class homecontroller extends Controller
{
    public function home()
    { 
        return view('auth/register');
    }
}
