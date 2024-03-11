<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\Category;
use App\Models\Product;
use App\Models\SubCategory;
use App\Models\SubImage;
use App\Models\Unit;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    private $categories;
    private $subCategories;
    private $brands;
    private $units;
    private $products;
    private $product;

    public function index()
    {
        return view('admin.product.index', [
            'categories'    => Category::all(),
            'subCategories' => SubCategory::all(),
            'brands'        => Brand::all(),
            'units'         => Unit::all(),
        ]);
    }

    public function getSubCategory()
    {
        $categoryId     = $_GET['id'];
        $subCategories  = SubCategory::where('category_id', $categoryId)->get();
        return response()->json($subCategories);
    }

    public function create(Request $request)
    {
        $request->validate([
            'category_id'       => 'required',
            'sub_category_id'   => 'required',
            'brand_id'          => 'required',
            'unit_id'           => 'required',
            'name'              => 'required|unique:products,name',
            'code'              => 'required|unique:products,code',
            'regular_price'     => 'required',
            'selling_price'     => 'required',
            'image'             => 'required|image',
        ], [
            'category_id.required' => 'Vai category id ta den.'
        ]);
        //return $request->all();

        $this->product = Product::newProduct($request);
        SubImage::newSubImage($this->product, $request->file('sub_image'));
        return redirect()->back()->with('message', 'Product info create successfully.');
    }

    public function manage()
    {
        $this->products = Product::all();
        return view('admin.product.manage', ['products' => $this->products]);
    }

    public function detail($id)
    {
        $this->product = Product::find($id);
        return view('admin.product.detail', ['product' => $this->product]);
    }

    public function edit($id)
    {
        $this->product = Product::find($id);
        return view('admin.product.edit', [
            'product'       => $this->product,
            'categories'    => Category::all(),
            'subCategories' => SubCategory::all(),
            'brands'        => Brand::all(),
            'units'         => Unit::all(),
        ]);
    }

    public function update(Request $request, $id)
    {
        $this->product = Product::updateProduct($request, $id);

        if ($request->file('sub_image'))
        {
            SubImage::updateSubImage($this->product, $request->file('sub_image'));
        }
        return redirect('/manage-product')->with('message', 'Product info update successfully.');
    }

    public function delete($id)
    {
        Product::deleteProduct($id);
        SubImage::deleteSubImage($id);
        return redirect('/manage-product')->with('message', 'Product info delete successfully.');
    }

   
}
