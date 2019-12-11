<?php

namespace App\Http\Controllers\site_public;

use App\Http\Controllers\helpers\FileHelper;
use App\Http\Controllers\web_service\ms;
use App\Http\Controllers\web_service\ws;
use App\Photo;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
//use Intervention\Image\Image;

//use Intervention\Image\Facades\Image;
use Intervention\Image\ImageManagerStatic as Image;


class PhotoController extends Controller
{

  public function userPhoto(){
    $user = Auth::user();
    $photo = $user->photo;
    return ws::r(1, $photo, Response::HTTP_OK, '');
  }

}
