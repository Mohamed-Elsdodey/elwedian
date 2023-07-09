<!-- ========== Left Sidebar Start ========== -->
<div class="vertical-menu">

    <div data-simplebar class="h-100">

        <!--- Sidemenu -->
        <div id="sidebar-menu">
            <!-- Left Menu Start -->
            <!-- App Search-->
            <ul class="metismenu list-unstyled">
                <li>
                    <form class="app-search d-none d-lg-block">
                        <meta name="csrf-token" content="{{ csrf_token() }}">
                        <div class="position-relative">
                            <input type="text" id="myInput" onkeyup="myFunction()" class="form-control"
                                   placeholder="ابحث هنا ..." onchange="SearchP($(this))">
                            <span class="fa fa-search"></span>
                        </div>
                    </form>
                </li>
            </ul>
            <ul class="metismenu list-unstyled " id="side-menu">

                <!-- <div id="SearchArea">-->
                {{--              @can('عرض الرئيسية')--}}
                <li>
                    <a href="{{ route('admin.index') }}" class="waves-effect">
                        <i class="mdi mdi-view-dashboard"></i>
                        <span>الرئيسية</span>
                    </a>
                </li>

                <li>
                    <a href="{{ route('admins.index') }}" class="waves-effect">
                        <i class="fa fa-user-secret"></i>
                        <span> المستخدمين</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('sliders.index') }}" class="waves-effect">
                        <i class="fa fa-camera"></i>
                        <span>البانر المتحرك</span>
                    </a>
                </li>

                <li>
                    <a href="{{ route('contacts.index') }}" class="waves-effect">
                        <i class="fa fa-marker"></i>
                        <span> طلبات التواصل</span>
                    </a>
                </li>

                <li>
                    <a href="{{ route('aboutUs.index') }}" class="waves-effect">
                        <i class="fa fa-info"></i>
                        <span>  معلومات عنا</span>
                    </a>
                </li>

                <li>
                    <a href="{{ route('products.index') }}" class="waves-effect">
                        <i class="fa fa-info"></i>
                        <span>   تعريف المنتجات</span>
                    </a>
                </li>


                <li>
                    <a href="{{ route('product.index') }}" class="waves-effect">
                        <i class="fa fa-list"></i>
                        <span>   المنتجات</span>
                    </a>
                </li>

                <li>
                    <a href="{{ route('categories.index') }}" class="waves-effect">
                        <i class="fa fa-list"></i>
                        <span>   الاقسام الرئيسية</span>
                    </a>
                </li>

                <li>
                    <a href="{{ route('sub_categories.index') }}" class="waves-effect">
                        <i class="fa fa-list"></i>
                        <span>   الاقسام الفرعية</span>
                    </a>
                </li>


                <li>
                    <a href="{{ route('settings.index') }}" class="waves-effect">
                        <i class="fa fa-cog"></i>
                        <span>    الاعدادات العامة</span>
                    </a>
                </li>

            </ul>
        </div>
        <!-- Sidebar -->
    </div>
</div>
<!-- Left Sidebar End -->

<script>
    function myFunction() {
        var input, filter, ul, li, a, i, txtValue;
        input = document.getElementById("myInput");
        filter = input.value.toUpperCase();
        ul = document.getElementById("side-menu");
        li = ul.getElementsByTagName("li");
        for (i = 0; i < li.length; i++) {
            a = li[i];
            txtValue = a.textContent || a.innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                li[i].style.display = "";
            } else {
                li[i].style.display = "none";
            }
        }
    }
</script>
