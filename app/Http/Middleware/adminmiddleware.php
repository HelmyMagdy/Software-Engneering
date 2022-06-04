<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class adminmiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {

    /*Has a function called handle having parameters (Closure $next) and
    (Request $request), the first one is used to create an Anonymous functions, 
    for example we are using middleware for cheaking wheather the user is admin or not,
    so the public function handle the following:*/
    
        if (Auth::user()->usertype == '1') {
            return $next($request);
        } else {
            return redirect('/user');
        }
    }
}
