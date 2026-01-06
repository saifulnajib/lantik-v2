<?php

namespace App\Filament\Widgets;

use App\Models\InstallationPoint;
use Filament\Widgets\ChartWidget;

class StatusChart extends ChartWidget
{
    protected static ?int $sort = 2;

    protected ?string $heading = 'Distribusi Status Pemasangan';

    protected int|string|array $columnSpan = '1/2';

    protected function getData(): array
    {
        $data = InstallationPoint::groupBy('status')
            ->selectRaw('status, count(*) as count')
            ->pluck('count', 'status')
            ->toArray();

        $labels = [
            'pending' => 'Pending',
            'in_progress' => 'Dalam Progress',
            'completed' => 'Selesai',
            'maintenance' => 'Pemeliharaan',
        ];

        return [
            'datasets' => [
                [
                    'label' => 'Jumlah Titik',
                    'data' => [
                        $data['pending'] ?? 0,
                        $data['in_progress'] ?? 0,
                        $data['completed'] ?? 0,
                        $data['maintenance'] ?? 0,
                    ],
                    'backgroundColor' => [
                        '#94a3b8', // gray
                        '#3b82f6', // blue
                        '#22c55e', // green
                        '#eab308', // yellow
                    ],
                ],
            ],
            'labels' => array_values($labels),
        ];
    }

    protected function getType(): string
    {
        return 'doughnut';
    }
}
