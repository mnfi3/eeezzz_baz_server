<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Genre extends Model
{
  use SoftDeletes;

  protected $fillable = ['name'];

  public function games(){
    return $this->belongsToMany('App\GameInfo','genre_game','genre_id','game_info_id');
  }
}
