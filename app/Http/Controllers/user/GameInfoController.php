<?php

namespace App\Http\Controllers\user;
use App\GameInfo;
use App\Http\Controllers\Controller;

use App\Http\Controllers\web_service\ms;
use App\Http\Controllers\web_service\ws;
use Illuminate\Http\Response;

class GameInfoController extends Controller
{


  public function __construct() {
    $this->middleware('auth:api', ['except' => ['comments', 'photos']]);
  }


  public function comments($id){
    $game = GameInfo::find($id);
    $comments = $game->comments()->where('is_checked', '=', 1)->where('is_confirmed', '=', 1)->orderBy('created_at', 'desc')->paginate(12);
    foreach ($comments as $comment){
      $comment->user;
    }
    if (sizeof($comments) == 0)
      return ws::r(0, $comments, Response::HTTP_OK, '');
    else
      return ws::r(1, $comments, Response::HTTP_OK, '');
  }



  public function photos($id){
    $game =  GameInfo::find($id);
    if($game !== null){
      $photos = $game->photos;
      return ws::r(1, $photos, 200);
    }else{
      return ws::r(0, '', 200, ms::NOT_FOUND_OBJECT);
    }
  }



}
