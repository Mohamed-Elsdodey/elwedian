<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Traits\LogActivityTrait;
use App\Http\Traits\Upload_Files;
use App\Models\Slider;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class SliderController extends Controller
{
    use Upload_Files,LogActivityTrait;



    public function index(Request $request)
    {

        if ($request->ajax()) {
            $admins = Slider::query()->latest();
            return DataTables::of($admins)
                ->addColumn('action', function ($row) {

                    $edit='';
                    $delete='';



                    return '
                            <button '.$edit.'  class="editBtn btn rounded-pill btn-primary waves-effect waves-light"
                                    data-id="' . $row->id . '"
                            <span class="svg-icon svg-icon-3">
                                <span class="svg-icon svg-icon-3">
                                    <i class="fa fa-edit"></i>
                                </span>
                            </span>
                            </button>
                            <button '.$delete.'  class="btn rounded-pill btn-danger waves-effect waves-light delete"
                                    data-id="' . $row->id . '">
                            <span class="svg-icon svg-icon-3">
                                <span class="svg-icon svg-icon-3">
                                    <i class="fa fa-trash"></i>
                                </span>
                            </span>
                            </button>
                       ';



                })


                ->editColumn('image', function ($row) {
                    return ' <img height="60px" src="' . get_file($row->image) . '" class=" w-60 rounded"
                             onclick="window.open(this.src)">';
                })




                ->editColumn('created_at', function ($admin) {
                    return date('Y/m/d', strtotime($admin->created_at));
                })
                ->escapeColumns([])
                ->make(true);


        }
        else{
            $this->add_log_activity(null, auth('admin')->user(), "تم عرض  البانر  الرئيسي");

        }
        return view('Admin.CRUDS.sliders.index');
    }


    public function create()
    {

        return view('Admin.CRUDS.sliders.parts.create');
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'title_ar' => 'required',
            'title_en' => 'required',
            'desc_ar' => 'required',
            'desc_en' => 'required',
            'image'=>'required|mimes:jpeg,jpg,png,gif,svg,webp,avif',

        ]);
            $data["image"] =  $this->uploadFiles('sliders',$request->file('image'),null );

       $slider=   Slider::create($data);

        $this->add_log_activity($slider,auth('admin')->user(),"  تم اضافة بانر باسم $slider->title_ar ");


        return response()->json(
            [
                'code' => 200,
                'message' => 'تمت العملية بنجاح!'
            ]);
    }



    public function edit(Slider $slider)
    {




        return view('Admin.CRUDS.sliders.parts.edit', compact('slider'));

    }

    public function update(Request $request, Slider $slider)
    {
        $data = $request->validate([
            'title_ar' => 'required',
            'title_en' => 'required',
            'desc_ar' => 'required',
            'desc_en' => 'required',
            'image'=>'nullable|mimes:jpeg,jpg,png,gif,svg,webp,avif',

        ]);
        if ($request->image)
            $data["image"] =  $this->uploadFiles('sliders',$request->file('image'),null );

        $old=$slider;

        $slider->update($data);

        $this->add_log_activity($old,auth('admin')->user(),"تم  تعديل بيانات البانر    $slider->title_ar ");


        return response()->json(
            [
                'code' => 200,
                'message' => 'تمت العملية بنجاح!',
            ]);
    }


    public function destroy(Slider $slider)
    {
        $old=$slider;
        $slider->delete();

        $this->add_log_activity($old,auth('admin')->user()," تم   حذف بيانات البانر    $old->title_ar ");


        return response()->json(
            [
                'code' => 200,
                'message' => 'تمت العملية بنجاح!'
            ]);
    }//end fun


}
