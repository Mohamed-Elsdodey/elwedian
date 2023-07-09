<script src="{{URL::asset('assets_new/datatable/feather.min.js')}}"></script>
<script src="{{URL::asset('assets_new/datatable/datatables.min.js')}}"></script>

<style>
    .dataTables_length
    {
        margin-{{get_lang()=='ar'?'right':'left'}}: 10%;
    }
</style>



<script src="{{url('assets/dashboard/js/sweet.js')}}"></script>


<script>
    var loader_form = ` <div class="linear-background">
                            <div class="inter-crop"></div>
                            <div class="inter-right--top"></div>
                            <div class="inter-right--bottom"></div>
                        </div>
        `;
    var newUrl=location.href;


    $('#table thead tr')
        .clone(true)
        .addClass('filters')
        .appendTo('#example thead');

    if(!window.hasOwnProperty( "order" ))
    {
        // order = [
        //     [0, "DESC"]
        // ];

    }
    $(function () {
        $("#table").DataTable({
            processing: true,
            // pageLength: 50,
            paging: true,
            dom: 'Bfrltip',

            bLengthChange: true,
            serverSide: true,
            ajax: newUrl,
            columns: columns,
            // order: [
            //     [0, "asc"]
            // ],
            "language":<?php echo json_encode(datatable_lang());?>,
            // "language": {
            //     paginate: {
            //         previous: "<i class='simple-icon-arrow-left'></i>",
            //         next: "<i class='simple-icon-arrow-right'></i>"
            //     },
            //     "sProcessing": "جاري التحميل ..",
            //     "sLengthMenu": "اظهار _MENU_ سجل",
            //     "sZeroRecords": "لا يوجد نتائج",
            //     "sInfo": "اظهار _START_ الى  _END_ من _TOTAL_ سجل",
            //     "sInfoEmpty": "لا نتائج",
            //     "sInfoFiltered": "للبحث",
            //     "sSearch": "بحث :    ",
            //     "oPaginate": {
            //         "sPrevious": "السابق",
            //         "sNext": "التالي",
            //     }
            // },
            // buttons: [
            //     'colvis',
            //     'excel',
            //     'print',
            //     'copy',
            //     'csv',
            //     // 'pdf'
            // ],

            searching: true,
            destroy: true,
            info: false,


        });

    });

    $(document).on('click', '#addBtn', function () {
        $('#form-load').html(loader_form)
        $('#operationType').text('{{trans('admin.add')}}');

        $('#Modal').modal('show')

        setTimeout(function (){
            $('#form-load').load("{{route("$url.create")}}")
        },1000)
    });

    $(document).on('submit',"#form-load > #form",function (e) {
        e.preventDefault();

        var formData = new FormData(this);

        var url = $('#form-load > form').attr('action');
        $.ajax({
            url: url,
            type: 'POST',
            data: formData,
            beforeSend: function () {


                $('#submit').html('<span class="spinner-border spinner-border-sm mr-2" ' +
                    ' ></span> <span style="margin-left: 4px;">{{trans('admin.working')}}</span>').attr('disabled', true);
                $('#form-load').append(loader_form)
                $('#form-load > form').hide()
            },
            complete: function () {
            },
            success: function (data) {

                window.setTimeout(function () {
                    $('#submit').html('{{trans('admin.submit')}}').attr('disabled', false);

                    if (data.code == 200) {
                        toastr.success(data.message)
                        $('#Modal').modal('hide')
                        $('#form-load > form').remove()
                        $('#table').DataTable().ajax.reload(null, false);
                    }else {
                        $('#form-load > .linear-background').hide(loader_form)
                        $('#form-load > form').show()
                        toastr.error(data.message)
                    }
                }, 1000);



            },
            error: function (data) {
                $('#form-load > .linear-background').hide(loader_form)
                $('#submit').html('{{trans('admin.submit')}}').attr('disabled', false);
                $('#form-load > form').show()
                if (data.status === 500) {
                    toastr.error('{{trans('admin.error')}}')
                }
                if (data.status === 422) {
                    var errors = $.parseJSON(data.responseText);

                    $.each(errors, function (key, value) {
                        if ($.isPlainObject(value)) {
                            $.each(value, function (key, value) {
                                toastr.error(value)
                            });

                        } else {

                        }
                    });
                }
                if (data.status == 421){
                    toastr.error(data.message)
                }

            },//end error method

            cache: false,
            contentType: false,
            processData: false
        });
    });
    $(document).on('click', '.delete', function () {

        var id = $(this).data('id');
        swal.fire({
            title: "{{trans('admin.submit delete')}}",
            text: "{{trans('admin.delete text')}}",
            icon: "warning",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: "{{trans('admin.submit')}}",
            cancelButtonText: "{{trans('admin.cancel')}}",
            okButtonText: "{{trans('admin.submit')}}",
            closeOnConfirm: false
        }).then((result) => {
            if (!result.isConfirmed){
                return true;
            }


            var url = '{{ route("$url.destroy",":id") }}';
            url = url.replace(':id',id)
            $.ajax({
                url: url,
                type: 'DELETE',
                beforeSend: function(){
                    $('.loader-ajax').show()

                },
                success: function (data) {

                    window.setTimeout(function() {
                        $('.loader-ajax').hide()
                        if (data.code == 200){
                            toastr.success(data.message)
                            $('#table').DataTable().ajax.reload(null, false);
                        }else {
                            toastr.error('{{trans('admin.error')}}')
                        }

                    }, 1000);
                }, error: function (data) {

                    if (data.status === 500) {
                        toastr.error('{{trans('admin.error')}}')
                    }


                    if (data.status === 422) {
                        var errors = $.parseJSON(data.responseText);

                        $.each(errors, function (key, value) {
                            if ($.isPlainObject(value)) {
                                $.each(value, function (key, value) {
                                    toastr.error(value)
                                });

                            } else {

                            }
                        });
                    }
                }

            });
        });
    });

    $(document).on('click', '.editBtn', function () {
        var  id = $(this).data('id');
        $('#operationType').text('تعديل ');
        $('#form-load').html(loader_form)
        $('#Modal').modal('show')

        var url = "{{route("$url.edit",':id')}}";
        url = url.replace(':id',id)

        setTimeout(function (){
            $('#form-load').load(url)
        },1000)


    });
</script>
