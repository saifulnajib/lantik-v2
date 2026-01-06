<?php

namespace App\Filament\Resources\InstallationPoints\Schemas;

use Cheesegrits\FilamentGoogleMaps\Fields\Map;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Schemas\Schema;

class InstallationPointForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->columns(2)
            ->components([
                Select::make('opd_id')
                    ->label('OPD')
                    ->relationship('opd', 'nama')
                    ->searchable()
                    ->preload()
                    ->required()
                    ->columnSpan(1),
                TextInput::make('nama_lokasi')
                    ->label('Nama Lokasi')
                    ->required()
                    ->maxLength(255)
                    ->columnSpan(1),
                Textarea::make('alamat')
                    ->label('Alamat Lengkap')
                    ->required()
                    ->rows(3)
                    ->columnSpanFull(),

                Map::make('location')
                    ->label('Pilih Lokasi di Peta (Klik untuk Pin)')
                    ->mapControls([
                        'mapTypeControl' => true,
                        'scaleControl' => true,
                        'streetViewControl' => true,
                        'rotateControl' => true,
                        'fullscreenControl' => true,
                        'searchBoxControl' => true,
                        'zoomControl' => true,
                    ])
                    ->height('450px')
                    ->defaultLocation([0.9167, 104.4500])
                    ->defaultZoom(13)
                    ->columnSpanFull()
                    ->clickable()
                    ->draggable()
                    ->debug() // Enable debug mode for visibility
                    ->dehydrated(false)
                    ->live()
                    ->afterStateUpdated(function ($state, callable $set) {
                        $set('latitude', $state['lat']);
                        $set('longitude', $state['lng']);
                    }),

                TextInput::make('latitude')
                    ->label('Latitude')
                    ->numeric()
                    ->readOnly()
                    ->live()
                    ->dehydrated()
                    ->columnSpan(1),
                TextInput::make('longitude')
                    ->label('Longitude')
                    ->numeric()
                    ->readOnly()
                    ->live()
                    ->dehydrated()
                    ->columnSpan(1),

                Select::make('priority')
                    ->label('Prioritas')
                    ->options([
                        5 => '⭐⭐⭐⭐⭐ Sangat Tinggi',
                        4 => '⭐⭐⭐⭐ Tinggi',
                        3 => '⭐⭐⭐ Sedang',
                        2 => '⭐⭐ Rendah',
                        1 => '⭐ Sangat Rendah',
                    ])
                    ->default(3)
                    ->required()
                    ->columnSpan(1),

                Select::make('status')
                    ->label('Status')
                    ->options([
                        'pending' => 'Pending',
                        'in_progress' => 'Dalam Progress',
                        'completed' => 'Selesai',
                        'maintenance' => 'Pemeliharaan',
                    ])
                    ->default('pending')
                    ->required()
                    ->columnSpan(1),

                DatePicker::make('target_completion_date')
                    ->label('Target Selesai')
                    ->native(false)
                    ->displayFormat('d/m/Y')
                    ->columnSpan(2),

                Textarea::make('notes')
                    ->label('Catatan')
                    ->rows(3)
                    ->columnSpanFull(),
            ]);
    }
}
