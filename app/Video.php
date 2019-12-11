<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Video extends Model
{
  use SoftDeletes;

  protected $fillable = ['videoable_id', 'videoable_type', 'path', 'url', 'type'];


}
