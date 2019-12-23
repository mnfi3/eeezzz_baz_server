<?php

namespace App\Http\Controllers\admin;

use App\GameForShopRequest;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AdminOrderController extends Controller
{
  public function __construct() {
    $this->middleware('auth');
    $this->middleware('super_admin');
  }


  public function latestOrdersRents(){
    return view('site.latest-orders-rents');
  }

  public function latestOrdersSells(){
    $sells = GameForShopRequest::where('is_sent', '=', 0)->get();
    return view('site.latest-orders-sells', compact('sells'));
  }

  public function test(){
    return 'this is test function';
  }
}
