<?php

namespace App\Filament\Widgets;

use App\Models\Application;
use App\Models\ElectronicSystemCategorization;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class ApplicationStatsOverview extends BaseWidget
{
    protected static ?int $sort = 5;

    protected function getStats(): array
    {
        $totalApps = Application::count();
        $activeApps = Application::where('is_active', true)->count();
        $verifiedApps = Application::where('verification_status', 'verified')->count();
        $totalKse = ElectronicSystemCategorization::count();

        return [
            Stat::make('Total Aplikasi Terdata', $totalApps)
                ->description("{$activeApps} Aplikasi beroperasi aktif")
                ->descriptionIcon('heroicon-m-computer-desktop')
                ->color('primary'),

            Stat::make('Aplikasi Terverifikasi', $verifiedApps)
                ->description('Telah diverifikasi Diskominfo')
                ->descriptionIcon('heroicon-m-check-badge')
                ->color('success'),

            Stat::make('Penilaian KSE', $totalKse)
                ->description('Instrumen Kategorisasi SE')
                ->descriptionIcon('heroicon-m-shield-check')
                ->color('info'),
        ];
    }
}

