<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Traits\LogActivityTrait;
use App\Http\Traits\Upload_Files;
use App\Models\Category;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class CategoryController extends Controller
{
    use Upload_Files;



    public function index(Request $request)
    {

        if ($request->ajax()) {
            $admins = Category::query()->where('type','main')->where('from_id',null)->latest();
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

        return view('Admin.CRUDS.categories.index');
    }


    public function create()
    {

        return view('Admin.CRUDS.categories.parts.create');
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'title_ar' => 'required',
            'title_en' => 'required',
            'image'=>'required|mimes:jpeg,jpg,png,gif,svg,webp,avif',

        ]);
        $data['type']='main';
        $data["image"] =  $this->uploadFiles('categories',$request->file('image'),null );

        Category::create($data);



        return response()->json(
            [
                'code' => 200,
                'message' => 'تمت العملية بنجاح!'
            ]);
    }



    public function edit( $id)
    {


        $row=Category::find($id);


        return view('Admin.CRUDS.categories.parts.edit', compact('row'));

    }

    public function update(Request $request,  $id)
    {
        $data = $request->validate([
            'title_ar' => 'required',
            'title_en' => 'required',
            'image'=>'nullable|mimes:jpeg,jpg,png,gif,svg,webp,avif',

        ]);
        if ($request->image)
            $data["image"] =  $this->uploadFiles('categories',$request->file('image'),null );

        $row=Category::find($id);

        $row->update($data);



        return response()->json(
            [
                'code' => 200,
                'message' => 'تمت العملية بنجاح!',
            ]);
    }


    public function destroy( $id)
    {
        $row=Category::find($id);
        $row->delete();


        return response()->json(
            [
                'code' => 200,
                'message' => 'تمت العملية بنجاح!'
            ]);
    }//end fun
}
