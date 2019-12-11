<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSettlementRequestsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('settlement_requests', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->unsigned();
            $table->foreign('user_id')->references('id')->on('users');
            $table->string('bank_card_number')->nullable();
            $table->string('bank_account_number')->nullable();
            $table->string('bank_shba_number')->nullable();
            $table->string('bank_account_owner_name')->nullable();
            $table->boolean('is_seen')->default(0);
            $table->boolean('is_confirmed')->default(0);
            $table->boolean('is_paid')->default(0);
            $table->timestamps();
            $table->softDeletes();
            $table->charset = 'utf8';
            $table->collation = 'utf8_general_ci';
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('settlement_requests');
    }
}
