<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\SoftDeletes;

class Application extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'opd_id',
        'source_type',
        'name',
        'vendor_name',
        'developer_name',
        'description',
        'launch_year',
        'platforms',
        'programming_languages',
        'database_system_id',
        'other_database',
        'hosting_location_id',
        'domain_url',
        'service_name',
        'service_type_id',
        'usage_frequency_id',
        'other_usage_frequency',
        'user_count_range',
        'integration_status',
        'integration_method',
        'integrated_applications',
        'integrated_opds',
        'legal_basis',
        'pic_name',
        'pic_nip',
        'pic_position',
        'pic_phone',
        'spt_file_path',
        'logo_file_path',
        'business_process_name',
        'business_process_file_path',
        'user_privileges_note',
        'future_plan',
        'asset_registration_number',
        'notes',
        'verification_status',
        'verification_notes',
        'is_active',
        'created_by',
        'updated_by',
        'verified_by',
        'verified_at',
    ];

    protected function casts(): array
    {
        return [
            'platforms' => 'array',
            'is_active' => 'boolean',
            'verified_at' => 'datetime',
        ];
    }

    public function opd(): BelongsTo
    {
        return $this->belongsTo(Opd::class);
    }

    public function databaseSystem(): BelongsTo
    {
        return $this->belongsTo(DatabaseManagementSystem::class, 'database_system_id');
    }

    public function hostingLocation(): BelongsTo
    {
        return $this->belongsTo(HostingLocation::class, 'hosting_location_id');
    }

    public function serviceType(): BelongsTo
    {
        return $this->belongsTo(ApplicationServiceType::class, 'service_type_id');
    }

    public function usageFrequency(): BelongsTo
    {
        return $this->belongsTo(UsageFrequency::class, 'usage_frequency_id');
    }

    public function creator(): BelongsTo
    {
        return $this->belongsTo(User::class, 'created_by');
    }

    public function updater(): BelongsTo
    {
        return $this->belongsTo(User::class, 'updated_by');
    }

    public function verifier(): BelongsTo
    {
        return $this->belongsTo(User::class, 'verified_by');
    }

    public function categorizations(): HasMany
    {
        return $this->hasMany(ElectronicSystemCategorization::class);
    }

    public function latestCategorization(): HasOne
    {
        return $this->hasOne(ElectronicSystemCategorization::class)->latestOfMany('assessment_year');
    }
}

