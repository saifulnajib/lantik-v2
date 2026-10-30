<?php

namespace App\Filament\Resources\Applications\Pages;

use App\Filament\Resources\Applications\ApplicationResource;
use Filament\Actions\Action;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;
use OpenSpout\Common\Entity\Row;
use OpenSpout\Writer\XLSX\Writer;

class ListApplications extends ListRecords
{
    protected static string $resource = ApplicationResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Action::make('export_excel')
                ->label('Export Excel (.xlsx)')
                ->icon('heroicon-o-arrow-down-tray')
                ->color('success')
                ->action(function () {
                    $records = ApplicationResource::getEloquentQuery()
                        ->with(['opd', 'databaseSystem', 'hostingLocation', 'serviceType', 'usageFrequency', 'latestCategorization'])
                        ->get();

                    $fileName = 'rekap-data-aplikasi-sipa-' . now()->format('Y-m-d') . '.xlsx';

                    return response()->streamDownload(function () use ($records) {
                        $writer = new Writer();
                        $writer->openToFile('php://output');

                        $writer->addRow(Row::fromValues([
                            'No',
                            'Nama Aplikasi',
                            'OPD Pengampu',
                            'Asal Aplikasi',
                            'Penyedia',
                            'Pengembang',
                            'Tahun Rilis',
                            'Platform',
                            'Bahasa Pemrograman',
                            'DBMS',
                            'Lokasi Hosting',
                            'Domain / URL',
                            'Jenis Layanan',
                            'Frekuensi Penggunaan',
                            'Jumlah Pengguna',
                            'Proses Bisnis (business_process_name)',
                            'Status Integrasi',
                            'Metode Integrasi',
                            'Nama PIC',
                            'NIP PIC',
                            'Jabatan PIC',
                            'No. Telp PIC',
                            'Skor KSE Terakhir',
                            'Kategori KSE',
                            'Status Verifikasi',
                            'Status Aktif',
                        ]));

                        foreach ($records as $index => $app) {
                            $writer->addRow(Row::fromValues([
                                $index + 1,
                                $app->name,
                                $app->opd?->nama ?? '-',
                                $app->source_type === 'third_party' ? 'Pihak Ketiga' : 'Internal Pemko',
                                $app->vendor_name ?? '-',
                                $app->developer_name ?? '-',
                                $app->launch_year ?? '-',
                                is_array($app->platforms) ? implode(', ', $app->platforms) : '-',
                                $app->programming_languages ?? '-',
                                $app->databaseSystem?->name ?? '-',
                                $app->hostingLocation?->name ?? '-',
                                $app->domain_url ?? '-',
                                $app->serviceType?->name ?? '-',
                                $app->usageFrequency?->name ?? '-',
                                $app->user_count_range ?? '-',
                                $app->business_process_name ?? '-',
                                $app->integration_status,
                                $app->integration_method ?? '-',
                                $app->pic_name,
                                $app->pic_nip ?? '-',
                                $app->pic_position ?? '-',
                                $app->pic_phone ?? '-',
                                $app->latestCategorization?->total_score ?? '-',
                                $app->latestCategorization?->category ?? 'Belum Dinilai',
                                strtoupper($app->verification_status),
                                $app->is_active ? 'Aktif' : 'Tidak Aktif',
                            ]));
                        }

                        $writer->close();
                    }, $fileName, [
                        'Content-Type' => 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
                    ]);
                }),

            CreateAction::make(),
        ];
    }
}

