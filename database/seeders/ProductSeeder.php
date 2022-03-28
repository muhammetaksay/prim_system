<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $islemler = ['gayrimenkul', 'hizmet', 'genel'];

        for($i=1; $i<=50; $i++){
            $islem = Arr::random($islemler);
            $price = rand(100,1000);
            DB::table('products')->insert([
                'name' => 'Urun '.Str::random(15),
                'price' => $price,
                'transaction_name' => $islem,
                'status' => 1,
            ]);
        }
    }
}
