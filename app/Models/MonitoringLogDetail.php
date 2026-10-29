<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MonitoringLogDetail extends Model
{
    protected $fillable = [
        'monitoring_log_id',
        'checklist_item_id',
        'status',
        'notes',
    ];

    public function monitoringLog()
    {
        return $this->belongsTo(MonitoringLog::class);
    }

    public function checklistItem()
    {
        return $this->belongsTo(ChecklistItem::class);
    }
}
