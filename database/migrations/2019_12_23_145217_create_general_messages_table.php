<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGeneralMessagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('general_messages', function (Blueprint $table) {
            $table->increments('id');
            $table->text('text')->nullable();
            $table->boolean('ticket')->nullable()->default(0);
            $table->boolean('sms')->nullable()->default(0);
            $table->boolean('email')->nullable()->default(0);
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
        Schema::dropIfExists('general_messages');
    }
}
