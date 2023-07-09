<section id="contact" class="contact-style1-area contact-page gray-bg one-page-scrool-layout">
    <div class="container">
        <div class="row">

            <div class="col-xl-5">
                <div class="contact-style1_map">
                    <div class="sec-title style3">
                        <div class="sub-title">
                            <span class="border-box"></span>
                            <h5>{{trans('frontend.The Oil refining Leaders')}} </h5>
                        </div>
                        <h2>{{trans('frontend.Oil Extracting')}} <br> {{trans('frontend.Company With New Technologies')}}</h2>
                        <h3>{{trans('frontend.Send us a message in case of any inquiry or')}}<br> {{trans('frontend.visit our site office anytime')}}.</h3>
                    </div>
                    <div class="home-map-outer">
                        <!--Map Canvas-->
                        <div class="map-canvas"
                             data-zoom="12"
                             data-lat="{{$settings->lat??'-37.817085'}}"
                             data-lng="{{$settings->long??'144.955631'}}"
                             data-type="roadmap"
                             data-hue="#ffc400"
                             data-title="Envato"
                             data-icon-path="{{asset('frontend/')}}/assets/images/resources/map-marker.png"
                             data-content="Melbourne VIC 3000, Australia<br><a href='{{$settings->email}}'>{{$settings->email}}</a>">
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xl-7">
                <div class="contact-style1_form contact-style2_form">
                    <div class="title one_page">
                        <h2>{{trans('frontend.Get a FREE Consultation!')}}</h2>
                        <p>{{trans('frontend.We’ll reply within 48 hrs for better support')}}</p>
                    </div>
                    <div class="contact-form">
                        <form  id="Form" method="post" action="{{route('frontend.contactUs.store')}}">
                            @csrf
                            <div class="row">
                                <div class="col-xl-12">
                                    <div class="input-box">
                                        <input type="text" name="name" value="" placeholder="Your Name*"
                                               required="">
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-xl-6">
                                    <div class="input-box">
                                        <input type="email" name="email" value="" placeholder="Email*"
                                               required="">
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="input-box">
                                        <input type="text" name="phone" value="" placeholder="Phone*">
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-xl-12">
                                    <div class="input-box">
                                        <input type="text" name="subject" value="" placeholder="Subject">
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-xl-12">
                                    <div class="input-box">
                                        <textarea name="message" placeholder="message" required=""></textarea>
                                    </div>
                                    <div class="button-box text-center">
                                        <input id="form_botcheck" name="form_botcheck" class="form-control"
                                               type="hidden" value="">
                                        <button class="btn-one bgclr3" id="submit_button" type="submit"
                                                data-loading-text="Please wait...">
                                            <span class="txt"><i class="left flaticon-login"></i>{{trans('frontend.Send Message')}}</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
