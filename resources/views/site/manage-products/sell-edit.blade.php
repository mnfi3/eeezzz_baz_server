
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
            <div class="row">
                <div class="col-md-12">
                    <div class="portlet box border shadow round">
                        <div class="portlet-heading">
                            <div class="portlet-title">
                                <h3 class="title">
                                    <i class="fa fa-edit"></i>
                                    ویرایش بازی فروشی
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
                                <form role="form" action="{{url('/panel/manage/products/games/update-shop')}}" method="post"
                                      enctype="multipart/form-data">
                                    {{csrf_field()}}
                                    <input type="hidden" name="id" value="{{$game->id}}">
                                    <div class="form-body">

                                        <div class="form-group">
                                            <label>بازی</label>
                                            <div class="input-group round">
                                                <span class="input-group-addon">
                                                    <i class="icon-info"></i>
                                                </span>
                                                <select class="form-control" name="game_info_id">
                                                    @foreach($games as $game1)
                                                        <option value="{{$game1->id}}" @if($game->gameInfo->id == $game1->id) selected @endif >{{$game1->name}}</option>
                                                    @endforeach
                                                </select>
                                            </div><!-- /.input-group -->
                                        </div><!-- /.form-group -->


                                        <div class="form-group">
                                            <label>قیمت اصلی بازی</label>
                                            <div class="input-group round">
                                                <span class="input-group-addon">
                                                    <i class="icon-info"></i>
                                                </span>
                                                <input type="number" name="price" class="form-control" value="{{$game->price}}"
                                                       placeholder="به تومان">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label>ریجن</label>
                                            <div class="input-group round">
                                                <span class="input-group-addon">
                                                    <i class="icon-info"></i>
                                                </span>
                                                <select class="form-control" name="region">
                                                    <option value="all" @if($game->region == 'all') selected @endif >all</option>
                                                    <option value="1" @if($game->region == 1) selected @endif>1</option>
                                                    <option value="2" @if($game->region == 2) selected @endif>2</option>
                                                    <option value="3" @if($game->region == 3) selected @endif>3</option>
                                                    <option value="4" @if($game->region == 4) selected @endif>4</option>
                                                    <option value="5" @if($game->region == 5) selected @endif>5</option>
                                                    <option value="6" @if($game->region == 6) selected @endif>6</option>
                                                </select>
                                            </div>
                                        </div>


                                        <div class="form-group">
                                            <label>امکان بازی آنلاین</label>
                                            <div class="input-group round">
                                                <span class="input-group-addon">
                                                    <i class="icon-info"></i>
                                                </span>
                                                <select class="form-control" name="can_play_online">
                                                    <option value="0" @if($game->can_play_online == 0) selected @endif>ندارد</option>
                                                    <option value="1" @if($game->can_play_online == 1) selected @endif>دارد</option>
                                                </select>
                                            </div>
                                        </div>


                                        <div class="form-group">
                                            <label>تعداد موجود</label>
                                            <div class="input-group round">
                                                <span class="input-group-addon">
                                                    <i class="icon-info"></i>
                                                </span>
                                                <input type="number" name="count" class="form-control" value="{{$game->count}}"
                                                       placeholder="به عدد">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label>کارکرد</label>
                                        <div class="input-group round">
                                                <span class="input-group-addon">
                                                    <i class="icon-info"></i>
                                                </span>
                                            <select class="form-control" name="is_second_hand">
                                                <option value="0" @if($game->is_second_hand == 0) selected @endif>نو</option>
                                                <option value="1" @if($game->is_second_hand == 1) selected @endif>دست دوم</option>
                                            </select>
                                        </div><!-- /.input-group -->
                                    </div><!-- /.form-group -->

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
        <!-- BEGIN PAGE JAVASCRIPT -->
        <script src="{{ asset('plugins/data-table/js/jquery.dataTables.min.js') }}"></script>
        <script src="{{ asset('plugins/data-table/js/dataTables.bootstrap.js') }}"></script>
        <script src="{{ asset('js/pages/datatable.js') }}"></script>
        <link href="{{ asset('plugins/data-table/css/dataTables.bootstrap.css') }}" rel="stylesheet">

    </div>
</div>
</div>
</body>



