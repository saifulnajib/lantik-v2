<?php

declare(strict_types=1);

namespace App\Policies;

use App\Models\ElectronicSystemCategorization;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class ElectronicSystemCategorizationPolicy
{
    use HandlesAuthorization;

    private function isAdmin(User $user): bool
    {
        return $user->hasAnyRole(['super_admin', 'admin', 'admin_kominfo'])
            || in_array($user->role, ['super_admin', 'admin'], true);
    }

    public function viewAny(User $user): bool
    {
        return $this->isAdmin($user)
            || $user->role === 'opd'
            || $user->can('ViewAny:ElectronicSystemCategorization')
            || $user->can('view_any_electronic_system_categorization');
    }

    public function view(User $user, ElectronicSystemCategorization $categorization): bool
    {
        if ($this->isAdmin($user)) {
            return true;
        }

        if ($user->opd_id && (int) $user->opd_id !== (int) $categorization->opd_id) {
            return false;
        }

        return $user->role === 'opd'
            || $user->can('View:ElectronicSystemCategorization')
            || $user->can('view_electronic_system_categorization');
    }

    public function create(User $user): bool
    {
        return $this->isAdmin($user)
            || $user->role === 'opd'
            || $user->can('Create:ElectronicSystemCategorization')
            || $user->can('create_electronic_system_categorization');
    }

    public function update(User $user, ElectronicSystemCategorization $categorization): bool
    {
        if ($this->isAdmin($user)) {
            return true;
        }

        if ($user->opd_id && (int) $user->opd_id !== (int) $categorization->opd_id) {
            return false;
        }

        return $user->role === 'opd'
            || $user->can('Update:ElectronicSystemCategorization')
            || $user->can('update_electronic_system_categorization');
    }

    public function delete(User $user, ElectronicSystemCategorization $categorization): bool
    {
        if ($this->isAdmin($user)) {
            return true;
        }

        if ($user->opd_id && (int) $user->opd_id !== (int) $categorization->opd_id) {
            return false;
        }

        return $categorization->verification_status === 'draft'
            && ($user->can('Delete:ElectronicSystemCategorization') || $user->can('delete_electronic_system_categorization'));
    }

    public function restore(User $user, ElectronicSystemCategorization $categorization): bool
    {
        return $this->isAdmin($user)
            || $user->can('Restore:ElectronicSystemCategorization')
            || $user->can('restore_electronic_system_categorization');
    }

    public function forceDelete(User $user, ElectronicSystemCategorization $categorization): bool
    {
        return $this->isAdmin($user)
            || $user->can('ForceDelete:ElectronicSystemCategorization')
            || $user->can('force_delete_electronic_system_categorization');
    }
}

