<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Comment extends Model
{
  use SoftDeletes;

  protected $fillable = ['user_id', 'commentable_id', 'commentable_type', 'text', 'is_checked', 'is_confirmed'];

  public function user(){
    return $this->belongsTo('App\User');
  }

  public function gameInfo(){
    return $this->belongsTo('App\GameInfo', 'commentable_id');
  }

  public function post(){
    return $this->belongsTo('App\Post', 'commentable_id');
  }

}
