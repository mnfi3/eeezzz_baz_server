<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Device extends Model
{
  use SoftDeletes;

  protected $fillable = ['user_id', 'device_type', 'client_key', 'fcm_token'];


}
