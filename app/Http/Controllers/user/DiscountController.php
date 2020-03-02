<?php

namespace App\Http\Controllers\user;

use App\Discount;
use App\Http\Controllers\web_service\ms;
use App\Http\Controllers\web_service\ws;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class DiscountController extends Controller
{
  public function __construct() {
    $this->middleware('auth:api');
  }

  public function discountCheck(Request $request){
    $code = $request->code;
    $discount = Discount::orderBy('id', 'desc')->where('code', '=', $code)->first();
    if ($discount == null) return ws::r(0, [], 200, ms::DISCOUNT_NOT_EXIST);

    $started_at = new DateTime($discount->started_at);
    $finished_at = new DateTime($discount->finished_at);
    $now = new DateTime("now");
    $interval = date_diff($started_at, $now);
    if ($interval == '-0' || $interval < 0) return ws::r(0, [], 200, ms::DISCOUNT_TIME_NOT_STARTED);

    $interval = date_diff($now, $finished_at);
    if ($interval == '-0' || $interval < 0) return ws::r(0, [], 200, ms::DISCOUNT_TIME_FINISHED);

    if ($discount->remaining < 1) return ws::r(0, [], 200, ms::DISCOUNT_REMAINING_FINISHED);

    return ws::r(1, $discount);
  }
}
