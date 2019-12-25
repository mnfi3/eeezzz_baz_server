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
  Smsirlaravel::send(['test from easybazi!'],['09145821998']);
  Smsirlaravel::send(['test from easybazi!'],['09303484023']);
//  Smsirlaravel::ultraFastSend(['user'=>'username','verificationCode'=>'12345'],350,'09145821998');
});




//**********************************************************************//
//
//Auth::routes();

// Authentication Routes...
//Route::get('login', 'Auth\LoginController@showLoginForm')->name('login');
Route::post('login', 'Auth\LoginController@login');
Route::post('logout', 'Auth\LoginController@logout')->name('logout');
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
Route::get('/home', 'HomeController@index')->name('home');




Route::get('/test', function () {
  $game = \App\GameInfo::find(26);
  $game->genres;
  $game->photos;
  $game->videos;
  return json_encode($game, JSON_UNESCAPED_UNICODE);
});





Route::get('/login', function () {
  return view('site.auth.login');
});


//orders
Route::get('/panel/latest-orders-rents', 'admin\AdminOrderController@latestOrdersRents');
Route::get('/panel/latest-orders-sell', 'admin\AdminOrderController@latestOrdersSells');


//Manage Products
Route::get('/panel/manage-games', 'admin\AdminProductController@games');
Route::post('/panel/game-add', 'admin\AdminProductController@gameAdd');
Route::post('/panel/game-remove', 'admin\AdminProductController@gameRemove');
Route::get('/panel/game-edit/{id}', 'admin\AdminProductController@gameEdit');
Route::post('/panel/game-update', 'admin\AdminProductController@gameUpdate');

Route::get('/panel/rents', function () {
  return view('site.manage-products.rent');
});

Route::get('/panel/rent-edit', function () {
  return view('site.manage-products.rent-edit');
});


Route::get('/panel/sells', function () {
  return view('site.manage-products.sell');
});

Route::get('/panel/sell-edit', function () {
  return view('site.manage-products.sell-edit');
});







Route::get('/panel/users', 'admin\AdminUserController@users');
Route::get('/panel/user/{id}', 'admin\AdminUserController@user');
Route::post('/panel/user-search', 'admin\AdminUserController@userSearch');
Route::post('/panel/users/send-genreal-message', 'admin\AdminUserController@sendMessage');
Route::post('/panel/users/send-ticket', 'admin\AdminUserController@sendTicket');
Route::post('/panel/users/send-sms', 'admin\AdminUserController@sendSms');

Route::get('/panel/comments', function () {
  return view('site.comments.comments');
});

Route::get('/panel/tickets', function () {
  return view('site.ticket.tickets');
});

Route::get('/panel/content', function () {
  return view('site.content.content');
});

Route::get('/panel/content-edit', function () {
  return view('site.content.content-edit');
});

Route::get('/panel/finance', function () {
  return view('site.finance.finance');
});

Route::get('/panel/report', function () {
  return view('site.report.report');
});





//Route::get('/panel/manage-foods', function () {
//    return view('site.manage-products.food');
//});
//
//Route::get('/panel/manage-dessert', function () {
//    return view('site.manage-products.dessert');
//});
//
//Route::get('/panel/dessert-edit', function () {
//    return view('site.manage-products.dessert-edit');
//});
//
//Route::get('/panel/food-edit', function () {
//    return view('site.manage-products.food-edit');
//});
//
//Route::get('/panel/categories', function () {
//    return view('site.manage-products.categories');
//});
//
//Route::get('/panel/category-edit', function () {
//  return view('site.manage-products.category-edit');
//});

//Reports

//Route::get('/panel/today-report',function (){
//  return view('site.report.today');
//});
//
//Route::get('/panel/all-report',function (){
//  return view('site.report.all');
//});
//
////Discount Code
//
//Route::get('/panel/discount-code',function(){
//  return view('site.manage-discount.discount-code');
//});
//
//Route::get('/panel/discount-edit',function(){
//  return view('site.manage-discount.edit');
//});
//
////Profile
//
//Route::get('/panel/profile/image',function(){
//  return view('site.profile.image');
//});
//
//Route::get('/panel/profile/address',function(){
//  return view('site.profile.address');
//});
//
//Route::get('/panel/profile/password',function(){
//  return view('site.profile.password');
//});
//
//
////SUPPORT
//Route::get('/panel/support',function(){
//  return view('site.support.support');
//});





