<?php

namespace App\Filament\Resources\ElectronicSystemCategorizations;

use App\Filament\Resources\ElectronicSystemCategorizations\Pages\CreateElectronicSystemCategorization;
use App\Filament\Resources\ElectronicSystemCategorizations\Pages\EditElectronicSystemCategorization;
use App\Filament\Resources\ElectronicSystemCategorizations\Pages\ListElectronicSystemCategorizations;
use App\Filament\Resources\ElectronicSystemCategorizations\Schemas\CategorizationForm;
use App\Filament\Resources\ElectronicSystemCategorizations\Tables\CategorizationsTable;
use App\Models\ElectronicSystemCategorization;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class ElectronicSystemCategorizationResource extends Resource
{
    protected static ?string $model = ElectronicSystemCategorization::class;

    protected static \UnitEnum|string|null $navigationGroup = 'Pendataan Aplikasi & KSE';
    protected static ?string $navigationLabel = 'Kategorisasi SE (KSE)';
    protected static ?string $pluralLabel = 'Kategorisasi Sistem Elektronik';
    protected static ?string $modelLabel = 'Kategorisasi SE';
    protected static ?int $navigationSort = 2;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedShieldCheck;

    public static function form(Schema $schema): Schema
    {
        return CategorizationForm::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return CategorizationsTable::configure($table);
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
            'index' => ListElectronicSystemCategorizations::route('/'),
            //'create' => CreateElectronicSystemCategorization::route('/create'),
            //'edit' => EditElectronicSystemCategorization::route('/{record}/edit'),
        ];
    }

    public static function getEloquentQuery(): Builder
    {
        $query = parent::getEloquentQuery();
        $user = auth()->user();

        if (!$user) {
            return $query;
        }

        if ($user->hasAnyRole(['super_admin', 'admin', 'admin_kominfo']) || in_array($user->role, ['super_admin', 'admin'], true)) {
            return $query;
        }

        if ($user->opd_id) {
            return $query->where('opd_id', $user->opd_id);
        }

        return $query;
    }

    public static function getRecordRouteBindingEloquentQuery(): Builder
    {
        return parent::getRecordRouteBindingEloquentQuery()
            ->withoutGlobalScopes([
                SoftDeletingScope::class,
            ]);
    }

    public static function getNavigationBadge(): ?string
    {
        return (string) static::getEloquentQuery()->count();
    }
}

