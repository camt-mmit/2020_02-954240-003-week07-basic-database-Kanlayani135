<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Shop;

class ShopController extends Controller
{
    private $title = 'Shop';
    function list() {
    return view('shop-list', [
    'title' => "{$this->title} : List",
    'shops' => Shop::orderBy('code')->get(),
    ]);
    }

    function show($shopCode) {
        $shop =Shop
        ::where('code', $shopCode)
        ->firstOrFail();
        return view('shop-view', [
        'title' => "{$this->title} : View",
        'shop' => $shop,
        ]);
        }
}
