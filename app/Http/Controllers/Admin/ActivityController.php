<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Traits\LogActivityTrait;
use App\Models\Activity;
use App\Models\City;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class ActivityController extends Controller
{

    use LogActivityTrait;

    function __construct()
    {
        $this->middleware('permission:عرض سجل العمليات', ['only' => ['index']]);
        $this->middleware('permission:العمليات علي سجل العمليات', ['only' => ['destroy']]);
    }


    public function index(Request $request)
    {

        if ($request->ajax()) {

            $rows=Activity::query()->latest();

            if ($request->fromDate){
                $rows->where('created_at','>=',$request->fromDate.' '.'00:00:00');
            }
           if ($request->toDate){
               $rows->where('created_at','<=',$request->toDate.' '.'23:59:59');

           }

            return Datatables::of($rows)
                ->addColumn('action', function ($row) {

                    $delete = '';

                    if(!auth()->user()->can('العمليات علي سجل العمليات'))
                        $edit='hidden';
                    if(!auth()->user()->can('العمليات علي سجل العمليات'))
                        $delete='hidden';


                    return '
                                <button ' . $delete . '  class="btn rounded-pill btn-danger waves-effect waves-light delete"
                                    data-id="' . $row->id . '">
                                 <span class="svg-icon svg-icon-3">
                                <span class="svg-icon svg-icon-3">
                                    <i class="fa fa-trash"></i>
                                </span>
                               </span>
                            </button>
                       ';


                })
                ->addColumn('delete_all', function ($row) {
                    return "<input type='checkbox' class=' delete-all form-check-input' data-tablesaw-checkall name='delete_all' id='" . $row->id . "'>";
                })
                ->addColumn('admin', function ($row) {
                    return $row->admin->name;
                })
                ->editColumn('created_at', function ($row) {
                    return date('Y/m/d', strtotime($row->created_at));
                })
                ->escapeColumns([])
                ->make(true);


        }
         else {
             $this->add_log_activity(null, auth('admin')->user(), "تم عرض سجل النظام");

         }


        return view('Admin.activity.index', compact('request'));
    }


    public function destroy($id)
    {
        $row = Activity::find($id);
        $old = $row;
        $row->delete();
        $this->add_log_activity($old, auth('admin')->user(), "  تم حذف سجل النظام رقم $old->id");

        return response()->json(
            [
                'code' => 200,
                'message' => 'تمت العملية بنجاح!'
            ]);
    }//end fun


}
