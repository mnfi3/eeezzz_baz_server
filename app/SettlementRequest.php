<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class SettlementRequest extends Model
{
  use SoftDeletes;

  const MIN_SETTLEMENT_AMOUNT = 20000;

  protected $fillable = [
    'user_id', 'first_amount', 'bank_card_number', 'bank_account_number', 'bank_shba_number', 'bank_account_owner_name', 'is_seen', 'is_confirmed', 'is_paid'
  ];

  protected $hidden = ['is_seen', 'is_confirmed', 'is_paid'];


  public function user(){
    return $this->belongsTo('App\User');
  }

  public function payment(){
    return $this->morphOne('App\SitePayment', 'paymentable');
  }
}
