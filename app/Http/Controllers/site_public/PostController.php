<?php

namespace App\Http\Controllers\site_public;

use App\GameInfo;
use App\Http\Controllers\web_service\ms;
use App\Http\Controllers\web_service\ws;
use App\Post;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Http\Response;

class PostController extends Controller
{
  public function index()
  {
    $posts = Post::orderBy('created_at', 'desc')->paginate(12);
    foreach ($posts as $post){
      $post->photos;
      $post->videos;
    }
    return ws::r(1, $posts, Response::HTTP_OK);
  }


  public function show($id)
  {
    $post = Post::find($id);
    return ws::r(1, $post, Response::HTTP_OK);
  }






  public function gameRelated($id){
    $game = GameInfo::find($id);
    if($game !== null){
      $name = $game->name;
      $posts = Post::orderBy('id', 'desc')->where('title', 'like', '%'.$name.'%')->orWhere('content', 'like', '%'.$name.'%')->take(12)->get();
      foreach ($posts as $post){
        $post->photos;
        $post->videos;
      }
      return ws::r(1, $posts, 200);
    }else{
      return ws::r(0, '', 200, ms::NOT_FOUND_OBJECT);
    }
  }


  public function search(Request $request){
    $text = $request->text;
    $posts = Post::orderBy('created_at', 'desc')->where('title', 'like', '%'.$text.'%')->orWhere('content', 'like', '%'.$text.'%')->take(30)->get();
    foreach ($posts as $post){
      $post->photos;
      $post->videos;
    }

    if(sizeof($posts) > 0){
      return ws::r(1, $posts, 200, '');
    }else{
      return ws::r(0, [], 200, ms::SEARCH_RESULT_NULL);
    }
  }
}
