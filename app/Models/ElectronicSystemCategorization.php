<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\SoftDeletes;

class ElectronicSystemCategorization extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'application_id',
        'opd_id',
        'assessment_year',
        'score_investment_value',
        'score_operational_budget',
        'score_legal_compliance',
        'score_cryptography_usage',
        'score_user_base',
        'score_personal_data_processing',
        'score_data_confidentiality',
        'score_business_process_criticality',
        'score_failure_impact',
        'score_potential_loss',
        'total_score',
        'category',
        'notes',
        'verification_status',
        'verification_notes',
        'is_active',
        'assessed_by',
        'verified_by',
        'verified_at',
    ];

    protected function casts(): array
    {
        return [
            'is_active' => 'boolean',
            'verified_at' => 'datetime',
            'score_investment_value' => 'integer',
            'score_operational_budget' => 'integer',
            'score_legal_compliance' => 'integer',
            'score_cryptography_usage' => 'integer',
            'score_user_base' => 'integer',
            'score_personal_data_processing' => 'integer',
            'score_data_confidentiality' => 'integer',
            'score_business_process_criticality' => 'integer',
            'score_failure_impact' => 'integer',
            'score_potential_loss' => 'integer',
            'total_score' => 'integer',
        ];
    }

    protected static function booted(): void
    {
        static::saving(function (self $model) {
            $model->total_score = $model->calculateTotalScore();
            $model->category = self::determineCategory($model->total_score);
        });
    }

    public function calculateTotalScore(): int
    {
        return (int) $this->score_investment_value
            + (int) $this->score_operational_budget
            + (int) $this->score_legal_compliance
            + (int) $this->score_cryptography_usage
            + (int) $this->score_user_base
            + (int) $this->score_personal_data_processing
            + (int) $this->score_data_confidentiality
            + (int) $this->score_business_process_criticality
            + (int) $this->score_failure_impact
            + (int) $this->score_potential_loss;
    }

    public static function determineCategory(int $totalScore): string
    {
        if ($totalScore >= 35) {
            return 'STRATEGIS';
        }

        if ($totalScore >= 20) {
            return 'TINGGI';
        }

        return 'RENDAH';
    }

    public function application(): BelongsTo
    {
        return $this->belongsTo(Application::class);
    }

    public function opd(): BelongsTo
    {
        return $this->belongsTo(Opd::class);
    }

    public function assessor(): BelongsTo
    {
        return $this->belongsTo(User::class, 'assessed_by');
    }

    public function verifier(): BelongsTo
    {
        return $this->belongsTo(User::class, 'verified_by');
    }
}

