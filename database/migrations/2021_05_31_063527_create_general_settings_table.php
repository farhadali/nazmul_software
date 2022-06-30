<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGeneralSettingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('general_settings', function (Blueprint $table) {
            $table->id();
            $table->string('title')->nullable();
            $table->string('name')->nullable();
            $table->string('keywords')->nullable();
            $table->string('author')->nullable();
            $table->string('url')->nullable();
            $table->string('logo')->nullable();
            $table->string('bg_image')->nullable();
            $table->text('_sales_note')->nullable();
            $table->text('_sales_return__note')->nullable();
            $table->text('_purchse_note')->nullable();
            $table->text('_purchase_return_note')->nullable();
            $table->longText('footerContent')->nullable();
            $table->longText('description')->nullable();
            $table->string('created_by')->nullable();
            $table->string('updated_by')->nullable();
            $table->integer('_ac_type')->default(0);
            $table->integer('_auto_lock')->default(0);
            $table->integer('_sms_service')->default(0);
            $table->integer('_barcode_service')->default(0);
            $table->integer('_bank_group')->default(0);
            $table->integer('_cash_group')->default(0);
            $table->timestamps();

            



        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('general_settings');
    }
}
