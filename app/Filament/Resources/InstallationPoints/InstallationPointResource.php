<?php

namespace App\Filament\Resources\InstallationPoints;

use App\Filament\Resources\InstallationPoints\Pages\CreateInstallationPoint;
use App\Filament\Resources\InstallationPoints\Pages\EditInstallationPoint;
use App\Filament\Resources\InstallationPoints\Pages\ListInstallationPoints;
use App\Filament\Resources\InstallationPoints\Pages\ImportInstallationPoints;
use App\Filament\Resources\InstallationPoints\Schemas\InstallationPointForm;
use App\Filament\Resources\InstallationPoints\Tables\InstallationPointsTable;
use App\Models\InstallationPoint;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class InstallationPointResource extends Resource
{
    protected static ?string $model = InstallationPoint::class;

    protected static ?string $navigationLabel = 'Titik Pemasangan';
    protected static ?string $pluralLabel = 'Titik Pemasangan';
    protected static ?string $modelLabel = 'Titik Pemasangan';

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedMap;

    public static function form(Schema $schema): Schema
    {
        return InstallationPointForm::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return InstallationPointsTable::configure($table);
    }

    public static function getRelations(): array
    {
        return [
            RelationManagers\ProgressUpdatesRelationManager::class,
            RelationManagers\MaintenanceRecordsRelationManager::class,
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => ListInstallationPoints::route('/'),
            'create' => CreateInstallationPoint::route('/create'),
            'edit' => EditInstallationPoint::route('/{record}/edit'),
            'import' => ImportInstallationPoints::route('/import'),
        ];
    }

    public static function getNavigationBadge(): ?string
    {
        return static::getModel()::count();
    }
}
