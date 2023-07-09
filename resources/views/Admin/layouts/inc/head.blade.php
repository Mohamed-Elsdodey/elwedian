
        <title>لوحة التحكم</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Themesdesign" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="{{URL::asset('public/assets_new/images/favicon.png')}}">
<link href="https://fonts.googleapis.com/css?family=Almarai|Roboto&display=swap" rel="stylesheet">

@yield('css')
 <!-- Icons Css -->
        <link href="{{URL::asset('assets_new/css/icons.min.css')}}" rel="stylesheet" type="text/css" />
        <!-- Bootstrap Css -->
       <?php
        if(app()->getLocale()=='ar'){?>
        <link href="{{URL::asset('assets_new/css/bootstrap-rtl.min.css')}}" id="bootstrap-style1" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="{{URL::asset('assets_new/css/app-rtl.min.css')}}" id="app-style1" rel="stylesheet" type="text/css" />
      <?php } else{ ?>
       <link href="{{URL::asset('assets_new/css/bootstrap.min.css')}}" id="bootstrap-style1" rel="stylesheet" type="text/css" />
         <link href="{{URL::asset('assets_new/css/app.min.css')}}" id="app-style1" rel="stylesheet" type="text/css" />


      <?php }  ?>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.3/font/bootstrap-icons.min.css" integrity="sha512-YFENbnqHbCRmJt5d+9lHimyEMt8LKSNTMLSaHjvsclnZGICeY/0KYEeiHwD1Ux4Tcao0h60tdcMv+0GljvWyHg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
         <link rel="stylesheet" href="{{URL::asset('assets_new/loader/css/custom-style.css')}}">


        <link href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet" type="text/css" />
        <link href="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/css/dropify.min.css" rel="stylesheet" />


        <style>
            @keyframes placeHolderShimmer{
                0%{
                    background-position: -468px 0
                }
                100%{
                    background-position: 468px 0
                }
            }

            .linear-background {
                animation-duration: 1s;
                animation-fill-mode: forwards;
                animation-iteration-count: infinite;
                animation-name: placeHolderShimmer;
                animation-timing-function: linear;
                background: #f6f7f8;
                background: linear-gradient(to right, #eeeeee 8%, #dddddd 18%, #eeeeee 33%);
                background-size: 1000px 104px;
                height: 200px;
                position: relative;
                overflow: hidden;
            }
            .inter-draw{
                background: #FFF;
                width: 100%;
                height: 100px;
                position: absolute;
                top: 100px;
            }
            .inter-right--top{
                background: #FFF;
                width: 100%;
                height: 20px;
                position: absolute;
                top: 20px;
                left: 100px;
            }
            .inter-right--bottom{
                background: #FFF;
                width: 100%;
                height: 50px;
                position: absolute;
                top: 60px;
                left: 100px;
            }
            .inter-crop{
                background: #FFF;
                width: 20px;
                height: 100%;
                position: absolute;
                top: 0;
                left: 100px;
            }
        </style>
