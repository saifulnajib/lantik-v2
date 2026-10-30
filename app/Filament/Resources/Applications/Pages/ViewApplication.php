<?php

namespace App\Filament\Resources\Applications\Pages;

use App\Filament\Resources\Applications\ApplicationResource;
use App\Models\Application;
use Barryvdh\DomPDF\Facade\Pdf;
use Filament\Actions\Action;
use Filament\Actions\EditAction;
use Filament\Resources\Pages\ViewRecord;

class ViewApplication extends ViewRecord
{
    protected static string $resource = ApplicationResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Action::make('download_pdf')
                ->label('Cetak Profil PDF')
                ->icon('heroicon-o-printer')
                ->color('success')
                ->action(function (Application $record) {
                    $record->load(['opd', 'databaseSystem', 'hostingLocation', 'serviceType', 'usageFrequency', 'latestCategorization']);
                    $pdf = Pdf::loadView('pdf.application-profile', ['application' => $record]);
                    $slug = \Illuminate\Support\Str::slug($record->name) ?: 'aplikasi-' . $record->id;
                    return response()->streamDownload(
                        fn () => print($pdf->output()),
                        "profil-aplikasi-{$slug}.pdf"
                    );
                }),
            EditAction::make(),
        ];
    }
}

