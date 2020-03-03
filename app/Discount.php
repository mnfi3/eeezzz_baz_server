<?php

namespace App;

use DateTime;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Discount extends Model
{
  use SoftDeletes;

  protected $fillable = ['code', 'percent', 'count', 'remaining', 'started_at', 'finished_at'];

  protected $hidden = ['count', 'remaining', 'started_at', 'finished_at'];



  public static function validateCode($code){
    if (strlen($code) < 2) return null;
    $discount = Discount::orderBy('id', 'desc')->where('code', '=', $code)->first();
    if ($discount == null) return null;
    $started_at = new DateTime($discount->started_at);
    $finished_at = new DateTime($discount->finished_at);
    $now = new DateTime("now");
    $interval = date_diff($started_at, $now);
    $interval = $interval->format('%R%a');
    if ($interval == '-0' || $interval < 0) return null;
    $interval = date_diff($now, $finished_at);
    $interval = $interval->format('%R%a');
    if ($interval == '-0' || $interval < 0) return null;
    if ($discount->remaining < 1) return null;
    return $discount;
  }

}
