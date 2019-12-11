<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class UserInvites extends Model
{

  use SoftDeletes;

  protected $fillable = ['inviter_id', 'invited_id'];

}
