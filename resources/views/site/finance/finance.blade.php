
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
                            لیست درخواست های پرداخت
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
                                <tr>
                                    <td> 1 <span class="new-order"> جدید </span></td>
                                    <td class="text-black">
                                        <a href="#" class="bg-success p-2 table-link" style=""><h6>AliMan68  </h6> </a>
                                    </td>
                                    <td class="text-black" >
                                        <h6>1398/09/12</h6><span>12:30:26</span>
                                    </td>
                                    <td class="text-black" >
                                    6037701172771880
                                    </td>
                                    <td class="text-black" >
                                        IR2100000065971321654613
                                    </td>
                                    <td class="text-black" >
                                        65971321654613
                                    </td>
                                     <td class="text-black" >
                                        <h6>شیخ محمودی</h6>
                                    </td>
                                    <td class="text-black" >
                                        <h6>52000 تومان</h6>
                                    </td>
                                    <td class="text-black" >
                                        <h6>593000 تومان</h6>
                                    </td>
                                    <td style="width: 100px">
                                        <a class="btn btn-sm del-btn btn-success"  href="#">
                                            تایید
                                        </a>
                                        <a class="btn btn-sm del-btn btn-danger"  href="#">
                                            رد
                                        </a>
                                    </td>

                                </tr>

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
                            لیست درخواست های تایید شده
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
                                    <th>مبلغ </th>
                                    <th>وضعیت </th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td> 1</td>
                                    <td class="text-black">
                                        <a href="#" class="bg-success p-2 table-link" style=""><h6>AliMan68  </h6> </a>
                                    </td>
                                    <td class="text-black" >
                                        <h6>1398/09/12</h6><span>12:30:26</span>
                                    </td>
                                    <td class="text-black" >
                                    6037701172771880
                                    </td>
                                    <td class="text-black" >
                                        IR2100000065971321654613
                                    </td>
                                    <td class="text-black" >
                                        65971321654613
                                    </td>
                                     <td class="text-black" >
                                        <h6>شیخ محمودی</h6>
                                    </td>

                                    <td class="text-black" >
                                        <h6>593000 تومان</h6>
                                    </td>
                                    <td style="width: 100px">
                                        <a class="btn btn-sm del-btn btn-success"  href="#">
                                            پرداخت شده
                                        </a>
                                    </td>

                                </tr>

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
                            لیست پرداختی ها
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
                                    <th>وضعیت </th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td> 1</td>
                                    <td class="text-black">
                                        <a href="#" class="bg-success p-2 table-link" style=""><h6>AliMan68  </h6> </a>
                                    </td>
                                    <td class="text-black" >
                                        <h6>1398/09/12</h6><span>12:30:26</span>
                                    </td>
                                    <td class="text-black" >
                                        6037701172771880
                                    </td>
                                    <td class="text-black" >
                                        IR2100000065971321654613
                                    </td>
                                    <td class="text-black" >
                                        65971321654613
                                    </td>
                                    <td class="text-black" >
                                        <h6>شیخ محمودی</h6>
                                    </td>
                                    <td class="text-black" >
                                        <h6>1397/11/09 و 16:9:59</h6>
                                    </td>
                                    <td class="text-black" >
                                        <h6>593000 تومان</h6>
                                    </td>
                                    <td style="width: 100px">
                                        <a class="btn btn-sm del-btn btn-success"  href="#">
                                            انجام شد.
                                        </a>
                                    </td>

                                </tr>

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
                                    <th>مبلغ فعلی</th>
                                    <th>وضعیت </th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td> 1</td>
                                    <td class="text-black">
                                        <a href="#" class="bg-success p-2 table-link" style=""><h6>AliMan68  </h6> </a>
                                    </td>
                                    <td class="text-black" >
                                        <h6>1398/09/12</h6><span>12:30:26</span>
                                    </td>
                                    <td class="text-black" >
                                    6037701172771880
                                    </td>
                                    <td class="text-black" >
                                        IR2100000065971321654613
                                    </td>
                                    <td class="text-black" >
                                        65971321654613
                                    </td>
                                     <td class="text-black" >
                                        <h6>شیخ محمودی</h6>
                                    </td>
                                    <td class="text-black" >
                                        <h6>52000 تومان</h6>
                                    </td>
                                    <td class="text-black" >
                                        <h6>593000 تومان</h6>
                                    </td>
                                    <td style="width: 100px">
                                        <a class="btn btn-sm del-btn btn-danger"  href="#">
                                            رد شده
                                        </a>
                                    </td>

                                </tr>

                            </table>
                        </div><!-- /.table-responsive -->
                        <div class="pull-left">
                            {{--{{ $currencyList->links() }}--}}
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
                <p> استان : تبریز </p>
                <p> شهر :تبریز </p>
                <p>جزییات :4 راه قطران،کوچه سرجسشمه ،پلاک7 ، طبقه دوم </p>
                <p> شماره تماس :041 34421020</p>
                <p>  موبایل :09365018124</p>

            </div>

            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="custom-btn btn-danger" data-dismiss="modal" style="max-width: 60px">بستن</button>
            </div>

        </div>
    </div>
</div>
</body>



