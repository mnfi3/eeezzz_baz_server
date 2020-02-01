<?php

namespace App;

use App\Http\Controllers\helpers\MCrypt;
use App\Http\Controllers\helpers\SystemHelper;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class VerificationCode extends Model
{
  use SoftDeletes;

  const CODE_INVOKE_DURATION = 4;//minutes
  const TOKEN_INVOKE_DURATION = 30;//minutes

  protected $fillable = ['mobile', 'code', 'token', 'is_verified', 'invoked_at'];




  public static function generateCode($mobile){
    $vc = new VerificationCode();
    $vc->mobile = $mobile;
    $vc->code = SystemHelper::generateRandomNumber(5);
    $vc->token = '';
    $vc->is_verified = 0;
    $dateTime = new DateTime(date('Y-m-d H:i:s'));
    $dateTime->add(new DateInterval('PT' . self::CODE_INVOKE_DURATION . 'M'));
    $time = $dateTime->format('Y-m-d H:i:s');
    $vc->invoked_at = $time;
    $vc->save();
    return $vc;
  }


  public function invokeToken(){
    $now = date('Y-m-d H:i:s');
    $obj = json_decode(MCrypt::decrypt($this->token));
    $obj->token_status = 'invoked';
    $obj->token_invoked_at =  $now;
    $this->token = MCrypt::encrypt(json_encode($obj));
    $this->save();
  }

  public static function validateToken($token){
    $vc = VerificationCode::orderBy('id', 'desc')->where('token', '=', $token)->where('is_verified', '=', 1)->first();
    if ($vc == null) return null;

    $obj = json_decode(MCrypt::decrypt($token));
    if($obj->token_status == 'invoked')  return null;

    $token_invoked_at = new DateTime($obj->token_invoked_at);
    $now = new DateTime(date('Y-m-d H:i:s'));
    if ($token_invoked_at < $now) return null;

    return $vc;
  }
}
