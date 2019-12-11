<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Post extends Model
{
    use SoftDeletes;

  protected $fillable = ['user_id', 'game_info_id', 'title', 'content'];

    public function user(){
      return $this->belongsTo('App\User');
    }

  public function photos(){
    return $this->morphMany('App\Photo', 'imageable');
  }

  public function videos(){
    return $this->morphMany('App\Video', 'videoable');
  }

  public function tags(){
    return $this->morphedToMany('App\Tag','tagable');
  }

}
