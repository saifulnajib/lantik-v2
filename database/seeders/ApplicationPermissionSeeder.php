<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class ApplicationPermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $entities = [
            'application' => 'Application',
            'electronic_system_categorization' => 'ElectronicSystemCategorization',
            'application_service_type' => 'ApplicationServiceType',
            'database_management_system' => 'DatabaseManagementSystem',
            'hosting_location' => 'HostingLocation',
            'usage_frequency' => 'UsageFrequency',
        ];

        $snakeActions = [
            'view',
            'view_any',
            'create',
            'update',
            'restore',
            'restore_any',
            'replicate',
            'reorder',
            'delete',
            'delete_any',
            'force_delete',
            'force_delete_any',
        ];

        $pascalActions = [
            'View',
            'ViewAny',
            'Create',
            'Update',
            'Restore',
            'RestoreAny',
            'Replicate',
            'Reorder',
            'Delete',
            'DeleteAny',
            'ForceDelete',
            'ForceDeleteAny',
        ];

        $allPermissions = [];
        $opdPermissions = [];

        foreach ($entities as $snake => $pascal) {
            foreach ($snakeActions as $action) {
                $perm = "{$action}_{$snake}";
                $allPermissions[] = $perm;
                if (in_array($snake, ['application', 'electronic_system_categorization'], true) && in_array($action, ['view', 'view_any', 'create', 'update'], true)) {
                    $opdPermissions[] = $perm;
                }
            }

            foreach ($pascalActions as $action) {
                $perm = "{$action}:{$pascal}";
                $allPermissions[] = $perm;
                if (in_array($pascal, ['Application', 'ElectronicSystemCategorization'], true) && in_array($action, ['View', 'ViewAny', 'Create', 'Update'], true)) {
                    $opdPermissions[] = $perm;
                }
            }
        }

        foreach ($allPermissions as $permission) {
            Permission::findOrCreate($permission, 'web');
        }

        // Roles
        $superAdmin = Role::findOrCreate('super_admin', 'web');
        $admin = Role::findOrCreate('admin', 'web');
        $adminKominfo = Role::findOrCreate('admin_kominfo', 'web');
        $opdRole = Role::findOrCreate('opd', 'web');

        $superAdmin->givePermissionTo($allPermissions);
        $admin->givePermissionTo($allPermissions);
        $adminKominfo->givePermissionTo($allPermissions);
        $opdRole->givePermissionTo($opdPermissions);
    }
}

