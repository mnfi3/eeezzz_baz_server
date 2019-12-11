<?php

namespace App\Http\Controllers\site_public;

use App\Http\Controllers\web_service\ws;
use App\Slider;
use App\Http\Controllers\Controller;
use Illuminate\Http\Response;

class SliderController extends Controller
{


  public function __construct() {
  }

  public function sliders()
  {
    $sliders = Slider::orderBy('id' , 'desc')->get();
    foreach ($sliders as $slider){
      $slider->photos;
    }
    return ws::r(1, $sliders, Response::HTTP_OK);
  }



}
