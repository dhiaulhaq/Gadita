<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Models\Product;
use App\Http\Controllers\ProductApiController;
use App\Http\Controllers\SupplierApiController;
use App\Http\Controllers\LendingApiController;
use App\Http\Controllers\MaintenanceApiController;
use App\Http\Controllers\CategoryApiController;
use App\Http\Controllers\StockOpnameApiController;
use App\Http\Controllers\YearApiController;
use App\Http\Controllers\MonthApiController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

//Auth
Route::group(['prefix' => 'v1'], function () {
    Route::post('/login', 'UsersController@login');
    Route::post('/register', 'UsersController@register');
    Route::get('/logout', 'UsersController@logout')->middleware('auth:api');
});

//Asset Api
Route::get('/products', [ProductApiController::class, 'index']);
Route::get('/products/{id}', [ProductApiController::class, 'show']);
Route::post('/products', [ProductApiController::class, 'store']);
Route::put('/products/{id}', [ProductApiController::class, 'update']);
Route::delete('/products/{id}', [ProductApiController::class, 'destroy']);
Route::get('/products-lending/{id}', [ProductApiController::class, 'lending']);

//Supplier Api
Route::get('/supplier', [SupplierApiController::class, 'index']);
Route::get('/supplier/{id}', [SupplierApiController::class, 'show']);
Route::post('/supplier', [SupplierApiController::class, 'store']);
Route::put('/supplier/{id}', [SupplierApiController::class, 'update']);
Route::delete('/supplier/{id}', [SupplierApiController::class, 'destroy']);

//Lending Api
Route::get('/lending', [LendingApiController::class, 'index']);
Route::get('/lending/{id}', [LendingApiController::class, 'show']);
Route::post('/lending/{id}', [LendingApiController::class, 'store']);
Route::put('/lending/{id}', [LendingApiController::class, 'update']);
Route::delete('/lending/{id}', [LendingApiController::class, 'destroy']);

//Maintenance Api
Route::get('/maintenance', [MaintenanceApiController::class, 'index']);
Route::get('/maintenance/{id}', [MaintenanceApiController::class, 'show']);
Route::post('/maintenance', [MaintenanceApiController::class, 'store']);
Route::put('/maintenance/{id}', [MaintenanceApiController::class, 'update']);
Route::delete('/maintenance/{id}', [MaintenanceApiController::class, 'destroy']);

//Category Api
Route::get('/category', [CategoryApiController::class, 'index']);
Route::get('/category/{id}', [CategoryApiController::class, 'show']);
Route::post('/category', [CategoryApiController::class, 'store']);
Route::put('/category/{id}', [CategoryApiController::class, 'update']);
Route::delete('/category/{id}', [CategoryApiController::class, 'destroy']);

//Stock Opname Api
Route::get('/stock_opname/{year}/{month}', [StockOpnameApiController::class, 'show']);
Route::post('/stock_opname/scan/{id_period}', [StockOpnameApiController::class, 'store']);
// Route::delete('/stock_opname/{id}', [StockOpnameApiController::class, 'destroy']);

//Period Api
Route::get('/stock_opname', [YearApiController::class, 'index']);
Route::post('/stock_opname/create', [YearApiController::class, 'store']);
//result stock opname
Route::get('santet/{id_period}', [YearApiController::class, 'show']);
Route::get('/period/{id}', [YearApiController::class, 'detail']);
Route::delete('/period/{id}', [YearApiController::class, 'destroy']);
Route::post('send_qty/{code}', [YearApiController::class, 'sendQty']);

Route::get('lending-count/{y}', [YearApiController::class, 'getLendingCount']);
Route::put('update-precentage/{id}', [YearApiController::class, 'sendLendingCount']);
Route::get('year', [YearApiController::class, 'year']);
