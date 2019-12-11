<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class GameForRent extends Model
{
  use SoftDeletes;


  protected $fillable = ['user_id', 'game_info_id', 'game_price', 'is_pending', 'city_id', 'region', 'count'];


  public function user(){
    return $this->belongsTo('App\User');
  }

  public function gameInfo(){
    return $this->belongsTo('App\GameInfo', 'game_info_id');
  }

//  public function rentType(){
//    return $this->belongsTo('App\RentType');
//  }

  public function address(){
    return $this->belongsTo('App\Address');
  }

  public function photos(){
    return $this->morphMany('App\Photo','imageable');
  }

  public function reports(){
    return $this->morphMany('App\Report','reportable');
  }
}
