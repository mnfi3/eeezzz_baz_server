<?php

/*
|--------------------------------------------------------------------------
| Test Routes
|--------------------------------------------------------------------------
*/

use App\GameForRent;
use App\User;
use GuzzleHttp\Client;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Ipecompany\Smsirlaravel\Smsirlaravel;


Route::get('/', function () {
    return view('welcome');
});

Route::get('/test-sms', function () {
  Smsirlaravel::send(['test1'],['09145821998']);
});


Route::get('/test', function () {
  $user = User::find(3);
  $token = $user->createToken($user->email)->accessToken;
  dd($token);
});


Route::get('/user', function () {
  $user = User::find(2);

  echo $user;
});


//Route::resource('/game','admin\GameInfoController')->middleware('super_admin');


//--------------------------------------------------------------------------


/*
|--------------------------------------------------------------------------
| Site Main Routes
|--------------------------------------------------------------------------
*/


//--------------------------------------------------------------------------


Route::get('/login', function () {
  return 'this is login page';
});



//**********************************************************************//
//
Auth::routes();

// Authentication Routes...
//Route::get('login', 'Auth\LoginController@showLoginForm')->name('login');
//Route::post('login', 'Auth\LoginController@login');
//Route::post('logout', 'Auth\LoginController@logout')->name('logout');
//
//// Registration Routes...
//Route::get('register', 'Auth\RegisterController@showRegistrationForm')->name('register');
//Route::post('register', 'Auth\RegisterController@register');
//
//// Password Reset Routes...
//Route::get('password/reset', 'Auth\ForgotPasswordController@showLinkRequestForm')->name('password.request');
//Route::post('password/email', 'Auth\ForgotPasswordController@sendResetLinkEmail')->name('password.email');
//Route::get('password/reset/{token}', 'Auth\ResetPasswordController@showResetForm')->name('password.reset');
//Route::post('password/reset', 'Auth\ResetPasswordController@reset');


//**********************************************************************//


//Route::get('/password/reset',function (){
//  return view('auth.passwords.email');
//});
//Route::get('/home', 'HomeController@index')->name('home');


