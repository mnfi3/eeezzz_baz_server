<?php

namespace App\Http\Controllers\user;
use App\Http\Controllers\Controller;

use App\Address;
use App\Http\Controllers\web_service\ms;
use App\Http\Controllers\web_service\ws;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class AddressController extends Controller
{

  public function __construct() {
    $this->middleware('auth:api', ['except' => []]);
  }


  public function store(Request $request)
  {
    $data = $request->toArray();
    $validator = Validator::make($data, [
      'state_id' => 'required|numeric',
      'city_id' => 'required|numeric',
      'postcode' => 'max:15',
      'home_phone_number' => 'required|max:15',
      'content' => 'required|max:1992',
      'latitude' => 'numeric',
      'longitude' => 'numeric'
    ]);
    if($validator->fails()){
      return ws::r(0, '', Response::HTTP_OK, ms::INVALID_DATA);
    }

    $post_code = '';
    if($request->postcode !== null) $post_code = $request->postcode;
    $address = Address::create([
      'user_id'=> Auth::user()->id,
      'state_id'=> $request->input('state_id'),
      'city_id'=> $request->input('city_id'),
      'postcode'=> $post_code,
      'home_phone_number'=> $request->input('home_phone_number'),
      'content'=> $request->input('content'),
      'latitude'=> $request->input('latitude'),
      'longitude'=> $request->input('longitude')
    ]);

    return ws::r(1, $address, Response::HTTP_OK, ms::CRUD_SAVE_SUCCESS);
  }




  public function userLastAddress(){
    $user = Auth::user();
    $address = $user->addresses()->orderBy('created_at', 'desc')->first();
    if($address !== null) {
      $address->state;
      $address->city;
      return ws::r(1, $address);
    }else{
      return ws::r(0, '', 200, ms::NOT_EXIST_ADDRESS_FOR_USER);
    }
  }



}
