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
        Schema::create('electronic_system_categorizations', function (Blueprint $table) {
            $table->id();
            $table->foreignId('application_id')->constrained('applications')->cascadeOnDelete();
            $table->foreignId('opd_id')->constrained('opd')->cascadeOnDelete();
            $table->year('assessment_year');

            // 10 Indikator Penilaian Skor (Nilai 1 - 5)
            $table->unsignedTinyInteger('score_investment_value')->default(1);
            $table->unsignedTinyInteger('score_operational_budget')->default(1);
            $table->unsignedTinyInteger('score_legal_compliance')->default(1);
            $table->unsignedTinyInteger('score_cryptography_usage')->default(1);
            $table->unsignedTinyInteger('score_user_base')->default(1);
            $table->unsignedTinyInteger('score_personal_data_processing')->default(1);
            $table->unsignedTinyInteger('score_data_confidentiality')->default(1);
            $table->unsignedTinyInteger('score_business_process_criticality')->default(1);
            $table->unsignedTinyInteger('score_failure_impact')->default(1);
            $table->unsignedTinyInteger('score_potential_loss')->default(1);

            // Kalkulasi Skor Total & Kategori Predikat
            $table->unsignedInteger('total_score')->default(10); // nilai_kse
            $table->enum('category', ['STRATEGIS', 'TINGGI', 'RENDAH'])->default('RENDAH');

            $table->text('notes')->nullable();
            $table->enum('verification_status', ['draft', 'submitted', 'verified', 'rejected'])->default('draft');
            $table->text('verification_notes')->nullable();
            $table->boolean('is_active')->default(true);

            $table->foreignId('assessed_by')->nullable()->constrained('users')->nullOnDelete();
            $table->foreignId('verified_by')->nullable()->constrained('users')->nullOnDelete();
            $table->timestamp('verified_at')->nullable();

            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('electronic_system_categorizations');
    }
};

