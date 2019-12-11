<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class UserPayment extends Model
{
    use SoftDeletes;

  protected $fillable = ['user_id', 'paymentable_id', 'paymentable_type', 'amount', 'is_success', 'bank_name', 'bank_receipt'];

    public function user(){
      return $this->belongsTo('App\User');
    }
}
