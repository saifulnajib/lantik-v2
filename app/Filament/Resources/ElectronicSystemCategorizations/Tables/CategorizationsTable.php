<?php

namespace App\Filament\Resources\ElectronicSystemCategorizations\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Actions\ForceDeleteBulkAction;
use Filament\Actions\RestoreBulkAction;
use Filament\Tables\Columns\IconColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Filters\TrashedFilter;
use Filament\Tables\Table;

class CategorizationsTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('application.name')
                    ->label('Nama Aplikasi')
                    ->searchable()
                    ->sortable()
                    ->limit(40),

                TextColumn::make('opd.nama')
                    ->label('OPD Pengampu')
                    ->searchable()
                    ->sortable()
                    ->limit(35),

                TextColumn::make('assessment_year')
                    ->label('Tahun')
                    ->sortable(),

                TextColumn::make('total_score')
                    ->label('Skor KSE')
                    ->numeric()
                    ->sortable()
                    ->badge()
                    ->color('info'),

                TextColumn::make('category')
                    ->label('Kategori SE')
                    ->badge()
                    ->sortable()
                    ->color(fn (string $state): string => match ($state) {
                        'STRATEGIS' => 'danger',
                        'TINGGI' => 'warning',
                        default => 'success',
                    }),

                TextColumn::make('verification_status')
                    ->label('Verifikasi')
                    ->badge()
                    ->color(fn (string $state): string => match ($state) {
                        'verified' => 'success',
                        'submitted' => 'warning',
                        'rejected' => 'danger',
                        default => 'gray',
                    }),

                IconColumn::make('is_active')
                    ->label('Aktif')
                    ->boolean(),
            ])
            ->filters([
                SelectFilter::make('opd_id')
                    ->label('OPD')
                    ->relationship('opd', 'nama')
                    ->searchable()
                    ->preload(),

                SelectFilter::make('category')
                    ->label('Kategori KSE')
                    ->options([
                        'STRATEGIS' => 'STRATEGIS',
                        'TINGGI' => 'TINGGI',
                        'RENDAH' => 'RENDAH',
                    ]),

                SelectFilter::make('verification_status')
                    ->label('Status Verifikasi')
                    ->options([
                        'draft' => 'Draft',
                        'submitted' => 'Submitted',
                        'verified' => 'Verified',
                        'rejected' => 'Rejected',
                    ]),

                TrashedFilter::make(),
            ])
            ->recordActions([
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

