@extends('layouts.welcome')

@section('content')
    <!-- Подключаем Lightbox CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.3/css/lightbox.min.css" rel="stylesheet">

    <!-- Подключаем Lightbox JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.3/js/lightbox.min.js"></script>

    <div class="container">
        @php
            $categories =[];
        @endphp
        <div class="category-block">Товар входит в категории:
            <i>
                @foreach ($product->category as $category)
                    @if (!in_array($category->title, $categories))
                        @php
                            $categories[] = $category->title;
                        @endphp
                        {{ $category->title }}
                    @endif
                @endforeach
            </i>
        </div>
        <div class="product-gallery">
            <div class="gallery">
                @if($product->images->first())
                    @foreach ($product->images as $image)
                        <a href="{{ $image->path }}" data-lightbox="product-gallery" data-title="Product Image">
                            <img src="{{ $image->path }}" alt="Product Image" class="gallery-thumbnail">
                        </a>
                    @endforeach
                @endif
            </div>
        </div>
        <div class="info-card">
            <b class="b">{{ $product->name }}</b>
            <p>{{ $product->description }}</p>
            <div class="row">
                <button onclick="getIdFunction({{$product->id}})" class="purchase-button w-auto">В корзину</button>
                <a class="a-quantity w-auto">Осталось в наличии: {{$product->quantity}}</a>
            </div>
        </div>
    </div>
    <style>
        .info-card {
            display: inline-block; /* Подстраиваем ширину под содержимое */
            padding: 1%;
            border: 2px solid #007bff;
            background-color: #f0f0f0;
            border-radius: 8px;
        }
        .info-card p {
            margin: 0;
            width: 100%;
            max-width: 500px;
        }
        .row {
            margin-left: 0.1%;
            margin-bottom: 3%;
        }

        .category-block {
            margin-top: 3%;
        }

        .a-quantity {
            margin-top: 1%;
            display: flex;
            align-items: center;
        }

        .purchase-button {
            margin-top: 1%;
            background-color: #007bff;
            color: white;
            font-size: 16px;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .purchase-button:hover {
            background-color: #0056b3;
        }

        .purchase-button:active {
            transform: scale(0.98);
        }

        .lightbox img {
            width: 100%;
            height: auto;
        }

        .gallery {
            margin-top: 2%;
            margin-bottom: 2%;
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
        }

        .gallery-thumbnail {
            width: 150px;
            height: 150px;
            object-fit: cover;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
    </style>
    <script>
        function getIdFunction(id) {
            axios.post('/api/store', {data: id})
                .then(res => {
                        if (res.status === 200) {
                            let products = JSON.parse(sessionStorage.getItem('products'))

                            if (products !== null && products[res.data.id]) {
                                products[res.data.id]['quantity']++;
                                sessionStorage.setItem('products', JSON.stringify(products))


                            } else {
                                let items = JSON.parse(sessionStorage.getItem('products')) || {};
                                let product = {...items, [res.data.id]: res.data}
                                sessionStorage.setItem('products', JSON.stringify(product))
                            }
                            location.reload()
                        }
                    }
                )
        }
    </script>
@endsection

