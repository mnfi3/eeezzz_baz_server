<?php


//User auth API
Route::post('login', 'PassportController@login');
Route::post('change-password', 'PassportController@changePassword');
Route::post('reset-password', 'PassportController@resetPassword');
Route::post('register', 'PassportController@register');
Route::post('user_name-status', 'user\UserController@userNameAvailable');
Route::get('user', 'PassportController@user')->name('user');
Route::get('login-check', 'PassportController@loginStatus');
Route::get('logout', 'PassportController@logout');

//user info
Route::get('user-finance', 'user\UserFinanceController@userFinance');
Route::get('user-photo', 'site_public\PhotoController@userPhoto');

//settlement request
Route::post('settlement-request', 'user\UserFinanceController@settlementRequest');
Route::get('last-settlement', 'user\UserFinanceController@lastSettlement');


//MAIN API


//-------address api
Route::post('address', 'user\AddressController@store');
Route::get('user-last-address', 'user\AddressController@userLastAddress');


//-------game for rent api

Route::get('user-game-for-rent-requests', 'user\GameForRentRequestController@userRequests');

//-------game for shop api
Route::get('user-game-for-shop-requests', 'user\GameForShopRequestController@userRequests');


//-------ticket api
Route::get('ticket', 'user\TicketController@index');
Route::post('ticket', 'user\TicketController@store');
Route::get('new-tickets-count', 'user\TicketController@newTicketsCount');
Route::get('ticket-user-seen', 'user\TicketController@userSeen');

//slider
Route::get('slider', 'site_public\SliderController@sliders');

//comments
Route::post('comment', 'site_public\CommentController@store');


//location
Route::get('states', 'site_public\StateController@index');
Route::get('state/{id}/cities', 'site_public\StateController@cities');

//posts
Route::get('post', 'site_public\PostController@index');
Route::get('post/{id}', 'site_public\PostController@show');


Route::get('game-for-rent-index/{city_id}', 'user\GameForRentController@index');
Route::get('game-for-rent-related/{id}', 'user\GameForRentController@related');
Route::get('game-for-rent', 'user\GameForRentController@index');
Route::get('game-for-rent/{id}', 'user\GameForRentController@show');
Route::post('game-for-rent-search', 'user\GameForRentController@search');
Route::get('rent-cost/{gameForRentId}/{rentDayCount}', 'user\GameForRentController@getRentCost');


Route::get('game-for-shop-index/{city_id}', 'user\GameForShopController@index');
Route::get('game-for-shop', 'user\GameForShopController@index');
Route::get('game-for-shop/{id}', 'user\GameForShopController@show');
Route::get('game-for-shop-related/{id}', 'user\GameForShopController@related');
Route::post('game-for-shop-search', 'user\GameForShopController@search');


Route::get('game-info-related-posts/{id}', 'user\PostController@gameRelated');
Route::get('game-info-comments/{id}', 'user\GameInfoController@comments');
Route::get('game-info-photos/{id}', 'user\GameInfoController@photos');


Route::post('global-search', 'site_public\SiteController@globalSearch');
Route::post('post-search', 'user\PostController@search');


Route::get('rent-type', 'user\RentTypeController@index');
Route::get('rent-type/{id}', 'user\RentTypeController@show');


Route::post('refresh-fcm-token', 'fcm\DeviceController@refresh');


//******************************payment tasks****************************//
//finance
Route::post('increase-credit', 'user\UserFinanceController@increaseCredit')->name('increase-credit');
Route::get('increase-credit-after-pay/{request_id}/{user_id}/{amount}', 'user\UserFinanceController@increaseCreditAfterPay')->name('increase-credit-after-pay');

//shop game
Route::post('/shop-game', 'user\GameForShopController@shopGame')->name('shop-game');
Route::get('/shop-game-after-pay/{request_id}/{user_id}/{game_id}/{price}/{address_id}', 'user\GameForShopController@shopGameAfterPay')->name('shop-game-after-pay');
Route::post('/shop-game-with-wallet', 'user\GameForShopController@shopGameWithWallet');

//rent game
Route::post('/rent-game', 'user\GameForRentController@rentGame')->name('rent-game');
Route::get('/rent-game-after-pay/{request_id}/{user_id}/{game_id}/{game_price}/{sum_price}/{rent_type_id}/{rent_price}/{address_id}', 'user\GameForRentController@rentGameAfterPay')->name('rent-game-after-pay');
Route::post('/rent-game-with-wallet', 'user\GameForRentController@rentGameWithWallet');

//extend rent
Route::post('/extend-rent', 'user\GameForRentController@extendRent')->name('extend-rent');
Route::get('/extend-rent-after-pay/{request_id}/{user_id}/{game_for_rent_request_id}/{extended_price}/{rent_type_id}', 'user\GameForRentController@extendRentAfterPay')->name('extend-rent-after-pay');
//-------------------------------------------------------------------------

//verification code
Route::post('/verification/code-request/register', 'user\VerificationCodeController@getRegisterCode');
Route::post('/verification/code-request/reset-password', 'user\VerificationCodeController@getResetPasswordCode');
Route::post('/verification/code-verify', 'user\VerificationCodeController@verifyCode');


