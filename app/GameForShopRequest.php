<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class GameForShopRequest extends Model
{
    use SoftDeletes;

  protected $fillable = ['user_id', 'game_for_shop_id', 'address_id', 'game_price', 'is_sent', 'is_success', 'is_finish'];


  public function user(){
    return $this->belongsTo('App\User');
  }

  public function address(){
    return $this->belongsTo('App\Address');
  }

  public function gameForShop(){
    return $this->belongsTo('App\GameForShop','game_for_shop_id');
  }

  public function payment(){
    return $this->morphOne('App\UserPayment', 'paymentable');
  }
}
