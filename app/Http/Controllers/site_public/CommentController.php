<?php

namespace App\Http\Controllers\site_public;

use App\Comment;
use App\Http\Controllers\helpers\AdminHelper;
use App\Http\Controllers\helpers\UserHelper;
use App\Http\Controllers\web_service\ms;
use App\Http\Controllers\web_service\ws;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class CommentController extends Controller {


  public function __construct() {
    $this->middleware('auth:api', ['except' => []]);
  }

  public function store(Request $request) {
    $data = $request->toArray();
    $validator = Validator::make($data, [
      'commentable_id' => 'required|numeric',
      'commentable_type' => 'required',
      'text' => 'required|max:500|min:3',
    ]);

    if ($validator->fails()) {
      return ws::r(0, '', Response::HTTP_OK, ms::INVALID_DATA);
    }

    if ($request->commentable_type == 'GameInfo') {
      $commentable_type = "App\GameInfo";
    } else if ($request->commentable_type == 'Post') {
      $commentable_type = "App\Post";
    }

    $comment = Comment::create([
      'user_id' => Auth::user()->id,
      'commentable_id' => $request->commentable_id,
      'commentable_type' => $commentable_type,
      'text' => $request->text,
      'is_confirmed' => 0
    ]);

    return ws::r(1, $comment, Response::HTTP_OK, ms::CRUD_SAVE_SUCCESS);
  }


}
