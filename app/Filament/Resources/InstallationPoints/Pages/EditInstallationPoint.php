<?php

namespace App\Filament\Resources\InstallationPoints\Pages;

use App\Filament\Resources\InstallationPoints\InstallationPointResource;
use Filament\Actions\DeleteAction;
use Filament\Resources\Pages\EditRecord;

class EditInstallationPoint extends EditRecord
{
    protected static string $resource = InstallationPointResource::class;

    protected function getHeaderActions(): array
    {
        return [
            DeleteAction::make(),
        ];
    }
}
