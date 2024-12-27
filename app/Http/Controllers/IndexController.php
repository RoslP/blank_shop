<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class IndexController extends Controller
{
    public function index()
    {

        $products =Product::with(['category','images'])->orderBy('price')->take(10)->get();
        return view('pages.index.index',compact('products'));
    }
}
