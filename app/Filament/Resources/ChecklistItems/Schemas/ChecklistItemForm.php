<?php

namespace App\Filament\Resources\ChecklistItems\Schemas;

use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Schemas\Schema;

class ChecklistItemForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Select::make('checklist_category_id')
                    ->relationship('category', 'name')
                    ->required()
                    ->searchable()
                    ->preload(),
                TextInput::make('name')
                    ->required(),
                Select::make('type')
                    ->options(['daily' => 'Daily', 'monthly' => 'Monthly', 'both' => 'Both'])
                    ->default('daily')
                    ->required(),
                TextInput::make('expected_condition'),
            ]);
    }
}
