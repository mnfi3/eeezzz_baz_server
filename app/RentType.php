<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class RentType extends Model
{
    use SoftDeletes;

  protected $fillable = ['day_count', 'price_percent'];

    public function gameForRents(){
      return $this->hasMany('App\GameForRent','rent_type_id');
    }
}
