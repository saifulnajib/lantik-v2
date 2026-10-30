<?php

namespace App\Filament\Widgets;

use App\Models\Application;
use App\Models\HostingLocation;
use Filament\Widgets\ChartWidget;

class ApplicationHostingChart extends ChartWidget
{
    protected static ?int $sort = 6;

    protected ?string $heading = 'Distribusi Lokasi Hosting Aplikasi';

    protected int|string|array $columnSpan = '1/2';

    protected function getData(): array
    {
        $locations = HostingLocation::withCount('applications')->get();

        return [
            'datasets' => [
                [
                    'label' => 'Jumlah Aplikasi',
                    'data' => $locations->pluck('applications_count')->toArray(),
                    'backgroundColor' => [
                        '#3b82f6',
                        '#f59e0b',
                        '#10b981',
                        '#8b5cf6',
                    ],
                ],
            ],
            'labels' => $locations->pluck('name')->toArray(),
        ];
    }

    protected function getType(): string
    {
        return 'doughnut';
    }
}

