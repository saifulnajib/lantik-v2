<?php

namespace App\Filament\Resources\UsageFrequencies;

use App\Filament\Resources\UsageFrequencies\Pages\CreateUsageFrequency;
use App\Filament\Resources\UsageFrequencies\Pages\EditUsageFrequency;
use App\Filament\Resources\UsageFrequencies\Pages\ListUsageFrequencies;
use App\Filament\Resources\UsageFrequencies\Schemas\UsageFrequencyForm;
use App\Filament\Resources\UsageFrequencies\Tables\UsageFrequenciesTable;
use App\Models\UsageFrequency;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class UsageFrequencyResource extends Resource
{
    protected static ?string $model = UsageFrequency::class;

    protected static \UnitEnum|string|null $navigationGroup = 'Master SIPA';
    protected static ?string $navigationLabel = 'Frekuensi Penggunaan';
    protected static ?string $pluralLabel = 'Frekuensi Penggunaan';
    protected static ?string $modelLabel = 'Frekuensi Penggunaan';
    protected static ?int $navigationSort = 4;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedClock;

    public static function form(Schema $schema): Schema
    {
        return UsageFrequencyForm::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return UsageFrequenciesTable::configure($table);
    }

    public static function getPages(): array
    {
        return [
            'index' => ListUsageFrequencies::route('/'),
            'create' => CreateUsageFrequency::route('/create'),
            'edit' => EditUsageFrequency::route('/{record}/edit'),
        ];
    }
}

