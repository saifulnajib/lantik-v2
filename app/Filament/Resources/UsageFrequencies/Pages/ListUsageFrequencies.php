<?php

namespace App\Filament\Resources\UsageFrequencies\Pages;

use App\Filament\Resources\UsageFrequencies\UsageFrequencyResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListUsageFrequencies extends ListRecords
{
    protected static string $resource = UsageFrequencyResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}

