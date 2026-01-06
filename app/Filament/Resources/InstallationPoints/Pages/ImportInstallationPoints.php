<?php

namespace App\Filament\Resources\InstallationPoints\Pages;

use App\Filament\Resources\InstallationPoints\InstallationPointResource;
use App\Imports\InstallationPointsImport;
use App\Imports\OpdImport;
use Filament\Actions\Action;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Select;
use Filament\Schemas\Schema;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\Page;
use Maatwebsite\Excel\Facades\Excel;

class ImportInstallationPoints extends Page
{
    protected static string $resource = InstallationPointResource::class;

    protected string $view = 'filament.resources.installation-points.pages.import-installation-points';

    protected static ?string $title = 'Import Data Jaringan';

    public ?array $data = [];

    public function mount(): void
    {
        $this->form->fill();
    }

    public function form(Schema $form): Schema
    {
        return $form
            ->components([
                Select::make('type')
                    ->label('Tipe Data')
                    ->options([
                        'opd' => 'Data OPD (Master)',
                        'points' => 'Data Titik Lokasi Jaringan',
                    ])
                    ->required()
                    ->default('points'),
                FileUpload::make('file')
                    ->label('File Excel/CSV')
                    ->required()
                    ->acceptedFileTypes([
                        'application/vnd.ms-excel',
                        'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
                        'text/csv',
                    ])
                    ->storeFiles(false),
            ])
            ->statePath('data');
    }

    protected function getFormActions(): array
    {
        return [
            Action::make('import')
                ->label('Mulai Import')
                ->submit('import'),
        ];
    }

    public function import(): void
    {
        $data = $this->form->getState();
        $file = $data['file'];
        $type = $data['type'];

        try {
            if ($type === 'opd') {
                Excel::import(new OpdImport, $file);
            } else {
                Excel::import(new InstallationPointsImport, $file);
            }

            Notification::make()
                ->title('Import berhasil!')
                ->success()
                ->send();

            $this->form->fill();
        } catch (\Exception $e) {
            Notification::make()
                ->title('Gagal mengimport data')
                ->body($e->getMessage())
                ->danger()
                ->send();
        }
    }
}
