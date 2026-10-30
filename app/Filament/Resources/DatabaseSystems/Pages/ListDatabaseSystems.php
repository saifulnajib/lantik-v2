<?php

namespace App\Filament\Resources\DatabaseSystems\Pages;

use App\Filament\Resources\DatabaseSystems\DatabaseSystemResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListDatabaseSystems extends ListRecords
{
    protected static string $resource = DatabaseSystemResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}

