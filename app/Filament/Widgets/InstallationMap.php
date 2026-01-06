<?php

namespace App\Filament\Widgets;

use Filament\Widgets\Widget;

class InstallationMap extends Widget
{
    protected static ?int $sort = 3;

    protected int|string|array $columnSpan = 'full';

    protected string $view = 'widgets.installation-map';

    public array $locations = [];

    public function mount(): void
    {
        $this->locations = \App\Models\InstallationPoint::with('opd')
            ->get()
            ->map(function ($point) {
                return [
                    'lat' => $point->latitude,
                    'lng' => $point->longitude,
                    'name' => $point->nama_lokasi,
                    'opd' => $point->opd?->nama ?? '-',
                    'status' => $point->status,
                ];
            })
            ->toArray();
    }
}