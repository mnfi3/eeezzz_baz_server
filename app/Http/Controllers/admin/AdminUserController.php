<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AdminUserController extends Controller
{
  public function __construct() {
    $this->middleware('auth');
    $this->middleware('super_admin');
  }
}
