

    <section id="about" class="about-style3-area">
        <div class="container">
            <div class="row">


                <div class="col-xl-6">
                    <div class="about-style3_text_box">
                        <div class="sec-title style3 with_text">
{{--                            <div class="sub-title">--}}
{{--                                <span class="border-box"></span>--}}
{{--                                <h5>The Extract & Refine Oil</h5>--}}
{{--                            </div>--}}
{{--                            <h2>A Next Generation<br> Oil Extraction Company<br> <span>  Since 2012</span></h2>--}}
{{--                            <p>oil extraction, isolation of oil from animal by-products.</p>--}}
{{--                       --}}

                            @if(app()->getLocale()=='en')
                                {!!  $aboutUs->title_en??'Al Wadian extraction & refining oil'!!}
                            @else
                                {!!$aboutUs->title_en??'Al Wadian extraction & refining oil'!!}

                            @endif
                        </div>
                        <div class="inner-content">
                            <div class="text">
                                <p>
                                    @if(app()->getLocale()=='en')
                                        {{$aboutUs->desc_en??'Oil extraction is defined as the process of separating triglyceride (TAG) lipids from
                                    the
                                    harvested and concentrated algal biomass and it could be done through a variety of
                                    mechanical or chemical manipulation techniques.'}}
                                    @else
                                        {{$aboutUs->desc_en??'Oil extraction is defined as the process of separating triglyceride (TAG) lipids from
                                    the
                                    harvested and concentrated algal biomass and it could be done through a variety of
                                    mechanical or chemical manipulation techniques.'}}

                                    @endif
                                </p>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-xl-6">
                    <div class="about-style3_image_box">
                        <div class="inner">

                            <img @if($aboutUs) src="{{get_file($aboutUs->image)}}" @else   src="{{asset('frontend/')}}/assets/images/about/about-style3_image.jpg"   @endif alt="">
                        </div>
                        <div class="icon-Outer"></div>
                        <div class="icon clr3">
                            <span class="icon-icon-15"></span>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>




