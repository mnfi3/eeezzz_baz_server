<?php

namespace App\Http\Controllers\fcm;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;


use App\Device;
use App\Http\Controllers\helpers\UserHelper;
use App\Http\Controllers\web_service\ms;
use App\Http\Controllers\web_service\ws;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;


class DeviceController extends Controller
{


  public function refresh(Request $request)
  {
    $data = $request->toArray();
    $validator = Validator::make($data, [
      'device_type' => 'required|max:50',
      'client_key' => 'required|max:700',
      'fcm_token' => 'required|max:700',
    ]);
    if($validator->fails()){
      return ws::r(0, '', Response::HTTP_OK, ms::INVALID_DATA);
    }

    $user = UserHelper::user($request);


    if($user !== null) {
      $device = Device::where('user_id', '=', 0)
        ->where('client_key', '=', $request->client_key)
        ->where('device_type', '=', $request->device_type)->first();
      if ($device !== null) {
        $device->user_id = $user->id;
        $device->save();
        return ws::r(1, $device);
      }
    }


    $device = Device::where('fcm_token', '=', $request->fcm_token)->first();
    if($device !== null){
      $device->delete();
//        return ws::r(0, '', 200, ms::EXIST_OBJECT);
    }


    if ($user !== null){
      $user_id = $user->id;
      $device = Device::where('user_id', '=', $user_id)
        ->where('client_key', '=', $request->client_key)
        ->where('device_type', '=', $request->device_type)->first();
      //update user device fcm_token
      if($device !== null){
        $device->fcm_token = $request->fcm_token;
        $device->save();
        return ws::r(1, $device);
      }

    }else{
      $user_id = 0;
      $device = Device::where('user_id', '=', $user_id)
        ->where('client_key', '=',  $request->client_key)
        ->where('device_type', '=', $request->device_type)->first();
      if($device !== null){
        $device->fcm_token = $request->fcm_token;
        $device->save();
        return ws::r(1, $device);
      }
    }

    $device = Device::create([
      'user_id'=> $user_id,
      'device_type'=> $request->input('device_type'),
      'client_key'=> $request->input('client_key'),
      'fcm_token'=> $request->input('fcm_token'),
    ]);

    return ws::r(1, $device);
  }







}
