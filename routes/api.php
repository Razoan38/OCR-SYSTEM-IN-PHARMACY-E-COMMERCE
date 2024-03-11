<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\APIController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/get-trending-product', [APIController::class, 'getAllTrendingProduct']);
Route::get('/get-all-categories', [APIController::class, 'getAllCategories']);
Route::get('/get-product-by-category/{id}', [APIController::class, 'getProductByCategory']);
