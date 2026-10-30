<?php

namespace App\Filament\Resources\HostingLocations\Pages;

use App\Filament\Resources\HostingLocations\HostingLocationResource;
use Filament\Actions\DeleteAction;
use Filament\Resources\Pages\EditRecord;

class EditHostingLocation extends EditRecord
{
    protected static string $resource = HostingLocationResource::class;

    protected function getHeaderActions(): array
    {
        return [
            DeleteAction::make(),
        ];
    }
}

