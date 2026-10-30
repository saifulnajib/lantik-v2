<?php

namespace App\Filament\Resources\ElectronicSystemCategorizations\Pages;

use App\Filament\Resources\ElectronicSystemCategorizations\ElectronicSystemCategorizationResource;
use Filament\Resources\Pages\CreateRecord;

class CreateElectronicSystemCategorization extends CreateRecord
{
    protected static string $resource = ElectronicSystemCategorizationResource::class;

    protected function mutateFormDataBeforeCreate(array $data): array
    {
        $user = auth()->user();
        if ($user) {
            $data['assessed_by'] = $user->id;
            if ($user->opd_id && empty($data['opd_id'])) {
                $data['opd_id'] = $user->opd_id;
            }
        }

        return $data;
    }
}

