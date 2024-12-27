@extends('layouts.welcome')
@section('content')



    <div id="container123" class="container123">

    </div>

    <div class="cart-container" id="cart-container">

    </div>

    <script>

        const cartItems = JSON.parse(sessionStorage.getItem('products')) || [];

        const cartContainer = document.getElementById('cart-container');


        function createCartItem(item) {

            const cartItem = document.createElement('div');
            cartItem.classList.add('cart-item');


            const cartItemImage = document.createElement('img');
            cartItemImage.classList.add('cart-item-image');
            cartItemImage.src = item.image;
            cartItemImage.alt = item.name;


            const cartItemDetails = document.createElement('div');
            cartItemDetails.classList.add('cart-item-details');


            const cartItemTitle = document.createElement('h3');
            cartItemTitle.classList.add('cart-item-title');
            cartItemTitle.textContent = item.name;


            const cartItemPrice = document.createElement('div');
            cartItemPrice.classList.add('cart-item-price');
            cartItemPrice.textContent = `${item.price}`;


            const cartItemQuantity = document.createElement('div');
            cartItemQuantity.classList.add('cart-item-quantity');
            cartItemQuantity.textContent = `Колличество: ${item.quantity}`;

            cartItemDetails.appendChild(cartItemTitle);
            cartItemDetails.appendChild(cartItemPrice);
            cartItemDetails.appendChild(cartItemQuantity);
            cartItem.appendChild(cartItemImage);
            cartItem.appendChild(cartItemDetails);


            cartContainer.appendChild(cartItem);
        }

        Object.values(cartItems).forEach(item => {
            createCartItem(item);
        });

        let count123 = 0
        let card123 = JSON.parse(sessionStorage.getItem('products'))
        Object.values(card123).forEach(item => {
            count123 += item.price * item.quantity
        })
        let cardAmountElement123 = document.getElementById('container123');

        cardAmountElement123.innerText = `Общая сумма заказа ${count123}`;
    </script>

    <style>
        .cart-item-image {
            max-width: 200px;
            max-height: 150px;
        }
        .container123{
            padding-top: 1%;
            padding-bottom: 1%;
        }

    </style>
@endsection

