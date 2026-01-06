<?php

namespace App\Filament\Resources\InstallationPoints\Pages;

use App\Filament\Resources\InstallationPoints\InstallationPointResource;
use Filament\Resources\Pages\CreateRecord;

class CreateInstallationPoint extends CreateRecord
{
    protected static string $resource = InstallationPointResource::class;
    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}
