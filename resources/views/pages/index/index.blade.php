@extends('layouts.welcome')
@section('content')
    <style>
        /* Стиль для карточки товара */
        .product-item {
            height: auto; /* Фиксированная высота карточки */
            width: 250px;
            border: 1px solid #ccc;
            border-radius: 8px;
            overflow: hidden;
            cursor: pointer;
            transition: transform 0.3s ease;
            margin: 20px;
            display: inline-block;
            text-align: center;
        }

        .product-item:hover {
            transform: scale(1.05);
        }

        .product-item img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .product-list h3 {
            width: 200px;
            height: 100px;
            max-height: 100%;
            max-width: 100%;
        }

        .product-list {
            padding: 10px;
        }

        .product-list h3 {
            font-size: 18px;
            font-weight: bold;
            margin: 0;
        }

        .price {
            color: green;
            font-size: 16px;
        }

        .button {
            display: inline-block;
            padding: 8px 15px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
        }

        .button:hover {
            background-color: #45a049;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
        }

        .row {
            display: flex; /* Включаем flexbox */
            flex-wrap: wrap; /* Позволяет переносить элементы на новую строку */
            gap: 15px; /* Расстояние между карточками */
        }

        /* Адаптивность для мобильных устройств */
        @media (max-width: 768px) {
            .row {
                flex-direction: column; /* На мобильных устройствах карточки будут идти по вертикали */
            }

            .product-item {
                width: 60%; /* Карточка будет занимать всю ширину */
                margin-left: 20%;
            }
        }
    </style>
    <div class="container">
        <div class="row" style="margin-top: 4%">
            @foreach($products as $product)
                <div class="product-item" style="background: #edf2f7">
                    <a href="{{ route('product.show', ['id' => $product->id]) }}">
                        @if ($product->images->first())
                            <img src="{{$product->images->first()->path}}" alt="Category Image">
                        @else
                            <img
                                src="https://yandex-images.clstorage.net/fAy9R9331/e27e60KDZu/RSQm5RzWZotAmOzItbpi8yT86vYP7ZfhJgY79TknENiIuyxUpikREdxwgrb8l8ZtvDzHrBX7qH2juOShRCosOwd2ZLFbiCGLRYynwvmgbuMxsPe1Ff_P7RA9R4EdTWa6-ctcK-xxGxCPPsjyuv-hfcpciahMuoISy5eBnVJGTGdgAT_pAOEwjnCZqtCSllfZBrTS6wili5MFIFWKLUNmj_bAXwH6QxYfvgiI9ZXBihbvf4iYVpqOOcuAuJRNYl52SyAk0ALWBYR1srjApaRVxDe4_sE_m4yPOS9ukxVhUYrc_l8P1mIGH5wVkfejwok03EWmiEakqR3bl52PQ3B9WEYnJPUi_SGjTIWE25uGR-IQk_HrArqNqDUvYYwcZkq98sZlF-JAGwWhHqLzosyXGOxsgYFWhY4x2JynnHticF9kCCD3AOAFgl6cgeOioW3ZEJXz6g6pqpomBFGVGF5AuNPFUgrBRx4dgTyo-rXQizPCX7aeYJ2kAsORl6hcZV11Ui8r1gfjL4pRkY_ZvqdOwRu789Q2ho2aIyZhqBtgY6zX1kAS8V0kIYINj-Oc7ZsVx02qr1ekuR3iobqdYm10Q1goOMcp6x2nSoWKybW1X_MukMLpA4y9lQAgYqwJVFuO0vVRFMFkGwScMovrgfSLBOlLhZtrubU53ZCXtEp1SH1cEjzJBPAagmmNlNCBk2PQEJvK3DGptq87EnKVJ1NRnsjFWCf0dhk2vSSNwan3lhbIeqiYZ62iOfmVoJpZUlZDXTUE_Q3xMYFympbUvqRu9DO65cUylqm3PSRzkQpBTrnX9UwX7XIHAboslNW7yrc4316Rq26GqBrUrL6MbUJbY2cNMdIJ8z2-famT-b2tQvw0kML7H42vnCsHbboNR16E2-t-JvJlMhmOIZL6oM6HD-12m51vra86z521h0lJcX5wMjfqLNEKv3CPhvmAlUjlBpfHwgyOlZEZMXG2C3c"
                                alt="Default Image">
                        @endif
                        <div class="product-list">
                            <h3>{{$product->name}}</h3>
                            <span class="price">{{$product->price}} руб</span>
                        </div>
                        <a class="button" onclick="getIdFunction({{$product->id}})">В корзину</a>
                </div>
            @endforeach
        </div>
    </div>

    <script>
        function getIdFunction(id) {
            axios.post('/api/store', {data: id})
                .then(res => {
                    console.log(res.data)
                    // if (res.status === 200) {
                        // location.reload();
                    // }
                })
        }

    </script>
@endsection

