<?php

namespace App\Http\Controllers\user;

use App\Http\Controllers\helpers\MCrypt;
use App\Http\Controllers\web_service\ms;
use App\Http\Controllers\web_service\ws;
use App\User;
use App\VerificationCode;
use DateInterval;
use DateTime;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Ipecompany\Smsirlaravel\Smsirlaravel;

class VerificationCodeController extends Controller
{
    public function getRegisterCode(Request $request){
      $data = $request->toArray();
      $validator1 = Validator::make($data, [
        'mobile' => 'required|string|max:11|min:11',
      ]);
      $validator2 = Validator::make($data, [
        'mobile' => 'unique:users',
      ]);

      if($validator1->fails()) return ws::r(0, [], 200, ms::SMS_MOBILE_INVALID);
      if($validator2->fails()) return ws::r(0, [], 200, ms::SMS_REGISTER_MOBILE_DUPLICATE);

      $mobile = $request->mobile;
      $vc = VerificationCode::generateCode($mobile);
      Smsirlaravel::sendVerification($vc->code, $mobile);
      return ws::r(1, [], 200, ms::SMS_SENT_SUCCESS);
    }


    public function getResetPasswordCode(Request $request){
      $data = $request->toArray();
      $validator1 = Validator::make($data, [
        'mobile' => 'required|string|max:11|min:11',
      ]);
      if($validator1->fails()) return ws::r(0, [], 200, ms::SMS_MOBILE_INVALID);

      $mobile = $request->mobile;
      $user = User::where('mobile', '=', $mobile)->first();
      if ($user == null) return ws::r(0, [], 200, ms::SMS_MOBILE_INVALID);

      //remove old codes
      $vcs = VerificationCode::where('mobile', '=', $mobile)->get();
      foreach ($vcs as $vc) $vc->delete();

      $vc = VerificationCode::generateCode($mobile);
      Smsirlaravel::sendVerification($vc->code, $mobile);
      return ws::r(1, [], 200, ms::SMS_SENT_SUCCESS);
    }







    public function verifyCode(Request $request){
      $code = $request->code;
      $mobile = $request->mobile;
      $now = date('Y-m-d H:i:s');
      $vc = VerificationCode::orderBy('id', 'desc')->where('mobile', '=', $mobile)->where('code', '=', $code)->where('is_verified', '=', 0)->where('invoked_at', '>', $now)->first();

      if ($vc == null) return ws::r(0, [], 200, ms::SMS_VERIFICATION_CODE_INVALID);

      $dateTime = new DateTime(date('Y-m-d H:i:s'));
      $dateTime->add(new DateInterval('PT' . VerificationCode::TOKEN_INVOKE_DURATION . 'M'));
      $token_invoke_time = $dateTime->format('Y-m-d H:i:s');

      $obj = ['token_status' => 'valid', 'token_invoked_at' => $token_invoke_time, 'mobile' => $mobile, 'code' => $code, 'verified_at' => $now];
      $vc->token = MCrypt::encrypt(json_encode($obj));
      $vc->is_verified = 1;
      $vc->save();

      return ws::r(0, ['verification_code' => $vc], 200, ms::SMS_VERIFICATION_CODE_VALIDATION_SUCCESS);
    }
}
