<?php


use App\Http\Controllers\Admin\{AuthController, HomeController,};
use Illuminate\Support\Facades\Route;

Route::get('admin/login', [AuthController::class, 'loginView'])->name('admin.login');
Route::post('admin/login', [AuthController::class, 'postLogin'])->name('admin.postLogin');


Route::group(['prefix' => 'admin', 'middleware' => 'admin'], function () {


    Route::get('/', [HomeController::class,'index'])->name('admin.index');
    Route::get('calender', [HomeController::class,'calender'])->name('admin.calender');


    Route::get('logout', [AuthController::class, 'logout'])->name('admin.logout');


    ### admins

    Route::resource('admins', \App\Http\Controllers\Admin\AdminController::class);
    Route::get('activateAdmin',[App\Http\Controllers\Admin\AdminController::class,'activate'])->name('admin.active.admin');


    ### roles
    Route::resource('roles', \App\Http\Controllers\Admin\RoleController::class);//setting


    ### categories
    Route::resource('categories', \App\Http\Controllers\Admin\CategoryController::class);//setting



    ### activities
    Route::resource('activities',App\Http\Controllers\Admin\ActivityController::class);

    ### settings
    Route::resource('settings', \App\Http\Controllers\Admin\SettingController::class);//setting



    Route::resource('sliders', \App\Http\Controllers\Admin\SliderController::class);//setting


    ### contacts
    Route::resource('contacts', \App\Http\Controllers\Admin\ContactController::class);

    ### about_us_product
    Route::resource('aboutUs', \App\Http\Controllers\Admin\AboutUsController::class);


    ### products
    Route::resource('products', \App\Http\Controllers\Admin\ProductController::class);



    Route::resource('product', \App\Http\Controllers\Admin\ProductsController::class);



    ### categories
    Route::resource('categories', \App\Http\Controllers\Admin\CategoryController::class);


    ### sub_categories
    Route::resource('sub_categories', \App\Http\Controllers\Admin\SubCategoryController::class);

});
