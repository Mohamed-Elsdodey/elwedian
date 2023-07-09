<section id="banner" class="main-slider style3">
    <div class="slider-box">
        <!-- Banner Carousel -->
        <div class="banner-carousel owl-theme owl-carousel">
            <!-- Slide -->
            @if(count($sliders)>0)

                @foreach($sliders as $slider)

                    <div class="slide">
                        <div class="image-layer" style="background-image:url({{get_file($slider->image)}})"></div>
                        <div class="top_shadow"></div>
                        <div class="shadow_box"></div>
                        <div class="auto-container">
                            <div class="content">
                                <div class="sub_title">
                                    <h4>{{trans('frontend.Extract & Refine Oil Leaders')}}</h4>
                                </div>
                                <div class="big-title">
                                    <h2>
                                        @if(app()->getLocale()=='en')
                                            {{$slider->title_en}}
                                        @else
                                            {{$slider->title_ar}}

                                        @endif
                                    </h2>
                                </div>
                                <h3>
                                    @if(app()->getLocale()=='en')
                                        {{$slider->desc_en}}
                                    @else
                                        {{$slider->desc_ar}}

                                    @endif
                                </h3>


                            </div>
                        </div>
                    </div>

                @endforeach
            @else
            <div class="slide">
                <div class="image-layer" style="background-image:url({{asset('frontend/')}}/assets/images/slides/slide-v3-1.jpg)"></div>
                <div class="top_shadow"></div>
                <div class="shadow_box"></div>
                <div class="auto-container">
                    <div class="content">
                        <div class="sub_title">
                            <h4>{{trans('frontend.Extract & Refine Oil Leaders')}}</h4>
                        </div>
                        <div class="big-title">
                            <h2>{{trans('frontend.Experts Of Modern')}}<br> {{trans('frontend.Extract & Refine Oil')}}</h2>
                        </div>
                        <h3>{{trans('frontend.Industry with solutions for everyone beyond horizon')}}</h3>


                    </div>
                </div>
            </div>
            <!-- Slide -->
            <div class="slide">
                <div class="image-layer" style="background-image:url({{asset('frontend/')}}/assets/images/slides/slide-v3-2.jpg)"></div>
                <div class="top_shadow"></div>
                <div class="shadow_box"></div>
                <div class="auto-container">
                    <div class="content">
                        <div class="sub_title">
                            <h4>{{trans('frontend.Extract & Refine Oil Leaders')}}</h4>
                        </div>
                        <div class="big-title">
                            <h2>{{trans('frontend.Experts Of Modern')}}<br> {{trans('frontend.Extract & Refine Oil')}}</h2>
                        </div>
                        <h3>{{trans('frontend.Industry with solutions for everyone beyond horizon')}}</h3>


                    </div>
                </div>
            </div>
            @endif

        </div>
    </div>
</section>
