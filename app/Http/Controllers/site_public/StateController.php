<?php

namespace App\Http\Controllers\site_public;

use App\City;
use App\Http\Controllers\web_service\ws;
use App\State;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Http\Response;

class StateController extends Controller
{
  public function index()
  {
    $states = State::all();
    return ws::r(1, $states, Response::HTTP_OK);
  }

  public function cities($id){
    $cities = State::find($id)->cities;
    return ws::r(1, $cities, Response::HTTP_OK);
  }

//  public function create()
//  {
//    //
//  }
//
//
//  public function store(Request $request)
//  {
//    //
//  }
//
//
//  public function show($id)
//  {
//    //
//  }
//
//
//  public function edit($id)
//  {
//    //
//  }
//
//
//  public function update(Request $request, $id)
//  {
//    //
//  }
//
//
//  public function destroy($id)
//  {
//    //
//  }
}
