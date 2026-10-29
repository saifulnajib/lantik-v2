<?php

namespace App\Filament\Resources\MonitoringLogs;

use App\Filament\Resources\MonitoringLogs\Pages\CreateMonitoringLog;
use App\Filament\Resources\MonitoringLogs\Pages\EditMonitoringLog;
use App\Filament\Resources\MonitoringLogs\Pages\ListMonitoringLogs;
use App\Filament\Resources\MonitoringLogs\Schemas\MonitoringLogForm;
use App\Filament\Resources\MonitoringLogs\Tables\MonitoringLogsTable;
use App\Models\MonitoringLog;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class MonitoringLogResource extends Resource
{
    protected static ?string $model = MonitoringLog::class;
    protected static \UnitEnum|string|null $navigationGroup = 'Data Center';
    protected static ?int $navigationSort = 4;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedDocumentCheck;

    public static function form(Schema $schema): Schema
    {
        return MonitoringLogForm::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return MonitoringLogsTable::configure($table);
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
            'index' => ListMonitoringLogs::route('/'),
            'create' => CreateMonitoringLog::route('/create'),
            'edit' => EditMonitoringLog::route('/{record}/edit'),
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
