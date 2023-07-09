<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\AboutUs;
use App\Models\Category;
use App\Models\Contacts;
use App\Models\Product;
use App\Models\Slider;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    //
    public function index(){

        $sliders=Slider::get();
        $aboutUs=AboutUs::where('type','about_us')->first();
        $product=AboutUs::where('type','product')->first();
        $products=Product::get();

        return view('Web.home.index',compact('sliders','aboutUs','product','products'));
    }

    public function contact_us_store(Request  $request){

        $data = $request->validate([
            'name'=>'required',
            'email'=>'required|email',
            'phone'=>'required',
            'message'=>'required',
        ]);


        Contacts::create($data);
        return response()->json([],200);
    }
}
