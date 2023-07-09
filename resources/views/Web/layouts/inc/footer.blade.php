<footer class="footer-area">
    <div class="shape  wow slideInRight" data-wow-delay="500ms" data-wow-duration="3500ms">
        <img src="{{asset('frontend/')}}/assets/images/shape/footer-shape-1.jpg" alt="">
    </div><!-- /.shape -->
    <div class="footer">
        <div class="container">
            <div class="row text-right-rtl">

                <div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
                    <div class="footer-left-box" style="margin-right: -12px !important;">
                        <!--Start single footer widget-->
                        <div class="single-footer-widget marbtm wow animated fadeInUp" data-wow-delay="0.1s">
                            <div class="our-company-info">
                                <div class="footer-logo">
                                    <a href="{{route('frontend.index')}}"><img src="{{get_file($settings->logo_footer)}}" alt="Footer Logo" title="Logo"></a>
                                </div>
                                <div class="text-box">
                                    <p>
                                        @if(app()->getLocale()=='en')
                                            {{$settings->about_en}}
                                         @else
                                            {{$settings->about_ar}}

                                        @endif

                                    </p>
                                </div>

                            </div>
                        </div>
                        <!--End single footer widget-->
                    </div><!-- /.footer-left-box -->
                </div>

                <div class="col-xl-8 col-lg-12 col-md-12 col-sm-12">
                    <div class="footer-rigth-box">
                        <div class="row">
                            <!--Start single footer widget-->
                            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 wow animated fadeInUp" data-wow-delay="0.3s">
                                <div class="single-footer-widget marbtm50">
                                    <div class="title">
                                        <h3>{{trans('frontend.Our Industry')}}</h3>
                                    </div>
                                    <ul class="footer-widget-links1">
                                        <li><a href="#">{{trans('frontend.Oil & Gas Engineering')}}</a></li>
                                        <li><a href="#">{{trans('frontend.Chemical Research')}}</a></li>
                                    </ul>
                                </div>
                            </div>
                            <!--End single footer widget-->
                            <!--Start single footer widget-->
                            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 wow animated fadeInUp" data-wow-delay="0.5s">
                                <div class="single-footer-widget marbtm50">
                                    <div class="title">
                                        <h3>{{trans('frontend.About Al Wadian')}}</h3>
                                    </div>
                                    <ul class="footer-widget-links1">
                                        <li><a href="#">{{trans('frontend.Company Information')}}</a></li>
                                        <li><a href="#">{{trans('frontend.Chain Of Factories')}}</a></li>

                                    </ul>
                                </div>
                            </div>
                            <!--End single footer widget-->
                            <!--Start single footer widget-->
                            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 wow animated fadeInUp" data-wow-delay="0.7s">
                                <div class="single-footer-widget">
                                    <div class="title">
                                        <h3>{{trans('frontend.Contact Us')}}</h3>
                                    </div>
                                    <div class="footer-contact-info">
                                        <ul>
                                            <li>
                                                <div class="icon">
                                                    <span class="flaticon-incoming-call clr1"></span>
                                                </div>
                                                <div class="text">
                                                    <p class="large"><a href="tel:{{$settings->phone1}}">{{$settings->phone1}}</a></p>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="icon">
                                                    <span class="flaticon-placeholder clr1"></span>
                                                </div>
                                                <div class="text">
                                                    <p>
                                                        @if(app()->getLocale()=='en')
                                                            {{$settings->about_en}}
                                                        @else
                                                            {{$settings->about_ar}}

                                                        @endif
                                                    </p>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="icon">
                                                    <span class="flaticon-envelope-1 clr1"></span>
                                                </div>
                                                <div class="text">
                                                    <p><a href="mailto:{{$settings->email}}">{{$settings->email}}</a></p>
                                                </div>
                                            </li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!--End single footer widget-->
                        </div>

                        <div class="footer-bottom">
                            <div class="footer-bottom_left_box">
                                <div class="copyright-text">
                                    <p>&copy; 2023 <a href="#">
                                            @if(app()->getLocale()=='en')
                                                {{$settings->app_name_ar}}
                                            @else
                                                {{$settings->app_name_en}}

                                            @endif

                                        </a> {{trans('frontend.All rights reserved')}}.</p>
                                </div>

                            </div>
                            <!-- /.footer-bottom_left_box -->

                        </div>

                    </div><!-- /.footer-rigth-box -->
                </div>

            </div>
        </div>
    </div>



</footer>
