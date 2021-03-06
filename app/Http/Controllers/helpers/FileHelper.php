<?php

namespace App\Http\Controllers\helpers;
use App\Http\Controllers\Controller;


class FileHelper extends Controller
{
  public static function getFileDirName($file_type){
    date_default_timezone_set('Asia/Tehran');
    $year_dir = date('Y', time());
    $month_dir = date('m', time());
    $file_dir = 'uploads/' . $file_type . '/' . $year_dir . '/' . $month_dir;
    return $file_dir;
  }

  public static function getFileNewName($user_id){
    date_default_timezone_set('Asia/Tehran');
    $day = date('d', time());
    $hour = date('h', time());
    $minute = date('i', time());
    $file_name = $day.'d'.$hour.'h'.$minute. 'm' .$user_id . 'u'. SystemHelper::generateRandomString(10);
    return $file_name;
  }
}
