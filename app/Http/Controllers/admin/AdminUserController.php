<?php

namespace App\Http\Controllers\admin;

use App\GeneralMessages;
use App\Http\Controllers\helpers\AdminHelper;
use App\SmsPrivate;
use App\Ticket;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Ipecompany\Smsirlaravel\Smsirlaravel;

class AdminUserController extends Controller
{
  public function __construct() {
    $this->middleware('auth');
    $this->middleware('super_admin');
  }

  public function users(){
    $users = User::orderBy('id', 'desc')->paginate(30);
    $messages = GeneralMessages::orderBy('id', 'desc')->paginate(20);
    return view('site.users.users', compact('messages', 'users'));
  }

  public function user($id){
    $user = User::find($id);
    return view('site.users.user', compact('user'));
  }

  public function userSearch(Request $request){
    $text = $request->text;
    $users = User::where('full_name', 'like', '%'.$text.'%')
      ->orWhere('email', 'like', '%'.$text.'%')
      ->orWhere('mobile', 'like', '%'.$text.'%')->paginate(30);
    $messages = GeneralMessages::orderBy('id', 'desc')->paginate(20);
    return view('site.users.users', compact('messages', 'users'))->with('text', $text);
  }



  public function sendTicket(Request $request){
    $user_id = $request->user_id;
    DB::update("update tickets set is_seen=1 where user_id=? and is_user_sent=1", [$user_id]);
    $ticekt = Ticket::create([
      'sender_id' => Auth::user()->id,
      'user_id' => $user_id,
      'is_user_sent' => 0,
      'text' => $request->text,
      'is_seen' => 0
    ]);

    return back();
  }


  public function sendSms(Request $request){
    $user = User::find($request->user_id);
    Smsirlaravel::send([$request->text], [$user->mobile]);
    SmsPrivate::create([
      'sender_id' => Auth::user()->id,
      'user_id' => $user->id,
      'text' => $request->text
    ]);
    return back();
  }

  public function sendMessage(Request $request){
    $ticket = $request->ticket;
    $sms = $request->sms;
    $email = $request->email;
    $t = $s = $e = 0;
    $users = User::all();

    //ticekt
    if(!is_null($ticket)) {
      $t = 1;
      foreach ($users as $user) {
        if (AdminHelper::isStaff($user)) continue;
        $ticket = Ticket::create([
          'sender_id' => Auth::user()->id,
          'user_id' => $user->id,
          'is_user_sent' => 0,
          'text' => $request->text,
          'is_seen' => 0,
        ]);
      }
    }

    //sms
    if (!is_null($sms)) {
      $s = 1;
      $messages = array();
      $numbers = array();
      foreach ($users as $user) {
        if (AdminHelper::isStaff($user)) continue;
        $messages [] = $request->text;
        $numbers [] = $user->mobile;
      }
      Smsirlaravel::send($messages, $numbers);
    }

    $message = GeneralMessages::create([
      'sender_id' => Auth::user()->id,
      'text' => $request->text,
      'ticket' => $t,
      'sms' => $s,
      'email' => $e,
    ]);

    return back();
  }
}
