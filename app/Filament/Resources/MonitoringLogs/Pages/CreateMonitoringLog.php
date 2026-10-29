<?php

namespace App\Filament\Resources\MonitoringLogs\Pages;

use App\Filament\Resources\MonitoringLogs\MonitoringLogResource;
use Filament\Resources\Pages\CreateRecord;

class CreateMonitoringLog extends CreateRecord
{
    protected static string $resource = MonitoringLogResource::class;
}
