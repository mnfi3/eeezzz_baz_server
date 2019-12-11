<?php

namespace App\Http\Controllers\user;
use App\Http\Controllers\Controller;
use App\Http\Controllers\web_service\ws;
use App\RentType;
use Illuminate\Http\Response;

class RentTypeController extends Controller {


  public function index() {
    $types = RentType::orderBy('id', 'asc')->get();
    return ws::r(1, $types, Response::HTTP_OK);
  }


  public function show($id) {
    $rentType = RentType::find($id);
    ws::r(1, $rentType, Response::HTTP_OK);
  }


}
