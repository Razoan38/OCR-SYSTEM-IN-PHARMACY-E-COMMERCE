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
use Darryldecode\Cart\Cart;
 use Illuminate\Support\Facades\Mail;
 use App\Mail\ContactFormMail;
 use App\Mail\ContactFormSubmission;

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


    public function sendMessage(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'message' => 'required|string',
        ]);

        $data = [
            'name' => $request->input('name'),
            'email' => $request->input('email'),
            'message' => $request->input('message'),
        ];

        Mail::to('razoan38@gmail.com')->send(new ContactFormMail($data['name'], $data['email'], $data['message']));

        return redirect()->back()->with('success', 'Message sent successfully!');
    }
    
    

}
