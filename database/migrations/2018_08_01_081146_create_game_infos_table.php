<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGameInfosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('game_infos', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->integer('console_type_id')->unsigned();
            $table->foreign('console_type_id')->references('id')->on('console_types');
            $table->tinyInteger('age_class');
            $table->date('production_date');
//            $table->string('region');
            $table->boolean('can_play_online');
            $table->string('company_name');
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
        Schema::dropIfExists('game_infos');
    }
}
