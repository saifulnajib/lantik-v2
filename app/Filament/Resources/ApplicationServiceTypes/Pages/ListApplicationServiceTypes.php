<?php

namespace App\Filament\Resources\ApplicationServiceTypes\Pages;

use App\Filament\Resources\ApplicationServiceTypes\ApplicationServiceTypeResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListApplicationServiceTypes extends ListRecords
{
    protected static string $resource = ApplicationServiceTypeResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}

