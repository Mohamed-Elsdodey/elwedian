

<section id="services" class="service-style3-area">
    <div class="service-style3-area_bg"
         style="background-image: url({{asset('frontend/')}}/assets/images/shape/service-style3-area-bg.jpg);"></div>
    <div class="container">
        <div class="sec-title style3 with_text text-center">
            <div class="sub-title">
                <span class="border-box"></span>
                <h5>
                    @if(app()->getLocale()=='en')
                        {{$product->title_en??'Al Wadian extraction & refining oil'}}
                    @else
                        {{$product->title_ar??'Al Wadian extraction & refining oil'}}

                    @endif
                </h5>
            </div>
            <h2>{{trans('frontend.Products')}}</h2>
            <div class="text">
                <p>

                    @if(app()->getLocale()=='en')
                        {{$product->desc_en??'Our products That Comes From Oil Extraction and Refine'}}
                    @else
                        {{$product->desc_ar??'Our products That Comes From Oil Extraction and Refine'}}

                    @endif

                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-12">
                <div class="service-style3_content">
                    <div class="service-style3_carousel owl-carousel owl-theme owl-nav-style-one">
                        <!-- Start Single Product--->

                        @if(count($products)>0)
                            @foreach($products as $row)
                            <div class="single-service-style3">
                                <div class="img-holder">
                                    <div class="inner">
                                        <img src="{{get_file($row->image)}}" alt=""/>
                                    </div>
                                </div>
                                <div class="text-holder text-center">
                                    <h2>

                                        @if(app()->getLocale()=='en')
                                            {{$row->title_en}}
                                        @else
                                            {{$row->title_ar}}

                                        @endif

                                    </h2>
                                    <p>
                                        @if(app()->getLocale()=='en')
                                            {{$row->desc_en}}
                                        @else
                                            {{$row->desc_ar}}

                                        @endif
                                    </p>

                                </div>
                            </div>
                            @endforeach

                        @else
                        <div class="single-service-style3">
                            <div class="img-holder">
                                <div class="inner">
                                    <img src="https://oilex.com.eg/static/media/Products2.36a11508.png" alt=""/>
                                </div>
                            </div>
                            <div class="text-holder text-center">
                                <h2>{{trans('frontend.Oil & Gas Engineering')}}</h2>
                                <p>{{trans('frontend.Ausod tempor incididunt laboret dolore magn aliquat enim minim venia quis nos exercity ullamco laboris')}}.</p>

                            </div>
                        </div>

                        @endif
                        <!--End Single Product--->


                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
