<?php

namespace App\Filament\Resources\InstallationPoints\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Actions\ViewAction;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Table;
use pxlrbt\FilamentExcel\Actions\Tables\ExportAction;
use pxlrbt\FilamentExcel\Actions\Tables\ExportBulkAction;

class InstallationPointsTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('opd.kode')
                    ->label('Kode OPD')
                    ->searchable()
                    ->sortable(),
                TextColumn::make('opd.nama')
                    ->label('Nama OPD')
                    ->searchable()
                    ->sortable(),
                TextColumn::make('nama_lokasi')
                    ->label('Nama Lokasi')
                    ->searchable()
                    ->sortable()
                    ->limit(40),
                TextColumn::make('priority')
                    ->label('Prioritas')
                    ->badge()
                    ->formatStateUsing(fn(int $state): string => str_repeat('⭐', $state))
                    ->color(fn(int $state): string => match ($state) {
                        5 => 'danger',
                        4 => 'warning',
                        3 => 'info',
                        2 => 'gray',
                        1 => 'gray',
                        default => 'gray',
                    })
                    ->sortable(),
                TextColumn::make('status')
                    ->label('Status')
                    ->badge()
                    ->formatStateUsing(fn(string $state): string => match ($state) {
                        'pending' => 'Pending',
                        'in_progress' => 'Dalam Progress',
                        'completed' => 'Selesai',
                        'maintenance' => 'Pemeliharaan',
                        default => $state,
                    })
                    ->color(fn(string $state): string => match ($state) {
                        'pending' => 'gray',
                        'in_progress' => 'info',
                        'completed' => 'success',
                        'maintenance' => 'warning',
                        default => 'gray',
                    })
                    ->sortable(),
                TextColumn::make('jumlah_ap')
                    ->label('AP')
                    ->badge()
                    ->color('info')
                    ->sortable(),
                TextColumn::make('target_completion_date')
                    ->label('Target Selesai')
                    ->date('d/m/Y')
                    ->sortable()
                    ->toggleable(),
                TextColumn::make('alamat')
                    ->label('Alamat')
                    ->limit(50)
                    ->toggleable()
                    ->toggleable(isToggledHiddenByDefault: true),
                TextColumn::make('latitude')
                    ->label('Lat')
                    ->numeric()
                    ->toggleable(isToggledHiddenByDefault: true),
                TextColumn::make('longitude')
                    ->label('Lng')
                    ->numeric()
                    ->toggleable(isToggledHiddenByDefault: true),
                TextColumn::make('created_at')
                    ->label('Dibuat')
                    ->dateTime('d/m/Y H:i')
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                TextColumn::make('updated_at')
                    ->label('Diperbarui')
                    ->dateTime('d/m/Y H:i')
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                SelectFilter::make('opd')
                    ->label('Filter OPD')
                    ->relationship('opd', 'nama')
                    ->searchable()
                    ->preload(),
                SelectFilter::make('priority')
                    ->label('Filter Prioritas')
                    ->options([
                        5 => '⭐⭐⭐⭐⭐ Sangat Tinggi',
                        4 => '⭐⭐⭐⭐ Tinggi',
                        3 => '⭐⭐⭐ Sedang',
                        2 => '⭐⭐ Rendah',
                        1 => '⭐ Sangat Rendah',
                    ])
                    ->multiple(),
                SelectFilter::make('status')
                    ->label('Filter Status')
                    ->options([
                        'pending' => 'Pending',
                        'in_progress' => 'Dalam Progress',
                        'completed' => 'Selesai',
                        'maintenance' => 'Pemeliharaan',
                    ])
                    ->multiple(),
            ])
            ->headerActions([
                ExportAction::make(),
            ])
            ->recordActions([
                ViewAction::make(),
                EditAction::make(),
            ])
            ->bulkActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
                    ExportBulkAction::make(),
                ]),
            ])
            ->defaultSort('priority', 'desc');
    }
}
