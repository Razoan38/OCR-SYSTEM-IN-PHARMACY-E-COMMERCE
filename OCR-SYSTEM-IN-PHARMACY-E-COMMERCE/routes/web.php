<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\website\HomeController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\SubCategoryController;
use App\Http\Controllers\BrandController;
use App\Http\Controllers\UnitController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\CheckoutController;
use App\Http\Controllers\CustomerAuthController;
use App\Http\Controllers\CustomerDashboardController;
use App\Http\Controllers\AdminOrderController;
use App\Http\Controllers\SslCommerzPaymentController;
use App\Http\Controllers\ImageController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('/', [HomeController::class, 'index'])->name('home');
Route::get('/category-product/{id}', [HomeController::class, 'category'])->name('category');
Route::get('/product-detail/{id}', [HomeController::class, 'detail'])->name('detail');
Route::get('/contact', [HomeController::class, 'contact'])->name('contact');
Route::get('/aboutUs', [HomeController::class, 'aboutUs'])->name('about');
Route::post('/add-to-cart/{id}', [CartController::class, 'index'])->name('add-to-cart');
Route::get('/show-cart', [CartController::class, 'show'])->name('show-cart');
Route::get('/remove-cart-product/{id}', [CartController::class, 'remove'])->name('remove-cart-product');
Route::post('/update-cart-product/{id}', [CartController::class, 'update'])->name('update-cart-product');
Route::get('/checkout', [CheckoutController::class, 'index'])->name('checkout');
Route::post('/new-order', [CheckoutController::class, 'newOrder'])->name('new-order');

Route::get('/complete-order', [CheckoutController::class, 'completeOrder'])->name('complete-order');

Route::get('/customer-logout', [CustomerAuthController::class, 'logout'])->name('customer-logout');
Route::get('/customer-login', [CustomerAuthController::class, 'login'])->name('customer-login');
Route::post('/customer-signin', [CustomerAuthController::class, 'signIn'])->name('customer-signin');

Route::get('/customer-register', [CustomerAuthController::class, 'register'])->name('customer-register');
Route::post('/new-customer', [CustomerAuthController::class, 'newCustomer'])->name('new-customer');
Route::get('/customer-dashboard', [CustomerDashboardController::class, 'index'])->name('customer-dashboard');
Route::get('/image', [ImageController::class, 'index'])->name('image');
Route::post('/image', [ImageController::class, 'upload'])->name('upload');

Route::middleware(['auth:sanctum', config('jetstream.auth_session'), 'verified'])->group(function () {

    Route::get('/dashboard',[DashboardController::class, 'index'])->name('dashboard');

    Route::get('/add-category', [CategoryController::class, 'index'])->name('category.add');
    Route::post('/new-category', [CategoryController::class, 'create'])->name('category.new');
    Route::get('/manage-category', [CategoryController::class, 'manage'])->name('category.manage');
    Route::get('/edit-category/{id}', [CategoryController::class, 'edit'])->name('category.edit');
    Route::post('/update-category/{id}', [CategoryController::class, 'update'])->name('category.update');
    Route::get('/delete-category/{id}', [CategoryController::class, 'delete'])->name('category.delete');

    Route::get('/add-sub-category', [SubCategoryController::class, 'index'])->name('sub-category.add');
    Route::post('/create-new-sub-category', [SubCategoryController::class, 'create'])->name('sub-category.new');
    Route::get('/manage-sub-category', [SubCategoryController::class, 'manage'])->name('sub-category.manage');

    Route::get('/add-brand', [BrandController::class, 'index'])->name('brand.add');
    Route::post('/new-brand', [BrandController::class, 'create'])->name('brand.new');
    Route::get('/manage-brand', [BrandController::class, 'manage'])->name('brand.manage');
    Route::get('/edit-brand/{id}', [BrandController::class, 'edit'])->name('brand.edit');
    Route::post('/update-brand/{id}', [BrandController::class, 'update'])->name('brand.update');
    Route::get('/delete-brand/{id}', [BrandController::class, 'delete'])->name('brand.delete');

    Route::get('/add-unit', [UnitController::class, 'index'])->name('unit.add');
    Route::post('/new-unit', [UnitController::class, 'create'])->name('unit.new');
    Route::get('/manage-unit', [UnitController::class, 'manage'])->name('unit.manage');
    Route::get('/edit-unit/{id}', [UnitController::class, 'edit'])->name('unit.edit');
    Route::post('/update-unit/{id}', [UnitController::class, 'update'])->name('unit.update');
    Route::get('/delete-unit/{id}', [UnitController::class, 'delete'])->name('unit.delete');

    Route::get('/add-product', [ProductController::class, 'index'])->name('product.add');
    Route::get('/get-sub-category', [ProductController::class, 'getSubCategory'])->name('product.get-sub-category');
    Route::post('/new-product', [ProductController::class, 'create'])->name('product.new');
    Route::get('/manage-product', [ProductController::class, 'manage'])->name('product.manage');
    Route::get('/detail-product/{id}', [ProductController::class, 'detail'])->name('product.detail');
    Route::get('/edit-product/{id}', [ProductController::class, 'edit'])->name('product.edit');
    Route::post('/update-product/{id}', [ProductController::class, 'update'])->name('product.update');
    Route::get('/delete-product/{id}', [ProductController::class, 'delete'])->name('product.delete');

    Route::get('/admin-manage-order', [AdminOrderController::class, 'index'])->name('admin-order.manage');
    Route::get('/admin-view-order-detail/{id}', [AdminOrderController::class, 'detail'])->name('admin-order.detail');
    Route::get('/admin-view-order-invoice/{id}', [AdminOrderController::class, 'viewInvoice'])->name('admin-order.view-invoice');
    Route::get('/admin-download-order-invoice/{id}', [AdminOrderController::class, 'downloadInvoice'])->name('admin-order.download-invoice');
    Route::get('/admin-edit-order/{id}', [AdminOrderController::class, 'edit'])->name('admin-order.edit');
    Route::post('/admin-update-order/{id}', [AdminOrderController::class, 'update'])->name('admin-order.update');
    Route::get('/admin-delete-order/{id}', [AdminOrderController::class, 'delete'])->name('admin-order.delete');

});


// SSLCOMMERZ Start
Route::get('/example1', [SslCommerzPaymentController::class, 'exampleEasyCheckout']);
Route::get('/example2', [SslCommerzPaymentController::class, 'exampleHostedCheckout']);

Route::post('/pay', [SslCommerzPaymentController::class, 'index']);
Route::post('/pay-via-ajax', [SslCommerzPaymentController::class, 'payViaAjax']);

Route::post('/success', [SslCommerzPaymentController::class, 'success']);
Route::post('/fail', [SslCommerzPaymentController::class, 'fail']);
Route::post('/cancel', [SslCommerzPaymentController::class, 'cancel']);

Route::post('/ipn', [SslCommerzPaymentController::class, 'ipn']);
//SSLCOMMERZ END
