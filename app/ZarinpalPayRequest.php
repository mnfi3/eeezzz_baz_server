<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ZarinpalPayRequest extends Model
{
    use SoftDeletes;

    protected $fillable = ['id', 'authority'];
}
