
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
            <div class="portlet box border shadow round">

                <div class="portlet-heading">
                    <div class="portlet-title ">
                        <h3 class="title">
                            <i class="fa fa-envelope-open "></i>
                            ارسال پیام کوتاه به همه کاربران
                        </h3>
                        <form role="form" method="post" action="{{url('/panel/users/send-genreal-message')}}"  onsubmit="return confirm('آیا مطمئن هستید؟')">
                            {{csrf_field()}}
                            <div class="form-body my-2">
                                <div class="form-group">
                                    <div class="input-group " >
                                                <span class="input-group-addon">
                                                    <i class="icon-info"></i>
                                                </span>
                                        <textarea style="min-height: 170px" type="text" name="text" class="form-control" value="" required placeholder="(لطفا در نوشتن پیام دقت کافی داشته باشید)"></textarea>
                                    </div>
                                </div>
                            </div>



                            <div class="form-group  ">
                                <label for="price">ارسال از طریق:</label>
                                <div class="d-inline">
                                    <span class="custom-control m-5" style="">
                                        <input type="checkbox" class="custom-control-input"
                                               id="defaultUnchecked" name="ticket" value="ticket">
                                        <label class="custom-control-label text-dark set-font"
                                               for="defaultUnchecked">تیکت</label>
                                    </span>
                                    <span class="custom-control m-5" style="">
                                        <input type="checkbox" class="custom-control-input"
                                               id="defaultUnchecked" name="sms" value="sms">
                                        <label class="custom-control-label text-dark set-font"
                                               for="defaultUnchecked">sms</label>
                                    </span>
                                    <span class="custom-control m-5" style="">
                                        <input type="checkbox" class="custom-control-input"
                                               id="defaultUnchecked" name="email" value="email">
                                        <label class="custom-control-label text-dark set-font"
                                               for="defaultUnchecked">ایمیل</label>
                                    </span>
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
                            لیست  پیام های ارسال شده به همه کاربران
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
                                    <th>تیکت</th>
                                    <th>sms</th>
                                    <th>ایمیل</th>
                                    <th>تاریخ </th>
                                    <th>محتوای پیام</th>
                                </tr>
                                </thead>
                                <tbody>
                                @php($i=0)
                                @foreach($messages as $message)
                                <tr>
                                    <td>{{++$i}}</td>
                                    <td>
                                        @if($message->ticket == 1) بله
                                        @else خیر
                                        @endif
                                    </td>
                                    <td>
                                        @if($message->sms == 1) بله
                                        @else خیر
                                        @endif
                                    </td>
                                    <td>
                                        @if($message->email == 1) بله
                                        @else خیر
                                        @endif
                                    </td>

                                    @php($date = new \App\Http\Controllers\helpers\PDate())
                                    @php($d = explode(' ', $message->created_at)[0])
                                    @php($time = explode(' ', $message->created_at)[1])
                                    <td class="text-black" > {{$date->toPersian($d, 'Y/m/d')}} <br> {{$time}}  </td>
                                    <td>
                                        {{$message->text}}
                                    </td>

                                </tr>
                                 @endforeach
                                </tbody>
                            </table>
                        </div><!-- /.table-responsive -->
                        <div class="pull-left">
                            {{ $messages->links() }}
                        </div>
                        <div class="clearfix"></div>
                    </div><!-- /.portlet-body -->
                </div>
            </div><!-- /.col-md-12 -->
        </div>


        <div class="col-md-12">
            <div class="portlet box border shadow round">
                <div class="portlet-heading">
                    <div class="portlet-title ">
                        <h3 class="title">
                            <i class="fa fa-user "></i>
                            لیست تمامی کاربران</strong>
                        </h3>
                        <form role="form" action="{{url('/panel/user-search')}}" method="post" enctype="multipart/form-data">
                            {{csrf_field()}}
                            <div class="form-body my-2">
                                <div class="form-group">
                                    <div class="input-group round">
                                                <span class="input-group-addon">
                                                    <i class="icon-info"></i>
                                                </span>
                                        <input type="text" name="text" class="form-control"
                                               @if(!empty($text))
                                               value="{{$text}}"
                                               @endif
                                               placeholder="نام کاربری یا ایمیل یا شماره موبایل">
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

                        <div class="pull-left">
                        </div>
                        <div class="table-responsive">
                            <table class="table table-hover table-striped" id="data-table">
                                <thead>
                                <tr>
                                    <th>ردیف</th>
                                    <th>نام کاربر</th>
                                    <th>ایمیل</th>
                                    <th>تاریخ ثبت نام</th>
                                    <th>مبلغ حساب(تومان)</th>
                                    <th>جزییات</th>
                                </tr>
                                </thead>
                                <tbody>
                                @php($i=0)
                                @foreach($users as $user)
                                <tr>
                                    <td>{{++$i}}</td>
                                    {{--<td><img src="{{$currency->filename}}" height="35" class="rounded float-right" alt="{{$currency->name}}"></td>--}}
                                    <td class="text-black" >{{$user->full_name}}</td>
                                    <td>
                                        {{$user->email}}
                                    </td>
                                    @if($user->created_at != null)
                                    @php($date = new \App\Http\Controllers\helpers\PDate())
                                    @php($d = explode(' ', $user->created_at)[0])
                                    @php($time = explode(' ', $user->created_at)[1])
                                    <td class="text-black" > {{$date->toPersian($d, 'Y/m/d')}} <br> {{$time}}  </td>
                                    @else
                                    <td> </td>
                                    @endif

                                    <td>
                                        @if($user->finance != null)
                                            {{number_format($user->finance->user_balance)}} تومان
                                        @else
                                        0 تومان
                                        @endif
                                    </td>

                                    <td>
                                        <a class="btn btn-sm del-edit "  href="{{url('/panel/user', $user->id)}}">
                                            جزییات
                                        </a>
                                    </td>

                                </tr>
                                @endforeach

                                </tbody>
                            </table>
                        </div><!-- /.table-responsive -->
                        <div class="pull-left">
                            {{ $users->links() }}
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
</body>



