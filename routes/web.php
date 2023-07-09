<?php

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






Route::group(
    [
        'prefix' => LaravelLocalization::setLocale(),
        'middleware' => [ 'localeSessionRedirect', 'localizationRedirect', 'localeViewPath' ]
    ], function() {




    Route::get('/',['App\Http\Controllers\Web\HomeController','index'])->name('frontend.index');
    Route::post('contact_us_store',['App\Http\Controllers\Web\HomeController','contact_us_store'])->name('frontend.contactUs.store');





});


