<?php

namespace App\Http\Controllers\user;

use App\Http\Controllers\Controller;

use App\GameForShop;
use App\GameForShopRequest;
use App\Http\Controllers\helpers\AdminHelper;
use App\Http\Controllers\helpers\UserHelper;
use App\Http\Controllers\web_service\ms;
use App\Http\Controllers\web_service\ws;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class GameForShopRequestController extends Controller {


  public function __construct() {
    $this->middleware('auth:api', ['except' => []]);
  }


  public function userRequests() {
    $user = Auth::user();
    $requests = $user->gameForShopRequests()->orderBy('id', 'desc')->get();
    foreach ($requests as $request) {
      $request->gameForShop;
      $request->gameForShop->gameInfo->photos;
      $request->gameForShop->gameInfo->videos;
      $request->gameForShop->gameInfo->genres;
      $request->gameForShop->gameInfo->console;
    }
    return ws::r(1, $requests, 200, '');
  }
}
