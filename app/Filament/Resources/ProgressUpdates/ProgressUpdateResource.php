<?php

namespace App\Filament\Resources\ProgressUpdates;

use App\Filament\Resources\ProgressUpdates\Pages\CreateProgressUpdate;
use App\Filament\Resources\ProgressUpdates\Pages\EditProgressUpdate;
use App\Filament\Resources\ProgressUpdates\Pages\ListProgressUpdates;
use App\Filament\Resources\ProgressUpdates\Schemas\ProgressUpdateForm;
use App\Filament\Resources\ProgressUpdates\Tables\ProgressUpdatesTable;
use App\Models\ProgressUpdate;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class ProgressUpdateResource extends Resource
{
    protected static ?string $model = ProgressUpdate::class;

    protected static ?string $navigationLabel = 'Update Progress';
    protected static ?string $pluralLabel = 'Update Progress';
    protected static ?string $modelLabel = 'Update Progress';

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedClipboardDocumentCheck;

    public static function form(Schema $schema): Schema
    {
        return ProgressUpdateForm::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return ProgressUpdatesTable::configure($table);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => ListProgressUpdates::route('/'),
            'create' => CreateProgressUpdate::route('/create'),
            'edit' => EditProgressUpdate::route('/{record}/edit'),
        ];
    }
}
