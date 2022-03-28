<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;

class AimSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user = DB::table('personal')->get()->random();
        $months = [1,2,3,4,5,6,7,8,9,10,11,12];
        $aims = [1000, 1500, 2000, 2500];

            $users = DB::table('personal')->get();
            foreach($users as $user){
                foreach($months as $month){
                    $total_aim = Arr::random($aims);
                    DB::table('aims')->insert([
                        'user_id' => $user->id,
                        'month' => $month,
                        'year' => 2022,
                        'total_aim' => $total_aim,
                        'aim' => 0,
                        'remainder' => $total_aim
                    ]);
                }
            }
    }
}
