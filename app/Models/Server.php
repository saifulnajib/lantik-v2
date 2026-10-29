<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Server extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'name',
        'ip_address',
        'spesification',
        'status',
    ];

    public function monitoringLogs()
    {
        return $this->hasMany(MonitoringLog::class);
    }
}
