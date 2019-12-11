<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Comment extends Model
{
  use SoftDeletes;

  protected $fillable = ['user_id', 'commentable_id', 'commentable_type', 'text', 'is_confirmed'];

  public function user(){
    return $this->belongsTo('App\User');
  }

}
