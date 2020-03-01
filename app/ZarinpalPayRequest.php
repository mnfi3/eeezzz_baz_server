<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ZarinpalPayRequest extends Model
{
    use SoftDeletes;

    protected $fillable = ['user_id', 'authority', 'type', 'amount', 'data', 'is_verified', 'is_success'];
}
