
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
    <link type="text/css" rel="stylesheet" href="{{asset('css/persian-datepicker.min.css')}}" />

    @include('include.css')
    @include('include.js')
</head>
<body class="active-ripple theme-blue fix-header sidebar-extra ">
@include('include.nav-bar')
<div id="page-content">
    <div class="col-md-12">
        <div class="portlet box border shadow round">
            <div class="portlet-heading">
                <div class="portlet-title ">
                    <h3 class="title">
                        <i class="fa fa-ticket"></i>
                        تیکت ها</strong>
                    </h3>
                    <form role="form" action="InsertNewDCurrency" method="post" enctype="multipart/form-data">
                        {{csrf_field()}}
                        <div class="form-body my-2">
                            <div class="form-group">
                                <div class="input-group round">
                                                <span class="input-group-addon">
                                                    <i class="icon-info"></i>
                                                </span>
                                    <input type="text" name="name" class="form-control" value="" placeholder="نام کاربری یا ایمیل یا شماره موبایل">
                                </div>
                            </div>


                        </div>

                        <div class="form-actions">
                            <button type="submit" name="submit" class="btn btn-info btn-round">
                                <i class="fa fa-search"></i>
                                جستجو
                            </button>
                        </div><!-- /.form-actions -->
                    </form>

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
                    <div class="container bg-light p-2 row" >
                        <div class=" col-md-3" style="max-height: 450px;overflow-y: auto;overflow-x: hidden">
                            <h2>لیست تیکت ها</h2>
                            <ul>
                                <li class="p-3 text-black"><a href="">Ali Arabgary</a> <span><span class="new-order2"> جدید </span></span></li>
                                <li class="p-3 text-black"><a href="">Poya Akn</a> <span><span class="new-order2"> جدید </span></span></li>
                                <li class="p-3 text-black"><a href="">mohsen3</a> </li>
                                <li class="p-3 text-black"><a href="">Ali Arabgary</a> <span><span class="new-order2"> جدید </span></span></li>
                                <li class="p-3 text-black"><a href="">Poya Akn</a> <span><span class="new-order2"> جدید </span></span></li>
                                <li class="p-3 text-black"><a href="">mohsen3</a> </li>
                                <li class="p-3 text-black"><a href="">Ali Arabgary</a> <span><span class="new-order2"> جدید </span></span></li>
                                <li class="p-3 text-black"><a href="">Poya Akn</a> <span><span class="new-order2"> جدید </span></span></li>
                                <li class="p-3 text-black"><a href="">mohsen3</a> </li>
                            </ul>

                        </div>
                        <div class="col-md-9 row " style="width: 55%" >
                            <div style="height: 450px;border-top-left-radius: 5px;border-top-right-radius: 5px;overflow-y: auto;overflow-x: hidden" class="col-12 bg-darkblue">
                                <div class="row" style="">
                                    <div class="text-white col-md-8 ml-auto" style="max-width: 65%;border-radius: 8px;margin: 15px;background-color: #0f74a8;"  >
                                        <i class="fa fa-user" style=""></i><span> پشتیبان :</span>
                                        <p class="p-5 " style="padding: 10px !important; font-size: 1.3rem;font-weight: 600">
                                            تا اینکه کپا آریسابالاگا دروازه‌بان اسپانیایی چلسی در آخرین لحظات مسابقه با حرکتی عجیب، خطای بی‌موردی روی کاپیتان نروژ عمر العبدلاوی انجام داد که به پنالتی تبدیل شد و بازی را 1-1 مساوی کرد.
                                        </p>
                                    </div>
                                </div>
                                <div class="row" style="">
                                    <div class="text-white col-md-8 mr-auto" style="max-width: 65%;border-radius: 8px;margin-right: 15px;background-color: #856404;"  >
                                        <i class="fa fa-shopping-basket" style=""></i><span> رستوران :</span>

                                        <p class="p-5" style="padding: 10px !important; font-size: 1.3rem;font-weight:600">
                                            تا اینکه کپا آریسابالاگا دروازه‌بان اسپانیایی چلسی در آخرین لحظات مسابقه با حرکتی عجیب، خطای بی‌موردی روی کاپیتان نروژ عمر العبدلاوی انجام داد که به پنالتی تبدیل شد و بازی را 1-1 مساوی کرد.
                                        </p>
                                    </div>
                                </div>
                                <div class="row" style="">
                                    <div class="text-white col-md-8 ml-auto" style="max-width: 65%;border-radius: 8px;margin: 15px;background-color: #0f74a8;"  >
                                        <i class="fa fa-user" style=""></i><span> پشتیبان :</span>
                                        <p class="p-5 " style="padding: 10px !important; font-size: 1.3rem;font-weight: 600">
                                            تا اینکه کپا آریسابالاگا دروازه‌بان اسپانیایی چلسی در آخرین لحظات مسابقه با حرکتی عجیب، خطای بی‌موردی روی کاپیتان نروژ عمر العبدلاوی انجام داد که به پنالتی تبدیل شد و بازی را 1-1 مساوی کرد.
                                        </p>
                                    </div>
                                </div>
                                <div class="row" style="">
                                    <div class="text-white col-md-8 mr-auto" style="max-width: 65%;border-radius: 8px;margin-right: 15px;background-color: #856404;"  >
                                        <i class="fa fa-shopping-basket" style=""></i><span> رستوران :</span>

                                        <p class="p-5" style="padding: 10px !important; font-size: 1.3rem;font-weight:600">
                                            تا اینکه کپا آریسابالاگا دروازه‌بان اسپانیایی چلسی در آخرین لحظات مسابقه با حرکتی عجیب، خطای بی‌موردی روی کاپیتان نروژ عمر العبدلاوی انجام داد که به پنالتی تبدیل شد و بازی را 1-1 مساوی کرد.
                                        </p>
                                    </div>
                                </div>
                                <div class="row" style="">
                                    <div class="text-white col-md-8 ml-auto" style="max-width: 65%;border-radius: 8px;margin: 15px;background-color: #0f74a8;"  >
                                        <i class="fa fa-user" style=""></i><span> پشتیبان :</span>
                                        <p class="p-5 " style="padding: 10px !important; font-size: 1.3rem;font-weight: 600">
                                            تا اینکه کپا آریسابالاگا دروازه‌بان اسپانیایی چلسی در آخرین لحظات مسابقه با حرکتی عجیب، خطای بی‌موردی روی کاپیتان نروژ عمر العبدلاوی انجام داد که به پنالتی تبدیل شد و بازی را 1-1 مساوی کرد.
                                        </p>
                                    </div>
                                </div>
                                <div class="row" style="">
                                    <div class="text-white col-md-8 mr-auto" style="max-width: 65%;border-radius: 8px;margin-right: 15px;background-color: #856404;"  >
                                        <i class="fa fa-shopping-basket" style=""></i><span> رستوران :</span>

                                        <p class="p-5" style="padding: 10px !important; font-size: 1.3rem;font-weight:600">
                                            تا اینکه کپا آریسابالاگا دروازه‌بان اسپانیایی چلسی در آخرین لحظات مسابقه با حرکتی عجیب، خطای بی‌موردی روی کاپیتان نروژ عمر العبدلاوی انجام داد که به پنالتی تبدیل شد و بازی را 1-1 مساوی کرد.
                                        </p>
                                    </div>
                                </div>

                            </div>
                            <div style="width: 100%;height: 100px;border-bottom-left-radius: 5px;border-bottom-right-radius: 5px" class="col-12 bg-warning">
                                <div class="row form">
                                    <div class="col-md-8 m-0">
                                        <textarea name="" id="" style="width: 100%;height: 100px;border-radius: 5px;" placeholder="پیام خود را یادداشت کنید" class=""></textarea>
                                    </div>
                                    <div class="col-md-4 m-0">
                                        <button  type="submit" style="width: 100%;height: 100px;  font-size: 2rem" class="text-center bg-purple text-white">ارسال</button>
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>


                </div><!-- /.portlet-body -->
            </div><!-- /.portlet -->
        </div><!-- /.col-md-12 -->
    </div>









    <!-- BEGIN PAGE JAVASCRIPT -->
    <script src="{{ asset('plugins/data-table/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('plugins/data-table/js/dataTables.bootstrap.js') }}"></script>
    <script src="{{ asset('js/pages/datatable.js') }}"></script>
    <link href="{{ asset('plugins/data-table/css/dataTables.bootstrap.css') }}" rel="stylesheet">


    @include('include.date-picker-js')

</div>
</div>
</div>
</body>



