<?php

declare(strict_types=1);

namespace App\Policies;

use App\Models\Application;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class ApplicationPolicy
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
            || $user->can('ViewAny:Application')
            || $user->can('view_any_application');
    }

    public function view(User $user, Application $application): bool
    {
        if ($this->isAdmin($user)) {
            return true;
        }

        if ($user->opd_id && (int) $user->opd_id !== (int) $application->opd_id) {
            return false;
        }

        return $user->role === 'opd'
            || $user->can('View:Application')
            || $user->can('view_application');
    }

    public function create(User $user): bool
    {
        return $this->isAdmin($user)
            || $user->role === 'opd'
            || $user->can('Create:Application')
            || $user->can('create_application');
    }

    public function update(User $user, Application $application): bool
    {
        if ($this->isAdmin($user)) {
            return true;
        }

        if ($user->opd_id && (int) $user->opd_id !== (int) $application->opd_id) {
            return false;
        }

        return $user->role === 'opd'
            || $user->can('Update:Application')
            || $user->can('update_application');
    }

    public function delete(User $user, Application $application): bool
    {
        if ($this->isAdmin($user)) {
            return true;
        }

        if ($user->opd_id && (int) $user->opd_id !== (int) $application->opd_id) {
            return false;
        }

        return $application->verification_status === 'draft'
            && ($user->can('Delete:Application') || $user->can('delete_application'));
    }

    public function restore(User $user, Application $application): bool
    {
        return $this->isAdmin($user)
            || $user->can('Restore:Application')
            || $user->can('restore_application');
    }

    public function forceDelete(User $user, Application $application): bool
    {
        return $this->isAdmin($user)
            || $user->can('ForceDelete:Application')
            || $user->can('force_delete_application');
    }
}

