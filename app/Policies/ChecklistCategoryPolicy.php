<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\ChecklistCategory;
use Illuminate\Auth\Access\HandlesAuthorization;

class ChecklistCategoryPolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:ChecklistCategory');
    }

    public function view(AuthUser $authUser, ChecklistCategory $checklistCategory): bool
    {
        return $authUser->can('View:ChecklistCategory');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:ChecklistCategory');
    }

    public function update(AuthUser $authUser, ChecklistCategory $checklistCategory): bool
    {
        return $authUser->can('Update:ChecklistCategory');
    }

    public function delete(AuthUser $authUser, ChecklistCategory $checklistCategory): bool
    {
        return $authUser->can('Delete:ChecklistCategory');
    }

    public function deleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('DeleteAny:ChecklistCategory');
    }

    public function restore(AuthUser $authUser, ChecklistCategory $checklistCategory): bool
    {
        return $authUser->can('Restore:ChecklistCategory');
    }

    public function forceDelete(AuthUser $authUser, ChecklistCategory $checklistCategory): bool
    {
        return $authUser->can('ForceDelete:ChecklistCategory');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:ChecklistCategory');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:ChecklistCategory');
    }

    public function replicate(AuthUser $authUser, ChecklistCategory $checklistCategory): bool
    {
        return $authUser->can('Replicate:ChecklistCategory');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:ChecklistCategory');
    }

}