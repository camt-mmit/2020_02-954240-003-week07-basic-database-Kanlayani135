<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Product : - @yield('title')</title>
        <link rel="stylesheet" type="text/css" href="{{ asset('css/style.css') }}"/>
    </head>
    <body>
        <header>
        <h1>  @yield('title') </h1>
        <nav>
            <ul>
            <li><a href="/product">Product</a></li>
            <li><a href="/shop">Shop</a></li>
            </ul>
        </nav>
    </header>
    <main>
        @yield('content')
    </main>
    </body><br />
    <footer>
    &#xA9 Copyright Week-07, 2020 Kanlayanee's 
    </footer>
</html>