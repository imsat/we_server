<?php

namespace Database\Seeders;

use App\Models\Product;
use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        DB::statement('SET FOREIGN_KEY_CHECKS = 0');

        User::truncate();
        Product::truncate();

        User::factory([
            'name' => 'Admin',
            'email' => 'admin@mail.com',
        ])->admin()->create();
        User::factory(5)->create();
        Product::factory(100)->create();

    }
}
