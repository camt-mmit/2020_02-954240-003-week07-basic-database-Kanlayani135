<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;

class ProductController extends Controller
{
    private $title = 'Product';
    function list() {
    return view('product-list', [
    'title' => "{$this->title} : List",
    'products' => Product::orderBy('code')->get(),
    ]);
    }

    function show($productCode) {
        $product = Product
        ::where('code', $productCode)
        ->firstOrFail();
        return view('product-view', [
        'title' => "{$this->title} : View",
        'product' => $product,
        ]);
        }
}

