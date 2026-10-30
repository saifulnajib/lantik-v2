<?php

namespace App\Filament\Resources\ApplicationServiceTypes;

use App\Filament\Resources\ApplicationServiceTypes\Pages\CreateApplicationServiceType;
use App\Filament\Resources\ApplicationServiceTypes\Pages\EditApplicationServiceType;
use App\Filament\Resources\ApplicationServiceTypes\Pages\ListApplicationServiceTypes;
use App\Filament\Resources\ApplicationServiceTypes\Schemas\ApplicationServiceTypeForm;
use App\Filament\Resources\ApplicationServiceTypes\Tables\ApplicationServiceTypesTable;
use App\Models\ApplicationServiceType;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class ApplicationServiceTypeResource extends Resource
{
    protected static ?string $model = ApplicationServiceType::class;

    protected static \UnitEnum|string|null $navigationGroup = 'Master SIPA';
    protected static ?string $navigationLabel = 'Jenis Layanan Aplikasi';
    protected static ?string $pluralLabel = 'Jenis Layanan Aplikasi';
    protected static ?string $modelLabel = 'Jenis Layanan Aplikasi';
    protected static ?int $navigationSort = 1;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedTag;

    public static function form(Schema $schema): Schema
    {
        return ApplicationServiceTypeForm::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return ApplicationServiceTypesTable::configure($table);
    }

    public static function getPages(): array
    {
        return [
            'index' => ListApplicationServiceTypes::route('/'),
            'create' => CreateApplicationServiceType::route('/create'),
            'edit' => EditApplicationServiceType::route('/{record}/edit'),
        ];
    }
}

