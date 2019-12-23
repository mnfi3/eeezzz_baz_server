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
                                    <i class="icon-game-controller"></i>
                                    افزودن بازی
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
                                <form role="form" action="{{url('/panel/game-add')}}" method="post"
                                      enctype="multipart/form-data">
                                    {{csrf_field()}}
                                    <div class="form-body">

                                        <div class="form-group">
                                            <label>نام انگلیسی</label>
                                            <div class="input-group round">
                                                <span class="input-group-addon">
                                                    <i class="icon-info"></i>
                                                </span>
                                                <input type="text" name="name" class="form-control" value="" required
                                                       placeholder="نام انگلیسی وارد شود">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label>نام فارسی</label>
                                            <div class="input-group round">
                                                <span class="input-group-addon">
                                                    <i class="icon-info"></i>
                                                </span>
                                                <input type="text" name="persian_name" class="form-control" value="" required
                                                       placeholder="نام فارسی وارد شود">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label>نوع کنسول</label>
                                            <div class="input-group round">
                                                <span class="input-group-addon">
                                                    <i class="icon-info"></i>
                                                </span>
                                                <select class="form-control" name="console_type_id" required>
                                                    @foreach($consoles as $console)
                                                        <option value="{{$console->id}}">{{$console->name}}</option>
                                                    @endforeach
                                                </select>
                                            </div><!-- /.input-group -->
                                        </div><!-- /.form-group -->

                                        <div class="form-group">
                                            <label>رده سنی</label>
                                            <div class="input-group round">
                                                <span class="input-group-addon">
                                                    <i class="icon-info"></i>
                                                </span>
                                                <select class="form-control" name="age_class" required>
                                                    <option value="3">3</option>
                                                    <option value="7">7</option>
                                                    <option value="12">12</option>
                                                    <option value="16">16</option>
                                                    <option value="18">18</option>
                                                </select>
                                            </div><!-- /.input-group -->
                                        </div><!-- /.form-group -->

                                        <div class="form-group">
                                            <label>تاریخ انتشار</label>
                                            <div class="input-group round">
                                                <span class="input-group-addon">
                                                    <i class="icon-info"></i>
                                                </span>
                                                <input type="text" name="production_date" class="form-control" value=""required
                                                       placeholder="2019-05-05">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label>امکان بازی آنلاین</label>
                                            <div class="input-group round">
                                                <span class="input-group-addon">
                                                    <i class="icon-info"></i>
                                                </span>
                                                <select class="form-control" name="can_play_online" required>
                                                    <option value="1">بله</option>
                                                    <option value="0">خیر</option>
                                                </select>
                                            </div><!-- /.input-group -->
                                        </div><!-- /.form-group -->

                                        <div class="form-group">
                                            <label>نام شرکت سازنده</label>
                                            <div class="input-group round">
                                                <span class="input-group-addon">
                                                    <i class="icon-info"></i>
                                                </span>
                                                <input type="text" name="company_name" class="form-control" value="" required
                                                       placeholder="نام سازنده بازی وارد شود">
                                            </div>
                                        </div>


                                        <div class="form-group">
                                            <label>توضیحات </label>
                                            <div class="input-group round">
                                                <span class="input-group-addon">
                                                    <i class="icon-info"></i>
                                                </span>
                                                <textarea type="text" id="editor2" required=""
                                                          class="form-control" name="description"
                                                          placeholder="set content here" required></textarea>
                                                <script>
                                                  CKEDITOR.replace('editor2');
                                                </script>
                                            </div>
                                        </div>


                                        <div class="form-group relative mb-5">
                                            <input type="file" name="cover_image" class="form-control" required>
                                            <label> عکس کاور (حتما وارد شود)</label>
                                            <div class="input-group round">
                                                <input type="text" class="form-control file-input"
                                                       placeholder="برای آپلود کلیک کنید" >
                                                <span class="input-group-btn input-group-sm">
                                                <button type="button" class="btn btn-info">
                                                    <i class="icon-picture"></i>
                                                    آپلود عکس کاور
                                                </button>
                                            </span>
                                            </div><!-- /.input-group -->
                                        </div><!-- /.form-group -->


                                        <div class="form-group relative mt-5">
                                            <input type="file" name="images[]" class="form-control" required>
                                            <label> عکس اول (حتما وارد شود)</label>
                                            <div class="input-group round">
                                                <input type="text" class="form-control file-input"
                                                       placeholder="برای آپلود کلیک کنید">
                                                <span class="input-group-btn input-group-sm">
                                                <button type="button" class="btn btn-info">
                                                    <i class="icon-picture"></i>
                                                    آپلود عکس اول
                                                </button>
                                            </span>
                                            </div><!-- /.input-group -->
                                        </div><!-- /.form-group -->
                                        <div class="form-group relative">
                                            <input type="file" name="images[]" class="form-control">
                                            <label> عکس دوم</label>
                                            <div class="input-group round">
                                                <input type="text" class="form-control file-input"
                                                       placeholder="برای آپلود کلیک کنید">
                                                <span class="input-group-btn input-group-sm">
                                                <button type="button" class="btn btn-info">
                                                    <i class="icon-picture"></i>
                                                      آپلود عکس دوم
                                                </button>
                                            </span>
                                            </div><!-- /.input-group -->
                                        </div><!-- /.form-group -->
                                        <div class="form-group relative">
                                            <input type="file" name="images[]" class="form-control">
                                            <label> عکس سوم</label>
                                            <div class="input-group round">
                                                <input type="text" class="form-control file-input"
                                                       placeholder="برای آپلود کلیک کنید">
                                                <span class="input-group-btn input-group-sm">
                                                <button type="button" class="btn btn-info">
                                                    <i class="icon-picture"></i>
                                                    آپلود عکس سوم
                                                </button>
                                            </span>
                                            </div><!-- /.input-group -->
                                        </div><!-- /.form-group -->
                                        <div class="form-group relative">
                                            <input type="file" name="images[]" class="form-control">
                                            <label> عکس چهارم</label>
                                            <div class="input-group round">
                                                <input type="text" class="form-control file-input"
                                                       placeholder="برای آپلود کلیک کنید">
                                                <span class="input-group-btn input-group-sm">
                                                <button type="button" class="btn btn-info">
                                                    <i class="icon-picture"></i>
                                                    آپلود عکس چهارم
                                                </button>
                                            </span>
                                            </div><!-- /.input-group -->
                                        </div><!-- /.form-group -->

                                        <div class="form-group relative">
                                            <input type="file" name="images[]" class="form-control">
                                            <label> عکس پنجم</label>
                                            <div class="input-group round">
                                                <input type="text" class="form-control file-input"
                                                       placeholder="برای آپلود کلیک کنید">
                                                <span class="input-group-btn input-group-sm">
                                                <button type="button" class="btn btn-info">
                                                    <i class="icon-picture"></i>
                                                    آپلود عکس پنجم
                                                </button>
                                            </span>
                                            </div><!-- /.input-group -->
                                        </div><!-- /.form-group -->
                                        <div class="form-group relative">
                                            <input type="file" name="images[]" class="form-control">
                                            <label> عکس ششم</label>
                                            <div class="input-group round">
                                                <input type="text" class="form-control file-input"
                                                       placeholder="برای آپلود کلیک کنید">
                                                <span class="input-group-btn input-group-sm">
                                                <button type="button" class="btn btn-info">
                                                    <i class="icon-picture"></i>
                                                    آپلود عکس ششم
                                                </button>
                                            </span>
                                            </div><!-- /.input-group -->
                                        </div><!-- /.form-group -->


                                        <div class="form-group relative">
                                            <input type="file" name="video" class="form-control" required>
                                            <label> ویدئو </label>
                                            <div class="input-group round">
                                                <input type="text" class="form-control file-input"
                                                       placeholder="برای آپلود کلیک کنید">
                                                <span class="input-group-btn input-group-sm">
                                                <button type="button" class="btn btn-info">
                                                    <i class="icon-picture"></i>
                                                    آپلود تریلر
                                                </button>
                                            </span>
                                            </div><!-- /.input-group -->
                                        </div><!-- /.form-group -->


                                        <div class="form-group  ">
                                            <label for="price">ژانر ها</label>
                                            <div class="row selection"
                                                 style="background-color: rgba(244,255,167,0.84); border: 2px #c4c4c4 solid; border-radius: 4px; margin: 0px 50px;padding: 10px;text-align: center">
                                                <div class="col-sm-3">
                                                    <div class=" d-flex flex-wrap align-items-stretch justify-content-start "
                                                         style="">

                                                        @foreach($genres as $genre)
                                                            <div class="">
                                                            <span class="custom-control " style="">
                                                                <input type="checkbox" class="custom-control-input"
                                                                       id="defaultUnchecked" name="genres[]" value="{{$genre->id}}">
                                                                <label class="custom-control-label text-dark set-font"
                                                                       for="defaultUnchecked">{{$genre->name}}</label>
                                                             </span>
                                                            </div>
                                                        @endforeach
                                                    </div>
                                                </div>


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
                            لیست بازی ها
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
                                    {{--<th>آیکون</th>--}}
                                    <th>نام</th>
                                    <th>حذف</th>
                                    <th>ویرایش</th>
                                </tr>
                                </thead>
                                <tbody>
                                @php($i = 0)
                                @foreach($games as $game)
                                    <tr>
                                        <td>{{++$i}}</td>
                                        {{--<td><img src="{{$currency->filename}}" height="35" class="rounded float-right" alt="{{$currency->name}}"></td>--}}
                                        <td class="text-black">{{$game->name}}</td>
                                        <td>
                                            <form action="{{url('/panel/game-remove')}}" method="post"
                                                  onsubmit="return confirm('آیا مطمئن هستید؟')">
                                                @csrf
                                                <input type="hidden" value="{{$game->id}}" name="id">
                                                <button class="btn btn-sm del-btn btn-danger" type="submit">
                                                    حذف
                                                </button>

                                            </form>
                                        </td>
                                        <td>
                                            <a class="btn btn-sm del-edit "
                                               href="{{url('/panel/game-edit', $game->id)}}">
                                                ویرایش
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

        <!-- BEGIN PAGE JAVASCRIPT -->
        <script src="{{ asset('plugins/data-table/js/jquery.dataTables.min.js') }}"></script>
        <script src="{{ asset('plugins/data-table/js/dataTables.bootstrap.js') }}"></script>
        <script src="{{ asset('js/pages/datatable.js') }}"></script>
        <link href="{{ asset('plugins/data-table/css/dataTables.bootstrap.css') }}" rel="stylesheet">

    </div>
</div>
</div>
</body>



