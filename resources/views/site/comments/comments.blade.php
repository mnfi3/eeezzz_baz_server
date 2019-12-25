<!DOCTYPE html>
<html lang="fa" dir="rtl">


<head>
    <title>ایزی بازی|پنل مدیریت</title>
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
        <div class="col-md-12 ">

            {{--new comments--}}
            <div class="portlet box border shadow round ">
                <div class="portlet-heading">
                    <div class="portlet-title">
                        <h3 class="title">
                            <i class="fa fa-comment"></i>
                               لیست نظرات جدید
                             <span class="new-order">نظرات جدید </span>
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
                                <tr style="font-size: 1.2rem">
                                    <th>ردیف</th>
                                    <th>نام کاربر</th>
                                    <th>نام بازی</th>
                                    <th>متن پیام</th>
                                    <th>تایید</th>
                                    <th>رد</th>
                                </tr>
                                </thead>
                                <tbody>
                                @php($i=0)
                                @foreach($new_comments as $comment)
                                    <tr>
                                        <td> {{++$i}} </td>
                                        <td class="text-black">
                                            <a href="#" class="bg-success p-2 table-link" style="">
                                                <h6>{{$comment->user->full_name}}</h6></a>
                                        </td>
                                        <td class="text-black">
                                            @if($comment->commentable_type == 'App\GameInfo')
                                                <a href="#" class="bg-success p-2 table-link" style="">
                                                    <h6>{{$comment->gameInfo->name}}</h6></a>
                                            @elseif($comment->commentable_type == 'App\Post')
                                                <a href="#" class="bg-success p-2 table-link" style="">
                                                    <h6>{{$comment->post->title}}</h6></a>
                                            @endif
                                        </td>
                                        <td>
                                            <button class="custom-btn text-center" style="max-width: 150px"
                                                    data-toggle="modal" data-target="#myModal{{$comment->id}}">مشاهده
                                            </button>
                                        </td>
                                        <td><a class="btn btn-success" href="{{url('/panel/comment/confirm', $comment->id)}}">تایید</a></td>
                                        <td><a class="btn btn-danger" href="{{url('/panel/comment/reject', $comment->id)}}">رد</a></td>


                                    </tr>
                                @endforeach

                            </table>
                        </div><!-- /.table-responsive -->
                        <div class="pull-left">
                            {{ $new_comments->links() }}
                        </div>
                        <div class="clearfix"></div>
                    </div><!-- /.portlet-body -->
                </div><!-- /.portlet -->
            </div><!-- /.col-md-12 -->

            {{--rejected comments--}}
            <div class="portlet box border shadow round ">
                <div class="portlet-heading">
                    <div class="portlet-title">
                        <h3 class="title">
                            <i class="fa fa-comment"></i>
                            لیست نظرات رد شده
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
                                <tr style="font-size: 1.2rem">
                                    <th>ردیف</th>
                                    <th>نام کاربر</th>
                                    <th>نام بازی</th>
                                    <th>متن پیام</th>
                                </tr>
                                </thead>
                                <tbody>
                                @php($i=0)
                                @foreach($rejected_comments as $comment)
                                    <tr>
                                        <td> {{++$i}}</td>
                                        <td class="text-black">
                                            <a href="#" class="bg-success p-2 table-link" style="">
                                                <h6>{{$comment->user->full_name}}</h6></a>
                                        </td>
                                        <td class="text-black">
                                            @if($comment->commentable_type == 'App\GameInfo')
                                                <a href="#" class="bg-success p-2 table-link" style="">
                                                    <h6>{{$comment->gameInfo->name}}</h6></a>
                                            @elseif($comment->commentable_type == 'App\Post')
                                                <a href="#" class="bg-success p-2 table-link" style="">
                                                    <h6>{{$comment->post->title}}</h6></a>
                                            @endif
                                        </td>
                                        <td>
                                            <button class="custom-btn text-center" style="max-width: 150px"
                                                    data-toggle="modal" data-target="#myModal{{$comment->id}}">مشاهده
                                            </button>
                                        </td>
                                    </tr>
                                @endforeach

                            </table>
                        </div><!-- /.table-responsive -->
                        <div class="pull-left">
                            {{ $rejected_comments->links() }}
                        </div>
                        <div class="clearfix"></div>
                    </div><!-- /.portlet-body -->
                </div><!-- /.portlet -->
            </div><!-- /.col-md-12 -->


            {{--confirmed comments--}}
            <div class="portlet box border shadow round ">
                <div class="portlet-heading">
                    <div class="portlet-title">
                        <h3 class="title">
                            <i class="fa fa-comment"></i>
                            لیست نظرات تایید شده
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
                                <tr style="font-size: 1.2rem">
                                    <th>ردیف</th>
                                    <th>نام کاربر</th>
                                    <th>نام بازی</th>
                                    <th>متن پیام</th>
                                </tr>
                                </thead>
                                <tbody>
                                @php($i=0)
                                @foreach($confirmed_comments as $comment)
                                    <tr>
                                        <td> {{++$i}} </td>
                                        <td class="text-black">
                                            <a href="#" class="bg-success p-2 table-link" style="">
                                                <h6>{{$comment->user->full_name}}</h6></a>
                                        </td>
                                        <td class="text-black">
                                            @if($comment->commentable_type == 'App\GameInfo')
                                                <a href="#" class="bg-success p-2 table-link" style="">
                                                    <h6>{{$comment->gameInfo->name}}</h6></a>
                                            @elseif($comment->commentable_type == 'App\Post')
                                                <a href="#" class="bg-success p-2 table-link" style="">
                                                    <h6>{{$comment->post->title}}</h6></a>
                                            @endif
                                        </td>
                                        <td>
                                            <button class="custom-btn text-center" style="max-width: 150px"
                                                    data-toggle="modal" data-target="#myModal{{$comment->id}}">مشاهده
                                            </button>
                                        </td>


                                    </tr>
                                @endforeach

                            </table>
                        </div><!-- /.table-responsive -->
                        <div class="pull-left">
                            {{ $confirmed_comments->links() }}
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
@foreach($new_comments as $comment)
<div class="modal fade" id="myModal{{$comment->id}}" style="font-family: Vazir">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title text-right ml-auto"> جزئیات کامنت</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body text-right">
                <p>{{$comment->text}}</p>
            </div>

            <!-- Modal footer -->
            <div class="modal-footer">

                <button type="button" class="custom-btn btn-danger" data-dismiss="modal" style="max-width: 60px">بستن
                </button>
            </div>

        </div>
    </div>
</div>
@endforeach
@foreach($rejected_comments as $comment)
    <div class="modal fade" id="myModal{{$comment->id}}" style="font-family: Vazir">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title text-right ml-auto"> جزئیات کامنت</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body text-right">
                    <p>{{$comment->text}}</p>
                </div>

                <!-- Modal footer -->
                <div class="modal-footer">

                    <button type="button" class="custom-btn btn-danger" data-dismiss="modal" style="max-width: 60px">بستن
                    </button>
                </div>

            </div>
        </div>
    </div>
@endforeach
@foreach($confirmed_comments as $comment)
    <div class="modal fade" id="myModal{{$comment->id}}" style="font-family: Vazir">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title text-right ml-auto"> جزئیات کامنت</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body text-right">
                    <p>{{$comment->text}}</p>
                </div>

                <!-- Modal footer -->
                <div class="modal-footer">

                    <button type="button" class="custom-btn btn-danger" data-dismiss="modal" style="max-width: 60px">بستن
                    </button>
                </div>

            </div>
        </div>
    </div>
@endforeach

</body>



