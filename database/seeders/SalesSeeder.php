<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Nette\Utils\Random;

class SalesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $islemler = ['gayrimenkul', 'hizmet', 'genel'];

        for($i=0; $i<=100; $i++){
            $islem = Arr::random($islemler);
            $products = DB::table('products')->get()->random();
            switch ($products->transaction_name) {
                case 'gayrimenkul':
                    $rate = $products->price * 0.05;
                    # code...
                    break;
                case 'hizmet':
                    $rate = $products->price * 0.03;
                    # code...
                    break;
                case 'genel':
                    $rate = $products->price * 0.04;
                    # code...
                    break;    
                default:
                    $rate = 0;
                    # code...
                    break;
            }
            $user = DB::table('personal')->get()->random();
            DB::table('sales')->insert([
                'user_id' => $user->id,
                'transaction_name' => $islem,
                'product_id' => $products->id,
                'rate' => $rate,
                'price' => $products->price,
                'status' => 1
            ]);
        }
    }
}
