<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class StoreInfo extends Model
{
  use SoftDeletes;

  protected $fillable = ['user_id', 'address_id', 'city_id', 'name'];

  public function address(){
    return $this->belongsTo('App\Address');
  }
}
