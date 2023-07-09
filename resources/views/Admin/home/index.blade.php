@extends('Admin.layouts.inc.app')
@section('title')
    الرئيسية
@endsection
@section('css')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.css"/>

@endsection
@section('content')

    <div class="row">


        <div class="col-xl-3 col-sm-6">
            <a href="{{route('admins.index')}}">
                <div class="card mini-stat bg-primary">
                    <div class="card-body mini-stat-img">
                        <div class="mini-stat-icon">
                            <i class="mdi mdi-cube-outline float-end"></i>
                        </div>
                        <div class="text-white">
                            <h6 class="text-uppercase mb-3 font-size-16 text-white">  المستخدمين</h6>
                            <h2 class="mb-4 text-white">{{\App\Models\Admin::count()}}</h2>
                            {{--                        <span class="badge bg-info"> +11% </span> <span class="ms-2">From previous period</span>--}}
                        </div>
                    </div>
                </div>
            </a>

        </div>



        <div class="col-xl-3 col-sm-6">
            <a href="{{route('categories.index')}}">
                <div class="card mini-stat bg-primary">
                    <div class="card-body mini-stat-img">
                        <div class="mini-stat-icon">
                            <i class="mdi mdi-cube-outline float-end"></i>
                        </div>
                        <div class="text-white">
                            <h6 class="text-uppercase mb-3 font-size-16 text-white">  الاقسام الرئيسية</h6>
                            <h2 class="mb-4 text-white">{{\App\Models\Category::where('type','main')->where('from_id',null)->count()}}</h2>
                            {{--                        <span class="badge bg-info"> +11% </span> <span class="ms-2">From previous period</span>--}}
                        </div>
                    </div>
                </div>
            </a>

        </div>



        <div class="col-xl-3 col-sm-6">
            <a href="{{route('sub_categories.index')}}">
                <div class="card mini-stat bg-primary">
                    <div class="card-body mini-stat-img">
                        <div class="mini-stat-icon">
                            <i class="mdi mdi-cube-outline float-end"></i>
                        </div>
                        <div class="text-white">
                            <h6 class="text-uppercase mb-3 font-size-16 text-white">  الاقسام الفرعية</h6>
                            <h2 class="mb-4 text-white">{{\App\Models\Category::where('type','sub')->where('from_id','!=',null)->count()}}</h2>
                            {{--                        <span class="badge bg-info"> +11% </span> <span class="ms-2">From previous period</span>--}}
                        </div>
                    </div>
                </div>
            </a>

        </div>




        <div class="col-xl-3 col-sm-6">
            <a href="{{route('sliders.index')}}">
                <div class="card mini-stat bg-primary">
                    <div class="card-body mini-stat-img">
                        <div class="mini-stat-icon">
                            <i class="mdi mdi-cube-outline float-end"></i>
                        </div>
                        <div class="text-white">
                            <h6 class="text-uppercase mb-3 font-size-16 text-white"> البانر المتحرك</h6>
                            <h2 class="mb-4 text-white">{{\App\Models\Slider::count()}}</h2>
                            {{--                        <span class="badge bg-info"> +11% </span> <span class="ms-2">From previous period</span>--}}
                        </div>
                    </div>
                </div>
            </a>

        </div>
        <div class="col-xl-3 col-sm-6">
            <a href="{{route('products.index')}}">

                <div class="card mini-stat bg-primary">
                    <div class="card-body mini-stat-img">
                        <div class="mini-stat-icon">
                            <i class="mdi mdi-buffer float-end"></i>
                        </div>
                        <div class="text-white">
                            <h6 class="text-uppercase mb-3 font-size-16 text-white">  المنتجات</h6>
                            <h2 class="mb-4 text-white">{{\App\Models\AboutUs::where('type','product')->count()}}</h2>
                            {{--                        <span class="badge bg-danger"> -29% </span> <span class="ms-2">From previous period</span>--}}
                        </div>
                    </div>
                </div>
            </a>

        </div>
        <div class="col-xl-3 col-sm-6">
            <a href="{{route('contacts.index')}}">

                <div class="card mini-stat bg-primary">
                    <div class="card-body mini-stat-img">
                        <div class="mini-stat-icon">
                            <i class="mdi mdi-tag-text-outline float-end"></i>
                        </div>
                        <div class="text-white">
                            <h6 class="text-uppercase mb-3 font-size-16 text-white">طلبات  التواصل </h6>
                            <h2 class="mb-4 text-white">{{\App\Models\Contacts::count()}}</h2>
                            {{--                        <span class="badge bg-warning"> 0% </span> <span class="ms-2">From previous period</span>--}}
                        </div>
                    </div>
                </div>

            </a>

        </div>
        <div class="col-xl-3 col-sm-6">
            <a href="{{route('aboutUs.index')}}">

                <div class="card mini-stat bg-primary">
                    <div class="card-body mini-stat-img">
                        <div class="mini-stat-icon">
                            <i class="mdi mdi-briefcase-check float-end"></i>
                        </div>
                        <div class="text-white">
                            <h6 class="text-uppercase mb-3 font-size-16 text-white">  معلومات عنا </h6>
                            <h2 class="mb-4 text-white">{{\App\Models\AboutUs::where('type','about_us')->count()}}</h2>
                            {{--                        <span class="badge bg-info"> +89% </span> <span class="ms-2">From previous period</span>--}}
                        </div>
                    </div>
                </div>
            </a>

        </div>
    </div>
    <!-- end row -->


    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title mb-4">اجندة   الرسائل الواردة</h4>

                    <div class="row">
                        <div id="calendar"></div>
                    </div>

                </div>
            </div>
        </div>
    </div>

@endsection


@section('js')
    <script src="https://washsquadsa.com/admin/plugins/calendar/jquery-ui.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"
            integrity="sha256-4iQZ6BVL4qNKlQ27TExEhBN1HFPvAvAMbFavKKosSWQ=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/locale/ar.min.js"
            integrity="sha512-gVMzWflhCRdT4UPPUzNR9gCPtBZuc77GZxVx2CqSZyv0kEPIISiZEU0hk6Sb/LLSO87j4qXH/m9Iz373K+mufw=="
            crossorigin="anonymous"></script>

    <script>
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $('#calendar').fullCalendar({
            defaultView: 'month',
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month,agendaWeek,agendaDay'
            },
            isRTL: true,
            locale: 'ar',
            lang: 'ar',
            editable: false,
            disableDragging: true,
            eventLimit: true, // allow "more" link when too many events
            selectable: true,
            events: '{{route('admin.calender')}}',
            eventRender: function (event, element, view) {
                var sup = element.find('.fc-content')
                var con = sup.closest('span');
                var day_title = 'عدد الرسائل';

                sup.html(day_title + "<br>" + event.title + " <br> <br>" + `<button style="display: none" id="${event.ids}" class="click_me btn btn-outline-danger text-white">تفاصيل</button>`);
                //event.title
            }
        });//calender object

        $(document).on('click', '.click_me', function (e) {
            e.preventDefault()
            alert($(this).attr('id'))
        })
    </script>

@endsection
