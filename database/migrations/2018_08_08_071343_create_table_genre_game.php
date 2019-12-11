<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableGenreGame extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
      Schema::create('genre_game', function (Blueprint $table) {
        $table->increments('id');
        $table->integer('genre_id')->unsigned();
        $table->foreign('genre_id')->references('id')->on('genres');
        $table->integer('game_info_id')->unsigned();
        $table->foreign('game_info_id')->references('id')->on('game_infos');
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
        Schema::dropIfExists('genre_game');
    }
}
