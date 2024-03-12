<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class WishlistController extends Controller
{
    public function addToWishlist(Request $request, $productId)
    {
        // Add logic to add the product to the user's wishlist
        $user = $request->user();
        $user->wishlist()->attach($productId);
    
        return response()->json(['success' => true]);
    }
    
    public function removeFromWishlist(Request $request, $productId)
    {
        // Add logic to remove the product from the user's wishlist
        $user = $request->user();
        $user->wishlist()->detach($productId);
    
        return response()->json(['success' => true]);
    }

    public function getTotalItems(Request $request)
    {
        $user = $request->user();
        $totalItems = $user ? $user->wishlist()->count() : 0;

        return response()->json(['totalItems' => $totalItems]);
    }
    
}
