<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Address extends Model
{
    use SoftDeletes;

  protected $fillable = ['user_id', 'state_id', 'city_id', 'postcode', 'home_phone_number', 'content', 'latitude', 'longitude'];

  public function state(){
    return $this->belongsTo('App\State');
  }

  public function city(){
    return $this->belongsTo('App\City');
  }

}
