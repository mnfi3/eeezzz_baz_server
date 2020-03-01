<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddSomeFieldsToZarinpalPayRequestsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('zarinpal_pay_requests', function (Blueprint $table) {
            $table->string('type')->nullable()->after('authority');
            $table->integer('amount')->nullable()->after('type');
            $table->string('data', 600)->nullable()->after('amount');
            $table->boolean('is_verified')->default(0)->after('data');
            $table->boolean('is_success')->default(0)->after('is_verified');

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
