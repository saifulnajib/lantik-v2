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
        Schema::table('users', function (Blueprint $table) {
            if (!Schema::hasColumn('users', 'opd_id')) {
                $table->foreignId('opd_id')->nullable()->after('role')->constrained('opd');
            }
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('users', function (Blueprint $table) {
            if (Schema::hasColumn('users', 'opd_id')) {
                $table->dropConstrainedForeignId('opd_id');
            }

            if (Schema::hasColumn('users', 'kode_opd')) {
                $table->dropColumn('kode_opd');
            }
        });
    }
};

