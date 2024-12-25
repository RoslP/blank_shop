<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('category_product', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('category_id');
            $table->unsignedBigInteger('product_id');
            $table->index('category_id', 'category_product_category_idx');
            $table->index('product_id', 'category_product_product_idx');
            $table->foreign('category_id', 'category_product_category_id_fk')->on('categories')->references('id');
            $table->foreign('product_id', 'category_product_product_id_fk')->on('products')->references('id');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('category_product');
    }
};
