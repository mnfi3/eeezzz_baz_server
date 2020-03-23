<?php

namespace App\Http\Controllers\admin;

use App\GameForRentRequest;
use App\GameForShopRequest;
use DateInterval;
use DateTime;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AdminOrderController extends Controller
{
  public function __construct() {
    $this->middleware('auth');
    $this->middleware('super_admin');
  }


  public function latestOrdersRents(Request $request){
    $text = $request->text;
    if (strlen($text) < 2) $text = '-';
    $new_orders = GameForRentRequest::where('order_number', 'like', '%'.$text.'%')->where('is_sent' , '=' , 0)->paginate(50);
    $sent_orders = GameForRentRequest::where('order_number', 'like', '%'.$text.'%')->where('is_sent' , '=' , 1)->where('is_delivered', '=', 0)->paginate(50);
    $delivered_orders = GameForRentRequest::where('order_number', 'like', '%'.$text.'%')->where('is_delivered' , '=' , 1)->orderBy('id', 'desc')->paginate(50);

    $now = date('Y-m-d H:i:s');

    $dateTime = new DateTime($now);
    $dateTime->add(new DateInterval('P1D'));
    $time = $dateTime->format('Y-m-d H:i:s');
    $ending_orders = GameForRentRequest::where('order_number', 'like', '%'.$text.'%')->where('finished_at', '<', $time)->where('finished_at', '>', $now)->paginate(50);

    $finished_delay_orders = GameForRentRequest::where('order_number', 'like', '%'.$text.'%')->where('finished_at', '<', $now)->where('is_returned', '=', 0)->paginate(50);
    $finished_success_orders = GameForRentRequest::where('order_number', 'like', '%'.$text.'%')->where('is_returned' , '=' , 1)->paginate(50);
    $confiscated_orders = GameForRentRequest::where('order_number', 'like', '%'.$text.'%')->where('is_confiscated', '=', 1)->orderBy('id', 'desc')->paginate(50);

    if ($text == '-') $text = '';
    return view('site.latest-orders-rents', compact('new_orders', 'sent_orders', 'delivered_orders', 'ending_orders', 'finished_delay_orders', 'finished_success_orders', 'confiscated_orders'))->with('text', $text);
  }


  public function latestOrdersSells(){
    $sells = GameForShopRequest::where('is_sent', '=', 0)->get();
    return view('site.latest-orders-sells', compact('sells'));
  }


}
