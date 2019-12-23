<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class GeneralMessages extends Model
{
  use SoftDeletes;

  protected $fillable = ['sender_id', 'text', 'ticket', 'sms', 'email'];
}
