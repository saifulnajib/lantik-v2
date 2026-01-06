<?php

namespace App\Filament\Resources\InstallationPoints\RelationManagers;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\CreateAction;
use Filament\Actions\DeleteAction;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Actions\ViewAction;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Hidden;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Schemas\Schema;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;

class ProgressUpdatesRelationManager extends RelationManager
{
    protected static string $relationship = 'progressUpdates';

    protected static ?string $title = 'Riwayat Progress';

    protected static ?string $modelLabel = 'Update Progress';

    public function form(Schema $schema): Schema
    {
        return $schema
            ->columns(2)
            ->components([
                Hidden::make('user_id')
                    ->default(auth()->id()),

                TextInput::make('percentage')
                    ->label('Persentase Kemajuan (%)')
                    ->numeric()
                    ->required()
                    ->minValue(0)
                    ->maxValue(100)
                    ->suffix('%')
                    ->columnSpan(1),

                Textarea::make('description')
                    ->label('Keterangan Kemajuan')
                    ->required()
                    ->rows(3)
                    ->columnSpanFull(),

                Repeater::make('photos')
                    ->relationship('photos')
                    ->label('Foto Dokumentasi')
                    ->schema([
                        FileUpload::make('photo_path')
                            ->label('Upload Foto')
                            ->image()
                            ->directory('progress-photos')
                            ->required(),
                        TextInput::make('caption')
                            ->label('Keterangan Foto')
                            ->maxLength(255),
                    ])
                    ->columns(2)
                    ->columnSpanFull()
                    ->grid(2)
                    ->itemLabel(fn(array $state): ?string => $state['caption'] ?? null),
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
