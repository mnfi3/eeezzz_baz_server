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
                                    <i class="icon-plus"></i>
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
                                <form role="form" action="{{url('/panel/manage/products/game/add')}}" method="post"
                                      enctype="multipart/form-data">
                                    {{csrf_field()}}
                                    <div class="form-body">

                                        <div class="form-group">
                                            <label>بازی</label>
                                            <div class="input-group round">
                                                <span class="input-group-addon">
                                                    <i class="icon-info"></i>
                                                </span>
                                                <select class="form-control" name="game_info_id">
                                                    @foreach($games as $game)
                                                        <option value="{{$game->id}}">{{$game->name}}</option>
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
                                                <input type="number" name="price" class="form-control" value=""
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
                                                    <option value="all">all</option>
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                    <option value="5">5</option>
                                                    <option value="6">6</option>
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
                                                    <option value="0">ندارد</option>
                                                    <option value="1">دارد</option>
                                                </select>
                                            </div>
                                        </div>


                                        <div class="form-group">
                                            <label>تعداد موجود</label>
                                            <div class="input-group round">
                                                <span class="input-group-addon">
                                                    <i class="icon-info"></i>
                                                </span>
                                                <input type="number" name="count" class="form-control" value=""
                                                       placeholder="به عدد">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label>دسته بندی</label>
                                        <div class="input-group round">
                                                <span class="input-group-addon">
                                                    <i class="icon-info"></i>
                                                </span>
                                            <select class="form-control" name="type">
                                                <option value="1">هم اجاره ای هم فروشی</option>
                                                <option value="2">فقط اجاره ای</option>
                                                <option value="3">فقط فروشی</option>
                                            </select>
                                        </div><!-- /.input-group -->
                                    </div><!-- /.form-group -->
                                    <div class="form-group">
                                        <label>کارکرد</label>
                                        <div class="input-group round">
                                                <span class="input-group-addon">
                                                    <i class="icon-info"></i>
                                                </span>
                                            <select class="form-control" name="is_second_hand">
                                                <option value="0">نو</option>
                                                <option value="1">دست دوم</option>
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
        <div class="col-md-12">
            <div class="portlet box border shadow round">
                <div class="portlet-heading">
                    <div class="portlet-title">
                        <h3 class="title">
                            <i class="icon-game-controller "></i>
                            لیست بازی های اجاره ای
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
                                    <th>نام</th>
                                    <th>قیمت(تومان)</th>
                                    <th>region</th>
                                    <th>امکان بازی آنلاین</th>
                                    <th>کاردکرد</th>
                                    <th>نوع</th>
                                    <th>تعداد</th>
                                    <th>حذف</th>
                                    <th>ویرایش</th>
                                </tr>
                                </thead>
                                <tbody>
                                @php($i=0)
                                @foreach($game_for_rents as $game)
                                    <tr>
                                        <td>{{++$i}}</td>
                                        @if($game->coverPhoto() != null)
                                            <td><img src={{$game->coverPhoto()->url}}"" height="35"
                                                     class="rounded float-right" alt=""></td>
                                        @else
                                            <td><img src="" height="35"
                                                     class="rounded float-right" alt=""></td>
                                        @endif

                                        <td class="text-black"><a href="{{url('/panel/game-edit', $game->gameInfo->id)}}">{{$game->gameInfo->name}}</a></td>
                                        <td class="text-black">{{number_format($game->price)}}</td>
                                        <td class="text-black">{{$game->region}}</td>
                                        <td class="text-black">@if($game->can_play_online == 1) بله  @else خیر @endif</td>
                                        <td class="text-black">@if($game->is_second_hand == 1) دست دوم @else نو @endif</td>
                                        <td class="text-black">@if($game->rentShop != null) هم اجاره ای هم فروشی @else فقط اجاره ای @endif</td>
                                        <td class="text-black">{{$game->count}}</td>
                                        <td>
                                            <form action="{{url('/panel/manage/products/games/remove-rent')}}" method="post" onsubmit="return confirm('آیا مطمئن هستید؟')">
                                                @csrf
                                                <input type="hidden" name="id" value="{{$game->id}}">
                                                <button class="btn btn-sm del-btn btn-danger" type="submit">
                                                    حذف
                                                </button>

                                            </form>
                                        </td>
                                        <td>
                                            <a class="btn btn-sm del-edit " href="{{url('/panel/manage/products/games/edit-rent', $game->id)}}">
                                                ویرایش
                                            </a>
                                        </td>
                                    </tr>
                                @endforeach

                                </tbody>
                            </table>
                        </div><!-- /.table-responsive -->
                        <div class="pull-left">
                            {{ $game_for_rents->links() }}
                        </div>
                        <div class="clearfix"></div>
                    </div><!-- /.portlet-body -->
                </div><!-- /.portlet -->
            </div><!-- /.col-md-12 -->
        </div>
















        <div class="col-md-12">
            <div class="portlet box border shadow round">
                <div class="portlet-heading">
                    <div class="portlet-title">
                        <h3 class="title">
                            <i class="icon-game-controller "></i>
                            لیست بازی های فروشی
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
                                    <th>نام</th>
                                    <th>قیمت(تومان)</th>
                                    <th>region</th>
                                    <th>امکان بازی آنلاین</th>
                                    <th>کاردکرد</th>
                                    <th>نوع</th>
                                    <th>تعداد</th>
                                    <th>حذف</th>
                                    <th>ویرایش</th>
                                </tr>
                                </thead>
                                <tbody>
                                @php($i=0)
                                @foreach($game_for_shops as $game)
                                    <tr>
                                        <td>{{++$i}}</td>
                                        @if($game->coverPhoto() != null)
                                            <td><img src={{$game->coverPhoto()->url}}"" height="35"
                                                     class="rounded float-right" alt=""></td>
                                        @else
                                            <td><img src="" height="35"
                                                     class="rounded float-right" alt=""></td>
                                        @endif

                                        <td class="text-black"><a href="{{url('/panel/game-edit', $game->gameInfo->id)}}">{{$game->gameInfo->name}}</a></td>
                                        <td class="text-black">{{number_format($game->price)}}</td>
                                        <td class="text-black">{{$game->region}}</td>
                                        <td class="text-black">@if($game->can_play_online == 1) بله  @else خیر @endif</td>
                                        <td class="text-black">@if($game->is_second_hand == 1) دست دوم @else نو @endif</td>
                                        <td class="text-black">@if($game->rentShop != null) هم فروشی هم اجاره ای  @else فقط فروشی @endif</td>
                                        <td class="text-black">{{$game->count}}</td>
                                        <td>
                                            <form action="{{url('/panel/manage/products/games/remove-shop')}}" method="post" onsubmit="return confirm('آیا مطمئن هستید؟')">
                                                @csrf
                                                <input type="hidden" name="id" value="{{$game->id}}">
                                                <button class="btn btn-sm del-btn btn-danger" type="submit">
                                                    حذف
                                                </button>

                                            </form>
                                        </td>
                                        <td>
                                            <a class="btn btn-sm del-edit " href="{{url('/panel/manage/products/games/edit-shop', $game->id)}}">
                                                ویرایش
                                            </a>
                                        </td>
                                    </tr>
                                @endforeach

                                </tbody>
                            </table>
                        </div><!-- /.table-responsive -->
                        <div class="pull-left">
                            {{ $game_for_shops->links() }}
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



