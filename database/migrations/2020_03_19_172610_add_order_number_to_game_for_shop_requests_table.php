<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddOrderNumberToGameForShopRequestsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('game_for_shop_requests', function (Blueprint $table) {
            $table->string('order_number')->after('discount_id')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('game_for_shop_requests', function (Blueprint $table) {
            //
        });
    }
}
