<?php

namespace App\Filament\Resources\ProgressUpdates\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Actions\ViewAction;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Table;
use Filament\Tables\Filters\SelectFilter;

class ProgressUpdatesTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('installationPoint.nama_lokasi')
                    ->label('Titik Lokasi')
                    ->searchable()
                    ->sortable()
                    ->description(fn($record) => $record->installationPoint->opd->nama),

                TextColumn::make('user.name')
                    ->label('Oleh')
                    ->sortable(),

                TextColumn::make('percentage')
                    ->label('Kemajuan')
                    ->suffix('%')
                    ->badge()
                    ->color(fn(int $state): string => match (true) {
                        $state >= 100 => 'success',
                        $state >= 50 => 'info',
                        $state > 0 => 'warning',
                        default => 'gray',
                    })
                    ->sortable(),

                TextColumn::make('description')
                    ->label('Keterangan')
                    ->limit(50)
                    ->wrap(),

                TextColumn::make('photos_count')
                    ->counts('photos')
                    ->label('Foto')
                    ->badge(),

                TextColumn::make('created_at')
                    ->label('Tanggal')
                    ->dateTime('d/m/Y H:i')
                    ->sortable(),
            ])
            ->filters([
                SelectFilter::make('installationPoint')
                    ->label('Titik Lokasi')
                    ->relationship('installationPoint', 'nama_lokasi')
                    ->searchable()
                    ->preload(),
            ])
            ->recordActions([
                ViewAction::make(),
                EditAction::make(),
            ])
            ->bulkActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
                ]),
            ])
            ->defaultSort('created_at', 'desc');
    }
}
