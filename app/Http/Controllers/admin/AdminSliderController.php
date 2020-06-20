<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\helpers\Uploader;
use App\Slider;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AdminSliderController extends Controller
{
  public function __construct() {
    $this->middleware('auth');
    $this->middleware('super_admin');
  }

  public function sliders(){
    $sliders = Slider::orderBy('id', 'desc')->get();
    return view('site.slider.slider', compact('sliders'));
  }

  public function sliderInsert(Request $request){
    $slider = Slider::create([
      'title' => $request->title,
      'content' => $request->get('content'),
      'on_click' => $request->on_click . ':::' . $request->data,
    ]);

    Uploader::saveImage('App\Slider', $slider->id, $request->file('image'), ['type' => Uploader::TYPE_SlIDER]);
    return back();
  }


  public function sliderEdit($id){
    $slider = Slider::find($id);
    if (str_contains($slider->on_click, ':::')) {
      $on_click = explode(':::', $slider->on_click)[0];
      $data = explode(':::', $slider->on_click)[1];
    }else{
      $on_click = '';
      $data = '';
    }
    return view('site.slider.slider-edit', compact('slider', 'on_click', 'data'));
  }

  public function sliderUpdate(Request $request){
    $slider = Slider::find($request->id);
    $slider->title = $request->title;
    $slider->content = $request->get('content');
    $slider->on_click =  $request->on_click . ':::' . $request->data;
    $slider->save();
    if($request->hasFile('image')) {
      $photos = $slider->photos;
      foreach ($photos as $photo) {
        $photo->delete();
      }
      Uploader::saveImage('App\Slider', $slider->id, $request->file('image'), ['type' => Uploader::TYPE_SlIDER]);
    }

    return redirect(url('/panel/sliders'));
  }


  public function sliderRemove(Request $request){
    $slider = Slider::find($request->id);
    $slider->delete();
    return back();
  }
}
