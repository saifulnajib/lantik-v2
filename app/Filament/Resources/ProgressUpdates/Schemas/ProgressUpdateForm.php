<?php

namespace App\Filament\Resources\ProgressUpdates\Schemas;

use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Hidden;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\Section;
use Filament\Schemas\Schema;

class ProgressUpdateForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->columns(2)
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
                        // Pre-fill OPD if installation_point_id is present (edit mode)
                        $installationPointId = $get('installation_point_id');
                        if ($installationPointId) {
                            $installationPoint = \App\Models\InstallationPoint::find($installationPointId);
                            if ($installationPoint) {
                                $set('opd_id', $installationPoint->opd_id);
                            }
                        }
                    })
                    ->columnSpan(1),

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
                    ->required()
                    ->columnSpan(1),

                Hidden::make('user_id')
                    ->default(auth()->id()),

                TextInput::make('percentage')
                    ->label('Persentase Kemajuan (%)')
                    ->numeric()
                    ->required()
                    ->minValue(0)
                    ->maxValue(100)
                    ->suffix('%')
                    ->columnSpan(1),

                Select::make('status')
                    ->label('Update Status Project')
                    ->options([
                        'pending' => 'Pending',
                        'in_progress' => 'In Progress',
                        'completed' => 'Completed',
                        'maintenance' => 'Maintenance',
                    ])
                    ->native(false)
                    ->columnSpan(1),

                Textarea::make('description')
                    ->label('Keterangan Kemajuan')
                    ->required()
                    ->rows(3)
                    ->columnSpanFull(),

                Repeater::make('photos')
                    ->relationship('photos')
                    ->label('Foto Dokumentasi')
                    ->schema([
                        FileUpload::make('photo_path')
                            ->label('Upload Foto')
                            ->image()
                            ->directory('progress-photos')
                            ->required(),
                        TextInput::make('caption')
                            ->label('Keterangan Foto')
                            ->maxLength(255),
                    ])
                    ->columns(2)
                    ->columnSpanFull()
                    ->grid(2)
                    ->itemLabel(fn(array $state): ?string => $state['caption'] ?? null),
            ]);
    }
}
