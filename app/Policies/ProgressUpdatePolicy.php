<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\ProgressUpdate;
use Illuminate\Auth\Access\HandlesAuthorization;

class ProgressUpdatePolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:ProgressUpdate');
    }

    public function view(AuthUser $authUser, ProgressUpdate $progressUpdate): bool
    {
        return $authUser->can('View:ProgressUpdate');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:ProgressUpdate');
    }

    public function update(AuthUser $authUser, ProgressUpdate $progressUpdate): bool
    {
        return $authUser->can('Update:ProgressUpdate');
    }

    public function delete(AuthUser $authUser, ProgressUpdate $progressUpdate): bool
    {
        return $authUser->can('Delete:ProgressUpdate');
    }

    public function restore(AuthUser $authUser, ProgressUpdate $progressUpdate): bool
    {
        return $authUser->can('Restore:ProgressUpdate');
    }

    public function forceDelete(AuthUser $authUser, ProgressUpdate $progressUpdate): bool
    {
        return $authUser->can('ForceDelete:ProgressUpdate');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:ProgressUpdate');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:ProgressUpdate');
    }

    public function replicate(AuthUser $authUser, ProgressUpdate $progressUpdate): bool
    {
        return $authUser->can('Replicate:ProgressUpdate');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:ProgressUpdate');
    }

}