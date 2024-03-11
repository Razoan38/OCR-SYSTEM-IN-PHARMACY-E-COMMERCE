<?php

namespace App\Http\Controllers\website;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;
use App\Http\Controllers\BrandController;
use App\Models\Brand;
use App\Models\Ocr;
use App\Models\SubCategory;

class HomeController extends Controller
{
    private $categories;
    private $subCategories;
    private $products;
    private $brands;
    private $ocrs;

    
    public function index()
    { 
        $this->brands = Brand::all();
        $this->products = Product::orderBy('id', 'desc')->take(8)->get(['id', 'name', 'selling_price', 'image', 'category_id']);
        return view('website.home.home', [
            'products'   => $this->products ,
            'brands'   => $this->brands ,
        ]);
    }

    public function category($id)
    {  
        $this->brands = Brand::all();
        $this->products = Product::where('category_id', $id)->orderBy('id', 'desc')->get();
        return view('website.category.category',[
            'products' => $this->products,
            'brands' => Brand::all()
        ]);
    }

    public function detail($id)
    {
      
        return view('website.product.detail', 
        [
            'product' => Product::find($id),
            
    ]);
    }

    public function contact()
    {
        return view('website.contact.contact');
    }

    public function allProducts()
    {    
          $brands = Brand::all();
          $categories = Category::all();
          $products = Product::all();
        return view('website.product.allProduct', compact('products','brands','categories',));
    }
    public function aboutUs()
    {
        return view('website.about.about');
    }

    public function search(Request $request)
    { 
       $products =Product::orderBy('id','desc')->where('name','LIKE','%'.$request->products.'%');

       if($request->category!="all") $products->where('category_id',$request->category);
       $products = $products->get();
       $categories = Category::all();
       $subCategories = SubCategory::all();
       $brands = Brand::all();
 
       return view('website.category.category',compact('products','categories','subCategories','brands'));
    }

    public function sort(Request $request)
    {
        $sortBy = $request->input('sort_by');
    
        // Add your sorting logic here based on the selected option
        // Example: Let's assume your Product model has a column 'popularity'
        $sortedProducts = Product::orderBy($sortBy, 'asc')->get();
    
        return response()->json($sortedProducts);
    }
    
}
