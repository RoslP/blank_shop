<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class IndexController extends Controller
{
    public function index()
    {

        $products =Product::with('category')->get();
        return view('pages.index.index',compact('products'));
    }
}