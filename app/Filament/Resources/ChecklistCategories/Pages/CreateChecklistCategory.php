<?php

namespace App\Filament\Resources\ChecklistCategories\Pages;

use App\Filament\Resources\ChecklistCategories\ChecklistCategoryResource;
use Filament\Resources\Pages\CreateRecord;

class CreateChecklistCategory extends CreateRecord
{
    protected static string $resource = ChecklistCategoryResource::class;
}
