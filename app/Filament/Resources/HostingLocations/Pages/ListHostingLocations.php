<?php

namespace App\Filament\Resources\HostingLocations\Pages;

use App\Filament\Resources\HostingLocations\HostingLocationResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListHostingLocations extends ListRecords
{
    protected static string $resource = HostingLocationResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}

