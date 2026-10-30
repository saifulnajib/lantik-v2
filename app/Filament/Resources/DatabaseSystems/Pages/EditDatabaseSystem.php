<?php

namespace App\Filament\Resources\DatabaseSystems\Pages;

use App\Filament\Resources\DatabaseSystems\DatabaseSystemResource;
use Filament\Actions\DeleteAction;
use Filament\Resources\Pages\EditRecord;

class EditDatabaseSystem extends EditRecord
{
    protected static string $resource = DatabaseSystemResource::class;

    protected function getHeaderActions(): array
    {
        return [
            DeleteAction::make(),
        ];
    }
}

