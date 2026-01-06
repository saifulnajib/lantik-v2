<?php

namespace App\Filament\Resources\Opds\Pages;

use App\Filament\Resources\Opds\OpdResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListOpds extends ListRecords
{
    protected static string $resource = OpdResource::class;

    protected function getHeaderActions(): array
    {
        return [
            \Filament\Actions\Action::make('import')
                ->label('Import Data')
                ->url(\App\Filament\Resources\InstallationPoints\InstallationPointResource::getUrl('import', ['type' => 'opd']))
                ->icon('heroicon-o-arrow-up-tray')
                ->color('info'),
            CreateAction::make(),
        ];
    }
}
