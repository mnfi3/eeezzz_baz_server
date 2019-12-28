<?php

namespace App\Http\Controllers\admin;

use App\Ticket;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class AdminTicketController extends Controller
{
  public function __construct() {
    $this->middleware('auth');
    $this->middleware('super_admin');
  }


  public function tickets(){
    $dbh=DB::getPdo();
    $sth = $dbh->prepare("SELECT  user_id FROM  tickets GROUP BY user_id ORDER BY MAX(id) DESC LIMIT 50");
    $sth->execute();
    $users_id = $sth->fetchAll(\PDO::FETCH_COLUMN);
    $users = User::withTrashed()->whereIn('id', $users_id)->get();
    foreach ($users as $user){
      $user->new_tickets_count = $user->tickets()->where('is_user_sent', '=', 1)->where('is_seen', '=', 0)->count();
    }
    return view('site.ticket.tickets', compact('users'));
  }

  public function userTickets($id){
    $user1 = User::find($id);
//    DB::update("UPDATE tickets set is_seen=1 WHERE user_id=? AND is_user_sent=1", [$user1->id]);
    $dbh=DB::getPdo();
    $sth = $dbh->prepare("SELECT  user_id FROM  tickets GROUP BY user_id ORDER BY MAX(id) DESC LIMIT 50");
    $sth->execute();
    $users_id = $sth->fetchAll(\PDO::FETCH_COLUMN);
    $users = User::withTrashed()->whereIn('id', $users_id)->get();
    foreach ($users as $user){
      $user->new_tickets_count = $user->tickets()->where('is_user_sent', '=', 1)->where('is_seen', '=', 0)->count();
    }
    return view('site.ticket.user_tickets', compact('users', 'user1'));
  }


  public function sendTicket(Request $request){
    DB::update("UPDATE tickets set is_seen=1 WHERE user_id=? AND is_user_sent=1", [$request->id]);
    $ticket = Ticket::create([
      'sender_id' => Auth::user()->id,
      'user_id' => $request->id,
      'is_user_sent' => 0,
      'text' => $request->text,
      'is_seen' => 0
    ]);

    return back();
  }


}
