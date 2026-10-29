<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class MonitoringLog extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'server_id',
        'user_id',
        'type',
        'log_date',
        'overall_status',
        'notes',
    ];

    protected $casts = [
        'log_date' => 'date',
    ];

    public function server()
    {
        return $this->belongsTo(Server::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function details()
    {
        return $this->hasMany(MonitoringLogDetail::class);
    }
}
