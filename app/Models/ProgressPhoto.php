<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class ProgressPhoto extends Model
{
    protected $fillable = [
        'progress_update_id',
        'photo_path',
        'caption',
    ];

    public function progressUpdate(): BelongsTo
    {
        return $this->belongsTo(ProgressUpdate::class);
    }
}
