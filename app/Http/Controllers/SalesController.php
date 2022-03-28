<?php

namespace App\Http\Controllers;

use App\Models\Aims;
use App\Models\Personal;
use App\Models\Products;
use App\Models\Sales;
use Illuminate\Http\Request;

class SalesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sales = Sales::with("user","product")->get()->sort();
        return view("sales", compact('sales'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $products = Products::all();
        $users = Personal::all();
        return view('sales.create', compact("products", "users"));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {   
         $product_id = $request->product_id;
         $user_id = $request->user_id;
         $month = $request->month;
         $year = $request->year;


         $products = Products::where("id", $product_id)->first();
         $users = Personal::where("id", $user_id)->first();   

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


        $aim = Aims::where('user_id', $user_id)->where("month", $month)->where("year", $year)->first();

        
        $sales = new Sales();
        $sales->user_id = $user_id;
        $sales->transaction_name = $products->transaction_name;
        $sales->price = $products->price;
        $sales->rate = $rate;
        $sales->status = 1;
        $sales->product_id = $product_id;
        $sales->save();
        
        $aimUpdate = Aims::where('user_id', $user_id)->where("month", $month)->where("year", $year)->first();
        $aimUpdate->aim = $rate + $aim->aim;
        $aimUpdate->remainder = $aim->total_aim - $rate;
        $aimUpdate->save();

        return redirect()->back()->with('message', 'Successfully!');



    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
