<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddPenaltyCostToGameForRentRequestExtendsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('game_for_rent_request_extends', function (Blueprint $table) {
            $table->integer('penalty_cost')->default(0)->after('rent_type_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('game_for_rent_request_extends', function (Blueprint $table) {
            //
        });
    }
}
