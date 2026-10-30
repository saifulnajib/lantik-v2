<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\MonitoringLog;
use Illuminate\Auth\Access\HandlesAuthorization;

class MonitoringLogPolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:MonitoringLog');
    }

    public function view(AuthUser $authUser, MonitoringLog $monitoringLog): bool
    {
        return $authUser->can('View:MonitoringLog');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:MonitoringLog');
    }

    public function update(AuthUser $authUser, MonitoringLog $monitoringLog): bool
    {
        return $authUser->can('Update:MonitoringLog');
    }

    public function delete(AuthUser $authUser, MonitoringLog $monitoringLog): bool
    {
        return $authUser->can('Delete:MonitoringLog');
    }

    public function deleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('DeleteAny:MonitoringLog');
    }

    public function restore(AuthUser $authUser, MonitoringLog $monitoringLog): bool
    {
        return $authUser->can('Restore:MonitoringLog');
    }

    public function forceDelete(AuthUser $authUser, MonitoringLog $monitoringLog): bool
    {
        return $authUser->can('ForceDelete:MonitoringLog');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:MonitoringLog');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:MonitoringLog');
    }

    public function replicate(AuthUser $authUser, MonitoringLog $monitoringLog): bool
    {
        return $authUser->can('Replicate:MonitoringLog');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:MonitoringLog');
    }

}