<?php

namespace App\Http\Controllers\user;

use App\GameForRentRequest;
use App\GameInfo;
use App\Http\Controllers\Controller;

use App\GameForRent;
use App\Http\Controllers\fcm\FcmNotification;
use App\Http\Controllers\helpers\AdminHelper;
use App\Http\Controllers\helpers\UserHelper;
use App\Http\Controllers\site_public\Zarinpal;
use App\Http\Controllers\web_service\ms;
use App\Http\Controllers\web_service\ws;
use App\RentType;
use App\User;
use App\UserPayment;
use App\ZarinpalPayRequest;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Validator;
use Zarinpal\Drivers\SoapDriver;

//use Zarinpal\Zarinpal;

class GameForRentController extends Controller {

  public function __construct() {
    $this->middleware('auth:api', ['except' => ['index', 'show', 'related', 'search', 'getRentCost', 'rentGamePay', 'rentGameAfterPay']]);
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
      return ws::r(0, '', 200, ms::SEARCH_TEXT_TOO_SMALL);
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
      return ws::r(0, '', 200, ms::SEARCH_RESULT_NULL);
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

    $paymentable_id = $game_id;
    $payment = new UserPayment();
    $payment->user_id = $user->id;
    $payment->paymentable_id = $paymentable_id;
    $payment->paymentable_type = 'App\GameForRent';
    $payment->amount = $sum_price;
    $payment->is_success = 1;
    $payment->bank_receipt = 'rent' . $game_id . 'u' . $user->id;
    $payment->bank_name = 'wallet';
    $payment->save();


    $request = new GameForRentRequest();
    $request->user_id = $user->id;
    $request->game_for_rent_id = $game_id;
    $request->rent_type_id = $rent_type_id;
    $request->address_id = $address_id;
    $request->game_price = $game_price;
    $request->rent_price = $rent_price;
    $request->is_sent = 0;
    $request->is_success = 0;
    $request->is_finish = 0;
    $request->is_delivered = 0;
    $request->finished_at = Carbon::now()->addDays($rent_type->day_count);
    $request->save();

    FcmNotification::sendNotificationToUser($user, ms::FCM_RENT_GAME_SUCCESS_TITLE, ms::FCM_RENT_GAME_SUCCESS_BODY);

//        return redirect('/');
    return ws::r(1, '', Response::HTTP_OK, ms::PAYMENT_SUCCESS);
  }


  public function rentGame(Request $request) {
    $user = Auth::user();
    $game_id = $request->game_id;
    $address_id = $request->address_id;
    $rent_type_id = $request->rent_type_id;
    $game = GameForRent::find($game_id);
    if ($game->count < 1) {
      return ws::r(0, '', Response::HTTP_OK, ms::NOT_EXIST_PRRODUCT);
    }


    return $this->rentGamePay($user->id, $game_id, $rent_type_id, $address_id);

//    $pay_url = route('rent-game') . '-pay' .'/'.  Crypt::encryptString($user->id) .'/'.  Crypt::encryptString((int)$game->id) . '/' . $rent_type_id.'/' . $address_id;
//    return ws::r(1, $pay_url);
  }


  public function rentGamePay($user_id, $game_id, $rent_type_id, $address_id) {
//    $user_id = Crypt::decryptString($user_id);
//    $game_id = Crypt::decryptString($game_id);
    $game = GameForRent::find($game_id);
    if ($game->count < 1) {
      return ws::r(0, '', Response::HTTP_OK, ms::NOT_EXIST_PRRODUCT);
    }

    $rent_type = RentType::find($rent_type_id);

    $rent_price = (int)((($game->price) * ($rent_type->price_percent)) / 100);
    $game_price = $game->price;
    $sum_price = $game_price + $rent_price;
    $zarinpal = new Zarinpal(Crypt::decryptString(env('E_MERCHANT_ID')), new SoapDriver());
    $req = ZarinpalPayRequest::create(['authority' => '']);
    json_encode($answer = $zarinpal->request(
      route('rent-game-after-pay',
        [
          'request_id' => $req->id,
          'user_id' => Crypt::encryptString($user_id),
          'game_id' => Crypt::encryptString($game_id),
          'game_price' => $game_price,
          'sum_price' => $sum_price,
          'rent_type_id' => $rent_type_id,
          'rent_price' => $rent_price,
          'address_id' => $address_id
        ]),
      $sum_price,
      'rent game'
    ));

    if (isset($answer['Authority'])) {
      $req->authority = $answer['Authority'];
      $req->save();
      $payment_url = $zarinpal->getStartPayAddress() . $answer['Authority'];
      return ws::r(1, $payment_url);
//      return redirect($zarinpal->getStartPayAddress() . $answer['Authority']);
    }
  }


  public function rentGameAfterPay($request_id, $user_id, $game_id, $game_price, $sum_price, $rent_type_id, $rent_price, $address_id) {
    $user_id = Crypt::decryptString($user_id);
    $game_id = Crypt::decryptString($game_id);
    $zarinpal = new Zarinpal(Crypt::decryptString(env('E_MERCHANT_ID')), new SoapDriver());
    $authority = ZarinpalPayRequest::find($request_id)->authority;
    $result = ($zarinpal->verify('OK', $sum_price, $authority));
    //echo json_encode($result);
    $status = $result['Status'];

    $user = User::find($user_id);

    if ($status == 'success') {
      $RefID = $result['RefID'];

      $game = GameForRent::find($game_id);
      $game->count = $game->count - 1;
      $game->save();

      $paymentable_id = $game_id;
      $payment = new UserPayment();
      $payment->user_id = $user_id;
      $payment->paymentable_id = $paymentable_id;
      $payment->paymentable_type = 'App\GameForRent';
      $payment->amount = $sum_price;
      $payment->is_success = 1;
      $payment->bank_receipt = $RefID;
      $payment->bank_name = 'zarinpal';
      $payment->save();


      $rent_type = RentType::find($rent_type_id);
      $request = new GameForRentRequest();
      $request->user_id = $user_id;
      $request->game_for_rent_id = $game_id;
      $request->rent_type_id = $rent_type_id;
      $request->address_id = $address_id;
      $request->game_price = $game_price;
      $request->rent_price = $rent_price;
      $request->is_sent = 0;
      $request->is_success = 0;
      $request->is_finish = 0;
      $request->is_delivered = 0;
      $request->finished_at = Carbon::now()->addDays($rent_type->day_count);
      $request->save();


      FcmNotification::sendNotificationToUser($user, ms::FCM_RENT_GAME_SUCCESS_TITLE, ms::FCM_RENT_GAME_SUCCESS_BODY);

//        return redirect('/');
      return ws::r(1, '', Response::HTTP_OK, ms::PAYMENT_SUCCESS);


    } else {
      $payment = new UserPayment();
      $payment->user_id = $user_id;
      $payment->paymentable_id = 0;
      $payment->paymentable_type = 'App\GameForRent';
      $payment->amount = $sum_price;
      $payment->is_success = 0;
      $payment->bank_receipt = '';
      $payment->bank_name = 'zarinpal';
      $payment->save();

      FcmNotification::sendNotificationToUser($user, ms::FCM_RENT_GAME_FAIL_TITLE, ms::FCM_RENT_GAME_FAIL_BODY);

      //redirect to a page
      return ws::r(0, '', Response::HTTP_OK, ms::PAYMENT_FAILED);
    }

  }


}
