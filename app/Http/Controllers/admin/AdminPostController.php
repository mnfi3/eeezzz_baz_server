<?php

namespace App\Http\Controllers\admin;

use App\GameInfo;
use App\Http\Controllers\helpers\Uploader;
use App\Post;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class AdminPostController extends Controller
{
  public function __construct() {
    $this->middleware('auth');
    $this->middleware('super_admin');
  }


  public function posts(){
    $posts = Post::orderBy('id', 'desc')->paginate(30);
    $games = GameInfo::all();
    return view('site.content.content', compact('posts', 'games'));
  }

  public function postAdd(Request $request){
    $post = Post::create([
      'user_id' => Auth::user()->id,
      'game_info_id' => $request->game_info_id,
      'title' => $request->title,
      'content' => $request->get('content'),
    ]);
    Uploader::saveImage('App\Post', $post->id, $request->file('image'), ['type' => Uploader::TYPE_POST]);
    return back();
  }


  public function postEdit($id){
    $post = Post::find($id);
    $games = GameInfo::all();
    return view('site.content.content-edit', compact('post', 'games'));
  }

  public function postUpdate(Request $request){
    $post = Post::find($request->id);
    $post->user_id = Auth::user()->id;
    $post->game_info_id = $request->game_info_id;
    $post->title = $request->title;
    $post->content = $request->get('content');
    $post->save();
    if ($request->hasFile('image')) {
      foreach ($post->photos as $photo) {
        $photo->delete();
      }
      Uploader::saveImage('App\Post', $post->id, $request->file('image'), ['type' => Uploader::TYPE_POST]);
    }
    return back();
  }


  public function postRemove(Request $request){
    $post = Post::find($request->id);
    $post->delete();
    return back();
  }
}
