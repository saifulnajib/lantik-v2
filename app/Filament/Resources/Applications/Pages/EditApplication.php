<?php

namespace App\Filament\Resources\Applications\Pages;

use App\Filament\Resources\Applications\ApplicationResource;
use App\Models\ElectronicSystemCategorization;
use Filament\Actions\DeleteAction;
use Filament\Actions\ForceDeleteAction;
use Filament\Actions\RestoreAction;
use Filament\Actions\ViewAction;
use Filament\Resources\Pages\EditRecord;

class EditApplication extends EditRecord
{
    protected static string $resource = ApplicationResource::class;

    protected array $kseData = [];

    protected function getHeaderActions(): array
    {
        return [
            ViewAction::make(),
            DeleteAction::make(),
            ForceDeleteAction::make(),
            RestoreAction::make(),
        ];
    }

    protected function mutateFormDataBeforeFill(array $data): array
    {
        $kse = $this->getRecord()->latestCategorization;

        if ($kse) {
            $data['kse_data'] = [
                'assessment_year' => $kse->assessment_year,
                'score_investment_value' => $kse->score_investment_value,
                'score_operational_budget' => $kse->score_operational_budget,
                'score_legal_compliance' => $kse->score_legal_compliance,
                'score_cryptography_usage' => $kse->score_cryptography_usage,
                'score_user_base' => $kse->score_user_base,
                'score_personal_data_processing' => $kse->score_personal_data_processing,
                'score_data_confidentiality' => $kse->score_data_confidentiality,
                'score_business_process_criticality' => $kse->score_business_process_criticality,
                'score_failure_impact' => $kse->score_failure_impact,
                'score_potential_loss' => $kse->score_potential_loss,
                'total_score' => $kse->total_score,
                'category' => $kse->category,
                'notes' => $kse->notes,
            ];
        } else {
            $data['kse_data'] = [
                'assessment_year' => (int) date('Y'),
                'score_investment_value' => 1,
                'score_operational_budget' => 1,
                'score_legal_compliance' => 1,
                'score_cryptography_usage' => 1,
                'score_user_base' => 1,
                'score_personal_data_processing' => 1,
                'score_data_confidentiality' => 1,
                'score_business_process_criticality' => 1,
                'score_failure_impact' => 1,
                'score_potential_loss' => 1,
                'total_score' => 10,
                'category' => 'RENDAH',
                'notes' => null,
            ];
        }

        return $data;
    }

    protected function mutateFormDataBeforeSave(array $data): array
    {
        $this->kseData = $data['kse_data'] ?? [];
        unset($data['kse_data']);

        $user = auth()->user();
        if ($user) {
            $data['updated_by'] = $user->id;
            if (($data['verification_status'] ?? null) === 'verified' && empty($data['verified_at'])) {
                $data['verified_by'] = $user->id;
                $data['verified_at'] = now();
            }
        }

        return $data;
    }

    protected function afterSave(): void
    {
        if (empty($this->kseData)) {
            return;
        }

        $record = $this->getRecord();
        $user = auth()->user();
        $latestKse = $record->latestCategorization()->first();
        $assessmentYear = (int) ($this->kseData['assessment_year'] ?? ($latestKse?->assessment_year ?? date('Y')));

        $attributes = [
            'application_id' => $record->id,
            'opd_id' => $record->opd_id,
            'assessment_year' => $assessmentYear,
            'score_investment_value' => (int) ($this->kseData['score_investment_value'] ?? 1),
            'score_operational_budget' => (int) ($this->kseData['score_operational_budget'] ?? 1),
            'score_legal_compliance' => (int) ($this->kseData['score_legal_compliance'] ?? 1),
            'score_cryptography_usage' => (int) ($this->kseData['score_cryptography_usage'] ?? 1),
            'score_user_base' => (int) ($this->kseData['score_user_base'] ?? 1),
            'score_personal_data_processing' => (int) ($this->kseData['score_personal_data_processing'] ?? 1),
            'score_data_confidentiality' => (int) ($this->kseData['score_data_confidentiality'] ?? 1),
            'score_business_process_criticality' => (int) ($this->kseData['score_business_process_criticality'] ?? 1),
            'score_failure_impact' => (int) ($this->kseData['score_failure_impact'] ?? 1),
            'score_potential_loss' => (int) ($this->kseData['score_potential_loss'] ?? 1),
            'notes' => $this->kseData['notes'] ?? null,
            'verification_status' => $record->verification_status ?? 'draft',
            'verification_notes' => $record->verification_notes,
            'verified_by' => $record->verified_by,
            'verified_at' => $record->verified_at,
            'is_active' => true,
        ];

        if ($latestKse) {
            $latestKse->update($attributes);
        } else {
            $attributes['assessed_by'] = $user?->id;
            ElectronicSystemCategorization::create($attributes);
        }
    }
}
