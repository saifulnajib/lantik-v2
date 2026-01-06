<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class ProgressUpdate extends Model
{
    protected $fillable = [
        'installation_point_id',
        'user_id',
        'description',
        'percentage',
        'status',
    ];

    protected $casts = [
        'percentage' => 'integer',
    ];

    protected static function booted(): void
    {
        static::created(function (ProgressUpdate $progressUpdate) {
            if ($progressUpdate->status) {
                $progressUpdate->installationPoint()->update([
                    'status' => $progressUpdate->status,
                ]);
            }
        });

        static::updated(function (ProgressUpdate $progressUpdate) {
            if ($progressUpdate->status) {
                $progressUpdate->installationPoint()->update([
                    'status' => $progressUpdate->status,
                ]);
            }
        });
    }

    public function installationPoint(): BelongsTo
    {
        return $this->belongsTo(InstallationPoint::class);
    }

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    public function photos(): HasMany
    {
        return $this->hasMany(ProgressPhoto::class);
    }
}
