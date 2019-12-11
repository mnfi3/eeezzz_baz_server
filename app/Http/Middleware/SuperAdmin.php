<?php

namespace App\Http\Middleware;

use App\Http\Controllers\helpers\AdminHelper;
use App\Http\Controllers\web_service\ms;
use App\Http\Controllers\web_service\ws;
use Closure;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;

class SuperAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
      if(AdminHelper::isAdmin()){
        return $next($request);
      }else{
        return ws::r(0, '', Response::HTTP_NOT_FOUND, ms::NO_ACCESS);
      }
    }
}
