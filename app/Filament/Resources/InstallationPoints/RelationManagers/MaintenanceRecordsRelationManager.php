<?php

namespace App\Filament\Resources\InstallationPoints\RelationManagers;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\CreateAction;
use Filament\Actions\DeleteAction;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Actions\ViewAction;
use Filament\Forms\Components\DateTimePicker;
use Filament\Forms\Components\Hidden;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Textarea;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Schemas\Schema;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;

class MaintenanceRecordsRelationManager extends RelationManager
{
    protected static string $relationship = 'maintenanceRecords';

    protected static ?string $title = 'Riwayat Pemeliharaan';

    protected static ?string $modelLabel = 'Catatan Pemeliharaan';

    public function form(Schema $schema): Schema
    {
        return $schema
            ->components([
                Hidden::make('user_id')
                    ->default(auth()->id()),

                Select::make('type')
                    ->label('Tipe Pemeliharaan')
                    ->options([
                        'routine' => 'Rutin',
                        'repair' => 'Perbaikan',
                        'emergency' => 'Darurat',
                    ])
                    ->required()
                    ->default('routine'),

                Textarea::make('description')
                    ->label('Keterangan Pemeliharaan')
                    ->required()
                    ->columnSpanFull(),

                DateTimePicker::make('resolved_at')
                    ->label('Waktu Selesai')
                    ->native(false),
            ]);
    }

    public function table(Table $table): Table
    {
        return $table
            ->recordTitleAttribute('description')
            ->columns([
                TextColumn::make('user.name')
                    ->label('Oleh')
                    ->sortable(),

                TextColumn::make('type')
                    ->label('Tipe')
                    ->badge()
                    ->formatStateUsing(fn(string $state): string => match ($state) {
                        'routine' => 'Rutin',
                        'repair' => 'Perbaikan',
                        'emergency' => 'Darurat',
                        default => $state,
                    })
                    ->color(fn(string $state): string => match ($state) {
                        'routine' => 'info',
                        'repair' => 'warning',
                        'emergency' => 'danger',
                        default => 'gray',
                    }),

                TextColumn::make('description')
                    ->label('Keterangan')
                    ->limit(50),

                TextColumn::make('resolved_at')
                    ->label('Selesai Pada')
                    ->dateTime('d/m/Y H:i')
                    ->sortable(),

                TextColumn::make('created_at')
                    ->label('Dibuat')
                    ->dateTime('d/m/Y H:i')
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                //
            ])
            ->headerActions([
                CreateAction::make(),
            ])
            ->recordActions([
                ViewAction::make(),
                EditAction::make(),
                DeleteAction::make(),
            ])
            ->toolbarActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
                ]),
            ])
            ->defaultSort('created_at', 'desc');
    }
}
