<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Ticket extends Model {
  use SoftDeletes;

  protected $fillable = ['sender_id', 'user_id', 'is_user_sent', 'text', 'is_seen'];

  public function user() {
    return $this->belongsTo('App\User');
  }


  public function sender(){
    return $this->belongsTo('App\User', 'sender_id')->withTrashed();
  }

}
