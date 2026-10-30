<?php

namespace App\Filament\Resources\Applications\Schemas;

use App\Models\Application;
use Filament\Infolists\Components\IconEntry;
use Filament\Infolists\Components\TextEntry;
use Filament\Schemas\Components\Section;
use Filament\Schemas\Schema;

class ApplicationInfolist
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->columns(1)
            ->components([
                Section::make('Identitas Aplikasi')
                    ->columns(3)
                    ->schema([
                        TextEntry::make('opd.nama')
                            // ->columnSpan(2)
                            ->label('OPD Pengampu'),
                        TextEntry::make('name')
                            ->label('Nama Aplikasi')
                            // ->columnSpan(2)
                            ->weight('bold'),
                        IconEntry::make('is_active')
                            ->label('Status Aktif')
                            ->boolean(),
                        TextEntry::make('launch_year')
                            ->label('Tahun Rilis'),
                        TextEntry::make('description')
                            ->label('Deskripsi Aplikasi')
                            ->placeholder('-'),
                        // ->columnSpanFull(),
                        TextEntry::make('legal_basis')
                            ->label('Dasar Hukum / Regulasi')
                            ->placeholder('-'),
                        // ->columnSpanFull(),
                        TextEntry::make('source_type')
                            ->label('Asal Aplikasi')
                            ->badge()
                            ->formatStateUsing(fn(?string $state) => $state === 'third_party' ? 'Pihak Ketiga / Pusat' : 'Internal Pemko'),
                        TextEntry::make('asset_registration_number')
                            ->label('Nomor Registrasi Aset'),
                        TextEntry::make('vendor_name')
                            ->label('Penyedia Aplikasi')
                            ->placeholder('-'),
                        TextEntry::make('developer_name')
                            ->label('Pengembang')
                            ->placeholder('-'),
                        TextEntry::make('verification_status')
                            ->label('Status Verifikasi')
                            ->badge()
                            ->color(fn(?string $state): string => match ($state) {
                                'verified' => 'success',
                                'submitted' => 'warning',
                                'rejected' => 'danger',
                                default => 'gray',
                            }),
                        TextEntry::make('domain_url')
                            ->label('Domain / URL')
                            ->placeholder('-'),
                    ]),

                Section::make('Infrastruktur dan Integrasi')
                    ->columns(3)
                    ->schema([
                        TextEntry::make('platforms')
                            ->label('Basis Aplikasi')
                            ->badge(),
                        TextEntry::make('programming_languages')
                            ->label('Bahasa Pemrograman')
                            ->placeholder('-'),
                        TextEntry::make('databaseSystem.name')
                            ->label('DBMS')
                            ->placeholder('-'),
                        TextEntry::make('hostingLocation.name')
                            ->label('Lokasi Hosting')
                            ->placeholder('-'),
                        TextEntry::make('integration_status')
                            ->label('Ketersediaan Integrasi')
                            ->badge(),
                        TextEntry::make('integration_method')
                            ->label('Metode Integrasi')
                            ->placeholder('-'),
                    ]),

                Section::make('Proses Bisnis & Layanan')
                    ->columns(4)
                    ->schema([
                        TextEntry::make('business_process_name')
                            ->label('Nama / Uraian Proses Bisnis')
                            ->placeholder('-'),
                        TextEntry::make('business_process_file_path')
                            ->label('Dokumen Proses Bisnis')
                            ->formatStateUsing(fn(?string $state) => filled($state) ? 'Lihat / Unduh Probis (' . basename($state) . ')' : 'Belum diunggah')
                            ->url(fn(Application $record) => filled($record->business_process_file_path) ? route('applications.files.show', ['application' => $record->id, 'type' => 'business-process']) : null, shouldOpenInNewTab: true)
                            ->color(fn(?string $state) => filled($state) ? 'primary' : 'gray'),
                        TextEntry::make('serviceType.name')
                            ->label('Jenis Layanan')
                            ->placeholder('-'),
                        TextEntry::make('services.name')
                            ->label('Layanan')
                            ->placeholder('-'),
                        TextEntry::make('usageFrequency.name')
                            ->label('Frekuensi Penggunaan')
                            ->placeholder('-'),
                        TextEntry::make('user_count_range')
                            ->label('Jumlah Pengguna')
                            ->placeholder('-'),
                    ]),

                Section::make('Kategorisasi Sistem Elektronik (KSE)')
                    ->columns(3)
                    ->schema([
                        TextEntry::make('latestCategorization.assessment_year')
                            ->label('Tahun Penilaian')
                            ->placeholder('Belum Dinilai'),
                        TextEntry::make('latestCategorization.total_score')
                            ->label('Total Skor Indeks KSE')
                            ->badge()
                            ->color('info')
                            ->placeholder('-'),
                        TextEntry::make('latestCategorization.category')
                            ->label('Predikat Kategori SE')
                            ->badge()
                            ->color(fn(?string $state): string => match ($state) {
                                'STRATEGIS' => 'danger',
                                'TINGGI' => 'warning',
                                'RENDAH' => 'success',
                                default => 'gray',
                            })
                            ->placeholder('Belum Dinilai'),
                        TextEntry::make('latestCategorization.notes')
                            ->label('Catatan / Uraian Risiko KSE')
                            ->placeholder('-')
                            ->columnSpanFull(),
                    ]),

                Section::make('Penanggung Jawab (PIC) & Dokumen')
                    ->columns(4)
                    ->schema([
                        TextEntry::make('pic_name')
                            ->label('Nama PIC'),
                        TextEntry::make('pic_nip')
                            ->label('NIP PIC')
                            ->placeholder('-'),
                        TextEntry::make('pic_position')
                            ->label('Jabatan PIC')
                            ->placeholder('-'),
                        TextEntry::make('pic_phone')
                            ->label('No. Telp / WA')
                            ->placeholder('-'),
                        TextEntry::make('spt_file_path')
                            ->label('Dokumen SPT (Private)')
                            ->formatStateUsing(fn(?string $state) => filled($state) ? 'Lihat / Unduh SPT (' . basename($state) . ')' : 'Belum diunggah')
                            ->url(fn(Application $record) => filled($record->spt_file_path) ? route('applications.files.show', ['application' => $record->id, 'type' => 'spt']) : null, shouldOpenInNewTab: true)
                            ->color(fn(?string $state) => filled($state) ? 'primary' : 'gray')
                            ->columnSpan(2),
                        TextEntry::make('verification_notes')
                            ->label('Catatan Verifikator')
                            ->placeholder('-')
                            ->columnSpanFull(),
                    ]),
            ]);
    }
}

