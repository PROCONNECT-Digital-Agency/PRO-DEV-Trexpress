<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Str;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('shops', function (Blueprint $table) {
            $table->id()->from(501);
            $table->uuid('uuid')->index();
            $table->foreignId('user_id')->constrained()->onUpdate('cascade')->onDelete('cascade');
            $table->double('tax', 22, 2)->default(0);
            $table->integer('delivery_range')->nullable();
            $table->double('percentage', 22, 0)->default(0);
            $table->string('location')->nullable();
            $table->string('phone')->nullable();
            $table->tinyInteger('show_type')->nullable();
            $table->boolean('open')->default(1);
            $table->boolean('visibility')->default(1);
            $table->time('open_time');
            $table->time('close_time');
            $table->string('background_img', 191)->nullable();
            $table->string('logo_img', 191)->nullable();
            $table->double('min_amount', 12)->default(0.1);
            $table->enum('status', ['new', 'edited', 'approved', 'rejected', 'inactive'])->default('new');
            $table->text('status_note')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });

        Schema::create('shop_translations', function (Blueprint $table) {
            $table->id();
            $table->foreignId('shop_id')->constrained()->onUpdate('cascade')->onDelete('cascade');
            $table->string('locale')->index();
            $table->string('title', 191);
            $table->mediumText('description')->nullable();
            $table->string('address')->nullable();

            $table->unique(['shop_id', 'locale']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('shops');
    }
};
