<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class password_resetcontroller extends Controller
{
    public function password_reset()
    { 
        return view('forgot-password');
    }
}

