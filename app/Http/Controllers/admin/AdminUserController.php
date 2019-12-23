<?php

namespace App\Http\Controllers\admin;

use App\GeneralMessages;
use App\Http\Controllers\helpers\AdminHelper;
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
