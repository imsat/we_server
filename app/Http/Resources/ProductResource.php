<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ProductResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param \Illuminate\Http\Request $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'identifier' => (string)$this->id,
            'product_title' => $this->title,
            'product_details' => $this->description,
            'product_price' => $this->price,
            'product_image_path' => $this->image_url,
            'creationDate' => $this->created_at,
            'lastChange' => $this->updated_at,
            'deletedDate' => $this->deleted_at,
            'links' => [
                [
                    'rel' => 'self',
                    'href' => route('products.show', $this->id)
                ]
            ]
        ];
    }
}
