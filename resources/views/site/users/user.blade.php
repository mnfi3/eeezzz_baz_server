<!DOCTYPE html>
<html lang="fa" dir="rtl">


<head>
    <title>پنل مدیریت</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="پنل مدیریت">
    <meta http-equiv="content-type" content="text/html;charset=UTF-8"/>
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
                                    <strong>اطلاعات کاربری </strong>
                                </h3>
                            </div>
                            <div class="buttons-box">
                                <a class="btn btn-sm btn-default btn-round btn-fullscreen" rel="tooltip"
                                   title="تمام صفحه" href="#">
                                    <i class="icon-size-fullscreen"></i>
                                </a>
                                <a class="btn btn-sm btn-default btn-round btn-collapse" rel="tooltip" title="کوچک کردن"
                                   href="#">
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
                                                <label for="name"> <strong>نام :: </strong> </label>
                                            </div>
                                            <div class="col-md-9">
                                                <label for="name" style="font-weight: 600">{{$user->full_name}}</label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-3">
                                                <label for="name"> <strong>موجودی :: </strong> </label>
                                            </div>
                                            <div class="col-md-9">
                                                @if($user->finance != null)
                                                    <label for="name"
                                                           style="font-weight: 600"> {{number_format($user->finance->user_balance)}}
                                                        تومان </label>
                                                @else
                                                    <label for="name" style="font-weight: 600"> 0 تومان </label>
                                                @endif
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-3">
                                                <label for="name"> <strong>شماره همراه :: </strong> </label>
                                            </div>
                                            <div class="col-md-9">
                                                <label for="name" style="font-weight: 600">{{$user->mobile}}</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <label for="name"> <strong>ایمیل :: </strong> </label>
                                            </div>
                                            <div class="col-md-9">
                                                <label for="name" style="font-weight: 600"> {{$user->email}} </label>
                                            </div>
                                        </div>

                                        <div class="row ">
                                            <div class="col-md-3">
                                                <label for="name"> <strong>کد دعوت :: </strong> </label>
                                            </div>
                                            <div class="col-md-9">
                                                <label for="name"
                                                       style="font-size: 1.1rem;font-weight: 600"> {{$user->invite_code}}</label>

                                            </div>
                                        </div>

                                        <div class="row ">
                                            <div class="col-md-3">
                                                <label for="name"> <strong>آدرس :: </strong> </label>
                                            </div>
                                            @if(count($user->addresses) > 0)
                                                <div class="col-md-9">
                                                    @php($address = $user->addresses()->orderBy('created_at', 'desc')->first())
                                                    <label for="name" style="font-size: 1.2rem;font-weight: 600">
                                                        {{' استان '.$address->state->name . '-' .  ' شهر '.$address->city->name . '-' . $address->content}}
                                                    </label>

                                                </div>
                                            @endif
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
                            لیست بازی ها اجاره ای <strong><< {{$user->full_name}} >></strong> <strong class="bg-danger">ناقص</strong>
                        </h3>
                    </div>
                    <div class="buttons-box">

                        <a class="btn btn-sm btn-default btn-round btn-fullscreen" rel="tooltip" title="تمام صفحه"
                           href="#">
                            <i class="icon-size-fullscreen"></i>
                        </a>
                        <a class="btn btn-sm btn-default btn-round btn-collapse" rel="tooltip" title="کوچک کردن"
                           href="#">
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
                                @foreach($user->gameForRentRequests as $rent)
                                    <tr>
                                        <td>1</td>
                                        {{--<td><img src="{{$currency->filename}}" height="35" class="rounded float-right" alt="{{$currency->name}}"></td>--}}
                                        <td class="text-black">{{$rent->gameForRent->gameInfo->name}}</td>
                                        <td>
                                            1398/09/20 ، 19:20:36
                                        </td>
                                        <td>
                                            1398/09/28
                                        </td>
                                        <td>
                                            7 روزه
                                        </td>
                                        <td>
                                            <button class="custom-btn text-center" style="max-width: 150px"
                                                    data-toggle="modal" data-target="#myModal1">مشاهده
                                            </button>
                                        </td>

                                        <td>
                                            <a class="btn btn-sm del-btn " href="#">
                                                در حال ارسال
                                            </a>
                                        </td>

                                    </tr>
                                @endforeach
                                <tr>
                                    <td>1</td>
                                    {{--<td><img src="{{$currency->filename}}" height="35" class="rounded float-right" alt="{{$currency->name}}"></td>--}}
                                    <td class="text-black">God Of War 4 - Region 2 - ps4</td>
                                    <td>
                                        1398/09/20 ، 19:20:36
                                    </td>
                                    <td>
                                        1398/09/28
                                    </td>
                                    <td>
                                        7 روزه
                                    </td>
                                    <td>
                                        <button class="custom-btn text-center" style="max-width: 150px"
                                                data-toggle="modal" data-target="#myModal1">مشاهده
                                        </button>
                                    </td>

                                    <td>
                                        <a class="btn btn-sm del-btn " href="#">
                                            در حال ارسال
                                        </a>
                                    </td>

                                </tr>
                                <tr>
                                    <td>1</td>
                                    {{--<td><img src="{{$currency->filename}}" height="35" class="rounded float-right" alt="{{$currency->name}}"></td>--}}
                                    <td class="text-black">God Of War 4 - Region 2 - ps4</td>
                                    <td>
                                        1398/09/20 ، 19:20:36
                                    </td>
                                    <td>
                                        1398/09/28
                                    </td>
                                    <td>
                                        7 روزه
                                    </td>
                                    <td>
                                        <button class="custom-btn text-center" style="max-width: 150px"
                                                data-toggle="modal" data-target="#myModal1">مشاهده
                                        </button>
                                    </td>

                                    <td>
                                        <a class="btn btn-sm del-btn " href="#">
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
                            لیست بازی ها خریداری شده<strong><< {{$user->full_name}} >></strong> <strong
                                    class="bg-danger">ناقص</strong>
                        </h3>
                    </div>
                    <div class="buttons-box">

                        <a class="btn btn-sm btn-default btn-round btn-fullscreen" rel="tooltip" title="تمام صفحه"
                           href="#">
                            <i class="icon-size-fullscreen"></i>
                        </a>
                        <a class="btn btn-sm btn-default btn-round btn-collapse" rel="tooltip" title="کوچک کردن"
                           href="#">
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
                                @php($i=0)
                                @foreach($user->gameForShopRequests as $sell)
                                    <tr>
                                        <td>{{++$i}}</td>
                                        <td class="text-black">{{$sell->gameForShop->gameInfo->name}}</td>
                                        @if($sell->created_at != null)
                                            <td class="text-black"> {{\App\Http\Controllers\helpers\PDate::persianTime($user->created_at)['date']}}
                                                <br> {{\App\Http\Controllers\helpers\PDate::persianTime($user->created_at)['time']}}
                                            </td>
                                        @else
                                            <td></td>
                                        @endif
                                        <td>
                                            {{number_format($sell->game_price)}} تومان
                                        </td>

                                        <td>
                                            <button class="custom-btn text-center" style="max-width: 150px"
                                                    data-toggle="modal" data-target="#myModal">مشاهده
                                            </button>
                                        </td>

                                        <td>
                                            <a class="btn btn-sm del-btn " href="#">
                                                در حال ارسال
                                            </a>
                                        </td>

                                    </tr>
                                @endforeach

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

                        <a class="btn btn-sm btn-default btn-round btn-fullscreen" rel="tooltip" title="تمام صفحه"
                           href="#">
                            <i class="icon-size-fullscreen"></i>
                        </a>
                        <a class="btn btn-sm btn-default btn-round btn-collapse" rel="tooltip" title="کوچک کردن"
                           href="#">
                            <i class="icon-arrow-up"></i>
                        </a>

                    </div>
                </div>
                <div class="portlet-body">
                    <div class="portlet-body">
                        <div class="container bg-light p-2">
                            <div class="d-flex flex-column" style="width: 75%">
                                <div style="height: 450px;border-top-left-radius: 5px;border-top-right-radius: 5px;overflow-y: auto;overflow-x: hidden"
                                     class="bg-darkblue pb-5">

                                    @foreach($user->tickets as $ticket)

                                        @if($ticket->is_user_sent == 0)
                                            <div class="row mb-5" style="">
                                                <div class="text-white col-md-8 ml-auto"
                                                     style="max-width: 65%;border-radius: 8px;margin: 15px;background-color: #0f74a8;">
                                                    <i class="fa fa-user" style=""></i><span> پشتیبان :</span>
                                                    <p class="p-5 "
                                                       style="padding: 10px !important; font-size: 1.3rem;font-weight: 600">{{$ticket->text}}</p>
                                                    <span class="text-white ml-auto">{{\App\Http\Controllers\helpers\PDate::persianTime($ticket->created_at)['time']}}</span>
                                                    --
                                                    <span class="text-white">{{\App\Http\Controllers\helpers\PDate::persianTime($ticket->created_at)['date']}}</span>
                                                    @if($ticket->is_seen == 1)
                                                        <br> <i class=" mr-auto	glyphicon glyphicon-ok"></i>
                                                    @endif
                                                </div>
                                            </div>
                                        @else


                                            <div class="row mb-5 mt-5 " style="">
                                                <div class="text-white col-md-8 mr-auto "
                                                     style="max-width: 65%;border-radius: 8px;margin-right: 40px;background-color: #154b24;">
                                                    <i class="fa fa-shopping-basket"
                                                       style=""></i><span> {{$user->full_name}} </span>

                                                    <p class="p-5"
                                                       style="padding: 10px !important; font-size: 1.3rem;font-weight:600">{{$ticket->text}} </p>
                                                    <span class="text-white ml-auto">{{\App\Http\Controllers\helpers\PDate::persianTime($ticket->created_at)['time']}}</span>
                                                    --
                                                    <span class="text-white">{{\App\Http\Controllers\helpers\PDate::persianTime($ticket->created_at)['date']}}</span>
                                                </div>
                                            </div>
                                        @endif

                                    @endforeach


                                </div>
                                <button class="btn btn-warning m-5">پیام ها دیده شد</button>
                                <div style="width: 100%;height: 100px;border-bottom-left-radius: 5px;border-bottom-right-radius: 5px"
                                     class="bg-warning mt-5">
                                    <form class="row form" method="post" action="{{url('/panel/users/send-ticket')}}">
                                        @csrf
                                        <input type="hidden" name="user_id" value="{{$user->id}}">
                                        <div class="col-md-8 m-0">
                                            <textarea name="text" id=""
                                                      style="width: 100%;height: 100px;border-radius: 5px;"
                                                      placeholder="پیام خود را یادداشت کنید" class=""></textarea>
                                        </div>
                                        <div class="col-md-4 m-0">
                                            <button type="submit" style="width: 100%;height: 100px;  font-size: 2rem"
                                                    class="text-center bg-purple text-white">ارسال
                                            </button>
                                        </div>

                                    </form>

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
                            ارسال پیام کوتاه به کاربر
                        </h3>
                        <form role="form" action="{{url('/panel/users/send-sms')}}" method="post"
                              enctype="multipart/form-data">
                            {{csrf_field()}}
                            <input type="hidden" name="user_id" value="{{$user->id}}">
                            <div class="form-body my-2">
                                <div class="form-group">
                                    <div class="input-group ">
                                                <span class="input-group-addon">
                                                    <i class="icon-info"></i>
                                                </span>
                                        <textarea style="min-height: 170px" type="text" name="text" class="form-control"
                                                  value=""
                                                  placeholder="(لطفا در نوشتن پیام دقت کافی داشته باشید)"></textarea>
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

                        <a class="btn btn-sm btn-default btn-round btn-fullscreen" rel="tooltip" title="تمام صفحه"
                           href="#">
                            <i class="icon-size-fullscreen"></i>
                        </a>
                        <a class="btn btn-sm btn-default btn-round btn-collapse" rel="tooltip" title="کوچک کردن"
                           href="#">
                            <i class="icon-arrow-up"></i>
                        </a>

                    </div>
                </div>
                <div class="portlet-heading">
                    <div class="portlet-title">
                        <h3 class="title">
                            <i class="icon-game-controller "></i>
                            لیست پیام های ارسال شده به <strong><< {{$user->full_name}} >></strong>
                        </h3>
                    </div>
                    <div class="buttons-box">

                        <a class="btn btn-sm btn-default btn-round btn-fullscreen" rel="tooltip" title="تمام صفحه"
                           href="#">
                            <i class="icon-size-fullscreen"></i>
                        </a>
                        <a class="btn btn-sm btn-default btn-round btn-collapse" rel="tooltip" title="کوچک کردن"
                           href="#">
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
                                    <th>تاریخ</th>
                                    <th>محتوای پیام</th>
                                </tr>
                                </thead>
                                <tbody>
                                @php($i=0)
                                @foreach($user->smsPrivate as $sms)
                                    <tr>
                                        <td>{{++$i}}</td>
                                        <td>
                                            {{\App\Http\Controllers\helpers\PDate::persianTime($sms->created_at, true)}}
                                        </td>
                                        <td>
                                            <button class="custom-btn text-center" style="max-width: 150px"
                                                    data-toggle="modal" data-target="#smsModal{{$sms->id}}">مشاهده
                                            </button>
                                        </td>

                                    </tr>
                                @endforeach
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
                            اطلاعات مالی<strong><< {{$user->full_name}} >></strong>
                        </h3>
                    </div>
                    <div class="buttons-box">

                        <a class="btn btn-sm btn-default btn-round btn-fullscreen" rel="tooltip" title="تمام صفحه"
                           href="#">
                            <i class="icon-size-fullscreen"></i>
                        </a>
                        <a class="btn btn-sm btn-default btn-round btn-collapse" rel="tooltip" title="کوچک کردن"
                           href="#">
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
                                @php($i=0)
                                @foreach($user->userPayment as $payment)
                                    <tr style="background-color: #d65341">
                                        <td>{{++$i}}</td>
                                        <td class="text-black">کاهشی</td>
                                        <td class="text-black">{{\App\Http\Controllers\helpers\PDate::persianTime($payment->created_at, true)}}</td>
                                        <td>
                                            {{number_format($payment->amount)}} تومان
                                        </td>
                                        <td>
                                            {{$payment->bank_receipt}}
                                        </td>
                                        @if($payment->paymentable_type == 'App\GameForRent')
                                            <td>اجاره</td>
                                        @elseif($payment->paymentable_type == 'App\GameForShop')
                                            <td>خرید</td>
                                        @elseif($payment->paymentable_type == 'App\UserFinance')
                                            <td>شارژ حساب</td>
                                        @endif
                                    </tr>
                                @endforeach

                                @foreach($user->sitePayments as $payment)
                                    <tr style="background-color: #67d646">
                                        <td>{{++$i}}</td>
                                        <td class="text-black">افزایشی</td>
                                        <td class="text-black">{{\App\Http\Controllers\helpers\PDate::persianTime($payment->created_at, true)}}</td>
                                        <td>
                                            {{number_format($payment->amount)}} تومان
                                        </td>
                                        <td>
                                            {{$payment->bank_receipt}}
                                        </td>
                                        @if($payment->paymentable_type == 'App\UserFinance')
                                            <td>تسویه حساب</td>
                                        @elseif($payment->paymentable_type == 'App\GameForRent')
                                            <td>بازگشت ودیعه</td>
                                        @endif
                                    </tr>
                                @endforeach


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


        <div class="modal fade" id="rentModal" style="font-family: Vazir">
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
                        <button type="button" class="custom-btn btn-danger" data-dismiss="modal"
                                style="max-width: 60px">بستن
                        </button>
                    </div>

                </div>
            </div>
        </div>

        @foreach($user->smsPrivate as $sms)
            <div class="modal fade" id="smsModal{{$sms->id}}" style="font-family: Vazir">
                <div class="modal-dialog">
                    <div class="modal-content">

                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title text-right ml-auto">اطلاعات</h4>
                            <button type="button" class="close" data-dismiss="modal1">&times;</button>
                        </div>

                        <!-- Modal body -->
                        <div class="modal-body text-right">
                            <p>{{$sms->text}}</p>
                        </div>

                        <!-- Modal footer -->
                        <div class="modal-footer">
                            <button type="button" class="custom-btn btn-danger" data-dismiss="modal"
                                    style="max-width: 60px">بستن
                            </button>
                        </div>

                    </div>
                </div>
            </div>
        @endforeach

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
                        <button type="button" class="custom-btn btn-danger" data-dismiss="modal"
                                style="max-width: 60px">بستن
                        </button>
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



