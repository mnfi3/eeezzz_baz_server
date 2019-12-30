<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class RentShop extends Model
{
  use SoftDeletes;

  protected $fillable = ['game_for_rent_id', 'game_for_shop_id'];
}
