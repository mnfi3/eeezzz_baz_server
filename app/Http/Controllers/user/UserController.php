<?php

namespace App\Http\Controllers\user;
use App\Http\Controllers\Controller;

use App\Http\Controllers\web_service\ms;
use App\Http\Controllers\web_service\ws;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class UserController extends Controller
{



  public function userNameAvailable(Request $request){
    $data = $request->toArray();
    $validator = Validator::make($data, [
      'user_name' => 'required|string|min:5|max:20|unique:users'
    ]);

    if($validator->fails()){
      return ws::r(0, '', Response::HTTP_OK, ms::USER_NAME_NOT_AVAILABLE);
    }


    $user_name = $request->user_name;

    $user = User::where('user_name', '=', $user_name)->first();
    if($user !== null){
      return ws::r(0, '', Response::HTTP_OK, ms::USER_NAME_NOT_AVAILABLE);
    }else{
      return ws::r(1, '', Response::HTTP_OK, ms::USER_NAME_AVAILABLE);
    }
  }














}
