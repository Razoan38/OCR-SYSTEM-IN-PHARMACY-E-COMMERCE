<?php

namespace App\Http\Controllers\website;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    private $categories;
    private $products;

    public function index()
    {
        $this->products = Product::orderBy('id', 'desc')->take(8)->get(['id', 'name', 'selling_price', 'image', 'category_id']);
        return view('website.home.home', [
            'products'   => $this->products
        ]);
    }

    public function category($id)
    {
        $this->products = Product::where('category_id', $id)->orderBy('id', 'desc')->get();
        return view('website.category.category',[
            'products' => $this->products
        ]);
    }

    public function detail($id)
    {
        return view('website.product.detail', ['product' => Product::find($id)]);
    }

    public function contact()
    {
        return view('website.contact.contact');
    }

    public function aboutUs()
    {
        return view('website.about.about');
    }
}
