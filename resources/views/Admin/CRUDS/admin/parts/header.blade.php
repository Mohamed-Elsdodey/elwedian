<button type="button" class="btn header-item waves-effect" id="page-header-user-dropdown"
        data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <img class="rounded-circle header-profile-user" src="{{get_file(admin()->user()->image)}}"
         alt="Header Avatar">
</button>
<div class="dropdown-menu dropdown-menu-end">
    <!-- item-->
    <a class="dropdown-item editProfile" href="#"><i class="mdi mdi-account-circle font-size-17 text-muted align-middle me-1"></i> {{ admin()->user()->name??'' }}</a>
    <a class="dropdown-item d-flex align-items-center" href="#"><i class="mdi mdi-cog font-size-17 text-muted align-middle me-1"></i> Settings<span class="badge bg-success ms-auto">11</span></a>
    <div class="dropdown-divider"></div>
    <a class="dropdown-item" href=""
       onclick="event.preventDefault();document.getElementById('logout-form').submit();"><i
            class="bx bx-log-out"></i>تسجيل خروج</a>
    <form id="logout-form" action="" method="POST" style="display: none;">
        @csrf
    </form>
</div>
