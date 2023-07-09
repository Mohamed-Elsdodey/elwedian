
<!doctype html>
<?php
        if(app()->getLocale()=='ar'){?>
<html lang="ar" style="direction: rtl;">
<?php }else { ?>
<html lang="en" >

 <?php } ?>

    <head>

        <meta charset="utf-8" />

		<meta name='viewport' content='width=device-width, initial-scale=1.0, user-scalable=0'>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="Description" content="Bootstrap Responsive Admin Web Dashboard HTML5 Template">
		<meta name="Author" content="Spruko Technologies Private Limited">
		<meta name="Keywords" content="admin,admin dashboard,admin dashboard template,admin panel template,admin template,admin theme,bootstrap 4 admin template,bootstrap 4 dashboard,bootstrap admin,bootstrap admin dashboard,bootstrap admin panel,bootstrap admin template,bootstrap admin theme,bootstrap dashboard,bootstrap form template,bootstrap panel,bootstrap ui kit,dashboard bootstrap 4,dashboard design,dashboard html,dashboard template,dashboard ui kit,envato templates,flat ui,html,html and css templates,html dashboard template,html5,jquery html,premium,premium quality,sidebar bootstrap 4,template admin bootstrap 4"/>
		@include('Admin.layouts.inc.head')


        @include('layouts.loader.loaderCss')


    </head>


 <body data-sidebar="dark">
 @include('layouts.loader.loader')

    <!-- <body data-layout="horizontal" data-topbar="colored"> -->

        <!-- Begin page -->
        <div id="layout-wrapper">

@include('Admin.layouts.inc.main-header')
<!-- ========== Right Sidebar Start ========== -->
@include('Admin.layouts.inc.main-sidebar')

 <div class="main-content">
                <div class="page-content">
                    <div class="container-fluid">
@yield('page-header')
				@yield('content')
				   </div> <!-- container-fluid -->
                </div>
                <!-- End Page-content -->

            	@include('Admin.layouts.inc.footer')
				  </div>
            <!-- end main content-->

        </div>
        <!-- END layout-wrapper -->
  <!-- Right Sidebar -->
@include('Admin.layouts.inc.sidebar')
				@include('Admin.layouts.inc.footer-scripts')




 <div class="modal fade" id="profileEdit" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">

     <!-- Add .modal-dialog-centered to .modal-dialog to vertically center the modal -->
     <div class="modal-dialog modal-lg">
         <div class="modal-content">
             <div class="modal-header">
                 <h5 class="modal-title" id="exampleModalLabel">تعديل بيانات الملف الشخصى</h5>
                 <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
             </div>
             <div class="modal-body" id="profileEdit-addOrDelete">

             </div>
             <div class="modal-footer text-center d-flex justify-content-center">
                 <button type="button" class="btn btn-danger" data-bs-dismiss="modal">اغلاق</button>
                 <button id="profileEditSave"  form="EditForm" type="submit" class="btn btn-success">
                     حفظ
                     &nbsp;
                     <i class="fa fa-save"></i>
                 </button>
             </div>
         </div>
     </div>
 </div>









 <script>
     $.ajaxSetup({
         headers: {
             'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
         }
     });

     //-------------------- update profile -----------------------------------

 </script>


 <script>
     @isset(admin()->user()->id)

     $(document).on('click','.editProfile',function (e) {
         e.preventDefault()


         var url = '{{route('admins.show',admin()->user()->id)}}';

         $.ajax({
             url: url,
             type: 'GET',
             beforeSend: function(){
                 $('.loader-ajax').show()
             },
             success: function(data){
                 $('.loader-ajax').hide()
                 $('#profileEdit-addOrDelete').html(data.html);
                 $('#profileEdit').modal('show')
                 $('#logoOfAdmin').dropify();
                 $.validate({
                     ignore: 'input[type=hidden]',
                     lang:"ar",
                 });

             },
             error: function(data) {
                 $('.loader-ajax').hide()
                 $('#profileEdit-addOrDelete').html('<h3 class="text-center">لا تملك الصلاحية</h3>')
             }
         });

     });


     $(document).on('submit','form#EditForm',function(e) {
         e.preventDefault();
         var myForm = $("#EditForm")[0]
         var formData = new FormData(myForm)
         var url = $('#EditForm').attr('action');
         $.ajax({
             url:url,
             type: 'POST',
             data: formData,
             beforeSend: function(){
                 $('.loader-ajax').show()
             },
             complete: function(){


             },
             success: function (data) {
                 $('.loader-ajax').hide()
                 $('#profileEdit').modal('hide')
                 $(".header-profile-user").attr("src",data.logo);
                 $(".user-name-text").html(data.name);
                 $(".user-name-sub-text").html(data.business_name);

                 // $('#page-header-user-dropdown').html(data[html]);
                 toastr.success("تم تعديل ملفك بنجاح")

             },
             error: function (data) {
                 $('.loader-ajax').hide()
                 if (data.status === 500) {
                     $('#profileEdit').modal("hide");

                 }
                 if (data.status === 422) {
                     var errors = $.parseJSON(data.responseText);
                     $.each(errors, function (key, value) {
                         if ($.isPlainObject(value)) {
                             $.each(value, function (key, value) {
                                 cuteToast({
                                     type: "error", // or 'info', 'error', 'warning'
                                     message:value,
                                     timer: 3000
                                 });

                             });

                         } else {

                         }
                     });
                 }
             },//end error method

             cache: false,
             contentType: false,
             processData: false
         });
     });

     @endisset
 </script>

	</body>
</html>
