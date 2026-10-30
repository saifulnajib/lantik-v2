<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\ChecklistItem;
use Illuminate\Auth\Access\HandlesAuthorization;

class ChecklistItemPolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:ChecklistItem');
    }

    public function view(AuthUser $authUser, ChecklistItem $checklistItem): bool
    {
        return $authUser->can('View:ChecklistItem');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:ChecklistItem');
    }

    public function update(AuthUser $authUser, ChecklistItem $checklistItem): bool
    {
        return $authUser->can('Update:ChecklistItem');
    }

    public function delete(AuthUser $authUser, ChecklistItem $checklistItem): bool
    {
        return $authUser->can('Delete:ChecklistItem');
    }

    public function deleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('DeleteAny:ChecklistItem');
    }

    public function restore(AuthUser $authUser, ChecklistItem $checklistItem): bool
    {
        return $authUser->can('Restore:ChecklistItem');
    }

    public function forceDelete(AuthUser $authUser, ChecklistItem $checklistItem): bool
    {
        return $authUser->can('ForceDelete:ChecklistItem');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:ChecklistItem');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:ChecklistItem');
    }

    public function replicate(AuthUser $authUser, ChecklistItem $checklistItem): bool
    {
        return $authUser->can('Replicate:ChecklistItem');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:ChecklistItem');
    }

}