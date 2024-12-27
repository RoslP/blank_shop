@section('category')
    <div class="container">
        <div class="row main-row-category">
            <div class="w-auto"><a href="{{ route('category',['id'=>1]) }}">Электроника</a></div>
            <div class="w-auto"><a href="{{ route('category',['id'=>3]) }}">Мебель</a></div>
            <div class="w-auto"><a href="{{ route('category',['id'=>2]) }}">Одежда</a></div>
            <div class="w-auto"><a href="{{ route('category',['id'=>6]) }}">Обувь</a></div>
            <div class="w-auto"><a href="{{ route('category',['id'=>4]) }}">Билеты</a></div>
            <div class="w-auto"><a href="{{ route('category',['id'=>7]) }}">Женские товары</a></div>
            <div class="w-auto"><a href="{{ route('category',['id'=>5]) }}">Детские товары</a></div>
        </div>
    </div>
    <style>
        .main-row-category{
            padding-left: 12%;
            background-color: #1a202c;
        }
        .main-row-category div {
            color: #cccccc;
            font-size: 24px;
            border: 10px solid  #1a202c;
        }
        .main-row-category div:hover{
          background-color: #edf2f7;
            color: #1a202c;
            border: 5px solid #1a202c;
        }
    </style>
@endsection

