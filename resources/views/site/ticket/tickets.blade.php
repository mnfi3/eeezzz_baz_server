
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
                    <form role="form" action="{{url('/panel/tickets/search')}}" method="post" enctype="multipart/form-data">
                        {{csrf_field()}}
                        <div class="form-body my-2">
                            <div class="form-group">
                                <div class="input-group round">
                                                <span class="input-group-addon">
                                                    <i class="icon-info"></i>
                                                </span>
                                    <input type="text" name="text" class="form-control" @if(!empty($text)) value="{{$text}}" @endif  placeholder="نام کاربری یا ایمیل یا شماره موبایل">
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
                                @foreach($users as $user)
                                    <li class="p-3 text-black d-inline" >
                                        <span class=" new-order2"> {{$user->new_tickets_count}}</span>
                                        <a href="{{url('/panel/tickets/user', $user->id)}}">{{$user->full_name}}</a>
                                    </li>
                                @endforeach
                            </ul>

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



