<?php

namespace App\Filament\Resources\ChecklistCategories\Pages;

use App\Filament\Resources\ChecklistCategories\ChecklistCategoryResource;
use Filament\Actions\DeleteAction;
use Filament\Actions\ForceDeleteAction;
use Filament\Actions\RestoreAction;
use Filament\Resources\Pages\EditRecord;

class EditChecklistCategory extends EditRecord
{
    protected static string $resource = ChecklistCategoryResource::class;

    protected function getHeaderActions(): array
    {
        return [
            DeleteAction::make(),
            ForceDeleteAction::make(),
            RestoreAction::make(),
        ];
    }
}
