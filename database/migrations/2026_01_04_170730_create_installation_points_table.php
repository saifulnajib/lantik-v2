<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('installation_points', function (Blueprint $table) {
            $table->id();
            $table->foreignId('opd_id')->constrained('opd')->cascadeOnDelete();
            $table->string('nama_lokasi');
            $table->text('alamat');
            $table->decimal('latitude', 10, 8)->nullable();
            $table->decimal('longitude', 11, 8)->nullable();
            $table->integer('priority')->default(3); // 1-5, 5 = highest
            $table->enum('status', ['pending', 'in_progress', 'completed', 'maintenance'])->default('pending');
            $table->date('target_completion_date')->nullable();
            $table->text('notes')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('installation_points');
    }
};
