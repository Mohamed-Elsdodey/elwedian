<!DOCTYPE html>
<html lang="en">
<head>


    @include('Web.layouts.assets.css')

</head>

<body>

@if(app()->getLocale()=='en')

            <div class="boxed_wrapper ltr">

@else

            <div class="boxed_wrapper rtl">

@endif

        <!-- Preloader -->

        @include('Web.layouts.inc.loader')


        <!-- page-direction -->
        @include('Web.layouts.inc.direction')

        <!-- page-direction end -->


        <!-- Main header-->
        @include('Web.layouts.inc.header')



        @yield('content')



        <!--Start footer area -->
        @include('Web.layouts.inc.footer')

        <!--End footer area-->


    </div>


    @include('Web.layouts.assets.js')


</body>
</html>
