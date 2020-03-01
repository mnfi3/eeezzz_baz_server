<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddUserIdToZarinpalPayRequestsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('zarinpal_pay_requests', function (Blueprint $table) {
           $table->integer('user_id')->after('id')->nulllable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('zarinpal_pay_requests', function (Blueprint $table) {
            //
        });
    }
}
