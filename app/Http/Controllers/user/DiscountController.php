<?php

namespace App\Http\Controllers\user;

use App\Discount;
use App\Http\Controllers\web_service\ms;
use App\Http\Controllers\web_service\ws;
use DateTime;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class DiscountController extends Controller
{
  public function __construct() {
    $this->middleware('auth:api');
  }

  public function discountCheck(Request $request){
    $code = $request->code;
    $type = $request->type;//rent or shop
    $user = Auth::user();

    $discount = Discount::orderBy('id', 'desc')->where('code', '=', $code)->first();
    if ($discount == null) return ws::r(0, [], 200, ms::DISCOUNT_NOT_EXIST);
//
    $now = strtotime(date('Y-m-d H:i:s'));
    $started_at = strtotime($discount->started_at);
    $finished_at = strtotime($discount->finished_at);
    if ($started_at > $now) return ws::r(0, [], 200, ms::DISCOUNT_TIME_NOT_STARTED);
    if ($finished_at < $now) return ws::r(0, [], 200, ms::DISCOUNT_TIME_FINISHED);
    if ($discount->remaining < 1) return ws::r(0, [], 200, ms::DISCOUNT_REMAINING_FINISHED);


    //check discount for shop
    if ($type == 'shop'){
      if($discount->type != Discount::TYPE_SHOP_COST && $discount->type != Discount::TYPE_SHOP_COST_FIRST)
        return ws::r(0, [], 200, ms::DISCOUNT_NOT_EXIST);

      if ($discount->type == Discount::TYPE_SHOP_COST_FIRST){
        $shops_count = $user->gameForShopRequests()->count();
        if ($shops_count > 0) return ws::r(0, [], 200, ms::DISCOUNT_IS_JUST_TO_FIRST_SHOP);
      }

      return ws::r(1, $discount);
    }




    //check discount for rent
    if ($type == 'rent'){
      return ws::r(0, [], 200, ms::DISCOUNT_NOT_EXIST);
    }

  }
}
