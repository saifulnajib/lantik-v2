<?php

namespace Database\Seeders;

use App\Models\Application;
use App\Models\ApplicationServiceType;
use App\Models\DatabaseManagementSystem;
use App\Models\ElectronicSystemCategorization;
use App\Models\HostingLocation;
use App\Models\Opd;
use App\Models\UsageFrequency;
use Illuminate\Database\Seeder;

class LegacyAppSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $sqlPath = base_path('docs/kominfo_pendataanaplikasi.sql');

        if (!file_exists($sqlPath)) {
            $this->command?->warn("File SQL legacy tidak ditemukan di: {$sqlPath}");
            return;
        }

        $sqlContent = file_get_contents($sqlPath);

        // 1. Seed Master Data: DBMS
        $dbmsList = [
            1 => ['name' => 'MySQL/MariaDB', 'is_active' => true],
            2 => ['name' => 'SQL Server', 'is_active' => true],
            3 => ['name' => 'PostgreSQL', 'is_active' => true],
            4 => ['name' => 'SQLite', 'is_active' => true],
            5 => ['name' => 'MongoDB', 'is_active' => true],
            6 => ['name' => 'Oracle DB', 'is_active' => true],
            7 => ['name' => 'Redis', 'is_active' => true],
            8 => ['name' => 'Microsoft Access', 'is_active' => true],
            9 => ['name' => 'Lainnya', 'is_active' => true],
            10 => ['name' => 'Tidak Diketahui', 'is_active' => true],
        ];
        foreach ($dbmsList as $id => $data) {
            DatabaseManagementSystem::updateOrCreate(['id' => $id], $data);
        }

        // 2. Seed Master Data: Usage Frequency
        $frequencies = [
            1 => ['name' => 'Harian', 'is_active' => true],
            2 => ['name' => 'Mingguan', 'is_active' => true],
            3 => ['name' => 'Bulanan', 'is_active' => true],
            4 => ['name' => 'Triwulan', 'is_active' => true],
            5 => ['name' => '4 Bulanan', 'is_active' => true],
            6 => ['name' => 'Semester', 'is_active' => true],
            7 => ['name' => 'Tahunan', 'is_active' => true],
            8 => ['name' => 'Lainnya', 'is_active' => true],
        ];
        foreach ($frequencies as $id => $data) {
            UsageFrequency::updateOrCreate(['id' => $id], $data);
        }

        // 3. Seed Master Data: Service Type
        $serviceTypes = [
            1 => ['name' => 'Pelayanan Publik', 'is_active' => true],
            2 => ['name' => 'Pelayanan Internal Unit Kerja Terkait', 'is_active' => true],
            3 => ['name' => 'Pelayanan Internal Pemerintah Kota Tanjungpinang', 'is_active' => true],
            4 => ['name' => 'Pelayanan Antar OPD / Unit Kerja', 'is_active' => true],
        ];
        foreach ($serviceTypes as $id => $data) {
            ApplicationServiceType::updateOrCreate(['id' => $id], $data);
        }

        // 4. Seed Master Data: Hosting Location
        $hostingLocations = [
            1 => ['name' => 'Server Sendiri', 'is_active' => true],
            2 => ['name' => 'Server Pihak Ke-3', 'is_active' => true],
            3 => ['name' => 'Data Center Diskominfo Kota Tanjungpinang', 'is_active' => true],
            4 => ['name' => 'Server Instansi Penyedia Aplikasi / Sistem Informasi', 'is_active' => true],
        ];
        foreach ($hostingLocations as $id => $data) {
            HostingLocation::updateOrCreate(['id' => $id], $data);
        }

        // 5. Sync & Map Master OPD
        $masterOpdRows = $this->parseTableInserts($sqlContent, 'master_opd');
        foreach ($masterOpdRows as $row) {
            $kode = (string) ($row[0] ?? '');
            $nama = (string) ($row[1] ?? '');
            if ($kode !== '' && !Opd::where('kode', $kode)->exists()) {
                Opd::create([
                    'kode' => $kode,
                    'nama' => $nama,
                ]);
            }
        }

        $opdMap = Opd::pluck('id', 'kode')->toArray();

        // 6. Parse & Import `data_aplikasi`
        $appRows = $this->parseTableInserts($sqlContent, 'data_aplikasi');
        $importedApps = 0;

        foreach ($appRows as $row) {
            if (count($row) < 44) {
                continue;
            }

            $idAplikasi = (int) $row[0];
            $kodeOpd = (string) $row[1];
            $opdId = $opdMap[$kodeOpd] ?? $opdMap['125'] ?? Opd::first()?->id;

            if (!$opdId) {
                continue;
            }

            $platforms = $this->parsePlatforms((string) $row[8]);
            $integrationStatus = match (strtolower(trim((string) $row[17]))) {
                'ada' => 'ada',
                'tidak tahu' => 'tidak_tahu',
                default => 'tidak_ada',
            };

            $statusInt = (int) $row[35];
            $verificationStatus = $statusInt === 1 ? 'verified' : 'submitted';

            $sptPath = $this->normalizeFilePath($row[27], 'applications/spt');
            $logoPath = $this->normalizeFilePath($row[28], 'applications/logos');
            $probisPath = $this->normalizeFilePath($row[29], 'applications/probis');

            $createdAt = $this->normalizeTimestamp($row[39]);
            $updatedAt = $this->normalizeTimestamp($row[41]) ?? $createdAt;
            $verifiedAt = $this->normalizeTimestamp($row[43]);

            $dbmsId = (int) $row[10];
            $hostingId = (int) $row[12];
            $serviceId = (int) $row[6];
            $freqId = (int) $row[14];

            Application::updateOrCreate(
                ['id' => $idAplikasi],
                [
                    'opd_id' => $opdId,
                    'source_type' => ((string) $row[2] === '2') ? 'third_party' : 'internal_dev',
                    'name' => trim((string) $row[3]),
                    'vendor_name' => $this->nullableString($row[4]),
                    'description' => $this->nullableString($row[5]),
                    'service_type_id' => isset($serviceTypes[$serviceId]) ? $serviceId : null,
                    'launch_year' => is_numeric($row[7]) ? (int) $row[7] : null,
                    'platforms' => $platforms,
                    'programming_languages' => $this->nullableString($row[9]),
                    'database_system_id' => isset($dbmsList[$dbmsId]) ? $dbmsId : null,
                    'other_database' => $this->nullableString($row[11]),
                    'hosting_location_id' => isset($hostingLocations[$hostingId]) ? $hostingId : null,
                    'user_count_range' => $this->nullableString($row[13]),
                    'usage_frequency_id' => isset($frequencies[$freqId]) ? $freqId : null,
                    'other_usage_frequency' => $this->nullableString($row[15]),
                    'domain_url' => $this->nullableString($row[16]),
                    'integration_status' => $integrationStatus,
                    'integration_method' => $this->nullableString($row[18]),
                    'integrated_applications' => $this->nullableString($row[19]),
                    'integrated_opds' => $this->nullableString($row[20]),
                    'developer_name' => $this->nullableString($row[21]),
                    'legal_basis' => $this->nullableString($row[22]),
                    'pic_name' => trim((string) ($row[23] ?: '-')),
                    'pic_nip' => $this->nullableString($row[24]),
                    'pic_position' => $this->nullableString($row[25]),
                    'pic_phone' => $this->nullableString($row[26]),
                    'spt_file_path' => $sptPath,
                    'logo_file_path' => $logoPath,
                    'business_process_file_path' => $probisPath,
                    'user_privileges_note' => $this->nullableString($row[30]),
                    'future_plan' => $this->nullableString($row[31]),
                    'business_process_name' => $this->nullableString($row[32]),
                    'asset_registration_number' => ((string) $row[33] !== '0' && filled($row[33])) ? (string) $row[33] : null,
                    'notes' => $this->nullableString($row[34]),
                    'verification_status' => $verificationStatus,
                    'is_active' => (bool) ((int) $row[36]),
                    'verification_notes' => $this->nullableString($row[37]),
                    'verified_at' => $verifiedAt,
                    'created_at' => $createdAt ?? now(),
                    'updated_at' => $updatedAt ?? now(),
                ]
            );

            $importedApps++;
        }

        // 7. Parse & Import `kategorisasi_se`
        $kseRows = $this->parseTableInserts($sqlContent, 'kategorisasi_se');
        $importedKse = 0;
        $existingAppIds = Application::pluck('id')->flip()->toArray();

        foreach ($kseRows as $row) {
            if (count($row) < 27) {
                continue;
            }

            $kseId = (int) $row[0];
            $appId = (int) $row[1];
            $kodeOpd = (string) $row[2];
            $opdId = $opdMap[$kodeOpd] ?? $opdMap['125'] ?? Opd::first()?->id;

            // Skip if parent application does not exist in `data_aplikasi`
            if (!isset($existingAppIds[$appId]) || !$opdId) {
                continue;
            }

            $statusInt = (int) $row[18];
            $verificationStatus = $statusInt === 1 ? 'verified' : 'submitted';
            $createdAt = $this->normalizeTimestamp($row[22]);
            $updatedAt = $this->normalizeTimestamp($row[24]) ?? $createdAt;
            $verifiedAt = $this->normalizeTimestamp($row[26]);

            ElectronicSystemCategorization::updateOrCreate(
                ['id' => $kseId],
                [
                    'application_id' => $appId,
                    'opd_id' => $opdId,
                    'assessment_year' => is_numeric($row[4]) ? (int) $row[4] : (int) date('Y'),
                    'score_investment_value' => max(1, (int) $row[5]),
                    'score_operational_budget' => max(1, (int) $row[6]),
                    'score_legal_compliance' => max(1, (int) $row[7]),
                    'score_cryptography_usage' => max(1, (int) $row[8]),
                    'score_user_base' => max(1, (int) $row[9]),
                    'score_personal_data_processing' => max(1, (int) $row[10]),
                    'score_data_confidentiality' => max(1, (int) $row[11]),
                    'score_business_process_criticality' => max(1, (int) $row[12]),
                    'score_failure_impact' => max(1, (int) $row[13]),
                    'score_potential_loss' => max(1, (int) $row[14]),
                    'notes' => $this->nullableString($row[17]),
                    'verification_status' => $verificationStatus,
                    'is_active' => (bool) ((int) $row[19]),
                    'verification_notes' => $this->nullableString($row[20]),
                    'verified_at' => $verifiedAt,
                    'created_at' => $createdAt ?? now(),
                    'updated_at' => $updatedAt ?? now(),
                ]
            );

            $importedKse++;
        }

        $this->command?->info("LegacyAppSeeder selesai: {$importedApps} aplikasi dan {$importedKse} data KSE berhasil diimpor.");
    }

    private function parsePlatforms(string $raw): array
    {
        $parts = array_filter(array_map('trim', explode(',', strtolower($raw))));
        $mapped = [];

        foreach ($parts as $part) {
            if (str_contains($part, 'web')) {
                $mapped[] = 'web';
            } elseif (str_contains($part, 'android')) {
                $mapped[] = 'android';
            } elseif (str_contains($part, 'ios')) {
                $mapped[] = 'ios';
            } elseif (str_contains($part, 'desktop')) {
                $mapped[] = 'desktop';
            }
        }

        return array_values(array_unique($mapped));
    }

    private function normalizeFilePath(?string $raw, string $targetPrefix): ?string
    {
        if ($raw === null) {
            return null;
        }

        $trimmed = trim($raw);
        if ($trimmed === '' || $trimmed === '-') {
            return null;
        }

        $filename = basename($trimmed);
        return "{$targetPrefix}/{$filename}";
    }

    private function nullableString(?string $value): ?string
    {
        if ($value === null) {
            return null;
        }

        $trimmed = trim($value);
        return ($trimmed === '' || $trimmed === '-') ? null : $trimmed;
    }

    private function normalizeTimestamp(?string $value): ?string
    {
        if ($value === null) {
            return null;
        }

        $trimmed = trim($value);
        if ($trimmed === '' || str_starts_with($trimmed, '0000-00-00')) {
            return null;
        }

        return $trimmed;
    }

    /**
     * Parse SQL INSERT statements for a specific table name into an array of row arrays.
     */
    private function parseTableInserts(string $sql, string $tableName): array
    {
        $pattern = '/INSERT\s+INTO\s+`' . preg_quote($tableName, '/') . '`\s*\([^)]+\)\s*VALUES\s*(.+?);\s*$/ims';
        if (!preg_match_all($pattern, $sql, $matches)) {
            return [];
        }

        $allRows = [];
        foreach ($matches[1] as $valuesBlock) {
            $rows = $this->parseValuesBlock($valuesBlock);
            foreach ($rows as $r) {
                $allRows[] = $r;
            }
        }

        return $allRows;
    }

    private function parseValuesBlock(string $block): array
    {
        $rows = [];
        $len = strlen($block);
        $i = 0;

        while ($i < $len) {
            // Find opening '('
            while ($i < $len && $block[$i] !== '(') {
                $i++;
            }
            if ($i >= $len) {
                break;
            }
            $i++; // skip '('

            $row = [];
            while ($i < $len) {
                // Skip whitespace
                while ($i < $len && ctype_space($block[$i])) {
                    $i++;
                }

                if ($i >= $len) {
                    break;
                }

                if ($block[$i] === "'") {
                    // Quoted string
                    $i++; // skip opening quote
                    $val = '';
                    while ($i < $len) {
                        if ($block[$i] === '\\' && $i + 1 < $len) {
                            $next = $block[$i + 1];
                            $val .= match ($next) {
                                'r' => "\r",
                                'n' => "\n",
                                't' => "\t",
                                '0' => "\0",
                                default => $next,
                            };
                            $i += 2;
                        } elseif ($block[$i] === "'" && $i + 1 < $len && $block[$i + 1] === "'") {
                            $val .= "'";
                            $i += 2;
                        } elseif ($block[$i] === "'") {
                            $i++; // skip closing quote
                            break;
                        } else {
                            $val .= $block[$i];
                            $i++;
                        }
                    }
                    $row[] = $val;
                } else {
                    // Unquoted literal (number or NULL)
                    $start = $i;
                    while ($i < $len && $block[$i] !== ',' && $block[$i] !== ')') {
                        $i++;
                    }
                    $rawToken = trim(substr($block, $start, $i - $start));
                    $row[] = strtoupper($rawToken) === 'NULL' ? null : $rawToken;
                }

                // Skip whitespace to ',' or ')'
                while ($i < $len && ctype_space($block[$i])) {
                    $i++;
                }

                if ($i < $len && $block[$i] === ',') {
                    $i++; // next field
                } elseif ($i < $len && $block[$i] === ')') {
                    $i++; // end of tuple
                    break;
                }
            }

            $rows[] = $row;
        }

        return $rows;
    }
}

