<?php

namespace App\Filament\Resources\ElectronicSystemCategorizations\Schemas;

use App\Models\Application;
use App\Models\ElectronicSystemCategorization;
use Filament\Forms\Components\DateTimePicker;
use Filament\Forms\Components\Radio;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Components\Section;
use Filament\Schemas\Components\Utilities\Get;
use Filament\Schemas\Components\Utilities\Set;
use Filament\Schemas\Schema;

class CategorizationForm
{
    public static function configure(Schema $schema): Schema
    {
        $scoreOptions = [
            1 => '1 - Sangat Rendah',
            2 => '2 - Rendah',
            3 => '3 - Sedang',
            4 => '4 - Tinggi',
            5 => '5 - Sangat Tinggi / Kritikal',
        ];

        return $schema
            ->columns(1)
            ->components([
                Section::make('Instrumen 10 Indikator Penilaian Risiko KSE (Skala 1 – 5)')
                    ->description('Pilih bobot risiko untuk setiap indikator. Total skor dan kategori KSE akan dihitung secara otomatis.')
                    ->columns(2)
                    ->schema([
                        self::makeScoreField('score_investment_value', '1. Nilai Investasi Sistem Elektronik', $scoreOptions),
                        self::makeScoreField('score_operational_budget', '2. Total Anggaran Operasional Tahunan', $scoreOptions),
                        self::makeScoreField('score_legal_compliance', '3. Kewajiban Kepatuhan Terhadap Peraturan / Regulasi', $scoreOptions),
                        self::makeScoreField('score_cryptography_usage', '4. Penggunaan Teknik Kriptografi Khusus (BSSN)', $scoreOptions),
                        self::makeScoreField('score_user_base', '5. Jumlah Pengguna Sistem Elektronik', $scoreOptions),
                        self::makeScoreField('score_personal_data_processing', '6. Data Pribadi yang Dikelola Sistem Elektronik', $scoreOptions),
                        self::makeScoreField('score_data_confidentiality', '7. Tingkat Klasifikasi / Kerahasiaan Data', $scoreOptions),
                        self::makeScoreField('score_business_process_criticality', '8. Tingkat Kekritisan Proses Bisnis yang Didukung', $scoreOptions),
                        self::makeScoreField('score_failure_impact', '9. Dampak Kegagalan Sistem Elektronik', $scoreOptions),
                        self::makeScoreField('score_potential_loss', '10. Potensi Kerugian atau Dampak Negatif dari Insiden', $scoreOptions),
                    ]),

                Section::make('Hasil Kalkulasi Skor & Kategori KSE')
                    ->columns(3)
                    ->schema([
                        TextInput::make('total_score')
                            ->label('Total Skor Indeks KSE')
                            ->numeric()
                            ->default(10)
                            ->readOnly()
                            ->dehydrated()
                            ->required(),

                        TextInput::make('category')
                            ->label('Predikat Kategori SE')
                            ->default('RENDAH')
                            ->readOnly()
                            ->dehydrated()
                            ->required(),

                        Toggle::make('is_active')
                            ->label('Penilaian Aktif')
                            ->default(true),

                        Textarea::make('notes')
                            ->label('Keterangan / Uraian Risiko Sistem Elektronik')
                            ->rows(3)
                            ->columnSpanFull(),
                    ]),

                Section::make('Verifikasi Diskominfo')
                    ->columns(2)
                    ->schema([
                        Select::make('verification_status')
                            ->label('Status Verifikasi')
                            ->options([
                                'draft' => 'Draft',
                                'submitted' => 'Menunggu Verifikasi (Submitted)',
                                'verified' => 'Terverifikasi (Verified)',
                                'rejected' => 'Ditolak / Perlu Perbaikan (Rejected)',
                            ])
                            ->default('draft')
                            ->disabled(fn() => self::isOpdUser())
                            ->dehydrated()
                            ->required(),

                        DateTimePicker::make('verified_at')
                            ->label('Waktu Verifikasi')
                            ->disabled(fn() => self::isOpdUser())
                            ->dehydrated(),

                        Textarea::make('verification_notes')
                            ->label('Catatan Verifikator')
                            ->disabled(fn() => self::isOpdUser())
                            ->dehydrated()
                            ->rows(2)
                            ->columnSpanFull(),
                    ]),
            ]);
    }

    private static function makeScoreField(string $name, string $label, array $options): Radio
    {
        return Radio::make($name)
            ->label($label)
            ->options($options)
            ->default(1)
            // ->inline()
            ->inlineLabel(false)
            ->live()
            ->afterStateUpdated(fn(Get $get, Set $set) => self::recalculateScores($get, $set))
            ->required();
    }

    private static function recalculateScores(Get $get, Set $set): void
    {
        $fields = [
            'score_investment_value',
            'score_operational_budget',
            'score_legal_compliance',
            'score_cryptography_usage',
            'score_user_base',
            'score_personal_data_processing',
            'score_data_confidentiality',
            'score_business_process_criticality',
            'score_failure_impact',
            'score_potential_loss',
        ];

        $total = 0;
        foreach ($fields as $field) {
            $total += (int) ($get($field) ?? 1);
        }

        $set('total_score', $total);
        $set('category', ElectronicSystemCategorization::determineCategory($total));
    }

    private static function isOpdUser(): bool
    {
        $user = auth()->user();
        if (!$user) {
            return false;
        }

        if ($user->hasAnyRole(['super_admin', 'admin', 'admin_kominfo']) || in_array($user->role, ['super_admin', 'admin'], true)) {
            return false;
        }

        return true;
    }
}

