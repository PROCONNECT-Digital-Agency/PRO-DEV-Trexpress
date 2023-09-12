<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateExtraGroupTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('extra_group_translations', function (Blueprint $table) {
            $table->id();
            $table->foreignId('extra_group_id')->constrained('extra_groups')->onUpdate('cascade')->onDelete('cascade');
            $table->string('locale')->index();
            $table->string('title', 191);

            $table->unique(['extra_group_id', 'locale']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('extra_group_translations');
    }
}
