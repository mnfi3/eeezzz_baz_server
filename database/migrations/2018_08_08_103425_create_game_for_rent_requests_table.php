<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGameForRentRequestsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('game_for_rent_requests', function (Blueprint $table) {
          $table->increments('id');
          $table->integer('user_id')->unsigned();
          $table->foreign('user_id')->references('id')->on('users');
          $table->integer('game_for_rent_id')->unsigned();
          $table->foreign('game_for_rent_id')->references('id')->on('game_for_rents');
          $table->integer('rent_type_id')->unsigned();
          $table->foreign('rent_type_id')->references('id')->on('rent_types');
          $table->integer('rent_price');
          $table->boolean('is_success');
          $table->boolean('is_finish');
          $table->boolean('is_delivered');
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
        Schema::dropIfExists('game_for_rent_requests');
    }
}
