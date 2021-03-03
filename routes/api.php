<?php

use App\Http\Controllers\Auth\LoginController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;


// ==============================================================
// Authentication Section
// ==============================================================
Route::group(['middleware' => 'api', 'prefix' => 'auth'], function () {

    Route::post('/login', [LoginController::class, 'login']);
    Route::post('/logout', [LoginController::class, 'logout']);

});

Route::group(['middleware' => 'api'], function () {
    // ==============================================================
    // Product Section
    // ==============================================================
    Route::middleware('throttle:product')->post('/products/{product}', [ProductController::class, 'update'])->name('products.update');
    Route::middleware('throttle:product')->resource('/products', ProductController::class, ['except' => ['create', 'edit']]);


});





