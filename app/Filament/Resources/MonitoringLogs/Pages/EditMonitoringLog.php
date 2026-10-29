<?php

namespace App\Filament\Resources\MonitoringLogs\Pages;

use App\Filament\Resources\MonitoringLogs\MonitoringLogResource;
use Filament\Actions\DeleteAction;
use Filament\Actions\ForceDeleteAction;
use Filament\Actions\RestoreAction;
use Filament\Resources\Pages\EditRecord;

class EditMonitoringLog extends EditRecord
{
    protected static string $resource = MonitoringLogResource::class;

    protected function getHeaderActions(): array
    {
        return [
            DeleteAction::make(),
            ForceDeleteAction::make(),
            RestoreAction::make(),
        ];
    }
}
