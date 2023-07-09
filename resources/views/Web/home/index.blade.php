@extends('Web.layouts.inc.app')



@section('content')
    <!-- Start Main Slider -->
    @include('Web.home.parts.slider')
    <!-- End Main Slider -->


    <!--Start About Style3 Area-->
    @include('Web.home.parts.aboutUs')
    <!--End About Style3 Area-->


    <!-- Start Service Style3 Area -->
   @include('Web.home.parts.services')
    <!-- End Service Style3 Area -->


    <!--Start Contact Style1 Area-->
    @include('Web.home.parts.contacts')
    <!--End Contact Style1 Area-->

@endsection

@section('js')

    <link href="{{asset('frontend/')}}/assets/css/tost.css" rel="stylesheet" type="text/css" />

    <script src="{{asset('frontend/')}}/assets/js/tost.js"></script>


    <script>
        $(document).on('submit','form#Form',function(e) {
            e.preventDefault();
            var myForm = $("#Form")[0]
            var formData = new FormData(myForm)
            var url = $('#Form').attr('action');
            $.ajax({
                url:url,
                type: 'POST',
                data: formData,
                beforeSend: function(){
                    $('#submit_button').attr('disabled',true)
                    $('#submit_button').html(`<i class='fa fa-spinner fa-spin '></i>`)
                },
                complete: function(){

                },
                success: function (data) {
                    // var name = `${$("#contact_name").val()}`;

                    toastr.success('{{trans('frontend.Your message was sent successfully')}}')

                    $('#submit_button').attr('disabled',false)
                    $('#submit_button').html(`<span class="txt"><i class="left flaticon-login"></i>{{trans('frontend.Send Message')}}</span> `)

                    $('#Form')[0].reset();
                },
                error: function (data) {
                    $('#submit_button').attr('disabled',false)

                    $('#submit_button').html(`<span class="txt"><i class="left flaticon-login"></i>{{trans('frontend.Send Message')}}</span> `)

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

    </script>


@endsection
