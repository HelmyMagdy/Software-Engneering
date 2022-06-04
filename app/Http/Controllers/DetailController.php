<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
class DetailController extends Controller
{
    public function detail($id)
    {
        $data = Product::find($id);
        return view('pages.details' , ['product' =>$data]);
    }

    
}
