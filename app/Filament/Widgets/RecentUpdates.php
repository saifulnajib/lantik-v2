<?php

namespace App\Filament\Widgets;

use App\Models\ProgressUpdate;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Widgets\TableWidget as BaseWidget;

class RecentUpdates extends BaseWidget
{
    protected static ?string $heading = 'Update Progress Terbaru';

    protected static ?int $sort = 4;

    protected int|string|array $columnSpan = 'full';

    public function table(Table $table): Table
    {
        return $table
            ->query(
                ProgressUpdate::query()->latest()->limit(10)
            )
            ->columns([
                Tables\Columns\TextColumn::make('installationPoint.nama_lokasi')
                    ->label('Lokasi'),
                Tables\Columns\TextColumn::make('user.name')
                    ->label('Oleh'),
                Tables\Columns\TextColumn::make('percentage')
                    ->label('Progress')
                    ->suffix('%')
                    ->badge(),
                Tables\Columns\TextColumn::make('description')
                    ->label('Keterangan')
                    ->limit(50),
                Tables\Columns\TextColumn::make('created_at')
                    ->label('Waktu')
                    ->dateTime('H:i d/m/Y'),
            ])
            ->paginated(true);
    }
}
