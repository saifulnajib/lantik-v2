<?php

namespace App\Filament\Widgets;

use App\Models\InstallationPoint;
use App\Models\Opd;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class StatsOverview extends BaseWidget
{
    protected static ?int $sort = 1;

    protected function getStats(): array
    {
        // Count OPDs where all installation points are completed
        $opdSelesai = Opd::whereHas('installationPoints')
            ->whereDoesntHave('installationPoints', function ($query) {
                $query->where('status', '!=', 'completed');
            })
            ->count();

        return [
            Stat::make('Total Titik Lokasi', InstallationPoint::count())
                ->description('Titik pemasangan tersebar')
                ->descriptionIcon('heroicon-m-map-pin')
                ->color('primary'),

            Stat::make('Selesai Terpasang', InstallationPoint::where('status', 'completed')->count())
                ->description('Titik Pemasangan telah selesai')
                ->descriptionIcon('heroicon-m-check-circle')
                ->color('success'),

            Stat::make('Prioritas Tinggi', InstallationPoint::where('priority', '>=', 4)->count())
                ->description('Titik dengan urgensi tinggi')
                ->descriptionIcon('heroicon-m-exclamation-triangle')
                ->color('danger'),

            Stat::make('Total OPD', Opd::count())
                ->description('Organisasi terdaftar')
                ->descriptionIcon('heroicon-m-building-office-2')
                ->color('info'),

            Stat::make('OPD Pemasangan Selesai', $opdSelesai)
                ->description('OPD dengan semua titik selesai')
                ->descriptionIcon('heroicon-m-check-badge')
                ->color('success'),

            Stat::make('Total AP', InstallationPoint::sum('jumlah_ap'))
                ->description('Total Access Point')
                ->descriptionIcon('heroicon-m-wifi')
                ->color('warning'),
        ];
    }
}
