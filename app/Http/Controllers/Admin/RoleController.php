<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Traits\LogActivityTrait;
use App\Models\Branch;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;
use Yajra\DataTables\DataTables;

class RoleController extends Controller
{

    use LogActivityTrait;

    function __construct()
    {
        $this->middleware('permission:عرض الادوار', ['only' => ['index']]);
        $this->middleware('permission:اضافة الدور', ['only' => ['create','store']]);
        $this->middleware('permission:تعديل دور', ['only' => ['edit','update']]);
        $this->middleware('permission:حذف دور', ['only' => ['destroy']]);
    }

    public function index(Request $request)
    {

        if ($request->ajax()) {
            $rows = Role::query();
            return DataTables::of($rows)
                ->addColumn('action', function ($row) {

                    $edit='';
                    $delete='';

                    if(!auth()->user()->can('تعديل دور'))
                        $edit='hidden';
                    if(!auth()->user()->can('حذف دور'))
                        $delete='hidden';

                    return '
                            <button  ' .$edit. '   class="editBtn btn rounded-pill btn-primary waves-effect waves-light"
                                    data-id="' . $row->id . '"
                            <span class="svg-icon svg-icon-3">
                                <span class="svg-icon svg-icon-3">
                                    <i class="fa fa-edit"></i>
                                </span>
                            </span>
                            </button>
                            <button  ' .$delete. '  class="btn rounded-pill btn-danger waves-effect waves-light delete"
                                    data-id="' . $row->id . '">
                            <span class="svg-icon svg-icon-3">
                                <span class="svg-icon svg-icon-3">
                                    <i class="fa fa-trash"></i>
                                </span>
                            </span>
                            </button>
                       ';

                })
                ->editColumn('created_at', function ($admin) {
                    return date('Y/m/d', strtotime($admin->created_at));
                })

                ->escapeColumns([])
                ->make(true);


        }
        else {
            $this->add_log_activity(null, auth('admin')->user(), "تم عرض  الادوار");

        }
        return view('Admin.CRUDS.roles.index');
    }


    public function create()
    {
        $permission = Permission::get();

        return view('Admin.CRUDS.roles.parts.create',compact('permission'));
    }


    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|unique:roles,name',
            'permission' => 'nullable',
        ]);
        $role = Role::create(['name' => $request->input('name'),'guard_name'=>'admin']);

        $role->syncPermissions($request->input('permission'));

        $this->add_log_activity($role,auth('admin')->user()," تم اضافة دور  باسم $role->name ");


        return response()->json(
            [
                'code' => 200,
                'message' => 'تمت العملية بنجاح'
            ]);
    }


    public function show($id)
    {
        //
    }

    public function edit( Role $role)
    {
        $permission = Permission::where('guard_name','admin')->get();
        $rolePermissions = DB::table("role_has_permissions")->where("role_has_permissions.role_id",$role->id)
            ->get();
        return view('Admin.CRUDS.roles.parts.edit', compact('permission','role','rolePermissions'));

    }


    public function update(Request $request,  $id)
    {

        $this->validate($request, [
            'name' => 'required',
            'permission' => 'nullable',
        ]);
        $role = Role::find($id);
        $old=$role;
        $role->name = $request->input('name');

        $role->save();
        $role->syncPermissions($request->input('permission'));
        $this->add_log_activity($old,auth('admin')->user()," تم تعديل دور  باسم $role->name ");

        return response()->json(
            [
                'code' => 200,
                'message' => 'تمت العملية بنجاح'
            ]);
    }


    public function destroy(Role $role)
    {
        $old=$role;
        $role->delete();

        $this->add_log_activity($old,auth('admin')->user()," تم حذف دور  باسم $old->name ");


        return response()->json(
            [
                'code' => 200,
                'message' => 'تمت العملية بنجاح'
            ]);
    }

}
