<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\SalesController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/home',[HomeController::class, 'index'])->middleware(['auth'])->name('home');
Route::get('/sales',[SalesController::class, 'index'])->middleware(['auth'])->name('sales');
Route::get('/sales/create',[SalesController::class, 'create'])->middleware(['auth'])->name('sales.add');
Route::post('/sales/create',[SalesController::class, 'store'])->name("sales.create")->middleware(['auth']);

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');

require __DIR__.'/auth.php';
