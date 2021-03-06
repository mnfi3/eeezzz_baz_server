<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class GameForRentRequest extends Model
{
    use SoftDeletes;

  protected $fillable = ['user_id', 'game_for_rent_id', 'rent_type_id', 'address_id', 'discount_id', 'order_number', 'game_price', 'rent_price', 'is_sent', 'is_delivered', 'is_finish', 'is_returned', 'penalty_cost', 'is_confiscated', 'finished_at'];


  public function user(){
    return $this->belongsTo('App\User');
  }


  public function gameForRent(){
    return $this->belongsTo('App\GameForRent','game_for_rent_id');
  }

  public function rentType(){
    return $this->belongsTo('App\RentType','rent_type_id');
  }

  public function address(){
    return $this->belongsTo('App\Address');
  }


  public function payment(){
    return $this->morphOne('App\UserPayment', 'paymentable');
  }

  public function extends(){
    return $this->hasMany('App\GameForRentRequestExtend');
  }


}
