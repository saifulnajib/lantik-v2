<?php

namespace App\Filament\Resources\Applications\Tables;

use App\Models\Application;
use Barryvdh\DomPDF\Facade\Pdf;
use Filament\Actions\Action;
use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Actions\ForceDeleteBulkAction;
use Filament\Actions\RestoreBulkAction;
use Filament\Actions\ViewAction;
use Filament\Forms\Components\TextInput;
use Filament\Tables\Columns\IconColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Enums\FiltersLayout;
use Filament\Tables\Filters\Filter;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Filters\TernaryFilter;
use Filament\Tables\Filters\TrashedFilter;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;

class ApplicationsTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('name')
                    ->label('Nama Aplikasi')
                    ->searchable()
                    ->sortable()
                    ->limit(40),

                IconColumn::make('is_active')
                    ->label('Status Aktif')
                    ->boolean()
                    ->sortable(),

                TextColumn::make('opd.nama')
                    ->label('OPD Pengampu')
                    ->searchable()
                    ->sortable()
                    ->limit(35),

                TextColumn::make('serviceType.name')
                    ->label('Jenis Layanan')
                    ->sortable()
                    ->toggleable(),

                TextColumn::make('domain_url')
                    ->label('Domain / URL')
                    ->searchable()
                    ->limit(30),

                TextColumn::make('platforms')
                    ->label('Platform')
                    ->badge(),

                TextColumn::make('hostingLocation.name')
                    ->label('Lokasi Hosting')
                    ->sortable()
                    ->toggleable(),

                TextColumn::make('business_process_name')
                    ->label('Proses Bisnis')
                    ->limit(30)
                    ->toggleable(isToggledHiddenByDefault: true),

                TextColumn::make('latestCategorization.category')
                    ->label('Kategori KSE')
                    ->badge()
                    ->placeholder('Belum Dinilai')
                    ->color(fn(?string $state): string => match ($state) {
                        'STRATEGIS' => 'danger',
                        'TINGGI' => 'warning',
                        'RENDAH' => 'success',
                        default => 'gray',
                    }),

                TextColumn::make('verification_status')
                    ->label('Verifikasi')
                    ->badge()
                    ->color(fn(string $state): string => match ($state) {
                        'verified' => 'success',
                        'submitted' => 'warning',
                        'rejected' => 'danger',
                        default => 'gray',
                    }),

                TextColumn::make('pic_name')
                    ->label('PIC')
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                Filter::make('name')
                    ->label('Nama Aplikasi')
                    ->schema([
                        TextInput::make('name')
                            ->label('Cari Nama Aplikasi')
                            ->placeholder('Ketik nama aplikasi...'),
                    ])
                    ->query(function (Builder $query, array $data): Builder {
                        return $query->when(
                            filled($data['name'] ?? null),
                            fn(Builder $query) => $query->where('name', 'like', '%' . trim($data['name']) . '%'),
                        );
                    })
                    ->indicateUsing(function (array $data): ?string {
                        if (blank($data['name'] ?? null)) {
                            return null;
                        }
                        return 'Nama Aplikasi: ' . $data['name'];
                    }),

                SelectFilter::make('opd_id')
                    ->label('Nama OPD')
                    ->placeholder('Semua OPD')
                    ->relationship('opd', 'nama')
                    ->searchable()
                    ->preload(),

                TernaryFilter::make('is_active')
                    ->label('Status Aplikasi')
                    ->placeholder('Semua Status')
                    ->trueLabel('Aktif')
                    ->falseLabel('Tidak Aktif'),

                SelectFilter::make('service_type_id')
                    ->label('Jenis Layanan')
                    ->placeholder('Semua Jenis Layanan')
                    ->relationship('serviceType', 'name')
                    ->searchable()
                    ->preload(),

                SelectFilter::make('verification_status')
                    ->label('Status Verifikasi')
                    ->placeholder('Semua Verifikasi')
                    ->options([
                        'draft' => 'Draft',
                        'submitted' => 'Menunggu Verifikasi (Submitted)',
                        'verified' => 'Terverifikasi (Verified)',
                        'rejected' => 'Ditolak (Rejected)',
                    ]),

                SelectFilter::make('hosting_location_id')
                    ->label('Lokasi Hosting')
                    ->placeholder('Semua Lokasi Hosting')
                    ->relationship('hostingLocation', 'name'),

                TrashedFilter::make()
                    ->label('Data Terhapus'),
            ], layout: FiltersLayout::AboveContent)
            ->filtersFormColumns(4)
            ->recordActions([
                Action::make('download_spt')
                    ->label('SPT')
                    ->icon('heroicon-o-document-text')
                    ->color('info')
                    ->visible(fn(Application $record) => filled($record->spt_file_path))
                    ->url(fn(Application $record) => route('applications.files.show', ['application' => $record->id, 'type' => 'spt']), shouldOpenInNewTab: true),

                Action::make('download_probis')
                    ->label('Probis')
                    ->icon('heroicon-o-document-chart-bar')
                    ->color('warning')
                    ->visible(fn(Application $record) => filled($record->business_process_file_path))
                    ->url(fn(Application $record) => route('applications.files.show', ['application' => $record->id, 'type' => 'business-process']), shouldOpenInNewTab: true),

                Action::make('download_pdf')
                    ->label('PDF')
                    ->icon('heroicon-o-printer')
                    ->color('success')
                    ->action(function (Application $record) {
                        $record->load(['opd', 'databaseSystem', 'hostingLocation', 'serviceType', 'usageFrequency', 'latestCategorization']);
                        $pdf = Pdf::loadView('pdf.application-profile', ['application' => $record]);
                        $slug = \Illuminate\Support\Str::slug($record->name) ?: 'aplikasi-' . $record->id;
                        return response()->streamDownload(
                            fn() => print ($pdf->output()),
                            "profil-aplikasi-{$slug}.pdf"
                        );
                    }),

                ViewAction::make(),
                EditAction::make(),
            ])
            ->toolbarActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
                    ForceDeleteBulkAction::make(),
                    RestoreBulkAction::make(),
                ]),
            ]);
    }
}
