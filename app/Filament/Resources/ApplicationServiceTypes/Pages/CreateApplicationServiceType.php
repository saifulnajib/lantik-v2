<?php

namespace App\Filament\Resources\ApplicationServiceTypes\Pages;

use App\Filament\Resources\ApplicationServiceTypes\ApplicationServiceTypeResource;
use Filament\Resources\Pages\CreateRecord;

class CreateApplicationServiceType extends CreateRecord
{
    protected static string $resource = ApplicationServiceTypeResource::class;
}

