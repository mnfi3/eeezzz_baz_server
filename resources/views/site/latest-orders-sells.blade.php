
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
                            <i class="icon-user"></i>
                            لیست سفارشات اجاره ها
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
                                    <th>کاربر</th>
                                    <th>نام بازی</th>
                                    <th>اطلاعات ارسال</th>
                                    <th>بازه اجاره</th>
                                    <th>قیمت بازی</th>
                                    <th>قیمت اجاره</th>
                                    <th>وضعیت پرداخت</th>
                                    <th>وضعیت</th>
                                    <th>تاریخ اتمام</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td> 1 <span class="new-order">سفارش جدید </span></td>
                                    <td class="text-black">
                                        <a href="#" class="bg-success p-2 table-link" style=""><h6>AliMan68  </h6> </a>
                                    </td>
                                    <td class="text-black" >
                                        <a href="#" class="bg-success p-2 table-link" style=""><h6>Red Dead Redemption2  </h6> </a>
                                    </td>
                                    <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#myModal">مشاهده</button></td>
                                    <td class="text-black" >
                                        <h6>7 روزه</h6>
                                    </td>
                                    <td class="text-black" >
                                        <h6>593000 تومان</h6>
                                    </td>
                                    <td class="text-black" >
                                        <h6>5900 تومان</h6>
                                    </td>
                                    <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#myModal1">مشاهده</button></td>

                                    <td>
                                        <a class="btn btn-sm del-btn "  href="#">
                                            در حال ارسال
                                        </a>
                                    </td>
                                    <td class="text-black" >
                                        <h6>1398/09/12</h6>
                                    </td>
                                </tr>
                                <tr>
                                    <td> 1 <span class="new-order">سفارش جدید </span></td>
                                    <td class="text-black">
                                        <a href="#" class="bg-success p-2 table-link" style=""><h6>AliMan68  </h6> </a>
                                    </td>
                                    <td class="text-black" >
                                        <a href="#" class="bg-success p-2 table-link" style=""><h6>Red Dead Redemption2  </h6> </a>
                                    </td>
                                    <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#myModal">مشاهده</button></td>
                                    <td class="text-black" >
                                        <h6>7 روزه</h6>
                                    </td>
                                    <td class="text-black" >
                                        <h6>593000 تومان</h6>
                                    </td>
                                    <td class="text-black" >
                                        <h6>5900 تومان</h6>
                                    </td>
                                    <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#myModal1">مشاهده</button></td>

                                    <td>
                                        <a class="btn btn-sm del-btn "  href="#">
                                            در حال ارسال
                                        </a>
                                    </td>
                                    <td class="text-black" >
                                        <h6>1398/09/12</h6>
                                    </td>
                                </tr>
                                <tr>
                                    <td> 1 <span class="new-order">سفارش جدید </span></td>
                                    <td class="text-black">
                                        <a href="#" class="bg-success p-2 table-link" style=""><h6>AliMan68  </h6> </a>
                                    </td>
                                    <td class="text-black" >
                                        <a href="#" class="bg-success p-2 table-link" style=""><h6>Red Dead Redemption2  </h6> </a>
                                    </td>
                                    <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#myModal">مشاهده</button></td>
                                    <td class="text-black" >
                                        <h6>7 روزه</h6>
                                    </td>
                                    <td class="text-black" >
                                        <h6>593000 تومان</h6>
                                    </td>
                                    <td class="text-black" >
                                        <h6>5900 تومان</h6>
                                    </td>
                                    <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#myModal1">مشاهده</button></td>

                                    <td>
                                        <a class="btn btn-sm del-btn "  href="#">
                                            در حال ارسال
                                        </a>
                                    </td>
                                    <td class="text-black" >
                                        <h6>1398/09/12</h6>
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
            </div><!-- /.col-md-12 -->
        </div>

        <!-- BEGIN PAGE JAVASCRIPT -->
        <script src="{{ asset('plugins/data-table/js/jquery.dataTables.min.js') }}"></script>
        <script src="{{ asset('plugins/data-table/js/dataTables.bootstrap.js') }}"></script>
        <script src="{{ asset('js/pages/datatable.js') }}"></script>
        <link href="{{ asset('plugins/data-table/css/dataTables.bootstrap.css') }}" rel="stylesheet">

    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="portlet box border shadow round">
                <div class="portlet-heading">
                    <div class="portlet-title">
                        <h3 class="title">
                            <i class="icon-user"></i>
                            لیست سفارشات خرید
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
                            <table class="table table-hover table-striped" id="data-table1">
                                <thead>
                                <tr style="font-size: 1.2rem">
                                    <th>ردیف</th>
                                    <th>کاربر</th>
                                    <th>نام بازی</th>
                                    <th>اطلاعات ارسال</th>
                                    <th>قیمت بازی</th>
                                    <th>وضعیت پرداخت</th>
                                    <th>وضعیت</th>
                                    <th>تاریخ </th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td> 1 <span class="new-order">سفارش جدید </span></td>
                                    <td class="text-black">
                                        <a href="#" class="bg-success p-2 table-link" style=""><h6>AliMan68  </h6> </a>
                                    </td>
                                    <td class="text-black" >
                                        <a href="#" class="bg-success p-2 table-link" style=""><h6>Red Dead Redemption2  </h6> </a>
                                    </td>
                                    <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#myModal">مشاهده</button></td>

                                    <td class="text-black" >
                                        <h6>593000 تومان</h6>
                                    </td>

                                    <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#myModal1">مشاهده</button></td>

                                    <td>
                                        <a class="btn btn-sm del-btn "  href="#">
                                            در حال ارسال
                                        </a>
                                    </td>
                                    <td class="text-black" >
                                        <h6>1398/09/12</h6>
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
            </div><!-- /.col-md-12 -->
        </div>

        <!-- BEGIN PAGE JAVASCRIPT -->
        <script src="{{ asset('plugins/data-table/js/jquery.dataTables.min.js') }}"></script>
        <script src="{{ asset('plugins/data-table/js/dataTables.bootstrap.js') }}"></script>
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

</body>



