<?php

namespace App\Filament\Resources\Applications\Schemas;

use App\Models\Application;
use App\Models\ElectronicSystemCategorization;
use Filament\Forms\Components\CheckboxList;
use Filament\Forms\Components\DateTimePicker;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Placeholder;
use Filament\Forms\Components\Radio;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Components\Section;
use Filament\Schemas\Components\Tabs;
use Filament\Schemas\Components\Tabs\Tab;
use Filament\Schemas\Components\Utilities\Get;
use Filament\Schemas\Components\Utilities\Set;
use Filament\Schemas\Schema;
use Illuminate\Support\HtmlString;
use Filament\Schemas\Components\Grid;

class ApplicationForm
{
    public static function configure(Schema $schema): Schema
    {
        $kseScoreOptions = [
            1 => '1 - Sangat Rendah',
            2 => '2 - Rendah',
            3 => '3 - Sedang',
            4 => '4 - Tinggi',
            5 => '5 - Sangat Tinggi / Kritikal',
        ];

        return $schema
            ->components([
                Tabs::make('ApplicationTabs')
                    ->tabs([
                        Tab::make('Identitas & Kepemilikan')
                            ->columns(4)
                            ->schema([
                                Select::make('opd_id')
                                    ->label('OPD Pengampu')
                                    ->relationship('opd', 'nama')
                                    ->columnSpan(3)
                                    ->searchable()
                                    ->preload()
                                    ->default(fn() => auth()->user()?->opd_id)
                                    ->disabled(fn() => self::isOpdUser() && filled(auth()->user()?->opd_id))
                                    ->dehydrated()
                                    ->required(),

                                Select::make('is_active')
                                    ->label('Aplikasi Beroperasi Aktif')
                                    ->options([
                                        true => 'Ya',
                                        false => 'Tidak',
                                    ])
                                    ->required()
                                    ->default(true),

                                TextInput::make('name')
                                    ->label('Nama Aplikasi')
                                    ->required()
                                    ->columnSpan(3)
                                    ->maxLength(255),

                                TextInput::make('launch_year')
                                    ->label('Tahun Pembuatan / Rilis')
                                    ->numeric()
                                    ->minValue(1990)
                                    ->maxValue((int) date('Y') + 1)
                                    ->default((int) date('Y'))
                                    ->required(),

                                Textarea::make('description')
                                    ->label('Deskripsi Singkat Aplikasi')
                                    ->rows(3)
                                    ->columnSpan(2)
                                    ->columnSpanFull()
                                    ->required(),

                                Textarea::make('legal_basis')
                                    ->label('Regulasi / Dasar Hukum')
                                    ->rows(3)
                                    ->columnSpan(2)
                                    ->columnSpanFull(),

                                Select::make('source_type')
                                    ->label('Asal Aplikasi')
                                    ->options([
                                        'internal_dev' => 'Pembangunan Mandiri / Internal Pemko',
                                        'third_party' => 'Pihak Ketiga / Instansi Pusat',
                                    ])
                                    ->columnSpan(2)
                                    ->default('internal_dev')
                                    ->required(),

                                TextInput::make('asset_registration_number')
                                    ->label('Nomor Registrasi Aset')
                                    ->columnSpan(2)
                                    ->maxLength(100),

                                TextInput::make('vendor_name')
                                    ->label('Penyedia Aplikasi')
                                    ->placeholder('Contoh: Diskominfo / Nama Perusahaan')
                                    ->columnSpan(2)
                                    ->maxLength(255)
                                    ->required(),

                                TextInput::make('developer_name')
                                    ->label('Pengembang Aplikasi')
                                    ->placeholder('Nama Tim / Perusahaan Pengembang')
                                    ->columnSpan(2)
                                    ->maxLength(255)
                                    ->required(),
                            ]),

                        Tab::make('Infrastruktur & Integrasi')
                            ->columns(2)
                            ->schema([
                                CheckboxList::make('platforms')
                                    ->label('Basis Aplikasi (Platform)')
                                    ->options([
                                        'web' => 'Website (Web Application)',
                                        'android' => 'Android',
                                        'ios' => 'iOS',
                                        'desktop' => 'Desktop',
                                    ])
                                    ->columns(2)
                                    ->required()
                                    ->columnSpanFull(),

                                TextInput::make('programming_languages')
                                    ->label('Bahasa Pemrograman / Framework')
                                    ->placeholder('Contoh: PHP (Laravel), JavaScript (Vue), Golang')
                                    ->required()
                                    ->maxLength(255),

                                TextInput::make('domain_url')
                                    ->label('Alamat Domain / URL Aplikasi')
                                    ->placeholder('Contoh: https://lantik.tanjungpinangkota.go.id')
                                    ->maxLength(255),

                                Select::make('database_system_id')
                                    ->label('Sistem Database (DBMS)')
                                    ->relationship('databaseSystem', 'name')
                                    ->searchable()
                                    ->preload()
                                    ->live()
                                    ->required(),

                                TextInput::make('other_database')
                                    ->label('DBMS Lainnya (Jika pilih Lainnya)')
                                    ->maxLength(255)
                                    ->visible(fn(Get $get) => (int) $get('database_system_id') === 9),

                                Select::make('hosting_location_id')
                                    ->label('Lokasi Penempatan Server / Hosting')
                                    ->relationship('hostingLocation', 'name')
                                    ->searchable()
                                    ->required()
                                    ->preload(),
                                Select::make('integration_status')
                                    ->label('Ketersediaan Integrasi Sistem')
                                    ->options([
                                        'ada' => 'Ada',
                                        'tidak_ada' => 'Tidak Ada',
                                        'tidak_tahu' => 'Tidak Tahu',
                                    ])
                                    ->default('tidak_ada')
                                    ->live()
                                    ->required(),

                                TextInput::make('integration_method')
                                    ->label('Metode Integrasi')
                                    ->placeholder('Contoh: REST API, Webhook, Integrasi Database')
                                    ->maxLength(255)
                                    ->visible(fn(Get $get) => $get('integration_status') === 'ada'),

                                Textarea::make('integrated_applications')
                                    ->label('Aplikasi yang Terintegrasi')
                                    ->rows(2)
                                    ->visible(fn(Get $get) => $get('integration_status') === 'ada'),

                                Textarea::make('integrated_opds')
                                    ->label('OPD / Instansi yang Terintegrasi')
                                    ->rows(2)
                                    ->visible(fn(Get $get) => $get('integration_status') === 'ada'),
                            ]),

                        Tab::make('Arsitektur Proses Bisnis & Layanan')
                            ->columns(2)
                            ->schema([
                                Textarea::make('business_process_name')
                                    ->label('Nama / Uraian Proses Bisnis')
                                    ->rows(3)
                                    ->placeholder('Masukkan nama Proses Bisnis OPD yang menjadi acuan untuk digitalisasi pada aplikasi ini')
                                    ->required(),
                                Grid::make([
                                    'default' => 1,
                                ])->schema([
                                            FileUpload::make('business_process_file_path')
                                                ->label('Dokumen Proses Bisnis')
                                                ->disk('local')
                                                ->visibility('private')
                                                ->directory('applications/probis')
                                                ->acceptedFileTypes(['application/pdf', 'image/jpeg', 'image/png'])
                                                ->maxSize(5120)
                                                ->openable(false)
                                                ->required(),

                                            Placeholder::make('business_process_files_links')
                                                ->label('Lihat File Proses Bisnis')
                                                ->visible(fn(?Application $record) => $record && filled($record->business_process_file_path))
                                                ->content(function (?Application $record): HtmlString {
                                                    if (!$record) {
                                                        return new HtmlString('-');
                                                    }
                                                    $links = [];

                                                    if (filled($record->business_process_file_path)) {
                                                        $url = route('applications.files.show', ['application' => $record->id, 'type' => 'business-process']);
                                                        $links[] = '<a href="' . e($url) . '" target="_blank" class="text-primary-600 underline font-medium">[' . e(basename($record->business_process_file_path)) . ']</a>';
                                                    }
                                                    return new HtmlString(implode(' &nbsp;|&nbsp; ', $links));
                                                })
                                                ->columnSpanFull(),
                                        ]),

                                Textarea::make('service_name')
                                    ->label('Nama layanan')
                                    ->rows(3)
                                    ->placeholder('Nama layanan merujuk pada nama layanan yang diberikan kepada pengguna atau masyarakat yang didigitalisasikan pada aplikasi ini')
                                    ->required(),

                                Select::make('service_type_id')
                                    ->label('Jenis Layanan SPBE')
                                    ->relationship('serviceType', 'name')
                                    ->searchable()
                                    ->preload()
                                    ->required(),

                                Select::make('user_count_range')
                                    ->label('Estimasi Jumlah Pengguna')
                                    ->options([
                                        'di bawah dan sama dengan 25 pengguna' => '≤ 25 pengguna',
                                        'di atas 25 sampai dengan 100 pengguna' => '26 – 100 pengguna',
                                        'di atas 100 pengguna' => '> 100 pengguna',
                                    ])
                                    ->required()
                                    ->searchable(),

                                Select::make('usage_frequency_id')
                                    ->label('Frekuensi Penggunaan')
                                    ->relationship('usageFrequency', 'name')
                                    ->searchable()
                                    ->preload()
                                    ->live()
                                    ->required(),

                                TextInput::make('other_usage_frequency')
                                    ->label('Frekuensi Penggunaan Lainnya')
                                    ->maxLength(255)
                                    ->visible(fn(Get $get) => (int) $get('usage_frequency_id') === 8),
                            ]),
                        Tab::make('Kategori SE (KSE)')
                            ->schema([
                                Section::make('Instrumen 10 Indikator Penilaian Risiko KSE (Skala 1 – 5)')
                                    ->description('Pilih bobot risiko untuk setiap indikator. Total skor dan predikat kategori KSE akan dihitung secara otomatis.')
                                    ->columns(2)
                                    ->schema([
                                        TextInput::make('kse_data.assessment_year')
                                            ->label('Tahun Penilaian KSE')
                                            ->numeric()
                                            ->default((int) date('Y'))
                                            ->minValue(2015)
                                            ->maxValue((int) date('Y') + 1)
                                            ->required()
                                            ->columnSpanFull(),

                                        //self::makeKseScoreField('kse_data.score_investment_value', '1. Nilai Investasi Sistem Elektronik', $kseScoreOptions),
                                        Radio::make('kse_data.score_investment_value')
                                            ->label('1. Nilai Investasi Sistem Elektronik')
                                            ->options($kseScoreOptions)
                                            ->required(),
                                        Radio::make('kse_data.score_operational_budget')
                                            ->label('2. Total Anggaran Operasional Tahunan')
                                            ->options($kseScoreOptions)
                                            ->required(),
                                        Radio::make('kse_data.score_legal_compliance')
                                            ->label('3. Kewajiban Kepatuhan Terhadap Peraturan / Regulasi')
                                            ->options($kseScoreOptions)
                                            ->required(),
                                        Radio::make('kse_data.score_cryptography_usage')
                                            ->label('4. Penggunaan Teknik Kriptografi Khusus (BSSN)')
                                            ->options($kseScoreOptions)
                                            ->required(),
                                        Radio::make('kse_data.score_user_base')
                                            ->label('5. Jumlah Pengguna Sistem Elektronik')
                                            ->options($kseScoreOptions)
                                            ->required(),
                                        Radio::make('kse_data.score_personal_data_processing')
                                            ->label('6. Data Pribadi yang Dikelola Sistem Elektronik')
                                            ->options($kseScoreOptions)
                                            ->required(),
                                        Radio::make('kse_data.score_data_confidentiality')
                                            ->label('7. Tingkat Klasifikasi / Kerahasiaan Data')
                                            ->options($kseScoreOptions)
                                            ->required(),
                                        Radio::make('kse_data.score_business_process_criticality')
                                            ->label("8. Tingkat Kekritisan Proses Bisnis yang Didukung")
                                            ->options($kseScoreOptions)
                                            ->required(),
                                        Radio::make('kse_data.score_failure_impact')
                                            ->label("9. Dampak Kegagalan Sistem Elektronik")
                                            ->options($kseScoreOptions)
                                            ->required(),
                                        Radio::make('kse_data.score_potential_loss')
                                            ->label('10. Potensi Kerugian atau Dampak Negatif dari Insiden')
                                            ->options($kseScoreOptions)
                                            ->required(),
                                    ]),

                                Section::make('Hasil Kalkulasi Skor & Predikat KSE')
                                    ->columns(2)
                                    ->schema([
                                        TextInput::make('kse_data.total_score')
                                            ->label('Total Skor Indeks KSE')
                                            ->numeric()
                                            ->default(10)
                                            ->readOnly()
                                            ->dehydrated(),

                                        TextInput::make('kse_data.category')
                                            ->label('Predikat Kategori SE')
                                            ->default('RENDAH')
                                            ->readOnly()
                                            ->dehydrated(),

                                        Textarea::make('kse_data.notes')
                                            ->label('Keterangan / Uraian Risiko Sistem Elektronik')
                                            ->rows(3)
                                            ->columnSpanFull(),
                                    ]),
                            ]),

                        Tab::make('PIC & Dokumen Lampiran')
                            ->columns(3)
                            ->schema([
                                TextInput::make('pic_name')
                                    ->label('Nama Penanggung Jawab (PIC)')
                                    ->columnSpan(2)
                                    ->required()
                                    ->maxLength(255),

                                TextInput::make('pic_nip')
                                    ->label('NIP PIC')
                                    ->required()
                                    ->maxLength(30),

                                TextInput::make('pic_position')
                                    ->label('Jabatan PIC')
                                    ->columnSpan(2)
                                    ->required()
                                    ->maxLength(255),

                                TextInput::make('pic_phone')
                                    ->label('Nomor Telepon / WhatsApp PIC')
                                    ->required()
                                    ->maxLength(25),

                                FileUpload::make('logo_file_path')
                                    ->label('Logo Aplikasi (Jika ada)')
                                    ->disk('local')
                                    ->visibility('private')
                                    ->directory('applications/logos')
                                    ->image()
                                    ->maxSize(2048),

                                FileUpload::make('spt_file_path')
                                    ->label('Dokumen SPT / SK Pengelola')
                                    ->disk('local')
                                    ->visibility('private')
                                    ->directory('applications/spt')
                                    ->acceptedFileTypes(['application/pdf', 'image/jpeg', 'image/png'])
                                    ->maxSize(5120)
                                    ->openable(false)
                                    ->downloadable(false)
                                    ->required(),

                                Placeholder::make('private_files_links')
                                    ->label('Akses Dokumen Tersimpan')
                                    ->visible(fn(?Application $record) => $record && filled($record->spt_file_path))
                                    ->content(function (?Application $record): HtmlString {
                                        if (!$record) {
                                            return new HtmlString('-');
                                        }
                                        $links = [];
                                        if (filled($record->spt_file_path)) {
                                            $url = route('applications.files.show', ['application' => $record->id, 'type' => 'spt']);
                                            $links[] = '<a href="' . e($url) . '" target="_blank" class="text-primary-600 underline font-medium">Lihat / Unduh Dokumen SPT (' . e(basename($record->spt_file_path)) . ')</a>';
                                        }
                                        return new HtmlString(implode(' &nbsp;|&nbsp; ', $links));
                                    }),

                                Textarea::make('user_privileges_note')
                                    ->label('Tulis Level Hak Akses (Privileges) yang ada pada aplikasi')
                                    ->columnSpanFull()
                                    ->rows(3)
                                    ->helperText('Contoh: Admin : bertugas mengelola sistem, User: bertugas menginput data, Super Admin'),

                                Textarea::make('future_plan')
                                    ->label('Rencana Pengembangan Aplikasi (Jika ada)')
                                    ->columnSpanFull()
                                    ->rows(3),

                                Textarea::make('notes')
                                    ->label('Keterangan Tambahan')
                                    ->rows(2)
                                    ->columnSpanFull(),
                            ]),

                        Tab::make('Verifikasi Diskominfo')
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
                                    ->label('Catatan Verifikator Diskominfo')
                                    ->disabled(fn() => self::isOpdUser())
                                    ->dehydrated()
                                    ->rows(3)
                                    ->columnSpanFull(),
                            ]),
                    ])
                    ->columnSpanFull(),
            ]);
    }

    private static function makeKseScoreField(string $name, string $label, array $options): Radio
    {
        return Radio::make($name)
            ->label($label)
            ->options($options)
            ->default(1)
            //->inline()
            //->inlineLabel(false)
            ->live()
            ->afterStateUpdated(fn(Get $get, Set $set) => self::recalculateKseScores($get, $set))
            ->required();
    }

    private static function recalculateKseScores(Get $get, Set $set): void
    {
        $fields = [
            'kse_data.score_investment_value',
            'kse_data.score_operational_budget',
            'kse_data.score_legal_compliance',
            'kse_data.score_cryptography_usage',
            'kse_data.score_user_base',
            'kse_data.score_personal_data_processing',
            'kse_data.score_data_confidentiality',
            'kse_data.score_business_process_criticality',
            'kse_data.score_failure_impact',
            'kse_data.score_potential_loss',
        ];

        $total = 0;
        foreach ($fields as $field) {
            $total += (int) ($get($field) ?? 1);
        }

        $set('kse_data.total_score', $total);
        $set('kse_data.category', ElectronicSystemCategorization::determineCategory($total));
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

