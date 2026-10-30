<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\ApplicationServiceType;
use Illuminate\Auth\Access\HandlesAuthorization;

class ApplicationServiceTypePolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:ApplicationServiceType');
    }

    public function view(AuthUser $authUser, ApplicationServiceType $applicationServiceType): bool
    {
        return $authUser->can('View:ApplicationServiceType');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:ApplicationServiceType');
    }

    public function update(AuthUser $authUser, ApplicationServiceType $applicationServiceType): bool
    {
        return $authUser->can('Update:ApplicationServiceType');
    }

    public function delete(AuthUser $authUser, ApplicationServiceType $applicationServiceType): bool
    {
        return $authUser->can('Delete:ApplicationServiceType');
    }

    public function deleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('DeleteAny:ApplicationServiceType');
    }

    public function restore(AuthUser $authUser, ApplicationServiceType $applicationServiceType): bool
    {
        return $authUser->can('Restore:ApplicationServiceType');
    }

    public function forceDelete(AuthUser $authUser, ApplicationServiceType $applicationServiceType): bool
    {
        return $authUser->can('ForceDelete:ApplicationServiceType');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:ApplicationServiceType');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:ApplicationServiceType');
    }

    public function replicate(AuthUser $authUser, ApplicationServiceType $applicationServiceType): bool
    {
        return $authUser->can('Replicate:ApplicationServiceType');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:ApplicationServiceType');
    }

}