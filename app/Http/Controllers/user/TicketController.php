<?php

namespace App\Http\Controllers\user;

use App\Http\Controllers\Controller;

use App\Http\Controllers\web_service\ms;
use App\Http\Controllers\web_service\ws;
use App\Ticket;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class TicketController extends Controller {


  public function __construct() {
    $this->middleware('auth:api');
  }

  public function index() {
    $user_tickets = Auth::user()->tickets()->orderBy('id', 'desc')->paginate(100);
    return ws::r(1, $user_tickets, Response::HTTP_OK);
  }

  public function store(Request $request) {
    $data = $request->toArray();
    $validator = Validator::make($data, [
      'text' => 'required|min:1|max:1000',
    ]);
    if ($validator->fails()) {
      return ws::r(0, '', Response::HTTP_OK, ms::INVALID_DATA);
    }
    $ticket = Ticket::create([
      'user_id' => Auth::user()->id,
      'is_user_sent' => 1,
      'text' => $request->text,
      'is_seen' => 0
    ]);

    return ws::r(1, $ticket, Response::HTTP_OK, ms::CRUD_SAVE_SUCCESS);
  }

  public function adminSeen(Request $request) {
    $user_id = $request->user_id;
    DB::update("UPDATE tickets SET is_seen = 1 WHERE user_id = '$user_id' AND is_user_sent = 1");
    return ws::r(1, '', Response::HTTP_OK);
  }

  public function userSeen() {
    $user_id = Auth::user()->id;
    DB::update("UPDATE tickets SET is_seen = 1 WHERE user_id = '$user_id' AND is_user_sent = 0");
    return ws::r(1, '', Response::HTTP_OK);
  }

  public function newTicketsCount() {
    if (Auth::user() !== null) {
      $user_new_tickets_count = Auth::user()->tickets()->where('is_user_sent', '=', '0')->where('is_seen', '=', '0')->count();
      return ws::r(1, $user_new_tickets_count, Response::HTTP_OK);
    } else {
      return ws::r(0, '', Response::HTTP_OK, ms::MUST_BE_LOGIN);
    }
  }


}
