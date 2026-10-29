<?php

namespace App\Filament\Resources\ChecklistCategories;

use App\Filament\Resources\ChecklistCategories\Pages\CreateChecklistCategory;
use App\Filament\Resources\ChecklistCategories\Pages\EditChecklistCategory;
use App\Filament\Resources\ChecklistCategories\Pages\ListChecklistCategories;
use App\Filament\Resources\ChecklistCategories\Schemas\ChecklistCategoryForm;
use App\Filament\Resources\ChecklistCategories\Tables\ChecklistCategoriesTable;
use App\Models\ChecklistCategory;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class ChecklistCategoryResource extends Resource
{
    protected static ?string $model = ChecklistCategory::class;
    protected static \UnitEnum|string|null $navigationGroup = 'Data Center';
    protected static ?int $navigationSort = 2;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedRectangleGroup;

    public static function form(Schema $schema): Schema
    {
        return ChecklistCategoryForm::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return ChecklistCategoriesTable::configure($table);
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
            'index' => ListChecklistCategories::route('/'),
            'create' => CreateChecklistCategory::route('/create'),
            'edit' => EditChecklistCategory::route('/{record}/edit'),
        ];
    }

    public static function getRecordRouteBindingEloquentQuery(): Builder
    {
        return parent::getRecordRouteBindingEloquentQuery()
            ->withoutGlobalScopes([
                SoftDeletingScope::class,
            ]);
    }
}
