<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\HostingLocation;
use Illuminate\Auth\Access\HandlesAuthorization;

class HostingLocationPolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:HostingLocation');
    }

    public function view(AuthUser $authUser, HostingLocation $hostingLocation): bool
    {
        return $authUser->can('View:HostingLocation');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:HostingLocation');
    }

    public function update(AuthUser $authUser, HostingLocation $hostingLocation): bool
    {
        return $authUser->can('Update:HostingLocation');
    }

    public function delete(AuthUser $authUser, HostingLocation $hostingLocation): bool
    {
        return $authUser->can('Delete:HostingLocation');
    }

    public function deleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('DeleteAny:HostingLocation');
    }

    public function restore(AuthUser $authUser, HostingLocation $hostingLocation): bool
    {
        return $authUser->can('Restore:HostingLocation');
    }

    public function forceDelete(AuthUser $authUser, HostingLocation $hostingLocation): bool
    {
        return $authUser->can('ForceDelete:HostingLocation');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:HostingLocation');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:HostingLocation');
    }

    public function replicate(AuthUser $authUser, HostingLocation $hostingLocation): bool
    {
        return $authUser->can('Replicate:HostingLocation');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:HostingLocation');
    }

}