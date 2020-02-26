<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class GameForRentRequestExtend extends Model
{
    use SoftDeletes;

    protected $fillable = ['user_id', 'game_for_rent_request_id', 'rent_type_id'];





    public function user(){
      return $this->belongsTo('App\User');
    }

    public function gameForRentRequest(){
      return $this->belongsTo('App\GameForRentRequest');
    }

    public function rentType(){
      return $this->hasOne('App\RentType');
    }
}
