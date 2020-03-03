<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class GameForRent extends Model
{
  use SoftDeletes;


  protected $fillable = ['user_id', 'game_info_id', 'price', 'city_id','address_id', 'region', 'can_play_online', 'count', 'is_second_hand'];


  public function user(){
    return $this->belongsTo('App\User');
  }

  public function gameInfo(){
    return $this->belongsTo('App\GameInfo', 'game_info_id');
  }

  public function rentTypes(){
    return $this->belongsToMany('App\RentType', 'game_rent_types');
  }

  public function address(){
    return $this->belongsTo('App\Address');
  }

  public function photos(){
    return $this->gameInfo()->photos;
  }

  public function coverPhoto(){
    return $this->gameInfo->photos()->first();
  }

  public function reports(){
    return $this->morphMany('App\Report','reportable');
  }


  public function rentShop(){
    return $this->hasOne('App\RentShop');
  }

  public function gameForShop(){
    return $this->belongsToMany('App\GameForShop', 'rent_shops');
  }
}
