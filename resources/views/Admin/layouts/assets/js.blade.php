
<!-- JAVASCRIPT -->
<script src="{{url('assets')}}/dashboard/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="{{url('assets')}}/dashboard/libs/node-waves/waves.min.js"></script>

<!-- apexcharts -->
{{--<script src="{{url('assets')}}/dashboard/libs/apexcharts/apexcharts.min.js"></script>--}}

<!-- App js -->
<script src="{{url('assets')}}/dashboard/js/app.js"></script>
<script src="{{url('assets')}}/dashboard/js/jquery.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/js/dropify.min.js"></script>


<script>
    $('.lds-hourglass').fadeOut(1000)
    $.ajaxSetup({
        headers:
            { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content') }
    });
    $(document).on('keyup','.numbersOnly',function () {
        this.value = this.value.replace(/[^0-9\.]/g,'');
    });
</script>
@yield('js')
