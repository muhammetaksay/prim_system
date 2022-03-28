<?php

namespace App\Http\Controllers;

use App\Models\Personal;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(){
        // return "test";
        $month = 3;
        $users = Personal::with("aims")->get();
        $newArr = [];
        $sayac = 0;
        foreach($users as $user){
            foreach($user->aims as $aim){
                if($aim->month === $month){
                    $newArr[$sayac]["total_aim"] = $aim->total_aim;
                    $newArr[$sayac]["remainder"] = $aim->remainder;
                    $newArr[$sayac]["aim"] = $aim->aim;
                }
                $newArr[$sayac]["user_id"] = $user->id;
                $newArr[$sayac]["user_name"] = $user->name;
            }
            $sayac++;
        }
        return view('home', compact('newArr', 'month'));
    }
}
