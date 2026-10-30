<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\UsageFrequency;
use Illuminate\Auth\Access\HandlesAuthorization;

class UsageFrequencyPolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:UsageFrequency');
    }

    public function view(AuthUser $authUser, UsageFrequency $usageFrequency): bool
    {
        return $authUser->can('View:UsageFrequency');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:UsageFrequency');
    }

    public function update(AuthUser $authUser, UsageFrequency $usageFrequency): bool
    {
        return $authUser->can('Update:UsageFrequency');
    }

    public function delete(AuthUser $authUser, UsageFrequency $usageFrequency): bool
    {
        return $authUser->can('Delete:UsageFrequency');
    }

    public function deleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('DeleteAny:UsageFrequency');
    }

    public function restore(AuthUser $authUser, UsageFrequency $usageFrequency): bool
    {
        return $authUser->can('Restore:UsageFrequency');
    }

    public function forceDelete(AuthUser $authUser, UsageFrequency $usageFrequency): bool
    {
        return $authUser->can('ForceDelete:UsageFrequency');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:UsageFrequency');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:UsageFrequency');
    }

    public function replicate(AuthUser $authUser, UsageFrequency $usageFrequency): bool
    {
        return $authUser->can('Replicate:UsageFrequency');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:UsageFrequency');
    }

}