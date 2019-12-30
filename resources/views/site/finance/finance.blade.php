
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
            <div class="portlet box border shadow round">
                <div class="portlet-heading">
                    <div class="portlet-title">
                        <h3 class="title">
                            <i class="fa fa-money"></i>
                            لیست درخواست های جدید
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
                        <div class="table-responsive">
                            <table class="table table-hover table-striped" id="data-table">
                                <thead>
                                <tr style="font-size: 1.2rem">
                                    <th>ردیف</th>
                                    <th>نام کاربر</th>
                                    <th>زمان درخواست</th>
                                    <th>شماره کارت</th>
                                    <th>شماره شبا</th>
                                    <th>شماره حساب</th>
                                    <th>نام صاحب حساب</th>
                                    <th>مبلغ زمان درخواست</th>
                                    <th>مبلغ فعلی</th>
                                    <th>وضعیت </th>
                                </tr>
                                </thead>
                                <tbody>
                                @php($i=0)
                                @foreach($new_requests as $request)
                                <tr>
                                    <td> {{++$i}} </td>
                                    <td class="text-black">
                                        <a href="{{url('/panel/user', $request->user->id)}}" class="bg-success p-2 table-link" style=""><h6>{{$request->user->full_name}}  </h6> </a>
                                    </td>
                                    <td class="text-black" >
                                        <h6>{{\App\Http\Controllers\helpers\PDate::persianTime($request->created_at, true)}}</h6>
                                    </td>
                                    <td class="text-black" >
                                        {{$request->bank_card_number}}
                                    </td>
                                    <td class="text-black" >
                                        {{$request->bank_shba_number}}
                                    </td>
                                    <td class="text-black" >
                                        {{$request->bank_account_number}}
                                    </td>
                                     <td class="text-black" >
                                        <h6> {{$request->bank_account_owner_name}}</h6>
                                    </td>
                                    <td class="text-black" >
                                        <h6>{{number_format($request->first_amount)}} تومان</h6>
                                    </td>
                                    <td class="text-black" >
                                        <h6>{{number_format($request->user->finance->user_balance)}} تومان</h6>
                                    </td>
                                    <td style="width: 100px">
                                        <a class="btn btn-sm del-btn btn-success"  href="{{url('/panel/finance/confirm-settlement', $request->id)}}">
                                            تایید
                                        </a>
                                        <a class="btn btn-sm del-btn btn-danger"  href="{{url('/panel/finance/reject-settlement', $request->id)}}">
                                            رد
                                        </a>
                                    </td>

                                </tr>
                                @endforeach

                            </table>
                        </div><!-- /.table-responsive -->
                        <div class="pull-left">
                            {{--{{ $currencyList->links() }}--}}
                        </div>
                        <div class="clearfix"></div>
                    </div><!-- /.portlet-body -->
                </div><!-- /.portlet -->
            </div>
            <div class="portlet box border shadow round">
                <div class="portlet-heading">
                    <div class="portlet-title">
                        <h3 class="title">
                            <i class="fa fa-money"></i>
                            لیست درخواست های در انتظار پرداخت
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
                                <tr style="font-size: 1.2rem">
                                    <th>ردیف</th>
                                    <th>نام کاربر</th>
                                    <th>زمان درخواست</th>
                                    <th>شماره کارت</th>
                                    <th>شماره شبا</th>
                                    <th>شماره حساب</th>
                                    <th>نام صاحب حساب</th>
                                    <th>مبلغ قابل پرداخت </th>
                                    <th>وضعیت </th>
                                </tr>
                                </thead>
                                <tbody>
                                @php($i=0)
                                @foreach($confirmed_requests as $request)
                                <tr>
                                    <td> {{++$i}}</td>
                                    <td class="text-black">
                                        <a href="{{url('/panel/user', $request->user->id)}}" class="bg-success p-2 table-link" style=""><h6>{{$request->user->full_name}}  </h6> </a>
                                    </td>
                                    <td class="text-black" >
                                        <h6>{{\App\Http\Controllers\helpers\PDate::persianTime($request->created_at, true)}}</h6>
                                    </td>
                                    <td class="text-black" >
                                        {{$request->bank_card_number}}
                                    </td>
                                    <td class="text-black" >
                                        {{$request->bank_shba_number}}
                                    </td>
                                    <td class="text-black" >
                                        {{$request->bank_account_number}}
                                    </td>
                                    <td class="text-black" >
                                        <h6> {{$request->bank_account_owner_name}}</h6>
                                    </td>
                                    <td class="text-black" >
                                        <h6>{{number_format($request->final_amount)}} تومان</h6>
                                    </td>
                                    <td style="width: 100px">

                                    <button class="btn btn-sm del-btn btn-success" style="max-width: 150px" data-toggle="modal" data-target="#myModal">پرداخت</button>
                                    </td>

                                </tr>
                                @endforeach

                            </table>
                        </div><!-- /.table-responsive -->
                        <div class="pull-left">
                            {{--{{ $currencyList->links() }}--}}
                        </div>
                        <div class="clearfix"></div>
                    </div><!-- /.portlet-body -->
                </div><!-- /.portlet -->
            </div>
            <div class="portlet box border shadow round">
                <div class="portlet-heading">
                    <div class="portlet-title">
                        <h3 class="title">
                            <i class="fa fa-money"></i>
                            لیست پرداخت شده ها
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
                                <tr style="font-size: 1.2rem">
                                    <th>ردیف</th>
                                    <th>نام کاربر</th>
                                    <th>زمان درخواست</th>
                                    <th>شماره کارت</th>
                                    <th>شماره شبا</th>
                                    <th>شماره حساب</th>
                                    <th>نام صاحب حساب</th>
                                    <th>زمان واریز</th>
                                    <th>مبلغ</th>
                                    <th>شماره رسید </th>
                                </tr>
                                </thead>
                                <tbody>
                                @php($i=0)
                                @foreach($paid_requests as $request)
                                <tr>
                                    <td> {{++$i}}</td>
                                    <td class="text-black">
                                        <a href="{{url('/panel/user', $request->user->id)}}" class="bg-success p-2 table-link" style=""><h6>{{$request->user->full_name}}  </h6> </a>
                                    </td>
                                    <td class="text-black" >
                                        <h6>{{\App\Http\Controllers\helpers\PDate::persianTime($request->created_at, true)}}</h6>
                                    </td>
                                    <td class="text-black" >
                                        {{$request->bank_card_number}}
                                    </td>
                                    <td class="text-black" >
                                        {{$request->bank_shba_number}}
                                    </td>
                                    <td class="text-black" >
                                        {{$request->bank_account_number}}
                                    </td>
                                    <td class="text-black" >
                                        <h6> {{$request->bank_account_owner_name}}</h6>
                                    </td>
                                    <td class="text-black" >
                                        <h6>{{\App\Http\Controllers\helpers\PDate::persianTime($request->payment->created_at, true)}}</h6>
                                    </td>
                                    <td class="text-black" >
                                        <h6>{{number_format($request->final_amount)}} تومان</h6>
                                    </td>
                                    <td style="width: 100px">
                                        <h6>{{$request->payment->bank_receipt}}</h6>
                                    </td>

                                </tr>
                                @endforeach

                            </table>
                        </div><!-- /.table-responsive -->
                        <div class="pull-left">
                            {{ $paid_requests->links() }}
                        </div>
                        <div class="clearfix"></div>
                    </div><!-- /.portlet-body -->
                </div><!-- /.portlet -->
            </div>
            <div class="portlet box border shadow round">
                <div class="portlet-heading">
                    <div class="portlet-title">
                        <h3 class="title">
                            <i class="fa fa-money"></i>
                            لیست درخواست های رد شده
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
                                <tr style="font-size: 1.2rem">
                                    <th>ردیف</th>
                                    <th>نام کاربر</th>
                                    <th>زمان درخواست</th>
                                    <th>شماره کارت</th>
                                    <th>شماره شبا</th>
                                    <th>شماره حساب</th>
                                    <th>نام صاحب حساب</th>
                                    <th>مبلغ زمان درخواست</th>
                                    <th>وضعیت </th>
                                </tr>
                                </thead>
                                <tbody>
                                @php($i=0)
                                @foreach($rejected_requests as $request)
                                <tr>
                                    <td> {{++$i}}</td>
                                    <td class="text-black">
                                        <a href="{{url('/panel/user', $request->user->id)}}" class="bg-success p-2 table-link" style=""><h6>{{$request->user->full_name}}  </h6> </a>
                                    </td>
                                    <td class="text-black" >
                                        <h6>{{\App\Http\Controllers\helpers\PDate::persianTime($request->created_at, true)}}</h6>
                                    </td>
                                    <td class="text-black" >
                                        {{$request->bank_card_number}}
                                    </td>
                                    <td class="text-black" >
                                        {{$request->bank_shba_number}}
                                    </td>
                                    <td class="text-black" >
                                        {{$request->bank_account_number}}
                                    </td>
                                    <td class="text-black" >
                                        <h6> {{$request->bank_account_owner_name}}</h6>
                                    </td>

                                    <td class="text-black" >
                                        <h6>{{number_format($request->first_amount)}} تومان</h6>
                                    </td>

                                    <td style="width: 100px">
                                        <h6 class="btn btn-sm del-btn btn-danger"  >
                                            رد شده
                                        </h6>
                                    </td>

                                </tr>
                                @endforeach

                            </table>
                        </div><!-- /.table-responsive -->
                        <div class="pull-left">
                            {{ $rejected_requests->links() }}
                        </div>
                        <div class="clearfix"></div>
                    </div><!-- /.portlet-body -->
                </div><!-- /.portlet -->
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

@foreach($confirmed_requests as $request)
<div class="modal fade" id="myModal" style="font-family: Vazir">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title text-right ml-auto"> اطلاعات پرداخت</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body text-right">
                <form action="{{url('/panel/finance/save-site-payment')}}" method="post">
                    @csrf
                    <input type="hidden" name="id" value="{{$request->id}}">
                    <div class="form-group">
                        <label>نام بانک</label>
                        <input class="form-control" name="bank_name" required>
                    </div>
                    <div class="form-group">
                        <label> شماره رسید</label>
                        <input class="form-control" name="bank_receipt" required>
                    </div>
                    <div class="form-actions">
                        <button type="submit" name="submit" class="btn btn-info btn-round">
                            <i class="icon-check"></i>
                            ذخیره
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endforeach
</body>



