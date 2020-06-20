<?php

namespace App;

use DateTime;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Discount extends Model
{
  use SoftDeletes;

  public const TYPE_RENT_GAME_COST = 'rent_game_cost';
  public const TYPE_RENT_GAME_COST_FIRST = 'rent_game_cost_first';
  public const TYPE_RENT_COST = 'rent_cost';
  public const TYPE_RENT_COST_FIRST = 'rent_cost_first';
  public const TYPE_RENT_ALL = 'rent_all';
  public const TYPE_RENT_ALL_FIRST = 'rent_all_first';
  //---
  public const TYPE_SHOP_COST = 'shop_cost';
  public const TYPE_SHOP_COST_FIRST = 'shop_cost_first';


  protected $fillable = ['code', 'type', 'percent', 'count', 'remaining', 'started_at', 'finished_at'];

  protected $hidden = ['count', 'remaining', 'started_at', 'finished_at'];



  public static function validateCode($code){
    if (strlen($code) < 2) return null;
    $discount = Discount::orderBy('id', 'desc')->where('code', '=', $code)->first();
    if ($discount == null) return null;
    $now = strtotime(date('Y-m-d H:i:s'));
    $started_at = strtotime($discount->started_at);
    $finished_at = strtotime($discount->finished_at);
    if ($started_at > $now) return null;
    if ($finished_at < $now) return null;
    if ($discount->remaining < 1) return null;
    return $discount;
  }

}
