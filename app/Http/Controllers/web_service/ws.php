<?php

namespace App\Http\Controllers\web_service;


class ws
{
    public static function r($status, $data, $httpCode = 200, $message = ''){
      if($data === '') $data = [];
      return response()->json(['status' => $status, 'message' => $message, 'data' => $data], $httpCode )->setEncodingOptions(JSON_UNESCAPED_UNICODE);
    }
}
