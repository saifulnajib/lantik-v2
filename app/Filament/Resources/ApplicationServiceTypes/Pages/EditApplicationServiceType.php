<?php

namespace App\Filament\Resources\ApplicationServiceTypes\Pages;

use App\Filament\Resources\ApplicationServiceTypes\ApplicationServiceTypeResource;
use Filament\Actions\DeleteAction;
use Filament\Resources\Pages\EditRecord;

class EditApplicationServiceType extends EditRecord
{
    protected static string $resource = ApplicationServiceTypeResource::class;

    protected function getHeaderActions(): array
    {
        return [
            DeleteAction::make(),
        ];
    }
}

