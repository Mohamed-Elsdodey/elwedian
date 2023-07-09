<meta charset="UTF-8">
<title>
    @if(app()->getLocale()=='en')
        {{$settings->app_name_en}}
        @else
        {{$settings->app_name_ar}}

    @endif

</title>


@if(app()->getLocale()=='en')

    <!-- responsive meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- For IE -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <link rel="stylesheet" href="{{asset('frontend/')}}/assets/css/aos.css">
    <link rel="stylesheet" href="{{asset('frontend/')}}/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{asset('frontend/')}}/assets/css/imp.css">
    <link rel="stylesheet" href="{{asset('frontend/')}}/assets/css/custom-animate.css">
    <link rel="stylesheet" href="{{asset('frontend/')}}/assets/css/flaticon.css">
    <link rel="stylesheet" href="{{asset('frontend/')}}/assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="{{asset('frontend/')}}/assets/css/owl.css">
    <link rel="stylesheet" href="{{asset('frontend/')}}/assets/css/magnific-popup.css">
    <link rel="stylesheet" href="{{asset('frontend/')}}/assets/css/scrollbar.css">
    <link rel="stylesheet" href="{{asset('frontend/')}}/assets/css/hiddenbar.css">
    <link rel="stylesheet" href="{{asset('frontend/')}}/assets/css/icomoon.css">

    <link rel="stylesheet" href="{{asset('frontend/')}}/assets/css/color.css">
    <link href="{{asset('frontend/')}}/assets/css/color/theme-color.css" id="jssDefault" rel="stylesheet">

    <link rel="stylesheet" href="{{asset('frontend/')}}/assets/css/style.css">
    <link rel="stylesheet" href="{{asset('frontend/')}}/assets/css/responsive.css">
    <!-- Favicon -->
    <link rel="apple-touch-icon" sizes="180x180" href="{{asset('frontend/')}}/assets/images/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" href="{{asset('frontend/')}}/assets/images/resources/logo-3.png" sizes="32x32">
    <link rel="icon" type="image/png" href="{{asset('frontend/')}}/assets/images/resources/logo-3.png" sizes="16x16">


@else


    <link rel="stylesheet" href="{{asset('frontend/')}}/assets/css/aos.css">
    <link rel="stylesheet" href="{{asset('frontend/')}}/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{asset('frontend/')}}/assets/css/imp.css">
    <link rel="stylesheet" href="{{asset('frontend/')}}/assets/css/custom-animate.css">
    <link rel="stylesheet" href="{{asset('frontend/')}}/assets/css/flaticon.css">
    <link rel="stylesheet" href="{{asset('frontend/')}}/assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="{{asset('frontend/')}}/assets/css/owl.css">
    <link rel="stylesheet" href="{{asset('frontend/')}}/assets/css/magnific-popup.css">
    <link rel="stylesheet" href="{{asset('frontend/')}}/assets/css/scrollbar.css">
    <link rel="stylesheet" href="{{asset('frontend/')}}/assets/css/hiddenbar.css">
    <link rel="stylesheet" href="{{asset('frontend/')}}/assets/css/icomoon.css">

    <link rel="stylesheet" href="{{asset('frontend/')}}/assets/css/color.css">
    <link href="{{asset('frontend/')}}/assets/css/color/theme-color.css" id="jssDefault" rel="stylesheet">
    <link rel="stylesheet" href="{{asset('frontend/')}}/assets/css/rtl.css">
    <link rel="stylesheet" href="{{asset('frontend/')}}/assets/css/style.css">
    <link rel="stylesheet" href="{{asset('frontend/')}}/assets/css/responsive.css">
    <!-- Favicon -->
    <link rel="apple-touch-icon" sizes="180x180" href="{{asset('frontend/')}}/assets/images/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" href="{{asset('frontend/')}}/assets/images/resources/logo-3.png" sizes="32x32">
    <link rel="icon" type="image/png" href="{{asset('frontend/')}}/assets/images/resources/logo-3.png" sizes="16x16">


@endif

@yield('css')
