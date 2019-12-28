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
    <script src="{{asset('ckeditor/ckeditor.js')}}"></script>
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
                                    <i class="fa fa-address-book"></i>
                                    افزودن محتوا
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
                                <form role="form" action="{{url('/panel/post/add')}}" method="post"
                                      enctype="multipart/form-data">
                                    {{csrf_field()}}
                                    <div class="form-body">

                                        <div class="form-group">
                                            <label>مرتبط با :</label>
                                            <div class="input-group round">
                                                <span class="input-group-addon">
                                                    <i class="icon-info"></i>
                                                </span>
                                                <select class="form-control" name="game_info_id">
                                                    <option value="0">هیچکدام</option>
                                                    @foreach($games as $game)
                                                        <option value="{{$game->id}}">{{$game->name}}</option>
                                                    @endforeach
                                                </select>
                                            </div><!-- /.input-group -->
                                        </div><!-- /.form-group -->

                                        <div class="form-group">
                                            <label>عنوان</label>
                                            <div class="input-group round">
                                                <span class="input-group-addon">
                                                    <i class="icon-info"></i>
                                                </span>
                                                <input type="text" name="title" class="form-control" value=""
                                                       placeholder="عنوان وارد شود" required>
                                            </div>
                                        </div>


                                        <div class="form-group relative">
                                            <input type="file" name="image" class="form-control" required>
                                            <label> تصویر کاور</label>
                                            <div class="input-group round">
                                                <input type="text" class="form-control file-input"
                                                       placeholder="برای آپلود کلیک کنید">
                                                <span class="input-group-btn input-group-sm">
                                                <button type="button" class="btn btn-info">
                                                    <i class="icon-picture"></i>
                                                    آپلود تصویر کاور
                                                </button>
                                            </span>
                                            </div><!-- /.input-group -->
                                        </div><!-- /.form-group -->


                                        <div class="form-group">
                                            <label>توضیحات </label>
                                            <div class="input-group round">
                                                <span class="input-group-addon">
                                                    <i class="icon-info"></i>
                                                </span>
                                                <textarea type="text" id="editor2" required=""
                                                          class="form-control" name="content"
                                                          placeholder="set content here"></textarea>
                                                <script>
                                                  CKEDITOR.replace('editor2');
                                                </script>
                                            </div>
                                        </div>


                                    </div>

                                    <div class="form-actions">
                                        <button type="submit" name="submit" class="btn btn-info btn-round">
                                            <i class="icon-check"></i>
                                            ذخیره
                                        </button>
                                    </div><!-- /.form-actions -->
                                </form>
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
                            لیست مطالب
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
                                    <th>آیکون</th>
                                    <th>عنوان</th>
                                    <th>زمان</th>
                                    <th>حذف</th>
                                    <th>ویرایش</th>
                                </tr>
                                </thead>
                                <tbody>
                                @php($i=0)
                                @foreach($posts as $post)
                                    <tr>
                                        <td>{{++$i}}</td>
                                        <td><img src="{{$post->photos[0]->url}}" height="35" class="rounded float-right"
                                                 alt=""></td>
                                        <td class="text-black">{{$post->title}}</td>
                                        <td>{{\App\Http\Controllers\helpers\PDate::persianTime($post->created_at, true)}}</td>
                                        <td>
                                            <form action="{{url('/panel/post/remove')}}" method="post"
                                                  onsubmit="return confirm('آیا مطمئن هستید؟')">
                                                @csrf
                                                <input type="hidden" name="id" value="{{$post->id}}">
                                                <button class="btn btn-sm del-btn btn-danger" type="submit">
                                                    حذف
                                                </button>
                                            </form>
                                        </td>

                                        <td>
                                            <a class="btn btn-sm del-edit "
                                               href="{{url('/panel/post-edit', $post->id)}}">
                                                ویرایش
                                            </a>
                                        </td>
                                    </tr>
                                @endforeach

                                </tbody>
                            </table>
                        </div><!-- /.table-responsive -->
                        <div class="pull-left">
                            {{ $posts->links() }}
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



