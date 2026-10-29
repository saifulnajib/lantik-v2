<?php

namespace App\Filament\Resources\ChecklistCategories\Pages;

use App\Filament\Resources\ChecklistCategories\ChecklistCategoryResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListChecklistCategories extends ListRecords
{
    protected static string $resource = ChecklistCategoryResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}
