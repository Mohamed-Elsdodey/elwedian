<meta charset="utf-8" />
<title>@yield('title')-{{$settings->app_name??'elsdodey'}}</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
<meta content="Themesbrand" name="author" />
<meta name="csrf-token" content="{{ csrf_token() }}">

<!-- App favicon -->
<link rel="shortcut icon" href="{{get_file($settings->fave_icon)}}">

<!-- Bootstrap Css -->
<link href="{{url('assets')}}/dashboard/css/bootstrap-rtl.min.css" rel="stylesheet" type="text/css" />
<!-- icons-->
<link href="{{url('assets')}}/dashboard/css/fontawesome.min.css" rel="stylesheet" type="text/css" />
<!-- App Css-->
<link href="{{url('assets')}}/dashboard/css/app-rtl.min.css" rel="stylesheet" type="text/css" />
<!-- custom Css-->
<link href="{{url('assets')}}/dashboard/css/custom.min.css" rel="stylesheet" type="text/css" />

<link href="{{url('assets')}}/dashboard/css/jquery.fancybox.min.css" rel="stylesheet" type="text/css" />



<link href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet" type="text/css" />
<link href="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/css/dropify.min.css" rel="stylesheet" />


@yield('css')
{{--include loader css--}}

{{-- end include loader css--}}
@include('layouts.loader.loaderCss')
