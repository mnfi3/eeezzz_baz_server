<?php

namespace App\Http\Controllers\user;

use App\Http\Controllers\Controller;

use App\Http\Controllers\web_service\ws;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class GameForRentRequestController extends Controller {

  public function __construct() {
    $this->middleware('auth:api', ['except' => []]);
  }


  public function userRequests() {
    $user = Auth::user();
    $requests = $user->gameForRentRequests()->orderBy('id', 'desc')->get();
    foreach ($requests as $request) {
      $request->rentType;
      $request->gameForRent;
      $request->gameForRent->gameInfo->photos;
      $request->gameForRent->gameInfo->videos;
      $request->gameForRent->gameInfo->genres;
      $request->gameForRent->gameInfo->console;
    }
    return ws::r(1, $requests, 200, '');
  }


}
