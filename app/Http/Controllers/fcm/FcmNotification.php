<?php
/**
 * Created by PhpStorm.
 * User: Mohsen
 * Date: 10/17/2018
 * Time: 1:33 PM
 */

namespace App\Http\Controllers\fcm;
use App\Device;
use GuzzleHttp\Client;
use LaravelFCM\Message\OptionsBuilder;
use LaravelFCM\Message\PayloadDataBuilder;
use LaravelFCM\Message\PayloadNotificationBuilder;
use FCM;



class FcmNotification {

//  private static function test() {
//    $optionBuilder = new OptionsBuilder();
////    $optionBuilder->setTimeToLive(60*20);
//
//    $notificationBuilder = new PayloadNotificationBuilder('my title');
//    $notificationBuilder->setBody('Hello world')
//      ->setSound('default');
//
//    $dataBuilder = new PayloadDataBuilder();
//    $dataBuilder->addData(['destination' => 'activity_show_rent']);
//    $dataBuilder->addData(['id' => '1']);
//
//    $option = $optionBuilder->build();
//    $notification = $notificationBuilder->build();
//    $data = $dataBuilder->build();
//
//    $token = "cPvoDk6w5r8:APA91bHA9wcgCImXa8b3MU9J86CseP_BUF7TsEvT7UZ3a8qRp1cNb9cZIRj4WqCSbo2RzCuN5TeNzMaJE1X0k8R4-h9rSYZmGVn4T_l6hso3scijlyee1Gr6zBxJtT1aQIDxYg4oFJFQ";
////    $token = "cPXaRY5dwIo:APA91bF802-UC8F642Ni1G271s3HLvGXuGah_ns1ThisJzgIqBmJESSXESKTkl9wUO5WSThO7_2DlMGmu5HojG0UOBgB0_zYL9U1tdGhVIO7Lu2B0LPaS_lhl8Pi1XxZBn8wRBRpAE-C";
//
//    $downstreamResponse = FCM::sendTo($token, $option, $notification, $data);
//
//    $downstreamResponse->numberSuccess();
//    $downstreamResponse->numberFailure();
//    $downstreamResponse->numberModification();
//
////return Array - you must remove all this tokens in your database
//    echo "<br>tokens to delete" ." : " ;
//    print_r($downstreamResponse->tokensToDelete());
//
////return Array (key : oldToken, value : new token - you must change the token in your database )
//    echo "<br>tokens to modify" ." : " ;
//    print_r($downstreamResponse->tokensToModify());
//
////return Array - you should try to resend the message to the tokens in the array
//    echo "<br>tokens to retry" ." : " ;
//    print_r($downstreamResponse->tokensToRetry());
//
//// return Array (key:token, value:errror) - in production you should remove from your database the tokens
//  }





  public static function sendNotification($token, $title, $body, $options = null){
    $optionBuilder = new OptionsBuilder();
//    $optionBuilder->setTimeToLive(60*20);

    $notificationBuilder = new PayloadNotificationBuilder($title);
    $notificationBuilder->setBody($body)
      ->setSound('default');

    $dataBuilder = new PayloadDataBuilder();
//    $dataBuilder->addData(['destination' => 'activity_show_rent']);
//    $dataBuilder->addData(['id' => '1']);

    $option = $optionBuilder->build();
    $notification = $notificationBuilder->build();
    $data = $dataBuilder->build();

    $downstreamResponse = FCM::sendTo($token, $option, $notification, $data);
  }




  public static function sendNotificationToUser($user, $title, $body, $options = null){
    $optionBuilder = new OptionsBuilder();
//    $optionBuilder->setTimeToLive(60*20);

    $notificationBuilder = new PayloadNotificationBuilder($title);
    $notificationBuilder->setBody($body)
      ->setSound('default');

    $dataBuilder = new PayloadDataBuilder();
//    $dataBuilder->addData(['destination' => 'activity_show_rent']);
//    $dataBuilder->addData(['id' => '1']);

    $option = $optionBuilder->build();
    $notification = $notificationBuilder->build();
    $data = $dataBuilder->build();


    $devices = $user->devices;
    foreach ($devices as $device) {
      $downstreamResponse = FCM::sendTo($device->fcm_token, $option, $notification, $data);
      self::removeOldTokens($downstreamResponse->tokensToDelete());
      self::modifyOldTokens($downstreamResponse->tokensToModify());
    }

  }



  private static function removeOldTokens($tokens){
    foreach ($tokens as $token){
      $device = Device::where('fcm_token', '=', $token)->first();
      $device->delete();
    }
  }

  private static function modifyOldTokens($tokens){
    foreach ($tokens as $key=>$value){
      $token = Device::where('fcm_token', '=', $key)->first();
      $token->fcm_token = $value;
      $token->save();
    }
  }



//  private static function myTest(){
//    $client = new Client(['headers' => ['Content-Type' => 'application/json' ,'Authorization' => 'key='.env('FCM_SERVER_KEY')]]);
//    $res = $client->request('POST', 'https://fcm.googleapis.com/fcm/send', [
//      'form_params' => [
//        'to' => 'fFb7OGdfJAI:APA91bFeNZWsHjdbUzWaKCYKSU0qzZZNfG4s24QGfbBrDlrwYSiFfEakGCriOsZ_MkAXRvr0Q-qN4eDszoQQHvRzw6OJXY64-rrdFdNmvV8m07EViHz4O2F-ZuqVFg9eLwU7xvic2Vsx',
//        'notification' => [
//            "body" => "Body of Your Notification",
//            "title"=> "Title of Your Notification",
//            "priority" => "high",
//        ],
//        'data' =>[
//          'body'=>'body2',
//          'title'=>'title2'
//        ],
//      ]
//    ]);
//    echo $res->getBody();
//  }

}