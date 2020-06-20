<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Slider extends Model
{
    use SoftDeletes;


    protected $fillable = ['title', 'content', 'on_click'];

    public function photos(){
      return $this->morphMany('App\Photo', 'imageable');
    }

}
