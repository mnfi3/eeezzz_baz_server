<?php

namespace App\Http\Controllers;

use App\Http\Controllers\helpers\AdminHelper;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

      if (AdminHelper::isAdmin()){
        return redirect(url('/panel/latest-orders-rents'));
      }else{
        return '';
      }
    }
}
