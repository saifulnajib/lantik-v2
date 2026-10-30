<?php

namespace App\Filament\Resources\ElectronicSystemCategorizations\Pages;

use App\Filament\Resources\ElectronicSystemCategorizations\ElectronicSystemCategorizationResource;
use Filament\Actions\DeleteAction;
use Filament\Actions\ForceDeleteAction;
use Filament\Actions\RestoreAction;
use Filament\Resources\Pages\EditRecord;

class EditElectronicSystemCategorization extends EditRecord
{
    protected static string $resource = ElectronicSystemCategorizationResource::class;

    protected function getHeaderActions(): array
    {
        return [
            DeleteAction::make(),
            ForceDeleteAction::make(),
            RestoreAction::make(),
        ];
    }

    protected function mutateFormDataBeforeSave(array $data): array
    {
        $user = auth()->user();
        if ($user && ($data['verification_status'] ?? null) === 'verified' && empty($data['verified_at'])) {
            $data['verified_by'] = $user->id;
            $data['verified_at'] = now();
        }

        return $data;
    }
}

