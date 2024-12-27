<?php

namespace App\Http\Controllers\Basket;

use App\Http\Controllers\Controller;
use App\Http\Requests\Product\GetSelfProductRequest;
use App\Models\Product;
use Illuminate\Http\Request;

class StoreController extends Controller
{
    public function __invoke(GetSelfProductRequest $request)
    {
         $data= Product::with(['category','images'])->where('id','=',$request->validated('data'))->first();
         $basket = session()->get($data->id,[]);
         if(!empty($basket)){
             return $basket;
             $basket->quantity++;
             session()->put($basket);
         }
         else{
             $session = [
                 $data->id =>[
                     'name'=>$data->name,
                     'price'=>$data->price,
                     'quantity'=>1,
                     'images'=>$data->images[0]['path']
                 ]
             ];
             session()->put($session);
         }


         return session()->all();
    }
}
