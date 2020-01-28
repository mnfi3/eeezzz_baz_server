<?php

namespace App\Http\Controllers\user;

use App\Http\Controllers\helpers\MCrypt;
use App\Http\Controllers\web_service\ms;
use App\Http\Controllers\web_service\ws;
use App\VerificationCode;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Ipecompany\Smsirlaravel\Smsirlaravel;

class VerificationCodeController extends Controller
{
    public function getCode(Request $request){
      $mobile = $request->mobile;
      $now = date('Y-m-d H:i:s');
      $codes = VerificationCode::where('mobile', '=', $mobile)->where('is_verified', '=', 0)->where('invoked_at', '>', $now)->get();
      if (count($codes) > 3){
        return ws::r(0, [], 200, ms::SMS_TO_MANY_CODE_REQUEST);
      }

      $vc = VerificationCode::generateCode($mobile);
      $vc->save();
      Smsirlaravel::sendVerification($vc->code, $mobile);
      return ws::r(1, [], 200, ms::SMS_SENT_SUCCESS);
    }


    public function verifyCode(Request $request){
      $code = $request->code;
      $mobile = $request->mobile;
      $now = date('Y-m-d H:i:s');
      $vc = VerificationCode::orderBy('id', 'desc')->where('mobile', '=', $mobile)->where('code', '=', $code)->where('is_verified', '=', 0)->where('invoked_at', '>', $now)->first();

      if ($vc == null){
        return ws::r(0, [], 200, ms::SMS_VERIFICATION_CODE_INVALID);
      }

      $vc->is_verified = 1;
      $vc->secret = MCrypt::encrypt("mobile=>$mobile,code=>$code,now=>$now");
      $vc->save();

      return ws::r(0, ['vc' => $vc], 200, ms::SMS_VERIFICATION_CODE_INVALID);
    }
}
