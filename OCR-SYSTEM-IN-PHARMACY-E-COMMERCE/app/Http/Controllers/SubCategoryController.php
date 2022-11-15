<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\SubCategory;
use Illuminate\Http\Request;

class SubCategoryController extends Controller
{
    private $categories;
    private $subCategories;

    public function index()
    {
        $this->categories = Category::all();
        return view('admin.sub-category.index', ['categories' => $this->categories]);
    }

    public function create(Request $request)
    {
        $request->validate([
            'name' => 'required|unique:sub_categories'
        ]);

        SubCategory::newSubCategory($request);
        return redirect()->back()->with('message', 'Sub Category info create successfully.');
    }

    public function manage()
    {
        $this->subCategories = SubCategory::all();
        return view('admin.sub-category.manage', ['subCategories' => $this->subCategories]);
    }
}
