<?php

namespace App\Filament\Resources\HostingLocations;

use App\Filament\Resources\HostingLocations\Pages\CreateHostingLocation;
use App\Filament\Resources\HostingLocations\Pages\EditHostingLocation;
use App\Filament\Resources\HostingLocations\Pages\ListHostingLocations;
use App\Filament\Resources\HostingLocations\Schemas\HostingLocationForm;
use App\Filament\Resources\HostingLocations\Tables\HostingLocationsTable;
use App\Models\HostingLocation;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class HostingLocationResource extends Resource
{
    protected static ?string $model = HostingLocation::class;

    protected static \UnitEnum|string|null $navigationGroup = 'Master SIPA';
    protected static ?string $navigationLabel = 'Lokasi Hosting';
    protected static ?string $pluralLabel = 'Lokasi Hosting';
    protected static ?string $modelLabel = 'Lokasi Hosting';
    protected static ?int $navigationSort = 3;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedCloud;

    public static function form(Schema $schema): Schema
    {
        return HostingLocationForm::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return HostingLocationsTable::configure($table);
    }

    public static function getPages(): array
    {
        return [
            'index' => ListHostingLocations::route('/'),
            'create' => CreateHostingLocation::route('/create'),
            'edit' => EditHostingLocation::route('/{record}/edit'),
        ];
    }
}

