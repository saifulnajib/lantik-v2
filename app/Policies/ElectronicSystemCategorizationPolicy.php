<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\ElectronicSystemCategorization;
use Illuminate\Auth\Access\HandlesAuthorization;

class ElectronicSystemCategorizationPolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:ElectronicSystemCategorization');
    }

    public function view(AuthUser $authUser, ElectronicSystemCategorization $electronicSystemCategorization): bool
    {
        return $authUser->can('View:ElectronicSystemCategorization');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:ElectronicSystemCategorization');
    }

    public function update(AuthUser $authUser, ElectronicSystemCategorization $electronicSystemCategorization): bool
    {
        return $authUser->can('Update:ElectronicSystemCategorization');
    }

    public function delete(AuthUser $authUser, ElectronicSystemCategorization $electronicSystemCategorization): bool
    {
        return $authUser->can('Delete:ElectronicSystemCategorization');
    }

    public function deleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('DeleteAny:ElectronicSystemCategorization');
    }

    public function restore(AuthUser $authUser, ElectronicSystemCategorization $electronicSystemCategorization): bool
    {
        return $authUser->can('Restore:ElectronicSystemCategorization');
    }

    public function forceDelete(AuthUser $authUser, ElectronicSystemCategorization $electronicSystemCategorization): bool
    {
        return $authUser->can('ForceDelete:ElectronicSystemCategorization');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:ElectronicSystemCategorization');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:ElectronicSystemCategorization');
    }

    public function replicate(AuthUser $authUser, ElectronicSystemCategorization $electronicSystemCategorization): bool
    {
        return $authUser->can('Replicate:ElectronicSystemCategorization');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:ElectronicSystemCategorization');
    }

}