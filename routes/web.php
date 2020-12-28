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
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Mail;
use Ipecompany\Smsirlaravel\Smsirlaravel;






//ali api
Route::get('/', function () {
  return view('index2');
});

Route::get('/blog', function () {
  return view('blog');
});

Route::get('/blog/details', function () {
  return view('blog-details');
});

Route::get('/terms', function () {
  return view('terms');
});

Route::get('/about', function () {
  return view('about');
});






Route::get('/test-sms', function () {
//  Smsirlaravel::ultraFastSend(['user'=>'محسن فرجامی','verificationCode'=>'1375'],20565,'09145821998');
//  Smsirlaravel::sendVerification('1375124', '09365018124');
//  Smsirlaravel::send(['test from easybazi!'],['09145821998']);
//  Smsirlaravel::send(['test from easybazi!'],['09303484023']);
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
  return view('failed-payment');
  $amount = 100000;
  $receipt = 54545454;
  return view('successfull-payment', compact('amount', 'receipt'));
  return Crypt::decryptString(env('E_MERCHANT_ID'));
});


Route::get('/test2', function () {
  return Crypt::decryptString(env('E_MERCHANT_ID'));

  $datetime1 = date_create('2020-03-1 15:20:38');
  $datetime2 = date_create('2020-03-1 15:00:00');
  $interval = date_diff($datetime1, $datetime2);
  $a = $interval->format('%R%a');
  echo $a;
//  if ($a=='-0') echo 'hello';
//  echo $a . '<br>';


//  $finished_at = new DateTime('2020-03-2 15:20:38');
//  $now = new DateTime('now');
//  $interval = date_diff($now, $finished_at);
//  $diff = $interval->format('%R%a');
//  echo $diff;
});





Route::get('/login', function () {
  return view('site.auth.login');
});


//orders
Route::get('/panel/latest-orders-rents', 'admin\AdminOrderController@latestOrdersRents');
Route::get('/panel/latest-orders-sell', 'admin\AdminOrderController@latestOrdersSells');


//Manage game infos
Route::get('/panel/manage-games', 'admin\AdminProductController@games');
Route::post('/panel/game-add', 'admin\AdminProductController@gameAdd');
Route::post('/panel/game-remove', 'admin\AdminProductController@gameRemove');
Route::get('/panel/game-edit/{id}', 'admin\AdminProductController@gameEdit');
Route::post('/panel/game-update', 'admin\AdminProductController@gameUpdate');

//rents and shops
Route::get('/panel/manage/products/games', 'admin\AdminProductController@productGames');
Route::post('/panel/manage/products/game/add', 'admin\AdminProductController@productGameAdd');

Route::get('/panel/manage/products/games/edit-rent/{id}', 'admin\AdminProductController@editRent');
Route::post('/panel/manage/products/games/remove-rent', 'admin\AdminProductController@removeRent');
Route::post('/panel/manage/products/games/update-rent', 'admin\AdminProductController@updateRent');

Route::get('/panel/manage/products/games/edit-shop/{id}', 'admin\AdminProductController@editShop');
Route::post('/panel/manage/products/games/remove-shop', 'admin\AdminProductController@removeShop');
Route::post('/panel/manage/products/games/update-shop', 'admin\AdminProductController@updateShop');

//Route::get('/panel/rents', function () {
//  return view('site.manage-products.rent');
//});

Route::get('/panel/rent-edit', function () {
  return view('site.manage-products.rent-edit');
});


//Route::get('/panel/sells', function () {
//  return view('site.manage-products.sell');
//});

//Route::get('/panel/sell-edit', function () {
//  return view('site.manage-products.sell-edit');
//});






//users
Route::get('/panel/users', 'admin\AdminUserController@users');
Route::get('/panel/user/{id}', 'admin\AdminUserController@user');
Route::post('/panel/user-search', 'admin\AdminUserController@userSearch');
Route::post('/panel/users/send-genreal-message', 'admin\AdminUserController@sendMessage');
Route::post('/panel/users/send-ticket', 'admin\AdminUserController@sendTicket');
Route::post('/panel/users/send-sms', 'admin\AdminUserController@sendSms');

//comments
Route::get('/panel/comments', 'admin\AdminCommentController@comments');
Route::get('/panel/comment/confirm/{id}', 'admin\AdminCommentController@commentConfirm');
Route::get('/panel/comment/reject/{id}', 'admin\AdminCommentController@commentReject');

//tickets
Route::get('/panel/tickets', 'admin\AdminTicketController@tickets');
Route::get('/panel/tickets/user/{id}', 'admin\AdminTicketController@userTickets');
Route::post('/panel/ticket/send', 'admin\AdminTicketController@sendTicket');
Route::post('/panel/tickets/search', 'admin\AdminTicketController@search');

//posts
Route::get('/panel/posts', 'admin\AdminPostController@posts');
Route::post('/panel/post/add', 'admin\AdminPostController@postAdd');
Route::post('/panel/post/remove', 'admin\AdminPostController@postRemove');
Route::get('/panel/post-edit/{id}', 'admin\AdminPostController@postEdit');
Route::post('/panel/post/update', 'admin\AdminPostController@postUpdate');

//slider
Route::get('/panel/sliders', 'admin\AdminSliderController@sliders');
Route::post('/panel/slider-insert', 'admin\AdminSliderController@sliderInsert');
Route::get('/panel/slider-edit/{id}', 'admin\AdminSliderController@sliderEdit');
Route::post('/panel/slider-update', 'admin\AdminSliderController@sliderUpdate');
Route::post('/panel/slider-remove', 'admin\AdminSliderController@sliderRemove');

Route::get('/panel/finance', 'admin\AdminFinanceController@settlements');
Route::get('/panel/finance/confirm-settlement/{id}', 'admin\AdminFinanceController@confirmSettlement');
Route::get('/panel/finance/reject-settlement/{id}', 'admin\AdminFinanceController@rejectSettlement');
Route::post('/panel/finance/save-site-payment', 'admin\AdminFinanceController@saveSitePayment');

Route::get('/panel/report', function () {
  return view('site.report.report');
});





