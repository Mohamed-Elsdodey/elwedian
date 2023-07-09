<div class="page_direction d-block">




    @foreach(LaravelLocalization::getSupportedLocales() as $localeCode => $properties)

        @if($properties['native']=='English')
            @if(LaravelLocalization::getCurrentLocale()=="ar")
                <!-- item-->
                <a  hreflang="{{ $localeCode }}"
                   href="{{ LaravelLocalization::getLocalizedURL($localeCode, null, [], true) }}">
                    <div class="demo-ltr direction_switch"><button class="ltr"><img src="{{asset('frontend/')}}/assets/images/resources/en.png" style="height: 25px !important; width: 38px;"  alt=""></button></div>

                </a>


            @endif

        @elseif($properties['native']=='العربية')
            @if(LaravelLocalization::getCurrentLocale()=="en")

                <!-- item-->
                <a  hreflang="{{ $localeCode }}"
                   href="{{ LaravelLocalization::getLocalizedURL($localeCode, null, [], true) }}">

                 <div class="demo-rtl direction_switch"><button class="rtl"><img src="{{asset('frontend/')}}/assets/images/resources/ar.png" style="height: 25px !important;"  alt=""></button></div>

                </a>

            @endif

        @endif

    @endforeach



</div>
