<?php

namespace App;

use App\Http\Controllers\helpers\MCrypt;
use App\Http\Controllers\helpers\SystemHelper;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class VerificationCode extends Model
{
  use SoftDeletes;

  const INVOKE_TIME = 4;//minutes

  protected $fillable = ['mobile', 'code', 'secret', 'is_verified', 'invoked_at'];




  public static function generateCode($mobile){
    $vc = new VerificationCode();
    $vc->mobile = $mobile;
    $vc->code = SystemHelper::generateRandomNumber(5);
    $vc->secret = '';
    $vc->is_verified = 0;
    $dateTime = new DateTime(date('Y-m-d H:i:s'));
    $dateTime->add(new DateInterval('PT' . self::INVOKE_TIME . 'M'));
    $time = $dateTime->format('Y-m-d H:i:s');
    $vc->invoked_at = $time;
    $vc->save();
    return $vc;
  }


  public function invokeSecret(){
    $now = date('Y-m-d H:i:s');
    $obj = json_decode(MCrypt::decrypt($this->secret));
    $obj->secret_status = 'invoked';
    $obj->secret_invoked_at =  $now;
    $this->secret = MCrypt::encrypt(json_encode($obj));
    $this->save();
  }
}
