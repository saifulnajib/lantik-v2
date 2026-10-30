<?php

namespace App\Filament\Resources\DatabaseSystems;

use App\Filament\Resources\DatabaseSystems\Pages\CreateDatabaseSystem;
use App\Filament\Resources\DatabaseSystems\Pages\EditDatabaseSystem;
use App\Filament\Resources\DatabaseSystems\Pages\ListDatabaseSystems;
use App\Filament\Resources\DatabaseSystems\Schemas\DatabaseSystemForm;
use App\Filament\Resources\DatabaseSystems\Tables\DatabaseSystemsTable;
use App\Models\DatabaseManagementSystem;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class DatabaseSystemResource extends Resource
{
    protected static ?string $model = DatabaseManagementSystem::class;

    protected static \UnitEnum|string|null $navigationGroup = 'Master SIPA';
    protected static ?string $navigationLabel = 'Master DBMS';
    protected static ?string $pluralLabel = 'Master DBMS';
    protected static ?string $modelLabel = 'DBMS';
    protected static ?int $navigationSort = 2;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedCircleStack;

    public static function form(Schema $schema): Schema
    {
        return DatabaseSystemForm::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return DatabaseSystemsTable::configure($table);
    }

    public static function getPages(): array
    {
        return [
            'index' => ListDatabaseSystems::route('/'),
            'create' => CreateDatabaseSystem::route('/create'),
            'edit' => EditDatabaseSystem::route('/{record}/edit'),
        ];
    }
}

