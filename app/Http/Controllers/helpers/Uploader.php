<?php


namespace App\Http\Controllers\helpers;


use App\Photo;
use App\Video;
use Intervention\Image\ImageManagerStatic as Image;

class Uploader {

  const TYPE_POST = 'post_cover';
  const TYPE_GAME_COVER = 'game_cover';
  const TYPE_GAME_MAIN = 'game_main';
  const TYPE_SlIDER = 'slider';

  private const SIZE_APP_POST_COVER = 300;
  private const SIZE_APP_GAME_COVER = '200';
  private const SIZE_APP_GAME_MAIN = '600';
  private const SIZE_APP_SLIDER = '800';


  public static function saveImage($class_name, $id, $file, $option = []){
    isset($option['type']) ? $type = $option['type'] : $type = '';

    date_default_timezone_set('Asia/Tehran');
    $year_dir = date('Y', time());
    $month_dir = date('m', time());
    $random = mt_rand(10,100);
    $file_dir = 'uploads/images/' . $year_dir . '/' . $month_dir;

    //upload original image
    $name = $random . '_or_' . $file->getClientOriginalName();
    $file->move($file_dir, $name);
    $orignal_path = $file_dir .'/'. $name;
    $url = url('/') . '/' . $orignal_path;

    $image = Photo::create([
      'imageable_id' => $id,
      'imageable_type' => $class_name,
      'path' => $orignal_path,
      'url' => $url,
      'type' => $type,
      'width' => 0,
      'height' => 0,
    ]);


    if ($type == self::TYPE_POST){
      $width = self::SIZE_APP_POST_COVER;
    }
    elseif ($type == self::TYPE_GAME_COVER){
      $width = self::SIZE_APP_GAME_COVER;
    }
    elseif ($type == self::TYPE_GAME_MAIN){
      $width = self::SIZE_APP_GAME_MAIN;
    }
    elseif ($type == self::TYPE_SlIDER){
      $width = self::SIZE_APP_SLIDER;
    }


    if ($type == '') return $image;

    $image = Image::make($orignal_path);
    $w = $image->getWidth();
    $h = $image->getHeight();
    $scale = $w / $width;
    $height = $h / $scale;
    $image->resize($width, $height);
    $name = $random . '_app_' . $file->getClientOriginalName();
    $resized_path = $file_dir . '/' . $name;
    $image->save(public_path($resized_path));


    $image = Photo::create([
      'imageable_id' => $id,
      'imageable_type' => $class_name,
      'path' => $orignal_path,
      'url' => $url,
      'type' => 'app_' . $type,
      'width' => 0,
      'height' => 0,
    ]);

    return $image;
  }



  public static function saveVideo($class_name, $id, $file){
    date_default_timezone_set('Asia/Tehran');
    $year_dir = date('Y', time());
    $month_dir = date('m', time());
    $random = mt_rand(10,100);
    $file_dir = 'uploads/videos/' . $year_dir . '/' . $month_dir;
    $name = $random . '_'. $file->getClientOriginalName();
    $file->move($file_dir, $name);
    $path = $file_dir .'/'. $name;

    $image = Video::create([
      'videoable_id' => $id,
      'videoable_type' => $class_name,
      'path' => $path,
      'url' => url('/') . '/' . $path,
      'type' => '',
    ]);

    return $image;
  }
}