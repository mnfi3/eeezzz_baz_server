
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
                                    <i class="icon-user-follow"></i>
                                    <strong>اطلاعات کاربری  </strong>
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
                               <div class="row">
                                   <div class="col-md-6">
                                       <div class="row">
                                           <div class="col-md-3">
                                               <label for="name"> <strong>نام  :: </strong> </label>
                                           </div>
                                           <div class="col-md-9">
                                               <label for="name" style="font-weight: 600">علی عربگری </label>
                                           </div>
                                       </div>
                                       <div class="row">
                                           <div class="col-md-3">
                                               <label for="name"> <strong>موجودی  :: </strong> </label>
                                           </div>
                                           <div class="col-md-9">
                                               <label for="name" style="font-weight: 600"> 58000 تومان </label>
                                           </div>
                                       </div>
                                       <div class="row">
                                           <div class="col-md-3">
                                               <label for="name"> <strong>شماره همراه  :: </strong> </label>
                                           </div>
                                           <div class="col-md-9">
                                               <label for="name" style="font-weight: 600">09365018124</label>
                                           </div>
                                       </div>
                                   </div>
                                   <div class="col-md-6">
                                       <div class="row">
                                           <div class="col-md-3">
                                               <label for="name"> <strong>ایمیل  :: </strong> </label>
                                           </div>
                                           <div class="col-md-9">
                                               <label for="name" style="font-weight: 600"> aliarabgary@gmail.com </label>
                                           </div>
                                       </div>
                                       <div class="row">
                                           <div class="col-md-3">
                                               <label for="name"> <strong>آدرس  :: </strong> </label>
                                           </div>
                                           <div class="col-md-9">
                                               <label for="name" style="font-size: 1.1rem;font-weight: 600"> تبریز،دامپزشکی،کوچه مینو،پلاک 231،طبقه اول</label>

                                           </div>
                                       </div>
                                   </div>
                               </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="portlet box border shadow round">
                <div class="portlet-heading">
                    <div class="portlet-title">
                        <h3 class="title">
                            <i class="icon-game-controller "></i>
                            لیست بازی ها اجاره ای <strong><< علی زمانی >></strong>
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

                        <div class="pull-left">
                        </div>
                        <div class="table-responsive">
                            <table class="table table-hover table-striped" id="data-table">
                                <thead>
                                <tr>
                                    <th>ردیف</th>
                                    <th>نام</th>
                                    <th>تاریخ اجاره</th>
                                    <th>تاریخ اتمام</th>
                                    <th>نوع اجاره</th>
                                    <th>وضعیت پرداخت</th>
                                    <th>وضعیت</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    {{--<td><img src="{{$currency->filename}}" height="35" class="rounded float-right" alt="{{$currency->name}}"></td>--}}
                                    <td class="text-black" >God Of War 4 - Region 2 - ps4</td>
                                    <td>
                                        1398/09/20 ، 19:20:36
                                    </td>
                                    <td>
                                        1398/09/28
                                    </td>
                                    <td>
                                        7 روزه
                                    </td>
                                    <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#myModal1">مشاهده</button></td>

                                    <td>
                                        <a class="btn btn-sm del-btn "  href="#">
                                            در حال ارسال
                                        </a>
                                    </td>

                                </tr>
                                <tr>
                                    <td>1</td>
                                    {{--<td><img src="{{$currency->filename}}" height="35" class="rounded float-right" alt="{{$currency->name}}"></td>--}}
                                    <td class="text-black" >God Of War 4 - Region 2 - ps4</td>
                                    <td>
                                        1398/09/20 ، 19:20:36
                                    </td>
                                    <td>
                                        1398/09/28
                                    </td>
                                    <td>
                                        7 روزه
                                    </td>
                                    <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#myModal1">مشاهده</button></td>

                                    <td>
                                        <a class="btn btn-sm del-btn "  href="#">
                                            در حال ارسال
                                        </a>
                                    </td>

                                </tr>
                                <tr>
                                    <td>1</td>
                                    {{--<td><img src="{{$currency->filename}}" height="35" class="rounded float-right" alt="{{$currency->name}}"></td>--}}
                                    <td class="text-black" >God Of War 4 - Region 2 - ps4</td>
                                    <td>
                                        1398/09/20 ، 19:20:36
                                    </td>
                                    <td>
                                        1398/09/28
                                    </td>
                                    <td>
                                        7 روزه
                                    </td>
                                    <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#myModal1">مشاهده</button></td>

                                    <td>
                                        <a class="btn btn-sm del-btn "  href="#">
                                            در حال ارسال
                                        </a>
                                    </td>

                                </tr>
                                </tbody>
                            </table>
                        </div><!-- /.table-responsive -->
                        <div class="pull-left">
                            {{--{{ $currencyList->links() }}--}}
                        </div>
                        <div class="clearfix"></div>
                    </div><!-- /.portlet-body -->
                </div><!-- /.portlet -->
            </div><!-- /.col-md-12 -->
        </div>
        <div class="col-md-12">
            <div class="portlet box border shadow round">
                <div class="portlet-heading">
                    <div class="portlet-title">
                        <h3 class="title">
                            <i class="icon-game-controller "></i>
                            لیست بازی ها خریداری شده<strong><< علی زمانی >></strong>
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

                        <div class="pull-left">
                        </div>
                        <div class="table-responsive">
                            <table class="table table-hover table-striped" id="data-table">
                                <thead>
                                <tr>
                                    <th>ردیف</th>
                                    <th>نام</th>
                                    <th>تاریخ خرید</th>
                                    <th>قیمت بازی(تومان)</th>
                                    <th>وضعیت پرداخت</th>
                                    <th>وضعیت</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    {{--<td><img src="{{$currency->filename}}" height="35" class="rounded float-right" alt="{{$currency->name}}"></td>--}}
                                    <td class="text-black" >God Of War 4 - Region 2 - ps4</td>
                                    <td>
                                        1398/09/20 ، 19:20:36
                                    </td>
                                    <td>
                                        363000
                                    </td>
                                    <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#myModal">مشاهده</button></td>

                                    <td>
                                        <a class="btn btn-sm del-btn "  href="#">
                                            در حال ارسال
                                        </a>
                                    </td>

                                </tr>
                                <tr>
                                    <td>1</td>
                                    {{--<td><img src="{{$currency->filename}}" height="35" class="rounded float-right" alt="{{$currency->name}}"></td>--}}
                                    <td class="text-black" >God Of War 4 - Region 2 - ps4</td>
                                    <td>
                                        1398/09/20 ، 19:20:36
                                    </td>
                                    <td>
                                        363000
                                    </td>
                                    <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#myModal">مشاهده</button></td>

                                    <td>
                                        <a class="btn btn-sm del-btn "  href="#">
                                            در حال ارسال
                                        </a>
                                    </td>

                                </tr>
                                <tr>
                                    <td>1</td>
                                    {{--<td><img src="{{$currency->filename}}" height="35" class="rounded float-right" alt="{{$currency->name}}"></td>--}}
                                    <td class="text-black" >God Of War 4 - Region 2 - ps4</td>
                                    <td>
                                        1398/09/20 ، 19:20:36
                                    </td>
                                    <td>
                                        363000
                                    </td>
                                    <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#myModal">مشاهده</button></td>

                                    <td>
                                        <a class="btn btn-sm del-btn "  href="#">
                                            در حال ارسال
                                        </a>
                                    </td>

                                </tr>
                                </tbody>
                            </table>
                        </div><!-- /.table-responsive -->
                        <div class="pull-left">
                            {{--{{ $currencyList->links() }}--}}
                        </div>
                        <div class="clearfix"></div>
                    </div><!-- /.portlet-body -->
                </div><!-- /.portlet -->
            </div><!-- /.col-md-12 -->
        </div>
        <div class="col-md-12">
            <div class="portlet box border shadow round">
                <div class="portlet-heading">
                    <div class="portlet-title">
                        <h3 class="title">
                            <i class="fa fa-telegram"></i>
                            ارتباط با پشتیبانی
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
                        <div class="container bg-light p-2" >
                            <div class="d-flex flex-column" style="width: 75%" >
                                <div style="height: 450px;border-top-left-radius: 5px;border-top-right-radius: 5px;overflow-y: auto;overflow-x: hidden" class="bg-darkblue">
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
                                            <i class="fa fa-shopping-basket" style=""></i><span> علی زمانی :</span>

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
                                            <i class="fa fa-shopping-basket" style=""></i><span> علی زمانی :</span>

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
                                            <i class="fa fa-shopping-basket" style=""></i><span> علی زمانی  :</span>

                                            <p class="p-5" style="padding: 10px !important; font-size: 1.3rem;font-weight:600">
                                                تا اینکه کپا آریسابالاگا دروازه‌بان اسپانیایی چلسی در آخرین لحظات مسابقه با حرکتی عجیب، خطای بی‌موردی روی کاپیتان نروژ عمر العبدلاوی انجام داد که به پنالتی تبدیل شد و بازی را 1-1 مساوی کرد.
                                            </p>
                                        </div>
                                    </div>

                                </div>
                                <div style="width: 100%;height: 100px;border-bottom-left-radius: 5px;border-bottom-right-radius: 5px" class="bg-warning">
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
        <div class="col-md-12">
            <div class="portlet box border shadow round">

                <div class="portlet-heading">
                    <div class="portlet-title ">
                        <h3 class="title">
                            <i class="fa fa-envelope-open "></i>
                            ارسال پیام کوتاه به  کاربر
                        </h3>
                        <form role="form" action="InsertNewDCurrency" method="post" enctype="multipart/form-data">
                            {{csrf_field()}}
                            <div class="form-body my-2">
                                <div class="form-group">
                                    <div class="input-group " >
                                                <span class="input-group-addon">
                                                    <i class="icon-info"></i>
                                                </span>
                                        <textarea style="min-height: 170px" type="text" name="name" class="form-control" value="" placeholder="(لطفا در نوشتن پیام دقت کافی داشته باشید)"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="form-actions">
                                <button type="submit" name="submit" class="btn btn-info btn-round">
                                    <i class="fa fa-search"></i>
                                    ارسال
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
                <div class="portlet-heading">
                    <div class="portlet-title">
                        <h3 class="title">
                            <i class="icon-game-controller "></i>
                            لیست پیام های ارسال شده<strong><< علی زمانی >></strong>
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

                        <div class="pull-left">
                        </div>
                        <div class="table-responsive">
                            <table class="table table-hover table-striped" id="data-table">
                                <thead>
                                <tr>
                                    <th>ردیف</th>
                                    <th>تاریخ </th>
                                    <th>محتوای پیام</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    {{--<td><img src="{{$currency->filename}}" height="35" class="rounded float-right" alt="{{$currency->name}}"></td>--}}
                                    <td>
                                        1398/09/20 ، 19:20:36
                                    </td>
                                    <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#myModal2">مشاهده</button></td>

                                </tr>
                                </tbody>
                            </table>
                        </div><!-- /.table-responsive -->
                        <div class="pull-left">
                            {{--{{ $currencyList->links() }}--}}
                        </div>
                        <div class="clearfix"></div>
                    </div><!-- /.portlet-body -->
                </div>
            </div><!-- /.col-md-12 -->
        </div>
        <div class="col-md-12">
            <div class="portlet box border shadow round">
                <div class="portlet-heading">
                    <div class="portlet-title">
                        <h3 class="title">
                            <i class="icon-game-controller "></i>
                           اطلاعات مالی<strong><< علی زمانی >></strong>
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

                        <div class="pull-left">
                        </div>
                        <div class="table-responsive">
                            <table class="table table-hover table-striped" id="data-table">
                                <thead>
                                <tr>
                                    <th>ردیف</th>
                                    <th>نوع</th>
                                    <th>تاریخ</th>
                                    <th>مقدار(تومان)</th>
                                    <th>شماره پیگیری</th>
                                    <th>بابت</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr style="background-color: #d65341">
                                    <td>1</td>
                                    {{--<td><img src="{{$currency->filename}}" height="35" class="rounded float-right" alt="{{$currency->name}}"></td>--}}
                                    <td class="text-black" >کاهشی</td>
                                    <td class="text-black" >197/06/29 و 16:20:51</td>
                                    <td>
                                        287000
                                    </td>
                                    <td>
                                        1334578
                                    </td>
                                    <td>اجاره</td>
                                     </tr>
                                <tr style="background-color: #67d646">
                                    <td>2</td>
                                    {{--<td><img src="{{$currency->filename}}" height="35" class="rounded float-right" alt="{{$currency->name}}"></td>--}}
                                    <td class="text-black" >افزایشی</td>
                                    <td class="text-black" >197/06/29 و 16:20:51</td>
                                    <td>
                                        287000
                                    </td>
                                    <td>
                                        1334578
                                    </td>
                                    <td>خرید</td>

                                </tr>

                                </tbody>
                            </table>
                        </div><!-- /.table-responsive -->
                        <div class="pull-left">
                            {{--{{ $currencyList->links() }}--}}
                        </div>
                        <div class="clearfix"></div>
                    </div><!-- /.portlet-body -->
                </div><!-- /.portlet -->
            </div><!-- /.col-md-12 -->
        </div>


        <div class="modal fade" id="myModal1" style="font-family: Vazir">
            <div class="modal-dialog">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title text-right ml-auto">اطلاعات</h4>
                        <button type="button" class="close" data-dismiss="modal1">&times;</button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body text-right">
                        <p> شماره پرداخت : 12345678</p>
                        <p> مبلغ :593000</p>
                        <p> تاریخ :1397/03/09</p>
                        <p>زمان :13:50:20 </p>
                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="custom-btn btn-danger" data-dismiss="modal" style="max-width: 60px">بستن</button>
                    </div>

                </div>
            </div>
        </div>
        <div class="modal fade" id="myModal2" style="font-family: Vazir">
            <div class="modal-dialog">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title text-right ml-auto">اطلاعات</h4>
                        <button type="button" class="close" data-dismiss="modal1">&times;</button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body text-right">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci consequuntur nostrum officia quo totam ut.</p>
                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="custom-btn btn-danger" data-dismiss="modal" style="max-width: 60px">بستن</button>
                    </div>

                </div>
            </div>
        </div>
        <div class="modal fade" id="myModal" style="font-family: Vazir">
            <div class="modal-dialog">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title text-right ml-auto">اطلاعات</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <!-- Modal body -->
                    <div class="modal-body text-right">
                        <p> شماره پرداخت : 12345678</p>
                        <p> مبلغ :593000</p>
                        <p> تاریخ :1397/03/09</p>
                        <p>زمان :13:50:20 </p>
                    </div>
                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="custom-btn btn-danger" data-dismiss="modal" style="max-width: 60px">بستن</button>
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



