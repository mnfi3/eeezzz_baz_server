<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class SmsPrivate extends Model
{
  use SoftDeletes;

  protected $fillable = ['sender_id', 'user_id', 'text'];
}
