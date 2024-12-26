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
    @php
        $categories = [];
    @endphp
    <div class="container">
        <div class="row">
            @foreach($products as $product)
                <!-- Карточка товара 1 -->
                <div class="product-item" style="background: #edf2f7">
                    <a href="{{ route('product.show', ['id' => $product->id]) }}">
                        <img src="https://html5book.ru/wp-content/uploads/2015/10/black-dress.jpg">
                        <div class="product-list">
                            <h3>{{$product->name}}</h3>
                            <span class="price">{{$product->price}} руб</span>
                            <div>Товар входит в категории:
                                @foreach ($product->category as $category)
                                    @if (!in_array($category->title, $categories))
                                        @php
                                            $categories[] = $category->title;
                                        @endphp
                                        {{ $category->title }}
                                    @endif
                                @endforeach
                            </div>
                        </div>
                    <a href="#" class="button" onclick="addToCart(event)">В корзину</a>
                </div>
            @endforeach
        </div>
    </div>

@endsection

