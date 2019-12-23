
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
                            <i class="fa fa-comment"></i>
                            لیست کامنت ها
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
                                    <th>نام بازی</th>
                                    <th>متن پیام</th>
                                    <th>وضعیت</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td> 1 <span class="new-order">کامنت جدید </span></td>
                                    <td class="text-black">
                                        <a href="#" class="bg-success p-2 table-link" style=""><h6>AliMan68  </h6> </a>
                                    </td>
                                    <td class="text-black" >
                                        <a href="#" class="bg-success p-2 table-link" style=""><h6>Red Dead Redemption2  </h6> </a>
                                    </td>
                                    <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#myModal">مشاهده</button></td>
                                    <td>
                                        <p class="btn btn-sm del-btn "  href="#">
                                            تایید شده
                                        </p>
                                    </td>

                                </tr>
                                <tr>
                                    <td> 2</td>
                                    <td class="text-black">
                                        <a href="#" class="bg-success p-2 table-link" style=""><h6>Mohsen3  </h6> </a>
                                    </td>
                                    <td class="text-black" >
                                        <a href="#" class="bg-success p-2 table-link" style=""><h6>GTA VI  </h6> </a>
                                    </td>
                                    <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#myModal">مشاهده</button></td>
                                    <td>
                                        <p class="btn btn-sm del-btn btn-danger"  href="#">
                                             رد شده
                                        </p>
                                    </td>

                                </tr>
                                <tr>
                                    <td> 3 <span class="new-order">کامن جدید </span></td>
                                    <td class="text-black">
                                        <a href="#" class="bg-success p-2 table-link" style=""><h6>Pouya Akn4  </h6> </a>
                                    </td>
                                    <td class="text-black" >
                                        <a href="#" class="bg-success p-2 table-link" style=""><h6>Asphalt6</h6> </a>
                                    </td>
                                    <td><button class="custom-btn text-center" style="max-width: 150px" data-toggle="modal" data-target="#myModal">مشاهده</button></td>
                                    <td>
                                        <p class="btn btn-sm del-btn "  href="#">
                                            تایید شده
                                        </p>
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
</div>

</div>
<div class="modal fade" id="myModal" style="font-family: Vazir">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title text-right ml-auto"> جزئیات کامنت</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body text-right">
                <p> لورم ایپسوم یا طرح‌نما (به انگلیسی: Lorem ipsum) به متنی آزمایشی و بی‌معنی در صنعت چاپ، صفحه‌آرایی و طراحی گرافیک گفته می‌شود. طراح گرافیک از این متن به عنوان عنصری از ترکیب بندی برای پر کردن صفحه و ارایه اولیه شکل ظاهری و کلی طرح سفارش گرفته شده استفاده می نماید</p>
                <div class="d-flex flex-row justify-content-center">
                    <a class="btn btn-sm del-btn btn-danger p-2"  href="#" style="font-family:IranSans;">
                        رد
                    </a>
                    <a class="btn btn-sm del-btn btn-success text-center p-2"  href="#" style="font-family:IranSans;">
                        تایید
                    </a>

                </div>
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



