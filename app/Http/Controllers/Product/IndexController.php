<?php

namespace App\Http\Controllers\Product;

use App\Http\Controllers\Controller;
use App\Http\Requests\Product\GetSelfProductRequest;
use App\Models\Product;
use Illuminate\Http\Request;

class IndexController extends Controller
{
    public function __invoke($id)
    {
        $product = Product::with('category')->where('id','=' ,$id)->first();
        return view('pages.product.self', compact('product'));
    }
}
