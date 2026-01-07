<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $user = User::updateOrCreate(
            ['email' => 'saifulnajib17@gmail.com'],
            [
                'name' => 'Administrator',
                'password' => Hash::make('1qazxsw2'),
            ]
        );

        // Assign super_admin role
        // Filament Shield automatically creates the super_admin role
        $user->assignRole('super_admin');
    }
}
