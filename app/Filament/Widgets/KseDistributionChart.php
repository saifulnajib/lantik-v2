<?php

namespace App\Filament\Widgets;

use App\Models\ElectronicSystemCategorization;
use Filament\Widgets\ChartWidget;

class KseDistributionChart extends ChartWidget
{
    protected static ?int $sort = 7;

    protected ?string $heading = 'Distribusi Kategori Sistem Elektronik (KSE)';

    protected int|string|array $columnSpan = '1/2';

    protected function getData(): array
    {
        $counts = ElectronicSystemCategorization::query()
            ->selectRaw('category, count(*) as total')
            ->groupBy('category')
            ->pluck('total', 'category')
            ->toArray();

        return [
            'datasets' => [
                [
                    'label' => 'Jumlah Sistem Elektronik',
                    'data' => [
                        $counts['STRATEGIS'] ?? 0,
                        $counts['TINGGI'] ?? 0,
                        $counts['RENDAH'] ?? 0,
                    ],
                    'backgroundColor' => [
                        '#ef4444', // red (STRATEGIS)
                        '#f59e0b', // amber (TINGGI)
                        '#22c55e', // green (RENDAH)
                    ],
                ],
            ],
            'labels' => ['STRATEGIS', 'TINGGI', 'RENDAH'],
        ];
    }

    protected function getType(): string
    {
        return 'pie';
    }
}

