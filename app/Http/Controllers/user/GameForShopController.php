<?php

namespace App\Http\Controllers\user;

use App\GameForShopRequest;
use App\GameInfo;
use App\Http\Controllers\Controller;

use App\GameForShop;
use App\Http\Controllers\fcm\FcmNotification;
use App\Http\Controllers\helpers\AdminHelper;
use App\Http\Controllers\helpers\UserHelper;
use App\Http\Controllers\site_public\Zarinpal;
use App\Http\Controllers\web_service\ms;
use App\Http\Controllers\web_service\ws;
use App\User;
use App\UserPayment;
use App\ZarinpalPayRequest;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Validator;
use Zarinpal\Drivers\SoapDriver;

//use Zarinpal\Zarinpal;

class GameForShopController extends Controller {

  public function __construct() {
    $this->middleware('auth:api', ['except' => ['index', 'show', 'related', 'search', 'shopGamePay', 'shopGameAfterPay']]);
  }


  public function index($city_id) {
    $games = GameForShop::where('city_id', '=', $city_id)->orderBy('created_at', 'desc')->paginate(12);
    foreach ($games as $game) {
      $game->gameInfo->photos;
      $game->gameInfo->videos;
      $game->gameInfo->genres;
      $game->gameInfo->console;
      if (AdminHelper::isAdmin()) {
        $game->user->addresses;
        $game->reports;
      }
    }

    return ws::r(1, $games, Response::HTTP_OK, '');
  }


  public function show($id) {
    $game = GameForShop::find($id);
    if ($game !== null) {
      $game->gameInfo->photos;
      $game->gameInfo->videos;
      $game->gameInfo->genres;
      $game->gameInfo->console;
      if (AdminHelper::isAdmin()) {
        $game->user->addresses;
        $game->reports;
      }
      return ws::r(1, $game, Response::HTTP_OK, '');
    } else {
      return ws::r(0, '', Response::HTTP_OK, ms::NOT_FOUND_OBJECT);
    }
  }


  public function related($id) {
    $game = GameForShop::find($id);
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
      $gameForShop = GameForShop::where('city_id', '=', $city_id)->orderBy('id', 'desc')->where('game_info_id', '=', $index)->first();
      if ($gameForShop !== null) {

        $gameForShop->gameInfo->photos;
        $gameForShop->gameInfo->videos;
        $gameForShop->gameInfo->genres;
        $gameForShop->gameInfo->console;

        $games[] = $gameForShop;
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

    $gameForShops = array();
    $shop_counter = 0;

    foreach ($games as $game) {
      if ($shop_counter > 29) break;

      $gameForShop = GameForShop::orderBy('created_at', 'desc')->where('game_info_id', '=', $game->id)->where('city_id', '=', $city_id)->get();
      foreach ($gameForShop as $item) {
        if ($item !== null && $shop_counter < 30) {
          $item->gameInfo->photos;
          $item->gameInfo->videos;
          $item->gameInfo->genres;
          $item->gameInfo->console;
          $gameForShops [] = $item;
          $shop_counter++;
        }
      }
    }

    if (sizeof($gameForShops) > 0) {
      return ws::r(1, $gameForShops, 200, '');
    } else {
      return ws::r(0, '', 200, ms::SEARCH_RESULT_NULL);
    }

  }


  public function shopGameWithWallet(Request $request) {
    $game_id = $request->game_id;
    $address_id = $request->address_id;

    $game = GameForShop::find($game_id);

    if ($game->count < 1) {
      return ws::r(0, '', Response::HTTP_OK, ms::NOT_EXIST_PRRODUCT);
    }

    $user = Auth::user();
    $user_finance = $user->finance;

    if ($user_finance === null) {
      return ws::r(0, '', Response::HTTP_OK, ms::BALANCE_NOT_ENOUGH);
    }

    if ($game->price > $user_finance->user_balance) {
      return ws::r(0, '', Response::HTTP_OK, ms::BALANCE_NOT_ENOUGH);
    }


    $user_finance->user_balance = $user_finance->user_balance - $game->price;
    $user_finance->save();

    $game->count = $game->count - 1;
    $game->save();

    $paymentable_id = $game_id;
    $payment = new UserPayment();
    $payment->user_id = $user->id;
    $payment->paymentable_id = $paymentable_id;
    $payment->paymentable_type = 'App\GameForShop';
    $payment->amount = $game->price;
    $payment->is_success = 1;
    $payment->bank_receipt = 'shop' . $game_id . 'u' . $user->id;
    $payment->bank_name = 'wallet';
    $payment->save();

    $request = new GameForShopRequest();
    $request->user_id = $user->id;
    $request->game_for_shop_id = $game_id;
    $request->address_id = $address_id;
    $request->game_price = $game->price;
    $request->is_sent = 0;
    $request->is_success = 0;
    $request->is_finish = 0;
    $request->save();


    FcmNotification::sendNotificationToUser($user, ms::FCM_SHOP_GAME_SUCCESS_TITLE, ms::FCM_SHOP_GAME_SUCCESS_BODY);
//        return redirect('/');
    return ws::r(1, '', Response::HTTP_OK, ms::PAYMENT_SUCCESS);


  }


  public function shopGame(Request $request) {
    $user = Auth::user();
    $game_id = $request->game_id;
    $address_id = $request->address_id;
    $game = GameForShop::find($game_id);
    if ($game->count < 1) {
      return ws::r(0, '', Response::HTTP_OK, ms::NOT_EXIST_PRRODUCT);
    }

    return $this->shopGamePay($user->id, $game_id, $address_id);

//    $pay_url = route('shop-game') . '-pay' .'/'.  Crypt::encryptString($user->id) .'/'.  Crypt::encryptString((int)$game->id) . '/' . $address_id;
//    return ws::r(1, $pay_url);
  }


  public function shopGamePay($user_id, $game_id, $address_id) {
//    $user_id = Crypt::decryptString($user_id);
//    $game_id = Crypt::decryptString($game_id);
    $game = GameForShop::find($game_id);
    if ($game->count < 1) {
      return ws::r(0, '', Response::HTTP_OK, ms::NOT_EXIST_PRRODUCT);
    }
    $price = $game->price;
    $zarinpal = new Zarinpal(Crypt::decryptString(env('E_MERCHANT_ID')), new SoapDriver());
    $req = ZarinpalPayRequest::create(['authority' => '']);

    json_encode($answer = $zarinpal->request(
      route('shop-game-after-pay',
        [
          'request_id' => $req->id,
          'user_id' => Crypt::encryptString($user_id),
          'game_id' => Crypt::encryptString($game_id),
          'price' => $price,
          'address_id' => $address_id
        ]),
      $price, 'buy game'));
    if (isset($answer['Authority'])) {
      $req->authority = $answer['Authority'];
      $req->save();

      $payment_url = $zarinpal->getStartPayAddress() . $answer['Authority'];
      return ws::r(1, $payment_url);
//      return redirect($zarinpal->getStartPayAddress() . $answer['Authority']);
    }
  }


  public function shopGameAfterPay($request_id, $user_id, $game_id, $price, $address_id) {
    $user_id = Crypt::decryptString($user_id);
    $game_id = Crypt::decryptString($game_id);
    $zarinpal = new Zarinpal(Crypt::decryptString(env('E_MERCHANT_ID')), new SoapDriver());
    $authority = ZarinpalPayRequest::find($request_id)->authority;
    $result = ($zarinpal->verify('OK', $price, $authority));
    //echo json_encode($result);
    $status = $result['Status'];
    $user = User::find($user_id);

    if ($status == 'success') {
      $RefID = $result['RefID'];

      $game = GameForShop::find($game_id);
      $game->count = $game->count - 1;
      $game->save();

      $paymentable_id = $game_id;
      $payment = new UserPayment();
      $payment->user_id = $user_id;
      $payment->paymentable_id = $paymentable_id;
      $payment->paymentable_type = 'App\GameForShop';
      $payment->amount = $price;
      $payment->is_success = 1;
      $payment->bank_receipt = $RefID;
      $payment->bank_name = 'zarinpal';
      $payment->save();

      $request = new GameForShopRequest();
      $request->user_id = $user_id;
      $request->game_for_shop_id = $game_id;
      $request->address_id = $address_id;
      $request->game_price = $price;
      $request->is_sent = 0;
      $request->is_success = 0;
      $request->is_finish = 0;
      $request->save();


      FcmNotification::sendNotificationToUser($user, ms::FCM_SHOP_GAME_SUCCESS_TITLE, ms::FCM_SHOP_GAME_SUCCESS_BODY);
//        return redirect('/');
      return ws::r(1, '', Response::HTTP_OK, ms::PAYMENT_SUCCESS);


    } else {
      $payment = new UserPayment();
      $payment->user_id = $user_id;
      $payment->paymentable_id = 0;
      $payment->paymentable_type = 'App\GameForShop';
      $payment->amount = $price;
      $payment->is_success = 0;
      $payment->bank_receipt = '';
      $payment->bank_name = 'zarinpal';
      $payment->save();

      FcmNotification::sendNotificationToUser($user, ms::FCM_SHOP_GAME_FAIL_TITLE, ms::FCM_SHOP_GAME_FAIL_BODY);

      return ws::r(0, '', Response::HTTP_OK, ms::PAYMENT_FAILED);
    }

  }


}
