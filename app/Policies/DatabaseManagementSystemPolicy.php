<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\DatabaseManagementSystem;
use Illuminate\Auth\Access\HandlesAuthorization;

class DatabaseManagementSystemPolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:DatabaseManagementSystem');
    }

    public function view(AuthUser $authUser, DatabaseManagementSystem $databaseManagementSystem): bool
    {
        return $authUser->can('View:DatabaseManagementSystem');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:DatabaseManagementSystem');
    }

    public function update(AuthUser $authUser, DatabaseManagementSystem $databaseManagementSystem): bool
    {
        return $authUser->can('Update:DatabaseManagementSystem');
    }

    public function delete(AuthUser $authUser, DatabaseManagementSystem $databaseManagementSystem): bool
    {
        return $authUser->can('Delete:DatabaseManagementSystem');
    }

    public function deleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('DeleteAny:DatabaseManagementSystem');
    }

    public function restore(AuthUser $authUser, DatabaseManagementSystem $databaseManagementSystem): bool
    {
        return $authUser->can('Restore:DatabaseManagementSystem');
    }

    public function forceDelete(AuthUser $authUser, DatabaseManagementSystem $databaseManagementSystem): bool
    {
        return $authUser->can('ForceDelete:DatabaseManagementSystem');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:DatabaseManagementSystem');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:DatabaseManagementSystem');
    }

    public function replicate(AuthUser $authUser, DatabaseManagementSystem $databaseManagementSystem): bool
    {
        return $authUser->can('Replicate:DatabaseManagementSystem');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:DatabaseManagementSystem');
    }

}