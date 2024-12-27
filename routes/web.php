<?php
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::group(['namespace' => 'App\Http\Controllers\Basket'], function () {
    Route::get('/storage', IndexController::class)->name('storage.index');
});
Route::group(['namespace' => 'App\Http\Controllers\Category'], function () {
    Route::get('/category/{id}', IndexController::class)->name('category');
});
Route::get('/',[\App\Http\Controllers\IndexController::class,'index'])->name('welcome');
Route::get('/product/{id}', \App\Http\Controllers\Product\IndexController::class)->name('product.show');


