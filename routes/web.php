<?php

use App\Http\Controllers\Admin\categorie\CategorieController;
use App\Http\Controllers\Admin\clients\ClientController;
use App\Http\Controllers\Admin\company\CompanyController;
use App\Http\Controllers\Admin\depot\depotController;
use App\Http\Controllers\Admin\orders\OrderController;
use App\Http\Controllers\Admin\product\ProductController;
use App\Http\Controllers\Admin\users\UserController;

use App\Http\Controllers\DashboardController;
use App\Http\Controllers\invoiceController;
use App\Http\Controllers\SessionController;
use App\Http\Livewire\SearchClient;
use App\Models\Role;
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
    return view('auth.login');
});


Route::group(['middleware'=>['auth']],function(){
    Route::get('/dashboard',[DashboardController::class,'index'])->name('dashboard');
});

//for admin
Route::group(['middleware'=>['auth','role:admin']],function(){

    Route::resource('users',UserController::class);
    Route::resource('clients',ClientController::class);
    Route::resource('companys',CompanyController::class);
    Route::resource('products',ProductController::class);
    Route::resource('depots',depotController::class);
    Route::resource('categories',CategorieController::class);
    Route::resource('orders',OrderController::class);
    Route::get('orders/validationOrd/{id}',[OrderController::class,'validation'])->name('orders.validation');
    Route::get('orders/PDF/{id}',[OrderController::class,"IncoicePDF"]);
    Route::get('orders/router',[OrderController::class,"router"])->name('order.router');
    Route::get('details',[OrderController::class,"details"])->name('orders.details');
    Route::get('Products/fetchDataDepot',[ProductController::class,"fetchDataDepot"])->name('products.fetchDataDepot');
    Route::get('Products/fetchDataCategoris',[ProductController::class,"fetchDataCategoris"])->name('products.fetchDataCategoris');
    Route::get('orders/selectClients',[SearchClient::class,"selectClients"])->name('selectClients');
    Route::get('orders/fetchDataDepot',[OrderController::class,"fetchDataDepot"])->name('orders.fetchDataDepot');
    Route::POST('addSession',[SessionController::class,"SetSessionProduct"])->name('store.session');
    Route::get('fetchDataProductSession',[OrderController::class,"fetchDataProductSession"])->name('orders.fetchDataProductSession');
    Route::get('DeleteDataProductSession',[OrderController::class,"DeleteDataProductSession"])->name('orders.DeleteDataProductSession');
    Route::get('UpdateDataProductSession',[OrderController::class,"UpdateDataProductSession"])->name('orders.UpdateDataProductSession');
    Route::get('UpdatePriceProductSession',[OrderController::class,"UpdatePriceProductSession"])->name('orders.UpdatePriceProductSession');
    Route::get('fetchTotalProductSession',[OrderController::class,"fetchTotalProductSession"])->name('orders.fetchTotalProductSession');
    Route::resource('invoice',invoiceController::class);

});





require __DIR__.'/auth.php';
