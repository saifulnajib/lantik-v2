<?php

namespace App\Filament\Resources\Applications\Pages;

use App\Filament\Resources\Applications\ApplicationResource;
use App\Models\ElectronicSystemCategorization;
use Filament\Resources\Pages\CreateRecord;

class CreateApplication extends CreateRecord
{
    protected static string $resource = ApplicationResource::class;

    protected array $kseData = [];

    protected function mutateFormDataBeforeCreate(array $data): array
    {
        $this->kseData = $data['kse_data'] ?? [];
        unset($data['kse_data']);

        $user = auth()->user();
        if ($user) {
            $data['created_by'] = $user->id;
            if ($user->opd_id && empty($data['opd_id'])) {
                $data['opd_id'] = $user->opd_id;
            }
        }

        return $data;
    }

    protected function afterCreate(): void
    {
        if (empty($this->kseData)) {
            return;
        }

        $record = $this->getRecord();
        $user = auth()->user();

        ElectronicSystemCategorization::updateOrCreate(
            [
                'application_id' => $record->id,
                'assessment_year' => (int) ($this->kseData['assessment_year'] ?? date('Y')),
            ],
            [
                'opd_id' => $record->opd_id,
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
                'is_active' => true,
                'assessed_by' => $user?->id,
            ]
        );
    }
}
