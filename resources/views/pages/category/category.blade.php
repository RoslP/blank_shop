@extends('layouts.welcome')
@section('content')
    <!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Карточка товара</title>
    <style>
        /* Стиль для карточки товара */
        .product-item {
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
            margin-top: 10px;
        }

        .button:hover {
            background-color: #45a049;
        }

        /* Модальное окно */
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.5);
            padding-top: 60px;
        }

        .modal-content {
            background-color: #fff;
            margin: 5% auto;
            padding: 20px;
            border-radius: 10px;
            width: 80%;
            max-width: 500px;
        }

        .close {
            color: #aaa;
            font-size: 28px;
            font-weight: bold;
            position: absolute;
            top: 10px;
            right: 15px;
        }

        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }
    </style>
</head>
<body>

<!-- Карточка товара 1 -->
<div class="d-flex justify-content-center align-items-center">
    <div class="product-item" style="background: #edf2f7">
        <div onclick="openModal('product1')">
            <img src="https://html5book.ru/wp-content/uploads/2015/10/black-dress.jpg" alt="Черное платье">
            <div class="product-list">
                <h3>Маленькое черное платье</h3>
                <span class="price">₽ 1999</span>
            </div>
        </div>
        <a href="#" class="button" onclick="addToCart(event)">В корзину</a>
    </div>
</div>

<script>
    // Открытие модального окна
    function openModal(productId) {
        document.getElementById("product-modal").style.display = "block";
        if (productId === 'product1') {
            document.getElementById("modal-details").innerHTML = `
                    <h3>Маленькое черное платье</h3>
                    <img src="https://html5book.ru/wp-content/uploads/2015/10/black-dress.jpg" alt="Черное платье" style="width:100%; max-width: 300px;">
                    <p>Классическое маленькое черное платье, идеальное для любого случая. Комфортная ткань и стильный фасон.</p>
                    <p><strong>Цена:</strong> ₽ 1999</p>
                `;
        }
    }

    // Функция для кнопки "В корзину"
    function addToCart(event) {
        event.preventDefault();  // Отменяем стандартное поведение (переход по ссылке)
    }
</script>

</body>
</html>

@endsection

