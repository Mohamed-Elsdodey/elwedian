@extends('Admin.layouts.inc.app')
@section('title')
    الإعدادات
@endsection
@section('css')

    <link href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet" type="text/css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/css/dropify.min.css" rel="stylesheet" />

@endsection

@section('page-title')
    الإعدادات العامة
@endsection

@section('breadCramp')
    breadCramp
@endsection


@section('content')

    <div class="card">
        <div class="card-header ">
            <h5 class="card-title mb-0 flex-grow-1">الاعدادات</h5>


            <form id="form" enctype="multipart/form-data" method="POST" action="{{route('settings.store')}}">
                @csrf
                <div class="row my-4 g-4">

                            <div class="d-flex flex-column mb-7 fv-row col-sm-3">
                                <!--begin::Label-->
                                <label for="app_name_ar" class="d-flex align-items-center fs-6 fw-bold form-label mb-2">
                                    <span class="required mr-1"> اسم الموقع بالعربية</span>
                                </label>
                                <!--end::Label-->
                                <input id="app_name_ar" required type="text" class="form-control form-control-solid" name="app_name_ar"
                                       value="{{$settings->app_name_ar}}"/>
                            </div>


                            <div class="d-flex flex-column mb-7 fv-row col-sm-3">
                                <!--begin::Label-->
                                <label for="app_name_en" class="d-flex align-items-center fs-6 fw-bold form-label mb-2">
                                    <span class="required mr-1"> اسم الموقع الانجليزية</span>
                                </label>
                                <!--end::Label-->
                                <input id="app_name_en" required type="text" class="form-control form-control-solid" name="app_name_en"
                                       value="{{$settings->app_name_en}}"/>
                            </div>





                    <div class="d-flex flex-column mb-7 fv-row col-sm-3">
                        <!--begin::Label-->
                        <label for="lat" class="d-flex align-items-center fs-6 fw-bold form-label mb-2">
                            <span class="required mr-1"> خطوط الطول</span>
                        </label>
                        <!--end::Label-->
                        <input id="lat" required type="text" class="form-control form-control-solid" name="lat"
                               value="{{$settings->lat}}"/>
                    </div>


                    <div class="d-flex flex-column mb-7 fv-row col-sm-3">
                        <!--begin::Label-->
                        <label for="long" class="d-flex align-items-center fs-6 fw-bold form-label mb-2">
                            <span class="required mr-1">   خطوط العرض</span>
                        </label>
                        <!--end::Label-->
                        <input id="long" required type="text" class="form-control form-control-solid" name="long"
                               value="{{$settings->long}}"/>
                    </div>





                    <div class="d-flex flex-column mb-7 fv-row col-sm-3">
                        <!--begin::Label-->
                        <label for="phone1" class="d-flex align-items-center fs-6 fw-bold form-label mb-2">
                            <span class="required mr-1">   الهاتف الاول</span>
                        </label>
                        <!--end::Label-->
                        <input id="phone1" required type="number" class="form-control form-control-solid" name="phone1"
                               value="{{$settings->phone1}}"/>
                    </div>


                    <div class="d-flex flex-column mb-7 fv-row col-sm-3">
                        <!--begin::Label-->
                        <label for="phone2" class="d-flex align-items-center fs-6 fw-bold form-label mb-2">
                            <span class="required mr-1">   الهاتف الثاني</span>
                        </label>
                        <!--end::Label-->
                        <input id="phone2" required type="number" class="form-control form-control-solid" name="phone2"
                               value="{{$settings->phone2}}"/>
                    </div>



                    <div class="d-flex flex-column mb-7 fv-row col-sm-3">
                        <!--begin::Label-->
                        <label for="email" class="d-flex align-items-center fs-6 fw-bold form-label mb-2">
                            <span class="required mr-1">    البريد الالكتروني</span>
                        </label>
                        <!--end::Label-->
                        <input id="email" required type="email" class="form-control form-control-solid" name="email"
                               value="{{$settings->email}}"/>
                    </div>


                    <div class="d-flex flex-column mb-7 fv-row col-sm-3">
                        <!--begin::Label-->
                        <label for="map_link" class="d-flex align-items-center fs-6 fw-bold form-label mb-2">
                            <span class="required mr-1">    لينك الخريطة</span>
                        </label>
                        <!--end::Label-->
                        <input id="map_link" required type="number" class="form-control form-control-solid" name="map_link"
                               value="{{$settings->map_link}}"/>
                    </div>



                    <div class="col-sm-6 pb-3 p-2">
                        <label for="address_ar" class="form-label"> العنوان بالعربية </label>
                        <textarea name="address_ar" id="address_ar" class="form-control" rows="5"
                                  placeholder="">{{$settings->address_ar}}</textarea>
                    </div>

                    <div class="col-sm-6 pb-3 p-2">
                        <label for="address_en" class="form-label"> العنوان بالانجليزية </label>
                        <textarea name="address_en" id="address_en" class="form-control" rows="5"
                                  placeholder="">{{$settings->address_en}}</textarea>
                    </div>



                    <div class="col-sm-6 pb-3 p-2">
                        <label for="about_ar" class="form-label"> معلومات عنا بالعربية </label>
                        <textarea name="about_ar" id="address_ar" class="form-control" rows="5"
                                  placeholder="">{{$settings->about_ar}}</textarea>
                    </div>

                    <div class="col-sm-6 pb-3 p-2">
                        <label for="about_en" class="form-label"> معلومات عنا بالانجليزية </label>
                        <textarea name="about_en" id="about_en" class="form-control" rows="5"
                                  placeholder="">{{$settings->about_en}}</textarea>
                    </div>





                    <div class="form-group">
                            <label for="name" class="form-control-label fs-6 fw-bold "> اللوجو العلوي </label>
                            <input type="file" class="dropify" name="logo_header"
                                   data-default-file="{{get_file($settings->logo_header)}}"
                                   accept="image/*"/>
                            <span class="form-text text-muted text-center">مسموح فقط بالصيغ التالية : jpeg , jpg , png , gif , svg , webp , avif</span>
                        </div>



                        <div class="form-group">
                            <label for="name" class="form-control-label fs-6 fw-bold "> اللوجو السفلي </label>
                            <input type="file" class="dropify" name="logo_footer"
                                   data-default-file="{{get_file($settings->logo_footer)}}"
                                   accept="image/*"/>
                            <span class="form-text text-muted text-center">مسموح فقط بالصيغ التالية : jpeg , jpg , png , gif , svg , webp , avif</span>
                        </div>





                        <div class="form-group">
                            <label for="name" class="form-control-label fs-6 fw-bold ">  الفيف ايكون </label>
                            <input type="file" class="dropify" name="fave_icon"
                                   data-default-file="{{get_file($settings->fave_icon)}}"
                                   accept="image/*"/>
                            <span class="form-text text-muted text-center">مسموح فقط بالصيغ التالية : jpeg , jpg , png , gif , svg , webp , avif</span>
                        </div>



                        <div class="my-4">
                            <button type="submit" class="btn btn-success"> تعديل</button>
                        </div>


                </div>
            </form>

        </div>
    </div>


@endsection

@section('js')

    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/js/dropify.min.js"></script>


    <script>
        $('.dropify').dropify();

    </script>


    <script>
        // CKEDITOR.replace('privacy');



    </script>
    <script>
        $(document).on('submit', "form#form", function (e) {
            e.preventDefault();

            var formData = new FormData(this);

            var url = $('#form').attr('action');
            $.ajax({
                url: url,
                type: 'POST',
                data: formData,

                complete: function () {
                },
                success: function (data) {

                    window.setTimeout(function () {

// $('#product-model').modal('hide')
                        if (data.code == 200) {
                            toastr.success(data.message)
                        } else {
                            toastr.error(data.message)
                        }
                    }, 1000);


                },
                error: function (data) {
                    if (data.status === 500) {
                        toastr.error('there is an error')
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
                    if (data.status == 421) {
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
