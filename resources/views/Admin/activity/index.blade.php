@extends('Admin.layouts.inc.app')
@section('title')
    سجل النظام
@endsection
@section('css')
@endsection
@section('content')


    <div class="row mb-3">
        <div class="col-md-2 ">
            <label for="fromDate" class="d-flex align-items-center fs-6 fw-bold form-label mb-2">
                <span class="required mr-1"> تاريخ البداية    </span>

            </label>
            <input type="date" id="fromDate" @isset($request['fromDate']) value="{{$request['fromDate']}}" @endisset name="fromDate"
                   class="showBonds form-control">

        </div>
        <div class="col-md-2">
            <label for="toDate" class="d-flex align-items-center fs-6 fw-bold form-label mb-2">
                <span class="required mr-1">   تاريخ النهاية    </span>

            </label>
            <input type="date" id="toDate"@isset($request['toDate']) value="{{$request['toDate']}}" @endisset name="toDate"
                   class="showBonds form-control">
        </div>
    </div>


    <div class="card">
        <div class="card-header d-flex align-items-center">
            <h5 class="card-title mb-0 flex-grow-1">سجل النظام</h5>

        </div>
        <div class="card-body">
            <table id="table" class="table table-bordered dt-responsive nowrap table-striped align-middle"
                   style="width:100%">
                <thead>
                <tr>
                    <th>اسم المشرف</th>
                    <th>الرسالة</th>
                    <th> تاريخ الانشاء</th>
                    <th>العمليات</th>

                </tr>
                </thead>
            </table>
        </div>
    </div>


@endsection
@section('js')
    <script>
        var columns = [
            // {"data": "delete_all", orderable: false, searchable: false},
            // {data: 'id', name: 'id'},
            {data: 'admin', name: 'admin'},
            {data: 'description', name: 'description'},
            {data: 'created_at', name: 'created_at'},
            {data: 'action', name: 'action', orderable: false, searchable: false},

        ];
    </script>
    @include('Admin.layouts.inc.ajax',['url'=>'activities'])

    <script>
        $(document).find('#checkAll').click( function () {
            alert(true);
            var check = true;
            $('.delete-all:checked').each(function () {
                check = false;
            });
            if (check == true) $("#bulk_delete").show()
            else $("#bulk_delete").hide()
            $('.delete-all').prop('checked', check);
        });


    </script>


    <script>

        $(document).on('change', '.showBonds', function () {
            var fromDate = $('#fromDate').val();
            var toDate = $('#toDate').val();
            var url = "{{route('activities.index')}}";
            url = url + "?-=-";
            if (fromDate != null) {
                url = url + "&&fromDate=" + fromDate;
            }
            if (toDate != null) {
                url = url + "&&toDate=" + toDate;
            }

            window.location.href = url;
        })
</script>

@endsection
