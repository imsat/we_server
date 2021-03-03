<?php

namespace App\Http\Controllers;

use App\Http\Resources\ProductResource;
use App\Models\Product;
use Illuminate\Http\Request;

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
    public function index(Request $request)
    {

        if ($request->has('search')) {
            $search = $request->search;
        } else {
            $search = '';
        }

        $products = Product::latest()
            ->where(function ($query) use ($search) {
                $query->where('title', 'LIKE', "%$search%")
                    ->orWhere('price', 'LIKE', "%$search%")
                    ->orWhere('description', 'LIKE', "%$search%");
            })
            ->paginate($request->itemsPerPage, ['*'], 'page', $request->page);

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

        $request->validate([
            'title' => 'required|string',
            'price' => 'required',
            'image_url' => 'required|max:2048',
        ]);

        $data = $request->only(['title', 'price', 'image_url', 'description']);

        if ($request->hasFile('image_url')) {

            $image = $data['image_url'];

            $imageSize = $image->getSize();
            $originalExtension = $image->getClientOriginalExtension();
            $imageName = time() . '.' . $imageSize . '.' . $originalExtension;

            $image->move("products", $imageName);
            $data['image_url'] = $imageName;
        }

        $product = Product::create($data);

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
        $request->validate([
            'title' => 'required|string',
            'price' => 'required',
            'image_url' => 'sometimes|max:2048',
        ]);

        if ($request->hasFile('image_url')) {
            $data = $request->only(['title', 'price', 'image_url', 'description']);

            $image = $request->image_url;

            $imageSize = $image->getSize();
            $originalExtension = $image->getClientOriginalExtension();
            $imageName = time() . '.' . $imageSize . '.' . $originalExtension;

            $image->move("products", $imageName);
            $data['image_url'] = $imageName;
        } else {
            $data = $request->only(['title', 'price', 'description']);
        }

        // Update final data;
        $product->update($data);

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
        //Permanent delete
        $product->forceDelete();

        return response()->json(['message' => 'Deleted successful', 'code' => 200], 200);

    }


}
