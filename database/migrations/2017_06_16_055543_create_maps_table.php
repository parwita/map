<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMapsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('maps', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps('created_at')->nullable();
            $table->timestamps('updated_at')->nullable();
            $table->integer('no_tower');
            $table->decimal('longitude');
            $table->decimal('latitude');
            $table->string('status', 100);
            $table->string('nama_pelahan', 100);
            $table->text('tindak_lanjut');
            $table->text('masalah');
            $table->text('saran_solusi');
            $table->string('foto', 200);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('maps');
    }
}
