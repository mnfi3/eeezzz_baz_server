
<!DOCTYPE html>
<html lang="fa" dir="rtl">


<head>
    <title>پنل مدیریت</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="پنل مدیریت">
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="shortcut icon" href="{{ asset('/images/favicon.png') }}">

    @include('include.css')
    @include('include.js')
</head>
<body class="active-ripple theme-blue fix-header sidebar-extra ">
@include('include.nav-bar')
<div id="page-content">
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-12">
                    <div class="portlet box border shadow round">
                        <div class="portlet-heading">
                            <div class="portlet-title">
                                <h3 class="title">
                                    <i class="icon-game-controller"></i>
                                    ویرایش اسلایدر
                                </h3>
                            </div>
                            <div class="buttons-box">
                                <a class="btn btn-sm btn-default btn-round btn-fullscreen" rel="tooltip" title="تمام صفحه" href="#">
                                    <i class="icon-size-fullscreen"></i>
                                </a>
                                <a class="btn btn-sm btn-default btn-round btn-collapse" rel="tooltip" title="کوچک کردن" href="#">
                                    <i class="icon-arrow-up"></i>
                                </a>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="portlet-body">
                                <form role="form" action="{{url('/panel/slider-update')}}" method="post" enctype="multipart/form-data">
                                    {{csrf_field()}}
                                    <input type="hidden" name="id" value="{{$slider->id}}">
                                    <div class="form-body">

                                        <div class="form-group">
                                            <label>عنوان</label>
                                            <div class="input-group round">
                                                <span class="input-group-addon">
                                                    <i class="icon-info"></i>
                                                </span>
                                                <input type="text" name="title" class="form-control" value="{{$slider->title}}" placeholder="یک عنوان وارد کنید">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label>محتوا</label>
                                            <div class="input-group round">
                                                <span class="input-group-addon">
                                                    <i class="icon-info"></i>
                                                </span>
                                                <input type="text" name="content" class="form-control" value="{{$slider->content}}" placeholder="در صورت وجود توضیحات وارد کنید">
                                            </div>
                                        </div>

                                        <div class="form-group relative">
                                            <input type="file" name="image" class="form-control" >
                                            <label>  عکس </label>
                                            <div class="input-group round">
                                                <input type="text" class="form-control file-input" placeholder="برای آپلود کلیک کنید(اگر نمیخواهید عکس را ویرایش کنید عکس انتخاب نکنید)">
                                                <span class="input-group-btn input-group-sm">
                                                <button type="button" class="btn btn-info">
                                                    <i class="icon-picture"></i>
                                                    آپلود عکس
                                                </button>
                                            </span>
                                            </div><!-- /.input-group -->
                                        </div><!-- /.form-group -->



                                        <div class="form-group">
                                            <label>نوع کلیک اسلایدر را انتخاب کنید</label>
                                            <div class="input-group round">
                                                <span class="input-group-addon">
                                                    <i class="icon-info"></i>
                                                </span>

                                                <select class="form-control" name="on_click">
                                                    <option value="0" ></option>
                                                    <option value="URL" @if($on_click == 'URL') selected @endif>انتقال به لینک</option>
                                                    <option value="INAPP_SHOP" @if($on_click == 'INAPP_SHOP') selected @endif>انتقال به صفحه یک بازی فروشی</option>
                                                    <option value="INAPP_ACCOUNT" @if($on_click == 'INAPP_ACCOUNT') selected @endif>انتقال به صفحه یک اکانت</option>
                                                    <option value="INAPP_RENT" @if($on_click == 'INAPP_RENT') selected @endif>انتقال به صفحه یک بازی اجاره ای</option>
                                                    <option value="INAPP_PRODUCT" @if($on_click == 'INAPP_PRODUCT') selected @endif>انتقال به صفحه یک محصول فروشی</option>
                                                </select>
                                            </div><!-- /.input-group -->
                                        </div><!-- /.form-group -->



                                    </div>

                                    <div class="form-group">
                                        <label>اطلاعات</label>
                                        <div class="input-group round">
                                                <span class="input-group-addon">
                                                    <i class="icon-info"></i>
                                                </span>
                                            <input type="text" name="data" class="form-control" value="{{$data}}" placeholder="در صورت انتخاب انتقال به لینک ، آدرس صفحه در غیر این صورت آیدی موجودیت را وارد کنید ">
                                        </div>
                                    </div>
                                    <div class="form-actions">
                                        <button type="submit" name="submit" class="btn btn-info btn-round">
                                            <i class="icon-check"></i>
                                            ذخیره
                                        </button>
                                    </div><!-- /.form-actions -->
                                </form>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- BEGIN PAGE JAVASCRIPT -->
        <script src="{{ asset('plugins/data-table/js/jquery.dataTables.min.js') }}"></script>
        <script src="{{ asset('plugins/data-table/js/dataTables.bootstrap.js') }}"></script>
        <script src="{{ asset('js/pages/datatable.js') }}"></script>
        <link href="{{ asset('plugins/data-table/css/dataTables.bootstrap.css') }}" rel="stylesheet">

    </div>
</div>
</div>
</body>



