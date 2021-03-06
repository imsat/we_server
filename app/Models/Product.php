<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = [
        'title',
        'description',
        'price',
        'image_url',
    ];

    /**
     * Product image url accessor.
     *
     * @param $imageUrl
     * @return string
     */
    public function getImageUrlAttribute($imageUrl)
    {
        return asset('products') . '/' . $imageUrl;
    }

}
