<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class GameInfo extends Model
{
    use SoftDeletes;

  protected $fillable = ['name', 'persian_name', 'age_class', 'console_type_id', 'production_date', 'can_play_online', 'company_name', 'description'];

  public function gamesToChangeWithThis(){
    return $this->belongsToMany('App\GameForChange', 'change_with', 'game_info_id', 'game_for_change_id');
  }

  public function photos(){
    return $this->morphMany('App\Photo', 'imageable');
  }

  public function comments(){
    return $this->morphMany('App\Comment', 'commentable');
  }

  public function videos(){
    return $this->morphMany('App\Video', 'videoable');
  }

  public function genres(){
    return $this->belongsToMany('App\Genre','genre_game','game_info_id','genre_id');
  }

  public function console(){
    return $this->belongsTo('App\ConsoleType' ,'console_type_id');
  }
}
