<!--begin::Form-->

<form id="form" enctype="multipart/form-data" method="POST" action="{{route('product.store')}}">
    @csrf
    <div class="row g-4">

        <div class="form-group">
            <label for="name" class="form-control-label">الصورة</label>
            <input type="file" class="dropify" name="image" data-default-file="" accept="image/*"/>
            <span class="form-text text-muted text-center">مسموح فقط بالصيغ التالية : jpeg , jpg , png , gif , svg , webp , avif</span>
        </div>

        <div class="d-flex flex-column mb-7 fv-row col-sm-6">
            <!--begin::Label-->
            <label for="title_ar" class="d-flex align-items-center fs-6 fw-bold form-label mb-2">
                <span class="required mr-1">الاسم باللغة العربية</span>
            </label>
            <!--end::Label-->
            <input id="title_ar" required type="text" class="form-control form-control-solid" placeholder=" " name="title_ar" value=""/>
        </div>


        <div class="d-flex flex-column mb-7 fv-row col-sm-6">
            <!--begin::Label-->
            <label for="title_en" class="d-flex align-items-center fs-6 fw-bold form-label mb-2">
                <span class="required mr-1">الاسم باللغة الانجليزية</span>
            </label>
            <!--end::Label-->
            <input id="title_en" required type="text" class="form-control form-control-solid" placeholder=" " name="title_en" value=""/>
        </div>

        <div class="col-sm-6 pb-3 p-2">
            <label for="desc_ar" class="form-label"> desc_ar </label>
            <textarea name="desc_ar" id="desc_ar" class="form-control" rows="5"
                      placeholder=""></textarea>
        </div>

        <div class="col-sm-6 pb-3 p-2">
            <label for="desc_en" class="form-label"> desc_en </label>
            <textarea name="desc_en" id="desc_en" class="form-control" rows="5"
                      placeholder=""></textarea>
        </div>

    </div>
</form>
<script>
    $('.dropify').dropify();

</script>
