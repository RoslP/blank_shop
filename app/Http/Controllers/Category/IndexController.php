<?php

namespace App\Http\Controllers\Category;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class IndexController extends Controller
{
    public function __invoke($id)
    {
        $products = Product::whereHas('category', function ($query) use ($id){
            $query->where('categories.id', $id);
        })->with('category')->get();

        return view('pages.category.category', compact('products'));
    }
}
