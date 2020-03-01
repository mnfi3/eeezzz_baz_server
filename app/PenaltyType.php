<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class PenaltyType extends Model
{
  use SoftDeletes;

  protected $fillable = ['day_count', 'price_percent'];
}
