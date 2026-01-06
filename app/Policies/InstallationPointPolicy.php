<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\InstallationPoint;
use Illuminate\Auth\Access\HandlesAuthorization;

class InstallationPointPolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:InstallationPoint');
    }

    public function view(AuthUser $authUser, InstallationPoint $installationPoint): bool
    {
        return $authUser->can('View:InstallationPoint');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:InstallationPoint');
    }

    public function update(AuthUser $authUser, InstallationPoint $installationPoint): bool
    {
        return $authUser->can('Update:InstallationPoint');
    }

    public function delete(AuthUser $authUser, InstallationPoint $installationPoint): bool
    {
        return $authUser->can('Delete:InstallationPoint');
    }

    public function restore(AuthUser $authUser, InstallationPoint $installationPoint): bool
    {
        return $authUser->can('Restore:InstallationPoint');
    }

    public function forceDelete(AuthUser $authUser, InstallationPoint $installationPoint): bool
    {
        return $authUser->can('ForceDelete:InstallationPoint');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:InstallationPoint');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:InstallationPoint');
    }

    public function replicate(AuthUser $authUser, InstallationPoint $installationPoint): bool
    {
        return $authUser->can('Replicate:InstallationPoint');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:InstallationPoint');
    }

}