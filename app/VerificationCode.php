<?php

namespace App;

use App\Http\Controllers\helpers\MCrypt;
use App\Http\Controllers\helpers\SystemHelper;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class VerificationCode extends Model
{
  use SoftDeletes;

  protected $fillable = ['mobile', 'code', 'secret', 'is_verified', 'invoked_at'];




  public static function generateCode($mobile){
    $vc = new VerificationCode();
    $vc->mobile = $mobile;
    $vc->code = SystemHelper::generateRandomNumber(5);
    $vc->secret = '';
    $vc->is_verified = 0;
    $minutes_to_add = 4;
    $dateTime = new DateTime(date('Y-m-d H:i:s'));
    $dateTime->add(new DateInterval('PT' . $minutes_to_add . 'M'));
    $time = $dateTime->format('Y-m-d H:i:s');
    $vc->invoked_at = $time;

    return $vc;
  }

  public function invokeSecret($vc){
    $vc->secret = MCrypt::encrypt('status=>invoked,' . MCrypt::decrypt($vc->secret));
    $vc->save();
  }
}
