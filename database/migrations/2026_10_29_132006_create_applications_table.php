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
        Schema::create('applications', function (Blueprint $table) {
            $table->id();
            $table->foreignId('opd_id')->constrained('opd')->cascadeOnDelete();

            // Identitas Dasar
            $table->enum('source_type', ['internal_dev', 'third_party'])->default('internal_dev'); // asal_aplikasi (1=Sendiri, 2=Pihak Ketiga)
            $table->string('name');
            $table->string('vendor_name')->nullable(); // penyedia_aplikasi
            $table->string('developer_name')->nullable(); // pengembang_aplikasi
            $table->text('description')->nullable();
            $table->year('launch_year')->nullable();

            // Spesifikasi Teknis & Infrastruktur
            $table->json('platforms')->nullable(); // basis_aplikasi: web, android, ios, desktop
            $table->string('programming_languages')->nullable(); // bahasa_pemrograman
            $table->foreignId('database_system_id')->nullable()->constrained('database_systems')->nullOnDelete();
            $table->string('other_database')->nullable();
            $table->foreignId('hosting_location_id')->nullable()->constrained('hosting_locations')->nullOnDelete();
            $table->string('domain_url')->nullable();

            // Klasifikasi Layanan & Penggunaan
            $table->foreignId('service_type_id')->nullable()->constrained('application_service_types')->nullOnDelete();
            $table->string('service_name')->nullable(); // nama_layanan
            $table->foreignId('usage_frequency_id')->nullable()->constrained('usage_frequencies')->nullOnDelete();
            $table->string('other_usage_frequency')->nullable(); // frekuensi_penggunaan_lainnya
            $table->string('user_count_range')->nullable(); // jumlah_pengguna

            // Integrasi Antar Sistem
            $table->enum('integration_status', ['ada', 'tidak_ada', 'tidak_tahu'])->default('tidak_ada');
            $table->string('integration_method')->nullable(); // REST API, Webhook, Database Link
            $table->text('integrated_applications')->nullable();
            $table->text('integrated_opds')->nullable();

            // Tata Kelola, Legalitas, & Tim PIC
            $table->text('legal_basis')->nullable(); // regulasi / dasar hukum pembentukan aplikasi
            $table->string('pic_name');
            $table->string('pic_nip', 30)->nullable();
            $table->string('pic_position')->nullable();
            $table->string('pic_phone', 25)->nullable();

            // Berkas & Dokumen Terkait
            $table->string('spt_file_path')->nullable(); // private disk ('local')
            $table->string('logo_file_path')->nullable(); // public disk ('public')
            $table->text('business_process_name')->nullable(); // proses_bisnis
            $table->string('business_process_file_path')->nullable(); // private disk ('local')
            $table->text('user_privileges_note')->nullable(); // level_privileges
            $table->text('future_plan')->nullable(); // rencana_aplikasi
            $table->string('asset_registration_number')->nullable(); // nomor_registrasi_aset
            $table->text('notes')->nullable(); // keterangan

            // Approval & Workflow State
            $table->enum('verification_status', ['draft', 'submitted', 'verified', 'rejected'])->default('draft');
            $table->text('verification_notes')->nullable(); // catatan
            $table->boolean('is_active')->default(true);

            // Audit Trail
            $table->foreignId('created_by')->nullable()->constrained('users')->nullOnDelete();
            $table->foreignId('updated_by')->nullable()->constrained('users')->nullOnDelete();
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
        Schema::dropIfExists('applications');
    }
};

