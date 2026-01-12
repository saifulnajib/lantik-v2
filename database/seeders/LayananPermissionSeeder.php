<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class LayananPermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $permissions = [
            'view_layanan',
            'view_any_layanan',
            'create_layanan',
            'update_layanan',
            'restore_layanan',
            'restore_any_layanan',
            'replicate_layanan',
            'reorder_layanan',
            'delete_layanan',
            'delete_any_layanan',
            'force_delete_layanan',
            'force_delete_any_layanan',
        ];

        foreach ($permissions as $permission) {
            Permission::findOrCreate($permission, 'web');
        }

        $superAdmin = Role::where('name', 'super_admin')->first();

        if ($superAdmin) {
            $superAdmin->givePermissionTo($permissions);
        }
    }
}
