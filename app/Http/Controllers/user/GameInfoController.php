<?php

namespace App\Http\Controllers\user;
use App\GameInfo;
use App\Http\Controllers\Controller;

use App\Address;
use App\Http\Controllers\helpers\AdminHelper;
use App\Http\Controllers\helpers\UserHelper;
use App\Http\Controllers\web_service\ms;
use App\Http\Controllers\web_service\ws;
use App\Post;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class GameInfoController extends Controller
{


  public function __construct() {
    $this->middleware('auth:api', ['except' => []]);
  }


  public function comments($id){
    $game = GameInfo::find($id);
    $comments = $game->comments()->where('is_confirmed', '=', 1)->orderBy('created_at', 'desc')->paginate(12);
    foreach ($comments as $comment){
      $comment->user;
    }
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
