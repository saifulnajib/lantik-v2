<?php

namespace App\Filament\Resources\ElectronicSystemCategorizations\Pages;

use App\Filament\Resources\ElectronicSystemCategorizations\ElectronicSystemCategorizationResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListElectronicSystemCategorizations extends ListRecords
{
    protected static string $resource = ElectronicSystemCategorizationResource::class;

    protected function getHeaderActions(): array
    {
        return [
            //CreateAction::make(),
        ];
    }
}

