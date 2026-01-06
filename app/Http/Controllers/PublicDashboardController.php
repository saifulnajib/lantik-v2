<?php

namespace App\Http\Controllers;

use App\Models\InstallationPoint;
use App\Models\ProgressUpdate;
use App\Models\Opd;
use Illuminate\Http\Request;

class PublicDashboardController extends Controller
{
    public function index()
    {
        $stats = [
            'total' => InstallationPoint::count(),
            'completed' => InstallationPoint::where('status', 'completed')->count(),
            'in_progress' => InstallationPoint::where('status', 'in_progress')->count(),
            'pending' => InstallationPoint::where('status', 'pending')->count(),
        ];

        $points = InstallationPoint::with('opd')->get()->map(function ($point) {
            return [
                'id' => $point->id,
                'nama' => $point->nama_lokasi,
                'opd' => $point->opd->nama,
                'opd_id' => $point->opd_id,
                'lat' => (float) $point->latitude,
                'lng' => (float) $point->longitude,
                'status' => $point->status,
                'percentage' => $point->progressUpdates()->latest()->first()?->percentage ?? 0,
            ];
        });

        $recentUpdates = ProgressUpdate::with(['installationPoint', 'user'])
            ->latest()
            ->limit(10)
            ->get();

        $opds = Opd::select('id', 'nama')->get();

        return view('public-dashboard', compact('stats', 'points', 'recentUpdates', 'opds'));
    }

    public function comingSoon()
    {
        return view('coming-soon');
    }
}
