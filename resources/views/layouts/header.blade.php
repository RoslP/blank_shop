@section('content_h')
<nav class="navbar navbar-expand-custom navbar-mainbg">
    <a class="navbar-brand navbar-logo" style="padding-left: 10%">entergo test</a>
    <button class="navbar-toggler" type="button" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <i class="fas fa-bars text-white"></i>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
            <div class="hori-selector"><div class="left"></div><div class="right"></div></div>
            <li class="nav-item abc228_index">
                <a class="nav-link" href={{ route('welcome')  }}><i class="fas fa-tachometer-alt"></i>Главная</a>
            </li>
            <li class="nav-item abc228_cat">
                <a class="nav-link" href="{{ route('category.index') }}"><i class="far fa-address-book"></i>Категории</a>
            </li>
            <li class="nav-item abc228_storage">
                <a class="nav-link" href={{ route('storage.index')  }}><i class="far fa-clone"></i>Корзина</a>
            </li>

        </ul>
    </div>
</nav>
@endsection
@section('scripts')
    <script>
        // ---------Responsive-navbar-active-animation-----------
        function test(){
            let a = 'abc228_index';
            if (window.location.pathname==='/')
            {
                a='abc228_index'
                $('li[class*="abc228_index"]').removeClass('abc228_index').addClass('active');

            }
            if (window.location.pathname==='/index')
            {
                a='abc228_cat'
                $('li[class*="abc228_cat"]').removeClass('abc228_cat').addClass('active');
            }
            if (window.location.pathname==='/storage')
            {
                a='abc228_storage'
                $('li[class*="abc228_storage"]').removeClass('abc228_storage').addClass('active');
            }
            var tabsNewAnim = $('#navbarSupportedContent');
            var activeItemNewAnim = tabsNewAnim.find('.active');
            var activeWidthNewAnimHeight = activeItemNewAnim.innerHeight();
            var activeWidthNewAnimWidth = activeItemNewAnim.innerWidth();
            var itemPosNewAnimTop = activeItemNewAnim.position();
            var itemPosNewAnimLeft = activeItemNewAnim.position();
            $(".hori-selector").css({
                "top":itemPosNewAnimTop.top + "px",
                "left":itemPosNewAnimLeft.left + "px",
                "height": activeWidthNewAnimHeight + "px",
                "width": activeWidthNewAnimWidth + "px"
            });
        }
        $(document).ready(function(){
            setTimeout(function(){ test(); });
        });
        $(window).on('resize', function(){
            setTimeout(function(){ test(); }, 500);
        });
        $(".navbar-toggler").click(function(){
            $(".navbar-collapse").slideToggle(300);
            setTimeout(function(){ test(); });
        });


    </script>
@endsection
