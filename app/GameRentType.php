<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class GameRentType extends Model
{
  use SoftDeletes;

  protected $fillable = ['game_for_rent_id', 'rent_type_id'];
}
