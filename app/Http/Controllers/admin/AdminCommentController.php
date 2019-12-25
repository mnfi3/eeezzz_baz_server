<?php

namespace App\Http\Controllers\admin;

use App\Comment;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AdminCommentController extends Controller
{
  public function __construct() {
    $this->middleware('auth');
    $this->middleware('super_admin');
  }


  public function comments(){
    $new_comments = Comment::orderBy('id', 'desc')->where('is_checked', '=', 0)->paginate(30);
    $rejected_comments = Comment::orderBy('id', 'desc')->where('is_checked', '=', 1)->where('is_confirmed', '=', '0')->paginate(30);
    $confirmed_comments = Comment::orderBy('id', 'desc')->where('is_checked', '=', 1)->where('is_confirmed', '=', '1')->paginate(30);
    return view('site.comments.comments', compact('new_comments', 'rejected_comments', 'confirmed_comments'));
  }

  public function commentConfirm($id){
    $comment = Comment::find($id);
    $comment->is_checked = 1;
    $comment->is_confirmed = 1;
    $comment->save();
    return back();
  }

  public function commentReject($id){
    $comment = Comment::find($id);
    $comment->is_checked = 1;
    $comment->is_confirmed = 0;
    $comment->save();
    return back();
  }
}
