<?php

namespace App\Http\Controllers;

use App\Http\Controllers\helpers\AdminHelper;
use App\Http\Controllers\helpers\UserHelper;
use App\Http\Controllers\web_service\ms;
use App\Http\Controllers\web_service\ws;
use App\User;
use App\VerificationCode;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;


use Lcobucci\JWT\Parser;
use DB;


class PassportController extends Controller
{

  public function __construct() {
    $this->middleware('auth:api', ['except' => ['login', 'register']]);
  }


  public function register(Request $request)
  {
    $data = $request->toArray();
    $validator1 = Validator::make($data, [
      'full_name' => 'required|max:50|min:5',
    ]);
    $validator2 = Validator::make($data, [
      'email' => 'email'
    ]);
    $validator3 = Validator::make($data, [
      'password' => 'required|string|min:6'
    ]);
    $validator4 = Validator::make($data, [
      'national_code' => 'required|max:3|min:12'
    ]);
    $validator5 = Validator::make($data, [
      'mobile' => 'required|max:11|min:11|unique:users'
    ]);

    if ($validator1->fails()) return ws::r(0, '', Response::HTTP_OK , ms::REGISTER_NAME_ERROR);
    if ($validator2->fails()) return ws::r(0, '', Response::HTTP_OK , ms::REGISTER_EMAIL_ERROR);
    if ($validator3->fails()) return ws::r(0, '', Response::HTTP_OK , ms::REGISTER_PASSWORD_ERROR);
    if ($validator4->fails()) return ws::r(0, '', Response::HTTP_OK , ms::REGISTER_NATIONAL_NUMBER_ERROR);
    if ($validator5->fails()) return ws::r(0, '', Response::HTTP_OK , ms::REGISTER_MOBILE_ERROR);

    $secret = $request->secret;
    $vc = VerificationCode::orderBy('id', 'desc')->where('secret', '=', $secret)->where('is_verified', '=', 1)->first();
    if($vc == null) return ws::r(0, [], Response::HTTP_OK,ms::REGISTER_SECRET_INVALID);

    $vc->invokeSecret();

    $user = User::create([
      'full_name' => $request->full_name,
      'email' => $request->email,
      'mobile' => $vc->mobile,
      'national_code' => $request->national_code,
      'password' => Hash::make($request->password),
      'invite_code' => UserHelper::generateInviteCode()
    ]);

    $token = $user->createToken($user->email)->accessToken;

    return ws::r(1,['token' => $token , 'user' => $user], Response::HTTP_OK,ms::REGISTER_SUCCESS);
  }


  public function login(Request $request)
  {
//    $credentials = [
//      'email' => $request->email,
//      'password' => $request->password
//    ];
//
//    if (auth()->attempt($credentials)) {
//      $token = auth()->user()->createToken($request->email)->accessToken;
//      if (AdminHelper::isAdmin()){
//        return ws::r(1, ['token' => $token, 'user' => Auth::user(), 'is_admin' => 1], Response::HTTP_OK, ms::LOGIN_SUCCESS);
//      }
//      return ws::r(1, ['token' => $token, 'user' => Auth::user()], Response::HTTP_OK, ms::LOGIN_SUCCESS);
//    } else {
//      return ws::r(0,'', Response::HTTP_OK, ms::LOGIN_FAIL_ERROR);
//    }

    $user = User::where('mobile', '=', $request->mobile)->first();
    if ($user == null) return ws::r(0, [], 200, ms::LOGIN_MOBILE_FAIL);
    if (!Hash::check($request->password, $user->password)) return ws::r(0, [], 200, ms::LOGIN_PASSWORD_FAIL);

    $token = $user->createToken($request->mobile)->accessToken;

    if (AdminHelper::isAdmin())  return ws::r(1, ['token' => $token, 'user' => $user, 'is_admin' => 1], Response::HTTP_OK, ms::LOGIN_SUCCESS);
    else return ws::r(1, ['token' => $token, 'user' => $user], Response::HTTP_OK, ms::LOGIN_SUCCESS);

  }




  public function logout(Request $request){

    $value = $request->bearerToken();
    if ($value) {
      $id = (new Parser())->parse($value)->getHeader('jti');
      $revoked = DB::table('oauth_access_tokens')->where('id', '=', $id)->update(['revoked' => 1]);
//      auth()->guard()->logout();
    }
//    Auth::logout();
    return ws::r(1,'', Response::HTTP_OK, ms::LOGOUT_SUCCESS);




//    if (auth()->user() !== null) {
//      Auth::user()->AauthAcessToken()->delete();
//      return ws::r(1,'', Response::HTTP_OK, ms::LOGOUT_SUCCESS);
//    }else{
//      return ws::r(0,'', Response::HTTP_INTERNAL_SERVER_ERROR, ms::INTERNAL_SERVER_ERROR);
//    }
  }





//for test
  public function user()
  {
//    return dd(auth()->user()->accessToken());
    if (Auth::user() !== null) {

      if (AdminHelper::isAdmin()){
        return ws::r(1, ['user' => Auth::user(), 'is_admin' => 1, 'is_admin' => 1], Response::HTTP_OK, ms::LOGIN_SUCCESS);
      }

      return ws::r(1, ['user' => auth()->user()], Response::HTTP_OK, '');

    }else{
      return ws::r(0, '', Response::HTTP_OK, ms::MUST_BE_LOGIN);
    }
  }

  public function loginStatus(){
    if (Auth::user() !== null) {
      return ws::r(1, ['full_name' => auth()->user()->full_name], Response::HTTP_OK, '');
    }else{
      return ws::r(0, '', Response::HTTP_OK, '');
    }
  }






}
