<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class DataCenterMonitoringPermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $entities = [
            'server',
            'checklist_category',
            'checklist_item',
            'monitoring_log'
        ];

        $actions = [
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

        $permissionsToCreate = [];
        foreach ($entities as $entity) {
            foreach ($actions as $action) {
                $permissionsToCreate[] = "{$action}_{$entity}";
            }
        }

        foreach ($permissionsToCreate as $permission) {
            Permission::firstOrCreate(['name' => $permission, 'guard_name' => 'web']);
        }

        $superAdmin = Role::where('name', 'super_admin')->first();

        if ($superAdmin) {
            $superAdmin->givePermissionTo($permissionsToCreate);
        }
    }
}
