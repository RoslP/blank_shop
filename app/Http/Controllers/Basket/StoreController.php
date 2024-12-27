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
        $data = Product::with(['category', 'images'])->where('id', '=', $request->validated('data'))->first();
        $product = [
                'id' => $data->id,
                'name' => $data->name,
                'price' => $data->price,
                'image' => $data->images[0]->path ?? 'https://yandex-images.clstorage.net/fAy9R9331/e27e60KDZu/RSQm5RzWZotAmOzItbpi8yT86vYP7ZfhJgY79TknENiIuyxUpikREdxwgrb8l8ZtvDzHrBX7qH2juOShRCosOwd2ZLFbiCGLRYynwvmgbuMxsPe1Ff_P7RA9R4EdTWa6-ctcK-xxGxCPPsjyuv-hfcpciahMuoISy5eBnVJGTGdgAT_pAOEwjnCZqtCSllfZBrTS6wili5MFIFWKLUNmj_bAXwH6QxYfvgiI9ZXBihbvf4iYVpqOOcuAuJRNYl52SyAk0ALWBYR1srjApaRVxDe4_sE_m4yPOS9ukxVhUYrc_l8P1mIGH5wVkfejwok03EWmiEakqR3bl52PQ3B9WEYnJPUi_SGjTIWE25uGR-IQk_HrArqNqDUvYYwcZkq98sZlF-JAGwWhHqLzosyXGOxsgYFWhY4x2JynnHticF9kCCD3AOAFgl6cgeOioW3ZEJXz6g6pqpomBFGVGF5AuNPFUgrBRx4dgTyo-rXQizPCX7aeYJ2kAsORl6hcZV11Ui8r1gfjL4pRkY_ZvqdOwRu789Q2ho2aIyZhqBtgY6zX1kAS8V0kIYINj-Oc7ZsVx02qr1ekuR3iobqdYm10Q1goOMcp6x2nSoWKybW1X_MukMLpA4y9lQAgYqwJVFuO0vVRFMFkGwScMovrgfSLBOlLhZtrubU53ZCXtEp1SH1cEjzJBPAagmmNlNCBk2PQEJvK3DGptq87EnKVJ1NRnsjFWCf0dhk2vSSNwan3lhbIeqiYZ62iOfmVoJpZUlZDXTUE_Q3xMYFympbUvqRu9DO65cUylqm3PSRzkQpBTrnX9UwX7XIHAboslNW7yrc4316Rq26GqBrUrL6MbUJbY2cNMdIJ8z2-famT-b2tQvw0kML7H42vnCsHbboNR16E2-t-JvJlMhmOIZL6oM6HD-12m51vra86z521h0lJcX5wMjfqLNEKv3CPhvmAlUjlBpfHwgyOlZEZMXG2C3c',
                'quantity'=>1
        ];
        return $product;
    }
}
