<?php

namespace App\Imports;

use App\Models\InstallationPoint;
use App\Models\Opd;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\WithValidation;
use Illuminate\Support\Str;

class InstallationPointsImport implements ToModel, WithHeadingRow, WithValidation
{
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */
    public function model(array $row)
    {
        // Lookup OPD by name or acronym
        $opdName = $row['unit_kerja'] ?? $row['opd'] ?? null;
        $opd = Opd::where('kode', $opdName)->orWhere('nama', 'like', "%{$opdName}%")->first();

        if (!$opd) {
            return null;
        }

        // Parse Priority (stars or number)
        $priorityRaw = $row['prioritas'] ?? $row['priority'] ?? 3;
        $priority = 3;
        if (is_numeric($priorityRaw)) {
            $priority = (int) $priorityRaw;
        } else {
            // Count stars if it's a string of stars
            $priority = substr_count($priorityRaw, '★') ?: 3;
        }

        // Parse Coordinates from 'Ti Lok' if needed
        // Format: 0° 56' 15.6462" N 104° 27' 01.3218" E
        $lat = $row['latitude'] ?? null;
        $lng = $row['longitude'] ?? null;

        $tiLok = $row['ti_lok'] ?? null;
        if ($tiLok && (!$lat || !$lng)) {
            // Very basic Dms to Decimal parser (can be improved)
            // For now, if it's not decimal, we might need a more robust parser
            // But if user provides decimal in lat/lng columns, use those
        }

        return new InstallationPoint([
            'opd_id' => $opd->id,
            'nama_lokasi' => $row['lokasi'] ?? $row['nama_lokasi'],
            'alamat' => $row['alamat'] ?? $row['lokasi'],
            'latitude' => $lat,
            'longitude' => $lng,
            'priority' => $priority,
            'status' => 'pending',
            'notes' => $row['keterangan'] ?? null,
        ]);
    }

    public function rules(): array
    {
        return [
            'unit_kerja' => 'required',
            'lokasi' => 'required',
        ];
    }
}
