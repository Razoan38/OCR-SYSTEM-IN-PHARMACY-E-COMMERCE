<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use App\Models\SubCategory;
use Illuminate\Http\Request;

class APIController extends Controller
{
    //
    private $products, $categories;

    public function getAllTrendingProduct()
    {
        $this->products = Product::where('status', 1)->orderBy('id', 'desc')->take('8')->get(['id', 'name', 'image', 'selling_price']);
        foreach ($this->products as $product)
        {
            $product->image = asset($product->image);
        }
        return response()->json($this->products);
    }

    public function getAllCategories()
    {
        $this->categories = Category::all();
        foreach ($this->categories as $category)
        {
            $category->sub_category = SubCategory::where('category_id', $category->id)->get();
        }
        return response()->json($this->categories);
    }

    public function getProductByCategory($id)
    {
        $this->products = Product::where('status', 1)->where('category_id', $id)->orderBy('id', 'desc')->take('8')->get(['id', 'name', 'image', 'selling_price']);
        foreach ($this->products as $product)
        {
            $product->image = asset($product->image);
        }
        return response()->json($this->products);
    }
}
