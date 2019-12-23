<?php

namespace App\Http\Controllers\admin;

use App\ConsoleType;
use App\GameInfo;
use App\Genre;
use App\Http\Controllers\helpers\Uploader;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class AdminProductController extends Controller
{
  public function __construct() {
    $this->middleware('auth');
    $this->middleware('super_admin');
  }


  public function games(){
    $games = GameInfo::orderBy('id', 'desc')->get();
    $consoles = ConsoleType::all();
    $genres = Genre::all();
    return view('site.manage-products.games', compact('games', 'consoles', 'genres'));
  }

  public function gameAdd(Request $request){
    $game = GameInfo::create([
      'name' =>$request->name,
      'persian_name' =>$request->persian_name,
      'console_type_id' =>$request->console_type_id,
      'age_class' =>$request->age_class,
      'production_date' =>$request->production_date,
      'can_play_online' =>$request->can_play_online,
      'company_name' =>$request->company_name,
      'description' =>$request->description,
    ]);


    $genres = $request->genres;
    foreach ($genres as $genre) {
      DB::insert("insert into genre_game (game_info_id, genre_id) values (?,?)", [$game->id, $genre]);
    }

    //upload cover image
    $file = $request->file('cover_image');
    Uploader::saveImage('App\GameInfo', $game->id, $file, ['type' => Uploader::TYPE_GAME_COVER]);
    //upload main images
    $files = $request->file('images');
    foreach ($files as $file) {
      Uploader::saveImage('App\GameInfo', $game->id, $file, ['type' => Uploader::TYPE_GAME_MAIN]);
    }
    //upload video
    $file = $request->file('video');
    Uploader::saveVideo('App\GameInfo', $game->id, $file);

    return back();
  }

  public function gameRemove(Request $request){
    $game = GameInfo::find($request->id);
    $game->delete();
    return back();
  }

  public function gameEdit($id){
    $game = GameInfo::find($id);
    $consoles = ConsoleType::all();
    $genres = Genre::all();
    return view('site.manage-products.game-edit', compact('game', 'consoles', 'genres'));
  }


  public function gameUpdate(Request $request){
    $game = GameInfo::find($request->id);
    $game->name = $request->name;
    $game->persian_name = $request->persian_name;
    $game->console_type_id = $request->console_type_id;
    $game->age_class = $request->age_class;
    $game->production_date = $request->production_date;
    $game->can_play_online = $request->can_play_online;
    $game->company_name = $request->company_name;
    $game->description = $request->description;
    $game->save();

    DB::delete("delete from genre_game where game_info_id=?", [$game->id]);
    $genres = $request->genres;
    foreach ($genres as $genre) {
      DB::insert("insert into genre_game (game_info_id, genre_id) values (?,?)", [$game->id, $genre]);
    }

    return back();
  }




}
