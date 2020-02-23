<?php

namespace App\Http\Controllers\user;

use App\Http\Controllers\fcm\FcmNotification;
use App\Http\Controllers\web_service\ms;
use App\Http\Controllers\web_service\ws;
use App\SettlementRequest;
use App\User;
use App\UserFinance;
use App\UserPayment;
use App\ZarinpalPayRequest;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Zarinpal\Drivers\SoapDriver;
use Illuminate\Support\Facades\Crypt;
use App\Http\Controllers\site_public\Zarinpal;

class UserFinanceController extends Controller {

  public function __construct() {
    $this->middleware('auth:api');
  }


  public function userFinance() {
    $user = Auth::user();
    $finance = $user->finance;
    if ($finance !== null) {
      return ws::r(1, $finance, Response::HTTP_OK, '');
    } else {
      $finance = new UserFinance();
      $finance->user_id = $user->id;
      $finance->bank_card_number = '';
      $finance->bank_account_number = '';
      $finance->bank_shba_number = '';
      $finance->bank_account_owner_name = '';
      $finance->user_balance = 0;
      $finance->save();
      return ws::r(1, $finance, Response::HTTP_OK, '');
    }
  }


  public function increaseCredit(Request $request) {
    $user = Auth::user();
    $amount = $request->amount;
    if ($amount < 100) {
      return ws::r(0, '', Response::HTTP_OK, ms::AMOUNT_TOO_LOW);
    }

    return $this->increaseCreditPay($user->id, $amount);

//      $pay_url = env('APP_URL') .'increase-credit-pay/' .  $user->id .'/'.  (int)$amount;
//      $pay_url = route('increase-credit') . '-pay' .'/'.  Crypt::encryptString($user->id) .'/'.  Crypt::encryptString((int)$amount);
//      return ws::r(1, $pay_url);
  }


  public function increaseCreditPay($user_id, $amount) {
//      $user_id = Crypt::decryptString($user_id);
//      $amount = Crypt::decryptString($amount);
    $zarinpal = new Zarinpal(Crypt::decryptString(env('E_MERCHANT_ID')), new SoapDriver());
    $req = ZarinpalPayRequest::create(['authority' => '']);

    json_encode($answer = $zarinpal->request(
      route('increase-credit-after-pay',
        [
          'request_id' => $req->id,
          'user_id' => Crypt::encryptString($user_id),
          'amount' => Crypt::encryptString($amount)
        ]),
      $amount,
      'increase balance'
    ));

    if (isset($answer['Authority'])) {
      $req->authority = $answer['Authority'];
      $req->save();

      $payment_url = $zarinpal->getStartPayAddress() . $answer['Authority'];
      return ws::r(1, $payment_url);
//        return redirect($zarinpal->getStartPayAddress() . $answer['Authority']);
    }
  }


  public function increaseCreditAfterPay($request_id, $user_id, $amount) {
    $user_id = Crypt::decryptString($user_id);
    $amount = Crypt::decryptString($amount);
    $zarinpal = new Zarinpal(Crypt::decryptString(env('E_MERCHANT_ID')), new SoapDriver());
    $authority = ZarinpalPayRequest::find($request_id)->authority;
    $result = ($zarinpal->verify('OK', $amount, $authority));
    //echo json_encode($result);
    $status = $result['Status'];

    $user = User::find($user_id);
    if ($status == 'success') {
      $RefID = $result['RefID'];

      $finance = $user->finance;
      if ($finance !== null) {
        $finance->user_balance = $finance->user_balance + $amount;
        $finance->save();
      } else {
        $finance = new UserFinance();
        $finance->user_id = $user->id;
        $finance->bank_card_number = '';
        $finance->bank_account_number = '';
        $finance->bank_shba_number = '';
        $finance->bank_account_owner_name = '';
        $finance->user_balance = $amount;
        $finance->save();
      }

      $paymentable_id = $finance->id;

      $payment = new UserPayment();
      $payment->user_id = $user_id;
      $payment->paymentable_id = $paymentable_id;
      $payment->paymentable_type = 'App\UserFinance';
      $payment->amount = $amount;
      $payment->is_success = 1;
      $payment->bank_receipt = $RefID;
      $payment->bank_name = 'zarinpal';
      $payment->save();

      FcmNotification::sendNotificationToUser($user, ms::FCM_INCREASE_CREDIT_SUCCESS_TITLE, ms::FCM_INCREASE_CREDIT_SUCCESS_BODY);

//        return redirect('/');
      return ws::r(1, '', Response::HTTP_OK, ms::PAYMENT_SUCCESS);


    } else {

//        $RefID = $result['RefID'];
//        if($RefID === null){
//          $RefID = '';
//        }
      $payment = new UserPayment();
      $payment->user_id = $user_id;
      $payment->paymentable_id = 0;
      $payment->paymentable_type = 'App\UserFinance';
      $payment->amount = $amount;
      $payment->is_success = 0;
      $payment->bank_receipt = '';
      $payment->bank_name = 'zarinpal';
      $payment->save();

      FcmNotification::sendNotificationToUser($user, ms::FCM_INCREASE_CREDIT_FAIL_TITLE, ms::FCM_INCREASE_CREDIT_FAIL_BODY);

      return ws::r(0, '', Response::HTTP_OK, ms::PAYMENT_FAILED);
    }


  }


  public function settlementRequest(Request $request) {

    $user = Auth::user();
    $finance = $user->finance;
    $settlement = $user->settlements()->where('is_seen', '=', 0)->first();
    if ($settlement != null){
      return ws::r(0, [], Response::HTTP_OK, ms::SETTLEMENT_REQUEST_DUPLICATE);
    }

    if ($finance->user_balance < SettlementRequest::MIN_SETTLEMENT_AMOUNT) {
      return ws::r(0, [], Response::HTTP_OK, ms::SETTLEMENT_MIN_AMOUNT);
    }
    $data = $request->toArray();
    $validator = Validator::make($data, [
//      'bank_shba_number' => 'required|string|max:30|min:10',
      'bank_account_owner_name' => 'required|string|max:40|min:4',
    ]);

    if ($validator->fails()) {
      return ws::r(0, [], Response::HTTP_OK, ms::SETTLEMENT_NAME_INVALID);
    }

    if(strlen($request->bank_card_number) < 5 && strlen($request->bank_account_number) < 5 && strlen($request->bank_shba_number) < 5){
      return ws::r(0, [], Response::HTTP_OK, ms::SETTLEMENT_DADA_INVALID);
    }

    $settlement = SettlementRequest::create([
      'user_id' => $user->id,
      'first_amount' => $finance->user_balance,
      'final_amount' => 0,
      'bank_card_number' => $request->bank_card_number,
      'bank_account_number' => $request->bank_account_number,
      'bank_shba_number' => $request->bank_shba_number,
      'bank_account_owner_name' => $request->bank_account_owner_name,
      'is_seen' => 0,
      'is_confirmed' => 0,
      'is_paid' => 0,
    ]);

    //save user latest bank data
    $finance->bank_card_number = $request->bank_card_number;
    $finance->bank_account_number = $request->bank_account_number;
    $finance->bank_shba_number = $request->bank_shba_number;
    $finance->bank_account_owner_name = $request->bank_account_owner_name;
    $finance->save();

    return ws::r(1, $settlement, Response::HTTP_OK, ms::SETTLEMENT_REQUEST_SUCCESS);
  }


  public function lastSettlement(){
    $user = Auth::user();
    $settlement = $user->settlements()->orderBy('id', 'desc')->first();
    if ($settlement != null){
      return ws::r(1, $settlement, Response::HTTP_OK);
    }else{
      return ws::r(0, [], Response::HTTP_OK, ms::SETTLEMENT_NOT_EXIST);
    }
  }
}
