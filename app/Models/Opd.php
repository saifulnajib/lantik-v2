<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\SoftDeletes;

class Opd extends Model
{
    use SoftDeletes;
    protected $table = 'opd';

    protected $fillable = [
        'kode',
        'nama',
        'alamat',
        'kontak',
        'email',
    ];

    public function installationPoints(): HasMany
    {
        return $this->hasMany(InstallationPoint::class);
    }
}
