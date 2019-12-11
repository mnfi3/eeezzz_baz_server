<?php

namespace App\Http\Controllers\helpers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class DriverHelper extends Controller
{
  public static function isDriver($user = null){
    if($user === null) $user = Auth::user();
    if($user !== null){
      $roles = $user->roles;
      foreach ($roles as $role){
        if($role->name == 'driver'){
          return true;
        }
      }
    }
    return false;
  }
}
