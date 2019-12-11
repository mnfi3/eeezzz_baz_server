<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Slider extends Model
{
    use SoftDeletes;



    public function photos(){
      return $this->morphMany('App\Photo', 'imageable');
    }

}
