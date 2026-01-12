<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Layanan extends Model
{
    protected $fillable = [
        'name',
        'description',
        'icon',
        'url',
        'is_active',
        'order',
    ];
}
