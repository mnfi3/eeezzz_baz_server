<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ConsoleType extends Model
{
    use SoftDeletes;

    public function games(){
      return $this->hasMany('App\GameInfo', 'console_type_id');
    }
}
