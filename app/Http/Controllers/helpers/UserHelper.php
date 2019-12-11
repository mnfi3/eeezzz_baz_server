<?php

namespace App\Http\Controllers\helpers;
use App\Http\Controllers\Controller;

use App\Http\Controllers\PassportController;
use App\User;
use GuzzleHttp\Client;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserHelper extends Controller
{


  public static function generateInviteCode(){
    while (true){
      $invite_code = SystemHelper::generateRandomString(5);
      $user = User::where('invite_code', '=', $invite_code)->first();
      if ($user != null) continue;
      return $invite_code;
    }
  }

  public static function isForThisUser($obj, $key = 'user_id'){
    if($obj !== null && Auth::user() !== null) {
      if ($obj->$key == Auth::user()->id) {
        return true;
      }
    }
    return false;
  }


  public static function user(Request $request){
    return $request->user('api');
  }



  public static function getToken(Request $request){
    return str_replace('Bearer ','', $request->header('Authorization'));
  }

}
