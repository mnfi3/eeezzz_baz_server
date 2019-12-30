<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\web_service\ms;
use App\SettlementRequest;
use App\SitePayment;
use App\Ticket;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Ipecompany\Smsirlaravel\Smsirlaravel;

class AdminFinanceController extends Controller {

  public function __construct() {
    $this->middleware('auth');
    $this->middleware('super_admin');
  }

  public function settlements(){
    $new_requests = SettlementRequest::where('is_seen', '=', 0)->where('is_confirmed', '=', 0)->where('is_paid', '=', 0)->get();
    $confirmed_requests = SettlementRequest::where('is_seen', '=', 1)->where('is_confirmed', '=', 1)->where('is_paid', '=', 0)->get();
    $paid_requests = SettlementRequest::orderBy('id', 'desc')->where('is_seen', '=', 1)->where('is_confirmed', '=', 1)->where('is_paid', '=', 1)->paginate(20);
    $rejected_requests = SettlementRequest::orderBy('id', 'desc')->where('is_seen', '=', 1)->where('is_confirmed', '=', 0)->where('is_paid', '=', 0)->paginate(20);
    return view('site.finance.finance', compact('new_requests', 'confirmed_requests', 'paid_requests', 'rejected_requests'));
  }

  public function confirmSettlement($id){
    $settlement = SettlementRequest::find($id);
    $user = $settlement->user;
    $finance = $user->finance;
    if($finance->user_balance < SettlementRequest::MIN_SETTLEMENT_AMOUNT){
      return back();
    }


    $settlement->final_amount = $finance->user_balance;
    $finance->user_balance = 0;
    $finance->save();
    $settlement->is_seen = 1;
    $settlement->is_confirmed = 1;
    $settlement->is_paid = 0;
    $settlement->save();

//    Smsirlaravel::send([ms::ADMIN_SETTLEMENT_REQUEST_SUCCESS], [$user->mobile]);
    return back();
  }

  public function rejectSettlement($id){
    $settlement = SettlementRequest::find($id);
    $settlement->is_seen = 1;
    $settlement->is_confirmed = 0;
    $settlement->save();
    return back();
  }

  public function saveSitePayment(Request $request){
    $settlement = SettlementRequest::find($request->id);
    $settlement->is_paid = 1;
    $settlement->save();
    $user = $settlement->user;
    $payment = SitePayment::create([
      'user_id' => $settlement->user_id,
      'paymentable_id' => $settlement->id,
      'paymentable_type' => 'App\SettlementRequest',
      'amount' => $settlement->final_amount,
      'is_success' => 1,
      'bank_name' => $request->bank_name,
      'bank_receipt' => $request->bank_receipt
    ]);


    $message = " کاربر گرامی مبلغ $settlement->final_amount تومان بابت تسویه حساب به شما پرداخت شد ";
    Smsirlaravel::send([$message], [$user->mobile]);
    Ticket::create([
      'sender_id' => Auth::user()->id,
      'user_id' => $user->id,
      'is_user_sent' => 0,
      'text' => $message,
      'is_seen' => 0
    ]);
    return back();
  }
}
