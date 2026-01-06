<?php

namespace App\Filament\Resources\MaintenanceRecords\Schemas;

use Filament\Forms\Components\DateTimePicker;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Textarea;
use Filament\Schemas\Schema;

class MaintenanceRecordForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Select::make('opd_id')
                    ->label('Pilih OPD Terlebih Dahulu')
                    ->options(\App\Models\Opd::pluck('nama', 'id'))
                    ->searchable()
                    ->preload()
                    ->live()
                    ->dehydrated(false)
                    ->afterStateUpdated(fn(callable $set) => $set('installation_point_id', null))
                    ->afterStateHydrated(function (Select $component, $state, callable $set, $get) {
                        $installationPointId = $get('installation_point_id');
                        if ($installationPointId) {
                            $installationPoint = \App\Models\InstallationPoint::find($installationPointId);
                            if ($installationPoint) {
                                $set('opd_id', $installationPoint->opd_id);
                            }
                        }
                    }),

                Select::make('installation_point_id')
                    ->label('Titik Pemasangan')
                    ->options(function (callable $get) {
                        $opdId = $get('opd_id');
                        if (!$opdId) {
                            return [];
                        }
                        return \App\Models\InstallationPoint::where('opd_id', $opdId)
                            ->pluck('nama_lokasi', 'id');
                    })
                    ->disabled(fn(callable $get) => !$get('opd_id'))
                    ->searchable()
                    ->preload()
                    ->required(),
                \Filament\Forms\Components\Hidden::make('user_id')
                    ->default(auth()->id()),
                Textarea::make('description')
                    ->required()
                    ->columnSpanFull(),
                Select::make('type')
                    ->options(['routine' => 'Routine', 'repair' => 'Repair', 'emergency' => 'Emergency'])
                    ->default('routine')
                    ->required(),
                DateTimePicker::make('resolved_at'),
            ]);
    }
}
