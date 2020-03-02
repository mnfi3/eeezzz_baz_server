<?php

namespace App\Http\Controllers\user;

use App\GameForRentRequest;
use App\GameForRentRequestExtend;
use App\GameInfo;
use App\Http\Controllers\Controller;

use App\GameForRent;
use App\Http\Controllers\fcm\FcmNotification;
use App\Http\Controllers\site_public\Zarinpal;
use App\Http\Controllers\web_service\ms;
use App\Http\Controllers\web_service\ws;
use App\PenaltyType;
use App\RentType;
use App\User;
use App\UserPayment;
use App\ZarinpalPayRequest;
use Carbon\Carbon;
use DateInterval;
use DateTime;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Validator;
use Zarinpal\Drivers\SoapDriver;

//use Zarinpal\Zarinpal;

class GameForRentController extends Controller {

  public function __construct() {
    $this->middleware('auth:api', ['except' => ['index', 'show', 'related', 'search', 'getRentCost', 'rentGameAfterPay', 'extendRentAfterPay']]);
  }


  public function index($city_id) {
    $games = GameForRent::where('city_id', '=', $city_id)->orderBy('created_at', 'desc')->paginate(12);
    foreach ($games as $game) {
      $game->gameInfo->photos;
      $game->gameInfo->videos;
      $game->gameInfo->genres;
      $game->gameInfo->console;
    }
    return ws::r(1, $games, Response::HTTP_OK, '');
  }


  public function show($id) {
    $game = GameForRent::find($id);
    if ($game !== null) {
      $game->gameInfo->photos;
      $game->gameInfo->videos;
      $game->gameInfo->genres;
      $game->gameInfo->console;

      return ws::r(1, $game, Response::HTTP_OK, '');
    } else {
      return ws::r(0, '', Response::HTTP_OK, ms::NOT_FOUND_OBJECT);
    }
  }


  public function related($id) {
    $game = GameForRent::find($id);
    $city_id = $game->city_id;
    $gameInfo = $game->gameInfo;
    $game_info_id = $gameInfo->id;
    $genres = $gameInfo->genres;

    $gameIndex = array();
    foreach ($genres as $genre) {
      $games = $genre->games;
      foreach ($games as $game) {
        if (!in_array($game->id, $gameIndex) && $game->id != $game_info_id) {
          $gameIndex[] = $game->id;
        }
      }
    }

    $games = array();
    $i = 0;
    foreach ($gameIndex as $index) {
      $gameForRent = GameForRent::where('city_id', '=', $city_id)->orderBy('id', 'desc')->where('game_info_id', '=', $index)->first();
      if ($gameForRent !== null) {

        $gameForRent->gameInfo->photos;
        $gameForRent->gameInfo->videos;
        $gameForRent->gameInfo->genres;
        $gameForRent->gameInfo->console;

        $games[] = $gameForRent;
        $i++;
      }

      if ($i == 15) break;
    }


    return ws::r(1, $games, Response::HTTP_OK, '');

  }


  public function search(Request $request) {
    $text = $request->input('text');
    $city_id = $request->input('city_id');

    if (strlen($text) < 3) {
      return ws::r(0, [], 200, ms::SEARCH_TEXT_TOO_SMALL);
    }

    $games = GameInfo::orderBy('created_at', 'desc')->where('name', 'like', '%' . $text . '%')->orWhere('persian_name', 'like', '%' . $text . '%')->get();
//      $gameForRents = GameForRent::all();
//      $gameForChanges = GameForChange::all();
//      $gameForShops = GameForShop::all();

    $gameForRents = array();
    $rent_counter = 0;

    foreach ($games as $game) {
      if ($rent_counter > 29) break;

      $gameForRent = GameForRent::orderBy('created_at', 'desc')->where('game_info_id', '=', $game->id)->where('city_id', '=', $city_id)->get();
      foreach ($gameForRent as $item) {
        if ($item !== null && $rent_counter < 30) {
          $item->gameInfo->photos;
          $item->gameInfo->videos;
          $item->gameInfo->genres;
          $item->gameInfo->console;
          $gameForRents [] = $item;
          $rent_counter++;
        }
      }
    }

    if (sizeof($gameForRents) > 0) {
      return ws::r(1, $gameForRents, 200, '');
    } else {
      return ws::r(0, [], 200, ms::SEARCH_RESULT_NULL);
    }

  }


  public function getRentCost($gameForRentId, $rentDayCount) {
    $game = GameForRent::find($gameForRentId);
    $rentType = RentType::where('day_count', '=', $rentDayCount)->first();
    if ($game !== null && $rentType !== null) {
      $price = $game->price;
      $pricePercent = $rentType->price_percent;
      $cost = (int)(($price * $pricePercent) / 100);
      return ws::r(1, $cost, 200, '');
    } else {
      return ws::r(0, '', 200, ms::INVALID_DATA);
    }

  }


  public function rentGameWithWallet(Request $request) {
    $game_id = $request->game_id;
    $address_id = $request->address_id;
    $rent_type_id = $request->rent_type_id;
    $game = GameForRent::find($game_id);

    if ($game->count < 1) {
      return ws::r(0, '', Response::HTTP_OK, ms::NOT_EXIST_PRRODUCT);
    }

    $user = Auth::user();
    $user_finance = $user->finance;

    if ($user_finance === null) {
      return ws::r(0, '', Response::HTTP_OK, ms::BALANCE_NOT_ENOUGH);
    }

    $game_price = $game->price;
    $rent_type = RentType::find($rent_type_id);
    $rent_price = (int)(($game_price * $rent_type->price_percent) / 100);
    $sum_price = $game_price + $rent_price;

    if ($sum_price > $user_finance->user_balance) {
      return ws::r(0, '', Response::HTTP_OK, ms::BALANCE_NOT_ENOUGH);
    }

    $user_finance->user_balance = $user_finance->user_balance - $sum_price;
    $user_finance->save();

    $game->count = $game->count - 1;
    $game->save();



    $rent_request = new GameForRentRequest();
    $rent_request->user_id = $user->id;
    $rent_request->game_for_rent_id = $game_id;
    $rent_request->rent_type_id = $rent_type_id;
    $rent_request->address_id = $address_id;
    $rent_request->game_price = $game_price;
    $rent_request->rent_price = $rent_price;
    $rent_request->is_sent = 0;
    $rent_request->is_delivered = 0;
    $rent_request->is_finish = 0;
    $rent_request->is_returned = 0;
    $rent_request->finished_at = Carbon::now()->addDays($rent_type->day_count);
    $rent_request->save();


    $payment = new UserPayment();
    $payment->user_id = $user->id;
    $payment->paymentable_id = $rent_request->id;
    $payment->paymentable_type = 'App\GameForRentRequest';
    $payment->amount = $sum_price;
    $payment->is_success = 1;
    $payment->bank_receipt = 'rent' . $game_id . 'u' . $user->id;
    $payment->bank_name = 'wallet';
    $payment->save();


    FcmNotification::sendNotificationToUser($user, ms::FCM_RENT_GAME_SUCCESS_TITLE, ms::FCM_RENT_GAME_SUCCESS_BODY);

    return ws::r(1, [], Response::HTTP_OK, ms::PAYMENT_SUCCESS);
  }


  public function rentGame(Request $request) {
    $user = Auth::user();
    $address_id = $request->address_id;
    $rent_type = RentType::find($request->rent_type_id);
    $game = GameForRent::find($request->game_id);
    if ($game->count < 1) {
      return ws::r(0, '', Response::HTTP_OK, ms::NOT_EXIST_PRRODUCT);
    }

    $rent_price = (int)((($game->price) * ($rent_type->price_percent)) / 100);
    $game_price = $game->price;
    $sum_price = $game_price + $rent_price;
    $zarinpal = new Zarinpal(Crypt::decryptString(env('E_MERCHANT_ID')), new SoapDriver());

    $data =json_encode([
      'game_id' => $game->id,
      'game_price' => $game_price,
      'sum_price' => $sum_price,
      'rent_type_id' => $rent_type->id,
      'rent_price' => $rent_price,
      'address_id' => $address_id
    ]);

    $req = ZarinpalPayRequest::create([
      'user_id' => $user->id,
      'authority' => '',
      'type' => 'rent',
      'amount' => $sum_price,
      'data' => $data,
    ]);



    json_encode($answer = $zarinpal->request(
      route('rent-game-after-pay', ['request_id' => $req->id]),
      $sum_price,
      'rent game'
    ));

    if (isset($answer['Authority'])) {
      $req->authority = $answer['Authority'];
      $req->save();
      $payment_url = $zarinpal->getStartPayAddress() . $answer['Authority'];
      return ws::r(1, $payment_url);
    }
  }





  public function rentGameAfterPay($request_id) {
    $z_request = ZarinpalPayRequest::find($request_id);
    if ($z_request->is_verified == 1) return redirect('/');
    $z_request->is_verified = 1;
    $authority = $z_request->authority;
    $data = json_decode($z_request->data);

    $zarinpal = new Zarinpal(Crypt::decryptString(env('E_MERCHANT_ID')), new SoapDriver());
    $result = ($zarinpal->verify('OK', $z_request->amount, $authority));
    $status = $result['Status'];
    $user = User::find($z_request->user_id);

    if ($status == 'success') {
      $RefID = $result['RefID'];

      $z_request->is_success = 1;
      $z_request->save();

      $game = GameForRent::find($data->game_id);
      $game->count = $game->count - 1;
      $game->save();



      $rent_type = RentType::find($data->rent_type_id);
      $request = new GameForRentRequest();
      $request->user_id = $user->id;
      $request->game_for_rent_id = $data->game_id;
      $request->rent_type_id = $data->rent_type_id;
      $request->address_id = $data->address_id;
      $request->game_price = $data->game_price;
      $request->rent_price = $data->rent_price;
      $request->is_sent = 0;
      $request->is_delivered = 0;
      $request->is_finish = 0;
      $request->is_returned = 0;
      $request->finished_at = Carbon::now()->addDays($rent_type->day_count);
      $request->save();

      $payment = new UserPayment();
      $payment->user_id = $user->id;
      $payment->paymentable_id = $request->id;
      $payment->paymentable_type = 'App\GameForRentRequest';
      $payment->amount = $data->sum_price;
      $payment->is_success = 1;
      $payment->bank_receipt = $RefID;
      $payment->bank_name = 'zarinpal';
      $payment->save();



      FcmNotification::sendNotificationToUser($user, ms::FCM_RENT_GAME_SUCCESS_TITLE, ms::FCM_RENT_GAME_SUCCESS_BODY);

//        return redirect('/');
      return ws::r(1, '', Response::HTTP_OK, ms::PAYMENT_SUCCESS);


    } else {
      $z_request->is_success = 0;
      $z_request->save();

      $payment = new UserPayment();
      $payment->user_id = $user->id;
      $payment->paymentable_id = $data->game_id;
      $payment->paymentable_type = 'App\GameForRent';
      $payment->amount = $data->sum_price;
      $payment->is_success = 0;
      $payment->bank_receipt = '';
      $payment->bank_name = 'zarinpal';
      $payment->save();

      FcmNotification::sendNotificationToUser($user, ms::FCM_RENT_GAME_FAIL_TITLE, ms::FCM_RENT_GAME_FAIL_BODY);

      //redirect to a page
      return ws::r(0, '', Response::HTTP_OK, ms::PAYMENT_FAILED);
    }

  }


  public function rentPenalty(Request $request){
    $user = Auth::user();
    $game_for_rent_request = GameForRentRequest::find($request->game_id);
    $game_for_rent = $game_for_rent_request->gameForRent;
    if($game_for_rent_request->user_id != $user->id || $game_for_rent_request->is_finish == 1){
      return ws::r(0, [], Response::HTTP_OK, ms::EXTEND_RENT_NOT_FOR_THIS_USER);
    }

    $penalty_cost = 0;

    //check finished_at and calculate penalty
    $finished_at = new DateTime($game_for_rent_request->finished_at);
    $now = new DateTime("now");
    $interval = date_diff($now, $finished_at);
    $diff = $interval->format('%R%a');
    //has penalty
    if($diff < 0) {
      $penalty = PenaltyType::where('day_count', '=', $diff*(-1))->first();
      if($penalty == null) return ws::r(0, [], 200, ms::RENT_LATE_TOO_MUCH);
      $penalty_cost = (int)(($game_for_rent->price  * $penalty->price_percent) / 100);
    }

    return ws::r(1, $penalty_cost);

  }


  //extend rents
  public function extendRentWithWallet(Request $request){
    $user = Auth::user();
    $game_for_rent_request = GameForRentRequest::find($request->game_id);
    $rent_type = RentType::find($request->rent_type_id);
    $game_for_rent = $game_for_rent_request->gameForRent;
    if($game_for_rent_request->user_id != $user->id || $game_for_rent_request->is_finish == 1){
      return ws::r(0, [], Response::HTTP_OK, ms::EXTEND_RENT_NOT_FOR_THIS_USER);
    }

    $penalty_cost = 0;

    //check finished_at and calculate penalty
    $finished_at = new DateTime($game_for_rent_request->finished_at);
    $now = new DateTime("now");
    $interval = date_diff($now, $finished_at);
    $diff = $interval->format('%R%a');
    //has penalty
    if($diff < 0) {
      $penalty = PenaltyType::where('day_count', '=', $diff*(-1))->first();
      if($penalty == null) return ws::r(0, [], 200, ms::RENT_LATE_TOO_MUCH);
      $penalty_cost = (int)(($game_for_rent->price  * $penalty->price_percent) / 100);
    }



    $extend_cost = (int)(($game_for_rent->price  * $rent_type->price_percent) / 100);
    $extend_cost += $penalty_cost;

    $user_finance = $user->finance;
    if ($user_finance == null) {
      return ws::r(0, '', Response::HTTP_OK, ms::BALANCE_NOT_ENOUGH);
    }
    if ($extend_cost > $user_finance->user_balance) {
      return ws::r(0, '', Response::HTTP_OK, ms::BALANCE_NOT_ENOUGH);
    }

    $user_finance->user_balance = $user_finance->user_balance - $extend_cost;
    $user_finance->save();



    $rent_extend = GameForRentRequestExtend::create([
      'user_id' => $user->id,
      'game_for_rent_request_id' => $game_for_rent_request->id,
      'rent_type_id' => $rent_type->id,
      'penalty_cost' => $penalty_cost,
    ]);


    $payment = new UserPayment();
    $payment->user_id = $user->id;
    $payment->paymentable_id = $rent_extend->id;
    $payment->paymentable_type = 'App\GameForRentRequestExtend';
    $payment->amount = $extend_cost;
    $payment->is_success = 1;
    $payment->bank_receipt = 'rent_ex' . $game_for_rent->id . 'u' . $user->id;
    $payment->bank_name = 'wallet';
    $payment->save();


    $date = new DateTime('now');
    $date->add(new DateInterval('P'. $rent_type->day_count .'D'));
    $time = $date->format('Y-m-d H:i:s');
    $game_for_rent_request->finished_at = $time;
    $game_for_rent_request->save();


    FcmNotification::sendNotificationToUser($user, ms::FCM_EXTEND_RENT_GAME_SUCCESS_TITLE, ms::FCM_EXTEND_RENT_GAME_SUCCESS_BODY);

    return ws::r(1, [], Response::HTTP_OK, ms::PAYMENT_SUCCESS);

  }


  public function extendRent(Request $request){
    $user = Auth::user();
    $game_for_rent_request = GameForRentRequest::find($request->game_for_rent_request_id);
    $game_for_rent = $game_for_rent_request->gameForRent;
    if($game_for_rent_request->user_id != $user->id || $game_for_rent_request->is_finish == 1){
      return ws::r(0, [], Response::HTTP_OK, ms::EXTEND_RENT_NOT_FOR_THIS_USER);
    }

    $penalty_cost = 0;

    //check finished_at and calculate penalty
    $finished_at = new DateTime($game_for_rent_request->finished_at);
    $now = new DateTime("now");
    $interval = date_diff($now, $finished_at);
    $diff = $interval->format('%R%a');
    //has penalty
    if($diff < 0) {
      $penalty = PenaltyType::where('day_count', '=', $diff*(-1))->first();
      if($penalty == null) return ws::r(0, [], 200, ms::RENT_LATE_TOO_MUCH);
      $penalty_cost = (int)(($game_for_rent->price  * $penalty->price_percent) / 100);
    }

    $rent_type = RentType::find($request->rent_type_id);

    $extend_cost = (int)(($game_for_rent->price  * $rent_type->price_percent) / 100);
    $extend_cost += $penalty_cost;






    $data =json_encode([
      'game_for_rent_request_id' => $game_for_rent_request->id,
      'extend_cost' => $extend_cost,
      'rent_type_id' => $rent_type->id,
      'penalty_cost' => $penalty_cost,
    ]);

    $req = ZarinpalPayRequest::create([
      'user_id' => $user->id,
      'authority' => '',
      'type' => 'extend_rent',
      'amount' => $extend_cost,
      'data' => $data,
    ]);

    $zarinpal = new Zarinpal(Crypt::decryptString(env('E_MERCHANT_ID')), new SoapDriver());
    json_encode($answer = $zarinpal->request(
      route('extend-rent-after-pay', ['request_id' => $req->id]),
      $extend_cost,
      'extend rent'
    ));

    if (isset($answer['Authority'])) {
      $req->authority = $answer['Authority'];
      $req->save();
      $payment_url = $zarinpal->getStartPayAddress() . $answer['Authority'];
      return ws::r(1, $payment_url);
    }else{
      return ws::r(0, [], 200, 'خطا در ارتباط با درگاه پرداخت');
    }

  }


  public function extendRentAfterPay($request_id){
    $z_request = ZarinpalPayRequest::find($request_id);
    if ($z_request->is_verified == 1) return redirect('/');
    $z_request->is_verified = 1;
    $authority = $z_request->authority;
    $data = json_decode($z_request->data);
    $user = User::find($z_request->user_id);
    $rent_request_id = $data->game_for_rent_request_id;
    $rent_type = RentType::find($data->rent_type_id);
    $zarinpal = new Zarinpal(Crypt::decryptString(env('E_MERCHANT_ID')), new SoapDriver());
    $result = ($zarinpal->verify('OK', $z_request->amount, $authority));
    $status = $result['Status'];


    if ($status == 'success') {
      $RefID = $result['RefID'];

      $z_request->is_verified = 1;
      $z_request->save();

      $game_for_rent_request = GameForRentRequest::find($rent_request_id);
      $rent_extend = GameForRentRequestExtend::create([
        'user_id' => $user->id,
        'game_for_rent_request_id' => $game_for_rent_request->id,
        'rent_type_id' => $rent_type->id,
        'penalty_cost' => $data->penalty_cost,
      ]);


      $payment = new UserPayment();
      $payment->user_id = $user->id;
      $payment->paymentable_id = $rent_extend->id;
      $payment->paymentable_type = 'App\GameForRentRequestExtend';
      $payment->amount = $z_request->amount;
      $payment->is_success = 1;
      $payment->bank_receipt = $RefID;
      $payment->bank_name = 'zarinpal';
      $payment->save();


      $date = new DateTime('now');
      $date->add(new DateInterval('P'. $rent_type->day_count .'D'));
      $time = $date->format('Y-m-d H:i:s');
      $game_for_rent_request->finished_at = $time;
      $game_for_rent_request->save();

      FcmNotification::sendNotificationToUser($user, ms::FCM_EXTEND_RENT_GAME_SUCCESS_TITLE, ms::FCM_EXTEND_RENT_GAME_SUCCESS_BODY);
      return ws::r(1, '', Response::HTTP_OK, ms::PAYMENT_SUCCESS);

    }else{
      $z_request->is_verified = 0;
      $z_request->save();


      $payment = new UserPayment();
      $payment->user_id = $user->id;
      $payment->paymentable_id = 0;
      $payment->paymentable_type = 'App\GameForRentRequestExtend';
      $payment->amount = $z_request->amount;
      $payment->is_success = 0;
      $payment->bank_receipt = '';
      $payment->bank_name = 'zarinpal';
      $payment->save();

      FcmNotification::sendNotificationToUser($user, ms::FCM_EXTEND_RENT_GAME_FAIL_TITLE, ms::FCM_EXTEND_RENT_GAME_FAIL_BODY);

      return ws::r(0, [], Response::HTTP_OK, ms::PAYMENT_FAILED);
    }

  }


}
