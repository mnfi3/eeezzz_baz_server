<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class GameForRentRequestExtend extends Model
{
    use SoftDeletes;

    protected $fillable = ['user_id', 'game_for_rent_request_id', 'rent_type_id', 'extend_cost', 'penalty_cost'];





    public function user(){
      return $this->belongsTo('App\User');
    }

    public function gameForRentRequest(){
      return $this->belongsTo('App\GameForRentRequest');
    }

    public function rentType(){
      return $this->belongsTo('App\RentType');
    }

    public function payment(){
      return $this->morphOne('App\UserPayment', 'paymentable');
    }
}
