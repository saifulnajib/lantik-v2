<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Casts\Attribute;

class InstallationPoint extends Model
{
    protected $fillable = [
        'opd_id',
        'nama_lokasi',
        'alamat',
        'latitude',
        'longitude',
        'priority',
        'status',
        'target_completion_date',
        'notes',
        'location',
    ];

    protected $appends = [
        'location',
    ];

    protected $casts = [
        'target_completion_date' => 'date',
        'priority' => 'integer',
    ];

    public function opd(): BelongsTo
    {
        return $this->belongsTo(Opd::class);
    }

    public function progressUpdates(): HasMany
    {
        return $this->hasMany(ProgressUpdate::class);
    }

    public function maintenanceRecords(): HasMany
    {
        return $this->hasMany(MaintenanceRecord::class);
    }

    public function latestProgress(): Attribute
    {
        return Attribute::make(
            get: fn() => $this->progressUpdates()->latest()->first()
        );
    }

    public function location(): Attribute
    {
        return Attribute::make(
            get: fn() => [
                'lat' => (float) $this->latitude,
                'lng' => (float) $this->longitude,
            ],
            set: fn($value) => [
                'latitude' => $value['lat'] ?? null,
                'longitude' => $value['lng'] ?? null,
            ],
        );
    }

    public static function getLatLngAttributes(): array
    {
        return [
            'lat' => 'latitude',
            'lng' => 'longitude',
        ];
    }

    public static function getComputedLocation(): string
    {
        return 'location';
    }
}
