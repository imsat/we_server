<?php

namespace App\Http\Controllers;

use App\Http\Resources\ProductResource;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class ProductController extends Controller
{
    /**
     * ProductController constructor.
     */
    public function __construct()
    {
        $this->middleware('auth:api');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Resources\Json\AnonymousResourceCollection
     */
    public function index()
    {
        $products = Product::latest()->paginate(10);
        return ProductResource::collection($products);

    }


    /**
     * Store a newly created resource in storage.
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse|object
     * @throws \Illuminate\Validation\ValidationException
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required|string',
            'price' => 'required',
            'image_url' => 'required',
        ]);

        $product = Product::create($request->all());

        return (new ProductResource($product))->response()->setStatusCode(201);
    }

    /**
     *  Display the specified resource.
     *
     * @param Product $product
     * @return \Illuminate\Http\JsonResponse|object
     */
    public function show(Product $product)
    {
        return (new ProductResource($product))->response()->setStatusCode(200);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param Request $request
     * @param Product $product
     * @return \Illuminate\Http\JsonResponse|object
     * @throws \Illuminate\Validation\ValidationException
     */
    public function update(Request $request, Product $product)
    {

        $this->validate($request, [
            'title' => 'required|string',
            'price' => 'required',
            'image_url' => 'required',
        ]);

        $product->fill($request->only([
            'title',
            'description',
            'price',
            'image_url',
        ]));

        //Check if the product and all the updated attribute(s) have remained the same.
        if($product->isClean()){
           return response()->json(['errors' => 'You need to specify a different value to update', 'code' => 422], 422);
        }

        //If all ok then update
        $product->save();

        return (new ProductResource($product))->response()->setStatusCode(202);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param Product $product
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy(Product $product)
    {
        $product->forceDelete();
        return response()->json(['message' =>  'Deleted successful', 'code' => 200], 200);

    }


}
