<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Traits\LogActivityTrait;
use App\Models\Category;
use App\Models\Contact;
use App\Models\Contacts;
use App\Models\ContactUs;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Yajra\DataTables\DataTables;

class ContactController extends Controller
{


    public function index(Request $request)
    {


        if ($request->ajax()) {
            $contacts = Contacts::query()->latest();
            return Datatables::of($contacts)
                ->addColumn('action', function ($row) {

                    $edit='';
                    $delete='';

                    return '
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

                ->addColumn('show', function ($contact) {

                    return '<span data-id="' . $contact->id . '" class="badge rounded-pill bg-primary editBtn">عرض الرسالة</span>
';

                })
                ->editColumn('message', function ($contsct) {
                    $data= Str::limit($contsct->message, 20) ;
                    return $data;
                })

                ->editColumn('created_at', function ($contact) {
                    return date('Y/m/d', strtotime($contact->created_at));
                })
                ->escapeColumns([])
                ->make(true);


        }
        return view('Admin.contacts.index');
    }



    public function edit($id)
    {
        $contact=Contacts::find($id);
        return view('Admin.contacts.parts.details',compact('contact'));

    }



    public function destroy($id )
    {
        $contact=Contacts::find($id);
        $contact->delete();

        return response()->json(
            [
                'code' => 200,
                'message' => 'Deleted Successfully!'
            ]);
    }
}
