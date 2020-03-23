
<!DOCTYPE html>
<html lang="fa" dir="rtl">


<head>
    <title>ایزی بازی|پنل مدیریت</title>
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
            {{--new orders--}}
            <div class="portlet box border shadow round">
                <div class="portlet-heading">
                    <div class="portlet-title ">
                        <h3 class="title">
                            <i class="icon-user"></i>
                            لیست سفارشات اجاره جدید
                        </h3>

                        <form action="" method="get" class="mt-2 mb-5 text-center">
                            <div class="form-group row mr-5 ">
                                <div class="col-sm-4">
                                    <input name="text" type="text" value="@if(!empty($text)) {{$text}} @endif"  class="form-control mr-5" rows="5" placeholder="شماره سفارش را وارد کنید">
                                </div>
                                <button type="submit" class="btn btn-outline-primary ml-2 col-sm-1">جستجو</button>
                            </div>
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
                        <div class="pull-left">
                        </div>
                        <div class="table-responsive">
                            <table class="table table-hover table-striped" id="data-table">
                                <thead>
                                <tr style="font-size: 1.2rem">
                                    <th>ردیف</th>
                                    <th>شماره سفارش</th>
                                    <th>کاربر</th>
                                    <th>نام بازی</th>
                                    <th>اطلاعات ارسال</th>
                                    <th>بازه اجاره</th>
                                    <th>قیمت بازی</th>
                                    <th>قیمت اجاره</th>
                                    <th>وضعیت پرداخت</th>
                                    <th>تمدید ها</th>
                                    <th>وضعیت</th>
                                    <th>تاریخ اتمام </th>
                                </tr>
                                </thead>
                                <tbody>
                                @php($i=0)
                                @foreach($new_orders as $order)
                                <tr>
                                    <td> {{++$i}} </td>
                                    <td> {{$order->order_number}} </td>
                                    <td class="text-black">
                                        <a href="{{url('panel/user', $order->user->id)}}" class="bg-success p-2 table-link" style=""><h6>{{$order->user->full_name}}  </h6> </a>
                                    </td>
                                    <td class="text-black" >
                                        <a href="#" class="bg-success p-2 table-link" style=""><h6>{{$order->gameForRent->GameInfo->name}}</h6> </a>
                                    </td>
                                    <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#newOrdersAddressModal{{$order->id}}">مشاهده</button></td>
                                    <td class="text-black" >
                                        <h6>{{$order->rentType->day_count}} روزه</h6>
                                    </td>
                                    <td class="text-black" >
                                        <h6>{{number_format($order->game_price)}} تومان</h6>
                                    </td>
                                    <td class="text-black" >
                                        <h6>{{number_format($order->rent_price)}} تومان</h6>
                                    </td>
                                    <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#newOrdersPaymentModal{{$order->id}}">مشاهده</button></td>
                                    <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#newOrdersExtendModal{{$order->id}}">مشاهده</button></td>

                                    <td>
                                        <a class="btn btn-sm del-btn "  href="#">
                                            در حال ارسال
                                        </a>
                                    </td>
                                    <td class="text-black" >
                                        @php($date = new \App\Http\Controllers\helpers\PDate())
                                        <h6>{{$date->toPersian($order->finished_at, 'Y/m/d')}}</h6>
                                    </td>
                                </tr>
                                @endforeach
                            </table>
                        </div><!-- /.table-responsive -->
                        <div class="pull-left">
                            {{ $new_orders->links() }}
                        </div>
                        <div class="clearfix"></div>
                    </div><!-- /.portlet-body -->
                </div><!-- /.portlet -->
            </div><!-- /.col-md-12 -->

            {{--sent orders--}}
            <div class="portlet box border shadow round">
                <div class="portlet-heading">
                    <div class="portlet-title ">
                        <h3 class="title">
                            <i class="icon-user"></i>
                            لیست سفارشات اجاره ارسال شده
                        </h3>

                        <form action="" method="get" class="mt-2 mb-5 text-center">
                            <div class="form-group row mr-5 ">
                                <div class="col-sm-4">
                                    <input name="text" type="text" value="@if(!empty($text)) {{$text}} @endif"  class="form-control mr-5" rows="5" placeholder="شماره سفارش را وارد کنید">
                                </div>
                                <button type="submit" class="btn btn-outline-primary ml-2 col-sm-1">جستجو</button>
                            </div>
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
                        <div class="pull-left">
                        </div>
                        <div class="table-responsive">
                            <table class="table table-hover table-striped" id="data-table">
                                <thead>
                                <tr style="font-size: 1.2rem">
                                    <th>ردیف</th>
                                    <th>شماره سفارش</th>
                                    <th>کاربر</th>
                                    <th>نام بازی</th>
                                    <th>اطلاعات ارسال</th>
                                    <th>بازه اجاره</th>
                                    <th>قیمت بازی</th>
                                    <th>قیمت اجاره</th>
                                    <th>وضعیت پرداخت</th>
                                    <th>تمدید ها</th>
                                    <th>وضعیت</th>
                                    <th>تاریخ اتمام </th>
                                </tr>
                                </thead>
                                <tbody>
                                @php($i=0)
                                @foreach($sent_orders as $order)
                                    <tr>
                                        <td> {{++$i}} </td>
                                        <td> {{$order->order_number}} </td>
                                        <td class="text-black">
                                            <a href="{{url('panel/user', $order->user->id)}}" class="bg-success p-2 table-link" style=""><h6>{{$order->user->full_name}}  </h6> </a>
                                        </td>
                                        <td class="text-black" >
                                            <a href="#" class="bg-success p-2 table-link" style=""><h6>{{$order->gameForRent->GameInfo->name}}</h6> </a>
                                        </td>
                                        <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#sentOrdersAddressModal{{$order->id}}">مشاهده</button></td>
                                        <td class="text-black" >
                                            <h6>{{$order->rentType->day_count}} روزه</h6>
                                        </td>
                                        <td class="text-black" >
                                            <h6>{{number_format($order->game_price)}} تومان</h6>
                                        </td>
                                        <td class="text-black" >
                                            <h6>{{number_format($order->rent_price)}} تومان</h6>
                                        </td>
                                        <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#sentOrdersPaymentModal{{$order->id}}">مشاهده</button></td>
                                        <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#sentOrdersExtendModal{{$order->id}}">مشاهده</button></td>

                                        <td>
                                            <a class="btn btn-sm del-btn "  href="#">
                                                در حال ارسال
                                            </a>
                                        </td>
                                        <td class="text-black" >
                                            @php($date = new \App\Http\Controllers\helpers\PDate())
                                            <h6>{{$date->toPersian($order->finished_at, 'Y/m/d')}}</h6>
                                        </td>
                                    </tr>
                                @endforeach
                            </table>
                        </div><!-- /.table-responsive -->
                        <div class="pull-left">
                            {{ $new_orders->links() }}
                        </div>
                        <div class="clearfix"></div>
                    </div><!-- /.portlet-body -->
                </div><!-- /.portlet -->
            </div><!-- /.col-md-12 -->

            {{--delivered orders--}}
            <div class="portlet box border shadow round">
                <div class="portlet-heading">
                    <div class="portlet-title ">
                        <h3 class="title">
                            <i class="icon-user"></i>
                            لیست سفارشات اجاره تحویل داده شده
                        </h3>

                        <form action="" method="get" class="mt-2 mb-5 text-center">
                            <div class="form-group row mr-5 ">
                                <div class="col-sm-4">
                                    <input name="text" type="text" value="@if(!empty($text)) {{$text}} @endif"  class="form-control mr-5" rows="5" placeholder="شماره سفارش را وارد کنید">
                                </div>
                                <button type="submit" class="btn btn-outline-primary ml-2 col-sm-1">جستجو</button>
                            </div>
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
                        <div class="pull-left">
                        </div>
                        <div class="table-responsive">
                            <table class="table table-hover table-striped" id="data-table">
                                <thead>
                                <tr style="font-size: 1.2rem">
                                    <th>ردیف</th>
                                    <th>شماره سفارش</th>
                                    <th>کاربر</th>
                                    <th>نام بازی</th>
                                    <th>اطلاعات ارسال</th>
                                    <th>بازه اجاره</th>
                                    <th>قیمت بازی</th>
                                    <th>قیمت اجاره</th>
                                    <th>وضعیت پرداخت</th>
                                    <th>تمدید ها</th>
                                    <th>وضعیت</th>
                                    <th>تاریخ اتمام </th>
                                </tr>
                                </thead>
                                <tbody>
                                @php($i=0)
                                @foreach($delivered_orders as $order)
                                    <tr>
                                        <td> {{++$i}} </td>
                                        <td> {{$order->order_number}} </td>
                                        <td class="text-black">
                                            <a href="{{url('panel/user', $order->user->id)}}" class="bg-success p-2 table-link" style=""><h6>{{$order->user->full_name}}  </h6> </a>
                                        </td>
                                        <td class="text-black" >
                                            <a href="#" class="bg-success p-2 table-link" style=""><h6>{{$order->gameForRent->GameInfo->name}}</h6> </a>
                                        </td>
                                        <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#deliveredOrdersAddressModal{{$order->id}}">مشاهده</button></td>
                                        <td class="text-black" >
                                            <h6>{{$order->rentType->day_count}} روزه</h6>
                                        </td>
                                        <td class="text-black" >
                                            <h6>{{number_format($order->game_price)}} تومان</h6>
                                        </td>
                                        <td class="text-black" >
                                            <h6>{{number_format($order->rent_price)}} تومان</h6>
                                        </td>
                                        <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#deliveredOrdersPaymentModal{{$order->id}}">مشاهده</button></td>
                                        <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#deliveredOrdersExtendModal{{$order->id}}">مشاهده</button></td>

                                        <td>
                                            <a class="btn btn-sm del-btn "  href="#">
                                                در حال ارسال
                                            </a>
                                        </td>
                                        <td class="text-black" >
                                            @php($date = new \App\Http\Controllers\helpers\PDate())
                                            <h6>{{$date->toPersian($order->finished_at, 'Y/m/d')}}</h6>
                                        </td>
                                    </tr>
                                @endforeach
                            </table>
                        </div><!-- /.table-responsive -->
                        <div class="pull-left">
                            {{ $new_orders->links() }}
                        </div>
                        <div class="clearfix"></div>
                    </div><!-- /.portlet-body -->
                </div><!-- /.portlet -->
            </div><!-- /.col-md-12 -->

            {{--ending orders--}}
            <div class="portlet box border shadow round">
                <div class="portlet-heading">
                    <div class="portlet-title ">
                        <h3 class="title">
                            <i class="icon-user"></i>
                            لیست سفارشات اجاره در حال اتمام
                        </h3>

                        <form action="" method="get" class="mt-2 mb-5 text-center">
                            <div class="form-group row mr-5 ">
                                <div class="col-sm-4">
                                    <input name="text" type="text" value="@if(!empty($text)) {{$text}} @endif"  class="form-control mr-5" rows="5" placeholder="شماره سفارش را وارد کنید">
                                </div>
                                <button type="submit" class="btn btn-outline-primary ml-2 col-sm-1">جستجو</button>
                            </div>
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
                        <div class="pull-left">
                        </div>
                        <div class="table-responsive">
                            <table class="table table-hover table-striped" id="data-table">
                                <thead>
                                <tr style="font-size: 1.2rem">
                                    <th>ردیف</th>
                                    <th>شماره سفارش</th>
                                    <th>کاربر</th>
                                    <th>نام بازی</th>
                                    <th>اطلاعات ارسال</th>
                                    <th>بازه اجاره</th>
                                    <th>قیمت بازی</th>
                                    <th>قیمت اجاره</th>
                                    <th>وضعیت پرداخت</th>
                                    <th>تمدید ها</th>
                                    <th>وضعیت</th>
                                    <th>تاریخ اتمام </th>
                                </tr>
                                </thead>
                                <tbody>
                                @php($i=0)
                                @foreach($ending_orders as $order)
                                    <tr>
                                        <td> {{++$i}} </td>
                                        <td> {{$order->order_number}} </td>
                                        <td class="text-black">
                                            <a href="{{url('panel/user', $order->user->id)}}" class="bg-success p-2 table-link" style=""><h6>{{$order->user->full_name}}  </h6> </a>
                                        </td>
                                        <td class="text-black" >
                                            <a href="#" class="bg-success p-2 table-link" style=""><h6>{{$order->gameForRent->GameInfo->name}}</h6> </a>
                                        </td>
                                        <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#endingOrdersAddressModal{{$order->id}}">مشاهده</button></td>
                                        <td class="text-black" >
                                            <h6>{{$order->rentType->day_count}} روزه</h6>
                                        </td>
                                        <td class="text-black" >
                                            <h6>{{number_format($order->game_price)}} تومان</h6>
                                        </td>
                                        <td class="text-black" >
                                            <h6>{{number_format($order->rent_price)}} تومان</h6>
                                        </td>
                                        <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#endingOrdersPaymentModal{{$order->id}}">مشاهده</button></td>
                                        <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#endingOrdersExtendModal{{$order->id}}">مشاهده</button></td>

                                        <td>
                                            <a class="btn btn-sm del-btn "  href="#">
                                                در حال ارسال
                                            </a>
                                        </td>
                                        <td class="text-black" >
                                            @php($date = new \App\Http\Controllers\helpers\PDate())
                                            <h6>{{$date->toPersian($order->finished_at, 'Y/m/d')}}</h6>
                                        </td>
                                    </tr>
                                @endforeach
                            </table>
                        </div><!-- /.table-responsive -->
                        <div class="pull-left">
                            {{ $new_orders->links() }}
                        </div>
                        <div class="clearfix"></div>
                    </div><!-- /.portlet-body -->
                </div><!-- /.portlet -->
            </div><!-- /.col-md-12 -->

            {{--finished delay orders--}}
            <div class="portlet box border shadow round">
                <div class="portlet-heading">
                    <div class="portlet-title ">
                        <h3 class="title">
                            <i class="icon-user"></i>
                            لیست سفارشات اجاره تمام شده در حال تاخیر
                        </h3>

                        <form action="" method="get" class="mt-2 mb-5 text-center">
                            <div class="form-group row mr-5 ">
                                <div class="col-sm-4">
                                    <input name="text" type="text" value="@if(!empty($text)) {{$text}} @endif"  class="form-control mr-5" rows="5" placeholder="شماره سفارش را وارد کنید">
                                </div>
                                <button type="submit" class="btn btn-outline-primary ml-2 col-sm-1">جستجو</button>
                            </div>
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
                        <div class="pull-left">
                        </div>
                        <div class="table-responsive">
                            <table class="table table-hover table-striped" id="data-table">
                                <thead>
                                <tr style="font-size: 1.2rem">
                                    <th>ردیف</th>
                                    <th>شماره سفارش</th>
                                    <th>کاربر</th>
                                    <th>نام بازی</th>
                                    <th>اطلاعات ارسال</th>
                                    <th>بازه اجاره</th>
                                    <th>قیمت بازی</th>
                                    <th>قیمت اجاره</th>
                                    <th>وضعیت پرداخت</th>
                                    <th>تمدید ها</th>
                                    <th>وضعیت</th>
                                    <th>تاریخ اتمام </th>
                                </tr>
                                </thead>
                                <tbody>
                                @php($i=0)
                                @foreach($finished_delay_orders as $order)
                                    <tr>
                                        <td> {{++$i}} </td>
                                        <td> {{$order->order_number}} </td>
                                        <td class="text-black">
                                            <a href="{{url('panel/user', $order->user->id)}}" class="bg-success p-2 table-link" style=""><h6>{{$order->user->full_name}}  </h6> </a>
                                        </td>
                                        <td class="text-black" >
                                            <a href="#" class="bg-success p-2 table-link" style=""><h6>{{$order->gameForRent->GameInfo->name}}</h6> </a>
                                        </td>
                                        <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#finishedDelayOrdersAddressModal{{$order->id}}">مشاهده</button></td>
                                        <td class="text-black" >
                                            <h6>{{$order->rentType->day_count}} روزه</h6>
                                        </td>
                                        <td class="text-black" >
                                            <h6>{{number_format($order->game_price)}} تومان</h6>
                                        </td>
                                        <td class="text-black" >
                                            <h6>{{number_format($order->rent_price)}} تومان</h6>
                                        </td>
                                        <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#finishedDelayOrdersPaymentModal{{$order->id}}">مشاهده</button></td>
                                        <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#finishedDelayOrdersExtendModal{{$order->id}}">مشاهده</button></td>

                                        <td>
                                            <a class="btn btn-sm del-btn "  href="#">
                                                در حال ارسال
                                            </a>
                                        </td>
                                        <td class="text-black" >
                                            @php($date = new \App\Http\Controllers\helpers\PDate())
                                            <h6>{{$date->toPersian($order->finished_at, 'Y/m/d')}}</h6>
                                        </td>
                                    </tr>
                                @endforeach
                            </table>
                        </div><!-- /.table-responsive -->
                        <div class="pull-left">
                            {{ $new_orders->links() }}
                        </div>
                        <div class="clearfix"></div>
                    </div><!-- /.portlet-body -->
                </div><!-- /.portlet -->
            </div><!-- /.col-md-12 -->

            {{--finished success orders --}}
            <div class="portlet box border shadow round">
                <div class="portlet-heading">
                    <div class="portlet-title ">
                        <h3 class="title">
                            <i class="icon-user"></i>
                            لیست سفارشات اجاره تمام شده موفق
                        </h3>

                        <form action="" method="get" class="mt-2 mb-5 text-center">
                            <div class="form-group row mr-5 ">
                                <div class="col-sm-4">
                                    <input name="text" type="text" value="@if(!empty($text)) {{$text}} @endif"  class="form-control mr-5" rows="5" placeholder="شماره سفارش را وارد کنید">
                                </div>
                                <button type="submit" class="btn btn-outline-primary ml-2 col-sm-1">جستجو</button>
                            </div>
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
                        <div class="pull-left">
                        </div>
                        <div class="table-responsive">
                            <table class="table table-hover table-striped" id="data-table">
                                <thead>
                                <tr style="font-size: 1.2rem">
                                    <th>ردیف</th>
                                    <th>شماره سفارش</th>
                                    <th>کاربر</th>
                                    <th>نام بازی</th>
                                    <th>اطلاعات ارسال</th>
                                    <th>بازه اجاره</th>
                                    <th>قیمت بازی</th>
                                    <th>قیمت اجاره</th>
                                    <th>وضعیت پرداخت</th>
                                    <th>تمدید ها</th>
                                    <th>وضعیت</th>
                                    <th>تاریخ اتمام </th>
                                </tr>
                                </thead>
                                <tbody>
                                @php($i=0)
                                @foreach($finished_success_orders as $order)
                                    <tr>
                                        <td> {{++$i}} </td>
                                        <td> {{$order->order_number}} </td>
                                        <td class="text-black">
                                            <a href="{{url('panel/user', $order->user->id)}}" class="bg-success p-2 table-link" style=""><h6>{{$order->user->full_name}}  </h6> </a>
                                        </td>
                                        <td class="text-black" >
                                            <a href="#" class="bg-success p-2 table-link" style=""><h6>{{$order->gameForRent->GameInfo->name}}</h6> </a>
                                        </td>
                                        <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#finishedSuccessOrdersAddressModal{{$order->id}}">مشاهده</button></td>
                                        <td class="text-black" >
                                            <h6>{{$order->rentType->day_count}} روزه</h6>
                                        </td>
                                        <td class="text-black" >
                                            <h6>{{number_format($order->game_price)}} تومان</h6>
                                        </td>
                                        <td class="text-black" >
                                            <h6>{{number_format($order->rent_price)}} تومان</h6>
                                        </td>
                                        <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#finishedSuccessOrdersPaymentModal{{$order->id}}">مشاهده</button></td>
                                        <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#finishedSuccessOrdersExtendModal{{$order->id}}">مشاهده</button></td>

                                        <td>
                                            <a class="btn btn-sm del-btn "  href="#">
                                                در حال ارسال
                                            </a>
                                        </td>
                                        <td class="text-black" >
                                            @php($date = new \App\Http\Controllers\helpers\PDate())
                                            <h6>{{$date->toPersian($order->finished_at, 'Y/m/d')}}</h6>
                                        </td>
                                    </tr>
                                @endforeach
                            </table>
                        </div><!-- /.table-responsive -->
                        <div class="pull-left">
                            {{ $new_orders->links() }}
                        </div>
                        <div class="clearfix"></div>
                    </div><!-- /.portlet-body -->
                </div><!-- /.portlet -->
            </div><!-- /.col-md-12 -->

            {{--confiscated orders--}}
            <div class="portlet box border shadow round">
                <div class="portlet-heading">
                    <div class="portlet-title ">
                        <h3 class="title">
                            <i class="icon-user"></i>
                            لیست سفارشات اجاره مصادره شده
                        </h3>

                        <form action="" method="get" class="mt-2 mb-5 text-center">
                            <div class="form-group row mr-5 ">
                                <div class="col-sm-4">
                                    <input name="text" type="text" value="@if(!empty($text)) {{$text}} @endif"  class="form-control mr-5" rows="5" placeholder="شماره سفارش را وارد کنید">
                                </div>
                                <button type="submit" class="btn btn-outline-primary ml-2 col-sm-1">جستجو</button>
                            </div>
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
                        <div class="pull-left">
                        </div>
                        <div class="table-responsive">
                            <table class="table table-hover table-striped" id="data-table">
                                <thead>
                                <tr style="font-size: 1.2rem">
                                    <th>ردیف</th>
                                    <th>شماره سفارش</th>
                                    <th>کاربر</th>
                                    <th>نام بازی</th>
                                    <th>اطلاعات ارسال</th>
                                    <th>بازه اجاره</th>
                                    <th>قیمت بازی</th>
                                    <th>قیمت اجاره</th>
                                    <th>وضعیت پرداخت</th>
                                    <th>تمدید ها</th>
                                    <th>وضعیت</th>
                                    <th>تاریخ اتمام </th>
                                </tr>
                                </thead>
                                <tbody>
                                @php($i=0)
                                @foreach($confiscated_orders as $order)
                                    <tr>
                                        <td> {{++$i}} </td>
                                        <td> {{$order->order_number}} </td>
                                        <td class="text-black">
                                            <a href="{{url('panel/user', $order->user->id)}}" class="bg-success p-2 table-link" style=""><h6>{{$order->user->full_name}}  </h6> </a>
                                        </td>
                                        <td class="text-black" >
                                            <a href="#" class="bg-success p-2 table-link" style=""><h6>{{$order->gameForRent->GameInfo->name}}</h6> </a>
                                        </td>
                                        <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#confiscatedOrdersAddressModal{{$order->id}}">مشاهده</button></td>
                                        <td class="text-black" >
                                            <h6>{{$order->rentType->day_count}} روزه</h6>
                                        </td>
                                        <td class="text-black" >
                                            <h6>{{number_format($order->game_price)}} تومان</h6>
                                        </td>
                                        <td class="text-black" >
                                            <h6>{{number_format($order->rent_price)}} تومان</h6>
                                        </td>
                                        <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#confiscatedOrdersPaymentModal{{$order->id}}">مشاهده</button></td>
                                        <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#confiscatedOrdersExtendModal{{$order->id}}">مشاهده</button></td>

                                        <td>
                                            <a class="btn btn-sm del-btn "  href="#">
                                                در حال ارسال
                                            </a>
                                        </td>
                                        <td class="text-black" >
                                            @php($date = new \App\Http\Controllers\helpers\PDate())
                                            <h6>{{$date->toPersian($order->finished_at, 'Y/m/d')}}</h6>
                                        </td>
                                    </tr>
                                @endforeach
                            </table>
                        </div><!-- /.table-responsive -->
                        <div class="pull-left">
                            {{ $new_orders->links() }}
                        </div>
                        <div class="clearfix"></div>
                    </div><!-- /.portlet-body -->
                </div><!-- /.portlet -->
            </div><!-- /.col-md-12 -->


        </div>

        <!-- BEGIN PAGE JAVASCRIPT -->
        <script src="{{ asset('plugins/data-table/js/jquery.dataTables.min.js') }}"></script>
        <script src="{{ asset('plugins/data-table/js/dataTables.bootstrap.js') }}"></script>
        <script src="{{ asset('js/pages/datatable.js') }}"></script>
        <link href="{{ asset('plugins/data-table/css/dataTables.bootstrap.css') }}" rel="stylesheet">

    </div>
</div>

</div>
@foreach($new_orders as $order)
<div class="modal fade" id="newOrdersAddressModal{{$order->id}}" style="font-family: Vazir">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title text-right ml-auto">اطلاعات</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body text-right">
               <p> استان : {{$order->address->state->name}} </p>
               <p> شهر :{{$order->address->city->name}} </p>
               <p>جزییات :{{$order->address->content}} </p>
               <p> شماره تماس :{{$order->address->home_phone_number}}</p>
               <p>  موبایل :{{$order->user->mobile}}</p>

            </div>

            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="custom-btn btn-danger" data-dismiss="modal" style="max-width: 60px">بستن</button>
            </div>

        </div>
    </div>
</div>
<div class="modal fade" id="newOrdersPaymentModal{{$order->id}}" style="font-family: Vazir">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title text-right ml-auto">اطلاعات</h4>
                <button type="button" class="close" data-dismiss="modal1">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body text-right">
                @if($order->payment != null)
                    <p> شماره پرداخت : {{$order->payment->bank_receipt}}</p>
                    <p> مبلغ :{{number_format($order->payment->amount)}} تومان </p>
                    <p>زمان :{{$date->toPersian($order->payment->created_at, 'Y/m/d')}} </p>
                    <p>نحوه پرداخت :@if($order->payment->bank_name == 'wallet')  کیف پول @else {{$order->payment->bank_name}} @endif </p>
                @endif
            </div>

            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="custom-btn btn-danger" data-dismiss="modal" style="max-width: 60px">بستن</button>
            </div>

        </div>
    </div>
</div>
<div class="modal fade" id="newOrdersExtendModal{{$order->id}}" style="font-family: Vazir">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title text-right ml-auto">اطلاعات</h4>
                <button type="button" class="close" data-dismiss="modal1">&times;</button>
            </div>

            @foreach($order->extends as $extend)
            <!-- Modal body -->
            <div class="modal-body text-right">
                <p> بازه تمدید : {{$extend->rentType->day_count}} روزه</p>
                <p> هزینه جریمه :{{$extend->penalty_cost}}</p>
                <p> هزینه اجاره و جریمه :{{$extend->extend_cost}}</p>
                <br></br>
                @if($extend->payment != null)
                    <p> شماره پرداخت : {{$extend->payment->bank_receipt}}</p>
                    <p> مبلغ :{{number_format($extend->payment->amount)}} تومان</p>
                    <p>زمان :{{$date->toPersian($extend->payment->created_at, 'Y/m/d')}} </p>
                    <p>نحوه پرداخت :@if($extend->payment->bank_name == 'wallet')  کیف پول @else {{$extend->payment->bank_name}} @endif </p>
                @endif
            </div>
            <hr>
            @endforeach

            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="custom-btn btn-danger" data-dismiss="modal" style="max-width: 60px">بستن</button>
            </div>

        </div>
    </div>
</div>
@endforeach

@foreach($sent_orders as $order)
    <div class="modal fade" id="sentOrdersAddressModal{{$order->id}}" style="font-family: Vazir">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title text-right ml-auto">اطلاعات</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body text-right">
                    <p> استان : {{$order->address->state->name}} </p>
                    <p> شهر :{{$order->address->city->name}} </p>
                    <p>جزییات :{{$order->address->content}} </p>
                    <p> شماره تماس :{{$order->address->home_phone_number}}</p>
                    <p>  موبایل :{{$order->user->mobile}}</p>

                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="custom-btn btn-danger" data-dismiss="modal" style="max-width: 60px">بستن</button>
                </div>

            </div>
        </div>
    </div>
    <div class="modal fade" id="sentOrdersPaymentModal{{$order->id}}" style="font-family: Vazir">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title text-right ml-auto">اطلاعات</h4>
                    <button type="button" class="close" data-dismiss="modal1">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body text-right">
                    @if($order->payment != null)
                        <p> شماره پرداخت : {{$order->payment->bank_receipt}}</p>
                        <p> مبلغ :{{number_format($order->payment->amount)}} تومان </p>
                        <p>زمان :{{$date->toPersian($order->payment->created_at, 'Y/m/d')}} </p>
                        <p>نحوه پرداخت :@if($order->payment->bank_name == 'wallet')  کیف پول @else {{$order->payment->bank_name}} @endif </p>
                    @endif
                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="custom-btn btn-danger" data-dismiss="modal" style="max-width: 60px">بستن</button>
                </div>

            </div>
        </div>
    </div>
    <div class="modal fade" id="sentOrdersExtendModal{{$order->id}}" style="font-family: Vazir">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title text-right ml-auto">اطلاعات</h4>
                    <button type="button" class="close" data-dismiss="modal1">&times;</button>
                </div>

            @foreach($order->extends as $extend)
                <!-- Modal body -->
                    <div class="modal-body text-right">
                        <p> بازه تمدید : {{$extend->rentType->day_count}} روزه</p>
                        <p> هزینه جریمه :{{$extend->penalty_cost}}</p>
                        <p> هزینه اجاره و جریمه :{{$extend->extend_cost}}</p>
                        <br></br>
                        @if($extend->payment != null)
                            <p> شماره پرداخت : {{$extend->payment->bank_receipt}}</p>
                            <p> مبلغ :{{number_format($extend->payment->amount)}} تومان</p>
                            <p>زمان :{{$date->toPersian($extend->payment->created_at, 'Y/m/d')}} </p>
                            <p>نحوه پرداخت :@if($extend->payment->bank_name == 'wallet')  کیف پول @else {{$extend->payment->bank_name}} @endif </p>
                        @endif
                    </div>
                    <hr>
            @endforeach

            <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="custom-btn btn-danger" data-dismiss="modal" style="max-width: 60px">بستن</button>
                </div>

            </div>
        </div>
    </div>
@endforeach

@foreach($delivered_orders as $order)
    <div class="modal fade" id="deliveredOrdersAddressModal{{$order->id}}" style="font-family: Vazir">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title text-right ml-auto">اطلاعات</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body text-right">
                    <p> استان : {{$order->address->state->name}} </p>
                    <p> شهر :{{$order->address->city->name}} </p>
                    <p>جزییات :{{$order->address->content}} </p>
                    <p> شماره تماس :{{$order->address->home_phone_number}}</p>
                    <p>  موبایل :{{$order->user->mobile}}</p>

                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="custom-btn btn-danger" data-dismiss="modal" style="max-width: 60px">بستن</button>
                </div>

            </div>
        </div>
    </div>
    <div class="modal fade" id="deliveredOrdersPaymentModal{{$order->id}}" style="font-family: Vazir">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title text-right ml-auto">اطلاعات</h4>
                    <button type="button" class="close" data-dismiss="modal1">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body text-right">
                    @if($order->payment != null)
                        <p> شماره پرداخت : {{$order->payment->bank_receipt}}</p>
                        <p> مبلغ :{{number_format($order->payment->amount)}} تومان </p>
                        <p>زمان :{{$date->toPersian($order->payment->created_at, 'Y/m/d')}} </p>
                        <p>نحوه پرداخت :@if($order->payment->bank_name == 'wallet')  کیف پول @else {{$order->payment->bank_name}} @endif </p>
                    @endif
                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="custom-btn btn-danger" data-dismiss="modal" style="max-width: 60px">بستن</button>
                </div>

            </div>
        </div>
    </div>
    <div class="modal fade" id="deliveredOrdersExtendModal{{$order->id}}" style="font-family: Vazir">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title text-right ml-auto">اطلاعات</h4>
                    <button type="button" class="close" data-dismiss="modal1">&times;</button>
                </div>

            @foreach($order->extends as $extend)
                <!-- Modal body -->
                    <div class="modal-body text-right">
                        <p> بازه تمدید : {{$extend->rentType->day_count}} روزه</p>
                        <p> هزینه جریمه :{{$extend->penalty_cost}}</p>
                        <p> هزینه اجاره و جریمه :{{$extend->extend_cost}}</p>
                        <br></br>
                        @if($extend->payment != null)
                            <p> شماره پرداخت : {{$extend->payment->bank_receipt}}</p>
                            <p> مبلغ :{{number_format($extend->payment->amount)}} تومان</p>
                            <p>زمان :{{$date->toPersian($extend->payment->created_at, 'Y/m/d')}} </p>
                            <p>نحوه پرداخت :@if($extend->payment->bank_name == 'wallet')  کیف پول @else {{$extend->payment->bank_name}} @endif </p>
                        @endif
                    </div>
                    <hr>
            @endforeach

            <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="custom-btn btn-danger" data-dismiss="modal" style="max-width: 60px">بستن</button>
                </div>

            </div>
        </div>
    </div>
@endforeach

@foreach($ending_orders as $order)
    <div class="modal fade" id="endingOrdersAddressModal{{$order->id}}" style="font-family: Vazir">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title text-right ml-auto">اطلاعات</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body text-right">
                    <p> استان : {{$order->address->state->name}} </p>
                    <p> شهر :{{$order->address->city->name}} </p>
                    <p>جزییات :{{$order->address->content}} </p>
                    <p> شماره تماس :{{$order->address->home_phone_number}}</p>
                    <p>  موبایل :{{$order->user->mobile}}</p>

                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="custom-btn btn-danger" data-dismiss="modal" style="max-width: 60px">بستن</button>
                </div>

            </div>
        </div>
    </div>
    <div class="modal fade" id="endingOrdersPaymentModal{{$order->id}}" style="font-family: Vazir">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title text-right ml-auto">اطلاعات</h4>
                    <button type="button" class="close" data-dismiss="modal1">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body text-right">
                    @if($order->payment != null)
                        <p> شماره پرداخت : {{$order->payment->bank_receipt}}</p>
                        <p> مبلغ :{{number_format($order->payment->amount)}} تومان </p>
                        <p>زمان :{{$date->toPersian($order->payment->created_at, 'Y/m/d')}} </p>
                        <p>نحوه پرداخت :@if($order->payment->bank_name == 'wallet')  کیف پول @else {{$order->payment->bank_name}} @endif </p>
                    @endif
                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="custom-btn btn-danger" data-dismiss="modal" style="max-width: 60px">بستن</button>
                </div>

            </div>
        </div>
    </div>
    <div class="modal fade" id="endingOrdersExtendModal{{$order->id}}" style="font-family: Vazir">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title text-right ml-auto">اطلاعات</h4>
                    <button type="button" class="close" data-dismiss="modal1">&times;</button>
                </div>

            @foreach($order->extends as $extend)
                <!-- Modal body -->
                    <div class="modal-body text-right">
                        <p> بازه تمدید : {{$extend->rentType->day_count}} روزه</p>
                        <p> هزینه جریمه :{{$extend->penalty_cost}}</p>
                        <p> هزینه اجاره و جریمه :{{$extend->extend_cost}}</p>
                        <br></br>
                        @if($extend->payment != null)
                            <p> شماره پرداخت : {{$extend->payment->bank_receipt}}</p>
                            <p> مبلغ :{{number_format($extend->payment->amount)}} تومان</p>
                            <p>زمان :{{$date->toPersian($extend->payment->created_at, 'Y/m/d')}} </p>
                            <p>نحوه پرداخت :@if($extend->payment->bank_name == 'wallet')  کیف پول @else {{$extend->payment->bank_name}} @endif </p>
                        @endif
                    </div>
                    <hr>
            @endforeach

            <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="custom-btn btn-danger" data-dismiss="modal" style="max-width: 60px">بستن</button>
                </div>

            </div>
        </div>
    </div>
@endforeach

@foreach($finished_delay_orders as $order)
    <div class="modal fade" id="finishedDelayOrdersAddressModal{{$order->id}}" style="font-family: Vazir">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title text-right ml-auto">اطلاعات</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body text-right">
                    <p> استان : {{$order->address->state->name}} </p>
                    <p> شهر :{{$order->address->city->name}} </p>
                    <p>جزییات :{{$order->address->content}} </p>
                    <p> شماره تماس :{{$order->address->home_phone_number}}</p>
                    <p>  موبایل :{{$order->user->mobile}}</p>

                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="custom-btn btn-danger" data-dismiss="modal" style="max-width: 60px">بستن</button>
                </div>

            </div>
        </div>
    </div>
    <div class="modal fade" id="finishedDelayOrdersPaymentModal{{$order->id}}" style="font-family: Vazir">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title text-right ml-auto">اطلاعات</h4>
                    <button type="button" class="close" data-dismiss="modal1">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body text-right">
                    @if($order->payment != null)
                        <p> شماره پرداخت : {{$order->payment->bank_receipt}}</p>
                        <p> مبلغ :{{number_format($order->payment->amount)}} تومان </p>
                        <p>زمان :{{$date->toPersian($order->payment->created_at, 'Y/m/d')}} </p>
                        <p>نحوه پرداخت :@if($order->payment->bank_name == 'wallet')  کیف پول @else {{$order->payment->bank_name}} @endif </p>
                    @endif
                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="custom-btn btn-danger" data-dismiss="modal" style="max-width: 60px">بستن</button>
                </div>

            </div>
        </div>
    </div>
    <div class="modal fade" id="finishedDelayOrdersExtendModal{{$order->id}}" style="font-family: Vazir">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title text-right ml-auto">اطلاعات</h4>
                    <button type="button" class="close" data-dismiss="modal1">&times;</button>
                </div>

            @foreach($order->extends as $extend)
                <!-- Modal body -->
                    <div class="modal-body text-right">
                        <p> بازه تمدید : {{$extend->rentType->day_count}} روزه</p>
                        <p> هزینه جریمه :{{$extend->penalty_cost}}</p>
                        <p> هزینه اجاره و جریمه :{{$extend->extend_cost}}</p>
                        <br></br>
                        @if($extend->payment != null)
                            <p> شماره پرداخت : {{$extend->payment->bank_receipt}}</p>
                            <p> مبلغ :{{number_format($extend->payment->amount)}} تومان</p>
                            <p>زمان :{{$date->toPersian($extend->payment->created_at, 'Y/m/d')}} </p>
                            <p>نحوه پرداخت :@if($extend->payment->bank_name == 'wallet')  کیف پول @else {{$extend->payment->bank_name}} @endif </p>
                        @endif
                    </div>
                    <hr>
            @endforeach

            <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="custom-btn btn-danger" data-dismiss="modal" style="max-width: 60px">بستن</button>
                </div>

            </div>
        </div>
    </div>
@endforeach

@foreach($finished_success_orders as $order)
    <div class="modal fade" id="finishedSuccessOrdersAddressModal{{$order->id}}" style="font-family: Vazir">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title text-right ml-auto">اطلاعات</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body text-right">
                    <p> استان : {{$order->address->state->name}} </p>
                    <p> شهر :{{$order->address->city->name}} </p>
                    <p>جزییات :{{$order->address->content}} </p>
                    <p> شماره تماس :{{$order->address->home_phone_number}}</p>
                    <p>  موبایل :{{$order->user->mobile}}</p>

                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="custom-btn btn-danger" data-dismiss="modal" style="max-width: 60px">بستن</button>
                </div>

            </div>
        </div>
    </div>
    <div class="modal fade" id="finishedSuccessOrdersPaymentModal{{$order->id}}" style="font-family: Vazir">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title text-right ml-auto">اطلاعات</h4>
                    <button type="button" class="close" data-dismiss="modal1">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body text-right">
                    @if($order->payment != null)
                        <p> شماره پرداخت : {{$order->payment->bank_receipt}}</p>
                        <p> مبلغ :{{number_format($order->payment->amount)}} تومان </p>
                        <p>زمان :{{$date->toPersian($order->payment->created_at, 'Y/m/d')}} </p>
                        <p>نحوه پرداخت :@if($order->payment->bank_name == 'wallet')  کیف پول @else {{$order->payment->bank_name}} @endif </p>
                    @endif
                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="custom-btn btn-danger" data-dismiss="modal" style="max-width: 60px">بستن</button>
                </div>

            </div>
        </div>
    </div>
    <div class="modal fade" id="finishedSuccessOrdersExtendModal{{$order->id}}" style="font-family: Vazir">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title text-right ml-auto">اطلاعات</h4>
                    <button type="button" class="close" data-dismiss="modal1">&times;</button>
                </div>

            @foreach($order->extends as $extend)
                <!-- Modal body -->
                    <div class="modal-body text-right">
                        <p> بازه تمدید : {{$extend->rentType->day_count}} روزه</p>
                        <p> هزینه جریمه :{{$extend->penalty_cost}}</p>
                        <p> هزینه اجاره و جریمه :{{$extend->extend_cost}}</p>
                        <br></br>
                        @if($extend->payment != null)
                            <p> شماره پرداخت : {{$extend->payment->bank_receipt}}</p>
                            <p> مبلغ :{{number_format($extend->payment->amount)}} تومان</p>
                            <p>زمان :{{$date->toPersian($extend->payment->created_at, 'Y/m/d')}} </p>
                            <p>نحوه پرداخت :@if($extend->payment->bank_name == 'wallet')  کیف پول @else {{$extend->payment->bank_name}} @endif </p>
                        @endif
                    </div>
                    <hr>
            @endforeach

            <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="custom-btn btn-danger" data-dismiss="modal" style="max-width: 60px">بستن</button>
                </div>

            </div>
        </div>
    </div>
@endforeach

@foreach($confiscated_orders as $order)
    <div class="modal fade" id="confiscatedOrdersAddressModal{{$order->id}}" style="font-family: Vazir">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title text-right ml-auto">اطلاعات</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body text-right">
                    <p> استان : {{$order->address->state->name}} </p>
                    <p> شهر :{{$order->address->city->name}} </p>
                    <p>جزییات :{{$order->address->content}} </p>
                    <p> شماره تماس :{{$order->address->home_phone_number}}</p>
                    <p>  موبایل :{{$order->user->mobile}}</p>

                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="custom-btn btn-danger" data-dismiss="modal" style="max-width: 60px">بستن</button>
                </div>

            </div>
        </div>
    </div>
    <div class="modal fade" id="confiscatedOrdersPaymentModal{{$order->id}}" style="font-family: Vazir">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title text-right ml-auto">اطلاعات</h4>
                    <button type="button" class="close" data-dismiss="modal1">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body text-right">
                    @if($order->payment != null)
                        <p> شماره پرداخت : {{$order->payment->bank_receipt}}</p>
                        <p> مبلغ :{{number_format($order->payment->amount)}} تومان </p>
                        <p>زمان :{{$date->toPersian($order->payment->created_at, 'Y/m/d')}} </p>
                        <p>نحوه پرداخت :@if($order->payment->bank_name == 'wallet')  کیف پول @else {{$order->payment->bank_name}} @endif </p>
                    @endif
                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="custom-btn btn-danger" data-dismiss="modal" style="max-width: 60px">بستن</button>
                </div>

            </div>
        </div>
    </div>
    <div class="modal fade" id="confiscatedOrdersExtendModal{{$order->id}}" style="font-family: Vazir">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title text-right ml-auto">اطلاعات</h4>
                    <button type="button" class="close" data-dismiss="modal1">&times;</button>
                </div>

            @foreach($order->extends as $extend)
                <!-- Modal body -->
                    <div class="modal-body text-right">
                        <p> بازه تمدید : {{$extend->rentType->day_count}} روزه</p>
                        <p> هزینه جریمه :{{$extend->penalty_cost}}</p>
                        <p> هزینه اجاره و جریمه :{{$extend->extend_cost}}</p>
                        <br></br>
                        @if($extend->payment != null)
                            <p> شماره پرداخت : {{$extend->payment->bank_receipt}}</p>
                            <p> مبلغ :{{number_format($extend->payment->amount)}} تومان</p>
                            <p>زمان :{{$date->toPersian($extend->payment->created_at, 'Y/m/d')}} </p>
                            <p>نحوه پرداخت :@if($extend->payment->bank_name == 'wallet')  کیف پول @else {{$extend->payment->bank_name}} @endif </p>
                        @endif
                    </div>
                    <hr>
            @endforeach

            <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="custom-btn btn-danger" data-dismiss="modal" style="max-width: 60px">بستن</button>
                </div>

            </div>
        </div>
    </div>
@endforeach


</body>



