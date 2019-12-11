<?php

namespace App\Http\Controllers\user;

use App\Http\Controllers\helpers\AdminHelper;
use App\Http\Controllers\helpers\UserHelper;
use App\Http\Controllers\web_service\ms;
use App\Http\Controllers\web_service\ws;
use App\UserPayment;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;

class UserPaymentController extends Controller
{

    public function index()
    {
//        $user = Auth::user();
//        $payments = $user->userPayment;
//        return ws::r(1, $payments, Response::HTTP_OK);
    }


    public function create()
    {
        //
    }


    public function store(Request $request)
    {
      $data = $request->toArray();
      $validator = Validator::make($data, [
//        'user_id' => 'required|numeric',
        'paymentable_id' => 'required|numeric',
        'paymentable_type' => 'required',
        'amount' => 'required|numeric',
        'is_success' => 'required|numeric|max:1|min:0',
        'bank_name' => 'required',
        'bank_receipt' => 'required',
      ]);

      if($validator->fails()){
        return ws::r(0, '', Response::HTTP_BAD_REQUEST, ms::INVALID_DATA);
      }

      $payment = UserPayment::create([
        'user_id' => Auth::user()->id,
        'paymentable_id' => $request->paymentable_id,
        'paymentable_type' => $request->paymentable_type,
        'amount' => $request->amount,
        'is_success' => $request->is_success,
        'bank_name' => $request->bank_name,
        'bank_receipt' => $request->bank_receipt,
      ]);

      return ws::r(1, $payment, Response::HTTP_OK, ms::CRUD_SAVE_SUCCESS);
    }


    public function show($id)
    {
      $payment = UserPayment::find($id);
      if(UserHelper::isForThisUser($payment) || AdminHelper::isAdmin()){
        return ws::r(1, $payment, Response::HTTP_OK);
      }else{
        return ws::r(0, '', Response::HTTP_NOT_FOUND, ms::NO_ACCESS);
      }
    }


    public function edit($id)
    {
        //
    }


    public function update(Request $request, $id)
    {
        // user cant update payment
    }


    public function destroy($id)
    {
        // no one cant delete payment
    }

}
