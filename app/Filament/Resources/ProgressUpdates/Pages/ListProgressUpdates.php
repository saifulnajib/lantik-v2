<?php

namespace App\Filament\Resources\ProgressUpdates\Pages;

use App\Filament\Resources\ProgressUpdates\ProgressUpdateResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListProgressUpdates extends ListRecords
{
    protected static string $resource = ProgressUpdateResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}
