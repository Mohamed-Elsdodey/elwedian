@extends('Admin.layouts.inc.app')
@section('title')
    المشرفين
@endsection
@section('css')
@endsection
@section('content')
    <div class="card">
        <div class="card-header d-flex align-items-center">
            <h5 class="card-title mb-0 flex-grow-1">المستخدمين</h5>

            @can('اضافة مستخدمين')
                <div>
                    <button id="addBtn" class="btn btn-primary">اضافة مستخدم</button>
                </div>
            @endcan

        </div>
        <div class="card-body">
            <table id="table" class="table table-bordered dt-responsive nowrap table-striped align-middle"
                   style="width:100%">
                <thead>
                <tr>
                    <th>#</th>
                    <th>الصورة</th>
                    <th>الاسم</th>
                    <th>البريد الالكتروني</th>
                    <th>التفعيل</th>

                    <th> تاريخ الانشاء</th>
                    <th>العمليات</th>
                </tr>
                </thead>
            </table>
        </div>
    </div>

    <div class="modal fade" id="Modal" tabindex="-1" aria-hidden="true">
        <!--begin::Modal dialog-->
        <div class="modal-dialog modal-dialog-centered modal-lg mw-650px">
            <!--begin::Modal content-->
            <div class="modal-content" id="modalContent">
                <!--begin::Modal header-->
                <div class="modal-header">
                    <!--begin::Modal title-->
                    <h2><span id="operationType"></span> مستخدم </h2>
                    <!--end::Modal title-->
                    <!--begin::Close-->
                    <button class="btn btn-sm btn-icon btn-active-color-primary" type="button" data-bs-dismiss="modal" aria-label="Close">
                        <i class="fa fa-times"></i>
                    </button>
                    <!--end::Close-->
                </div>
                <!--begin::Modal body-->
                <div class="modal-body py-4" id="form-load">

                </div>
                <!--end::Modal body-->
                <div class="modal-footer">
                    <div class="text-center">
                        <button type="reset" data-bs-dismiss="modal" aria-label="Close" class="btn btn-light me-2">
                            الغاء
                        </button>
                        <button form="form" type="submit" id="submit" class="btn btn-primary">
                            <span class="indicator-label">اتمام</span>
                        </button>
                    </div>
                </div>
            </div>

            <!--end::Modal content-->
        </div>
        <!--end::Modal dialog-->
    </div>

@endsection
@section('js')
    <script>
        var columns = [
            {data: 'id', name: 'id'},
            {data: 'image', name: 'image'},
            {data: 'name', name: 'name'},
            {data: 'email', name: 'email'},
            {data: 'is_active', name: 'is_active'},

            {data: 'created_at', name: 'created_at'},

            {data: 'action', name: 'action', orderable: false, searchable: false},
        ];
    </script>
    @include('Admin.layouts.inc.ajax',['url'=>'admins'])
    <!--datatable js-->

    {{--    <script src="{{url('assets')}}/dashboard/js/pages/datatables.init.js"></script>--}}
    {{--    <script>--}}
    {{--        document.addEventListener("DOMContentLoaded", function () {--}}
    {{--            new DataTable("#buttons-datatables", {dom: "Bfrtip", buttons: ["copy", "csv", "excel", "print", "pdf"]})--}}
    {{--        })--}}
    {{--    </script>--}}

    <script>
        $(document).on('change','.activeBtn',function (){
            var id=$(this).attr('data-id');

            $.ajax({
                type: 'GET',
                url: "{{route('admin.active.admin')}}",
                data: {
                    id: id,
                },

                success: function (res) {
                    if (res['status'] == true) {

                        toastr.success("تمت العملية بنجاح")
                        // $('#table').DataTable().ajax.reload(null, false);
                    } else {
                        // location.reload();

                    }
                },
                error: function (data) {
                    // location.reload();
                }
            });


        })
    </script>

@endsection
