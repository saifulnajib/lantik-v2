<?php

namespace App\Filament\Resources\MonitoringLogs\Pages;

use App\Filament\Resources\MonitoringLogs\MonitoringLogResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListMonitoringLogs extends ListRecords
{
    protected static string $resource = MonitoringLogResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}
