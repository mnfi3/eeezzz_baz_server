<?php

namespace App\Http\Controllers\helpers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class AdminHelper extends Controller
{
    public static function isAdmin(){
      $user = Auth::user();
      if($user !== null){
        $roles = $user->roles;
        foreach ($roles as $role){
          if($role->name == 'super_admin'){
            return true;
          }
        }
      }
      return false;
    }
}
