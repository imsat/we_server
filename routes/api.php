<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;



//Route::middleware('auth:api')->get('/user', function (Request $request) {
//    return $request->user();
//});
//,  'throttle:5,1'
Route::group(['middleware' => 'auth:api'], function() {
    // ==============================================================
    // Product Section
    // ==============================================================

});
Route::middleware('throttle:product')->resource('/products', ProductController::class, ['except' => ['create', 'edit']]);
