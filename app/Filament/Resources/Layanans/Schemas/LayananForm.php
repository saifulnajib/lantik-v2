<?php

namespace App\Filament\Resources\Layanans\Schemas;

use Filament\Schemas\Schema;

class LayananForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                \Filament\Forms\Components\TextInput::make('name')
                    ->required()
                    ->maxLength(255),
                \Filament\Forms\Components\Textarea::make('description')
                    ->required()
                    ->columnSpanFull(),
                \Filament\Forms\Components\TextInput::make('icon')
                    ->label('Lucide Icon Name')
                    ->placeholder('e.g. Zap, Activity, Globe')
                    ->helperText('Uses Lucide icon names. Default is "Zap" if empty.'),
                \Filament\Forms\Components\TextInput::make('url')
                    ->label('URL / Path')
                    ->required()
                    ->maxLength(255),
                \Filament\Forms\Components\Toggle::make('is_active')
                    ->label('Is Service Active?')
                    ->default(true),
                \Filament\Forms\Components\TextInput::make('order')
                    ->numeric()
                    ->default(0),
            ]);
    }
}
