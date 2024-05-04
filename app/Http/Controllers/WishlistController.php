<?php

namespace App\Http\Controllers;

use App\Models\Wishlist;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class WishlistController extends Controller
{

    private $product;

    public function index ()
    {
        $wishlist = Wishlist::where('user_id', Auth::id())->get();
        return view('website.cart.wishlist' , compact('wishlist'));
    }

    public function add( Request $request, $id)
    {
        $product = Wishlist::find($id);
        Wishlist::add([
            'id'        => $this->product->id,
           
        ]);
        return redirect('/wishlist');
    }
    // public function addToWishlist(Request $request, $productId)
    // {
    //     // Add logic to add the product to the user's wishlist
    //     $user = $request->user();
    //     $user->wishlist()->attach($productId);
    
    //     return response()->json(['success' => true]);
    // }
    
    // public function removeFromWishlist(Request $request, $productId)
    // {
    //     // Add logic to remove the product from the user's wishlist
    //     $user = $request->user();
    //     $user->wishlist()->detach($productId);
    
    //     return response()->json(['success' => true]);
    // }

    // public function getTotalItems(Request $request)
    // {
    //     $user = $request->user();
    //     $totalItems = $user ? $user->wishlist()->count() : 0;

    //     return response()->json(['totalItems' => $totalItems]);
    // }
    
}
