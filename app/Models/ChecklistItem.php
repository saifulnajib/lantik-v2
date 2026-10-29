<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ChecklistItem extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'checklist_category_id',
        'name',
        'type',
        'expected_condition',
    ];

    public function category()
    {
        return $this->belongsTo(ChecklistCategory::class, 'checklist_category_id');
    }

    public function monitoringLogDetails()
    {
        return $this->hasMany(MonitoringLogDetail::class);
    }
}
