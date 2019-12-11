<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class UserFinance extends Model
{
    use SoftDeletes;

  protected $fillable = ['user_id', 'bank_card_number', 'bank_account_number', 'bank_shba_number', 'bank_account_owner_name', 'user_balance'];

    public function user(){
      return $this->belongsTo('App\User');
    }

}
