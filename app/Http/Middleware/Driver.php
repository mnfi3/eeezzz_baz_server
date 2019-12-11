<?php

namespace App\Http\Middleware;

use App\Http\Controllers\helpers\DriverHelper;
use App\Http\Controllers\web_service\ms;
use App\Http\Controllers\web_service\ws;
use Closure;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;

class Driver
{

    public function handle($request, Closure $next)
    {
      if(DriverHelper::isDriver()){
        return $next($request);
      }else{
        return ws::r(0, '', Response::HTTP_NOT_FOUND, ms::NO_ACCESS);
      }
    }
}
