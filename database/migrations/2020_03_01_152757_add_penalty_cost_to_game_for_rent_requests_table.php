<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddPenaltyCostToGameForRentRequestsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('game_for_rent_requests', function (Blueprint $table) {
            $table->integer('penalty_cost')->default(0)->nullable()->after('is_returned');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('game_for_rent_requests', function (Blueprint $table) {
            //
        });
    }
}
