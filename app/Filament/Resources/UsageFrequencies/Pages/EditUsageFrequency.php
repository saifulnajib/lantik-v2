<?php

namespace App\Filament\Resources\UsageFrequencies\Pages;

use App\Filament\Resources\UsageFrequencies\UsageFrequencyResource;
use Filament\Actions\DeleteAction;
use Filament\Resources\Pages\EditRecord;

class EditUsageFrequency extends EditRecord
{
    protected static string $resource = UsageFrequencyResource::class;

    protected function getHeaderActions(): array
    {
        return [
            DeleteAction::make(),
        ];
    }
}

