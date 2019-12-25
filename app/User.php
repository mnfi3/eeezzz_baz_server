<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\SoftDeletes;
use Laravel\Passport\HasApiTokens;

class User extends Authenticatable
{
    use Notifiable;
    use SoftDeletes;
    use HasApiTokens;

    protected $fillable = [
        'full_name', 'email', 'mobile', 'password', 'invite_code',
    ];

    protected $hidden = [
        'password', 'remember_token',
    ];





  public function addresses(){
    return $this->hasMany('App\Address');
  }

  public function comments(){
    return $this->hasMany('App\Comment');
  }

  public function gameForRents(){
    return $this->hasMany('App\GameForRent');
  }

  public function gameForRentRequests(){
    return $this->hasMany('App\GameForRentRequest');
  }

  public function gameForShops(){
    return $this->hasMany('App\GameForShop');
  }

  public function gameForShopRequests(){
    return $this->hasMany('App\GameForShopRequest');
  }

  public function posts(){
    return $this->hasMany('App\Post');
  }

  public function roles(){
    return $this->belongsToMany('App\Role','role_user','user_id', 'role_id');
  }

  public function sitePayments(){
    return $this->hasMany('App\SitePayment');
  }

  public function tickets(){
    return $this->hasMany('App\Ticket');
  }

  public function finance(){
    return $this->hasOne('App\UserFinance');
  }

  public function settlements(){
    return $this->hasMany('App\SettlementRequest');
  }

  public function userPayment(){
    return $this->hasMany('App\UserPayment');
  }

  public function invitedUsers(){
    return $this->belongsToMany('App\User','user_invites','inviter_id','invited_id');
  }

  public function invitedBy(){
    return $this->belongsToMany('App\User','user_invites','invited_id','inviter_id');
  }

  public function AauthAcessToken(){
    return $this->hasMany('App\OauthAccessToken');
  }


  public function photo(){
    return $this->morphOne('App\Photo', 'imageable');
  }


  public function devices(){
    return $this->hasMany('App\Device');
  }

  public function smsPrivate(){
    return $this->hasMany('App\SmsPrivate');
  }



}
