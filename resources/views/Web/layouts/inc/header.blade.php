<header class="main-header header-style-three">

    <!--Start Header Top-->
    <div class="header-top-style3">
        <div class="container">
            <div class="outer-box clearfix">

                <div class="header-top-style3_left pull-left">
                    <div class="header-contact-info2">
                        <ul>
                            <li><span class="flaticon-incoming-call"></span><a href="tel:{{$settings->phone1}}">{{$settings->phone1}}</a></li>
                            <li><span class="flaticon-incoming-call"></span><a href="tel:{{$settings->phone2}}">{{$settings->phone2}}</a></li>
                            <!-- <li><span class="flaticon-envelope-1"></span><a href="mailto:logistic@email.com">info@example.com</a></li> -->
                        </ul>
                    </div>
                </div>

                <div class="header-top-style3_right pull-right">
                    <div class="header-social-link-1 header-social-link-3">
                        <div class="social-link">
                            <ul class="clearfix">
                                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>

                            </ul>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!--End Header Top-->

    <!--Start Header-->
    <div class="header-style3">
        <div class="container">
            <div class="outer-box clearfix">
                <div class="header-style3_left pull-left">
                    <div class="logo">
                        <div class="logo-bg"></div>
                        <a href="{{route('frontend.index')}}"><img src="{{get_file($settings->logo_header)}}" alt="Awesome Logo" title=""></a>
                    </div>
                </div>

                <div class="header-style3_right pull-right">

                    <div class="nav-outer style3 clearfix">
                        <!--Mobile Navigation Toggler-->
                        <div class="mobile-nav-toggler">
                            <div class="inner">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </div>
                        </div>
                        <!-- Main Menu -->
                        <nav class="main-menu style3 navbar-expand-md navbar-light">
                            <div class="collapse navbar-collapse show clearfix" id="navbarSupportedContent">
                                <ul class="navigation clearfix scroll-nav">
                                    <li><a href="#banner">{{trans('frontend.Home')}}</a></li>
                                    <li><a href="#about">{{trans('frontend.About')}}</a></li>
                                    <li><a href="#services">{{trans('frontend.Products')}}</a></li>
                                    <li><a href="#contact">{{trans('frontend.Contact')}}</a></li>


                                </ul>
                            </div>
                        </nav>
                        <!-- Main Menu End-->
                    </div>




                </div>
            </div>
        </div>
    </div>
    <!--End header-->

    <!--Sticky Header-->
    <div class="sticky-header">
        <div class="container">
            <div class="clearfix">
                <!--Logo-->
                <div class="logo float-left">
                    <a href="{{route('frontend.index')}}" class="img-responsive"><img src="{{get_file($settings->logo_header)}}" alt="" title=""></a>
                </div>
                <!--Right Col-->
                <div class="right-col float-right">
                    <!-- Main Menu -->
                    <nav class="main-menu style3 clearfix">
                        <!--Keep This Empty / Menu will come through Javascript-->
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!--End Sticky Header-->

    <!-- Mobile Menu  -->
    <div class="mobile-menu">
        <div class="menu-backdrop"></div>
        <div class="close-btn"><span class="icon fa fa-times-circle"></span></div>

        <nav class="menu-box">
            <div class="nav-logo"><a href="{{route('frontend.index')}}"><img src="{{get_file($settings->logo_header)}}" alt="" title=""></a></div>
            <div class="menu-outer"><!--Here Menu Will Come Automatically Via Javascript / Same Menu as in Header--></div>
            <!--Social Links-->
            <div class="social-links">
                <ul class="clearfix">
                    <li><a href="#"><span class="fab fa fa-facebook-square"></span></a></li>
                    <li><a href="#"><span class="fab fa fa-twitter-square"></span></a></li>
                    <li><a href="#"><span class="fab fa fa-pinterest-square"></span></a></li>
                    <li><a href="#"><span class="fab fa fa-google-plus-square"></span></a></li>
                    <li><a href="#"><span class="fab fa fa-youtube-square"></span></a></li>
                </ul>
            </div>
        </nav>
    </div>
    <!-- End Mobile Menu -->

</header>
