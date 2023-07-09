


@if(app()->getLocale()=='en')


    <script src="{{asset('frontend/')}}/assets/js/jquery.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/aos.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/appear.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/bootstrap.bundle.min.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/bootstrap-select.min.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/isotope.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/jquery.bxslider.min.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/jquery.countdown.min.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/jquery.countTo.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/jquery.easing.min.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/jquery.enllax.min.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/jquery.fancybox.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/jquery.magnific-popup.min.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/jquery.paroller.min.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/jquery.polyglot.language.switcher.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/jQuery.style.switcher.min.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/jquery-ui.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/knob.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/map-script.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/owl.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/pagenav.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/parallax.min.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/scrollbar.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/slick.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/timePicker.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/validation.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/wow.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/TweenMax.min.js"></script>

    <script src="{{asset('frontend/')}}/assets/js/map-script.js"></script>
    <script async defer
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyATY4Rxc8jNvDpsK8ZetC7JyN4PFVYGCGM&callback=initMap">
    </script>


    <!-- thm custom script -->
    <script src="{{asset('frontend/')}}/assets/js/custom.js"></script>


@else


    <script src="{{asset('frontend/')}}/assets/js/jquery.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/aos.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/appear.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/bootstrap.bundle.min.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/bootstrap-select.min.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/isotope.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/jquery.bxslider.min.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/jquery.countdown.min.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/jquery.countTo.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/jquery.easing.min.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/jquery.enllax.min.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/jquery.fancybox.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/jquery.magnific-popup.min.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/jquery.paroller.min.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/jquery.polyglot.language.switcher.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/jQuery.style.switcher.min.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/jquery-ui.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/knob.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/map-script.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/owl.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/pagenav.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/parallax.min.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/scrollbar.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/slick.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/timePicker.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/validation.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/wow.js"></script>
    <script src="{{asset('frontend/')}}/assets/js/TweenMax.min.js"></script>

    <script src="{{asset('frontend/')}}/assets/js/map-script.js"></script>
    <script async defer
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyATY4Rxc8jNvDpsK8ZetC7JyN4PFVYGCGM&callback=initMap">
    </script>



@endif

@yield('js')
