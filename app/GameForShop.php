<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class GameForShop extends Model
{
  use SoftDeletes;


  protected $fillable = ['user_id', 'game_info_id', 'address_id', 'price', 'is_pending', 'city_id', 'region', 'count'];


  public function user(){
    return $this->belongsTo('App\User');
  }

  public function gameInfo(){
    return $this->belongsTo('App\GameInfo', 'game_info_id');
  }

  public function address(){
    return $this->belongsTo('App\Address');
  }

//  public function photos(){
//    return $this->morphMany('App\Photo','imageable');
//  }

  public function reports(){
    return $this->morphMany('App\Report','reportable');
  }
}
