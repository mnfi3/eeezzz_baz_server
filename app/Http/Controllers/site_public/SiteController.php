<?php


namespace App\Http\Controllers\site_public;
use App\Http\Controllers\Controller;

use App\GameForChange;
use App\GameForRent;
use App\GameForShop;
use App\GameInfo;
use App\Http\Controllers\web_service\ms;
use App\Http\Controllers\web_service\ws;
use App\Post;
use Illuminate\Http\Request;

class SiteController extends Controller
{
    public function globalSearch(Request $request){
      $text = $request->input('text');
      $city_id = $request->input('city_id');

      if(strlen($text) < 3){
        return ws::r(0, '', 200, ms::SEARCH_TEXT_TOO_SMALL);
      }

      $games = GameInfo::orderBy('created_at', 'desc')->where('name', 'like', '%'.$text.'%')->get();
//      $gameForRents = GameForRent::all();
//      $gameForChanges = GameForChange::all();
//      $gameForShops = GameForShop::all();

      $gameForRents = array();
      $gameForShops = array();
      $searchResult = array();
      $rent_counter = 0;
      $shop_counter = 0;
      foreach ($games as $game){
        if($rent_counter > 9 && $shop_counter > 9) break;

        $gameForRent = GameForRent::orderBy('created_at', 'desc')->where('game_info_id', '=', $game->id)->where('city_id', '=', $city_id)->get();
        foreach ($gameForRent as $item) {
          if ($item !== null && $rent_counter < 10) {
            $item->gameInfo->photos;
            $item->gameInfo->videos;
            $item->gameInfo->genres;
            $item->gameInfo->console;
            $gameForRents [] = $item;
            $rent_counter++;
          }
        }


        $gameForShop = GameForShop::orderBy('created_at', 'desc')->where('game_info_id', '=', $game->id)->where('city_id', '=', $city_id)->get();
        foreach ($gameForShop as $item) {
          if ($item !== null && $shop_counter < 10) {
            $item->gameInfo->photos;
            $item->gameInfo->videos;
            $item->gameInfo->genres;
            $item->gameInfo->console;
            $gameForShops [] = $item;
            $shop_counter++;
          }
        }


      }

      $posts = Post::orderBy('created_at', 'desc')->where('title', 'like', '%'.$text.'%')->orWhere('content', 'like', '%'.$text.'%')->take(10)->get();
      foreach ($posts as $post){
        $post->photos;
        $post->videos;
      }

      $searchResult [] = ['game_for_rents' => $gameForRents];
      $searchResult [] = ['game_for_shops' => $gameForShops];
      $searchResult [] = ['posts' => $posts];

      if(sizeof($searchResult) > 0){
        return ws::r(1, $searchResult, 200, '');
      }else{
        return ws::r(0, '', 200, ms::SEARCH_RESULT_NULL);
      }




      return $searchResult;
    }
}
