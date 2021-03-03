<?php

namespace Database\Factories;

use App\Models\Product;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class ProductFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Product::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'title' => $this->faker->unique()->sentence,
            'description' => $this->faker->paragraph,
            'price' => mt_rand(59, 999),
            'image_url' => $this->faker->randomElement([
                'prod-1.jpg',
                'prod-2.jpg',
                'prod-3.jpg',
                'prod-4.jpg',
                'prod-5.jpg',
            ])
        ];
    }

}
