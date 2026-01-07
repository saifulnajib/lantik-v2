<?php

namespace App\Filament\Resources\InstallationPoints\Pages;

use App\Filament\Resources\InstallationPoints\InstallationPointResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListInstallationPoints extends ListRecords
{
    protected static string $resource = InstallationPointResource::class;

    protected function getHeaderActions(): array
    {
        return [
            // \Filament\Actions\Action::make('import')
            //     ->label('Import Data')
            //     ->url(static::getResource()::getUrl('import'))
            //     ->icon('heroicon-o-arrow-up-tray')
            //     ->color('info'),
            CreateAction::make(),
        ];
    }
}
