<?php

namespace App\Filament\Resources\MonitoringLogs\Schemas;

use App\Models\ChecklistItem;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\Hidden;
use Filament\Forms\Components\Section;
use Filament\Schemas\Schema;

class MonitoringLogForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Select::make('server_id')
                    ->relationship('server', 'name')
                    ->required()
                    ->searchable()
                    ->preload(),
                Select::make('user_id')
                    ->relationship('user', 'name')
                    ->default(auth()->id())
                    ->required()
                    ->searchable()
                    ->preload(),
                Select::make('type')
                    ->options(['daily' => 'Daily', 'monthly' => 'Monthly'])
                    ->live()
                    ->afterStateUpdated(function ($state, callable $set) {
                        if (!$state)
                            return;

                        $items = ChecklistItem::whereIn('type', [$state, 'both'])->get();
                        $details = [];
                        foreach ($items as $item) {
                            $details[] = [
                                'checklist_item_id' => $item->id,
                                'status' => 'ok',
                                'notes' => '',
                            ];
                        }
                        $set('details', $details);
                    })
                    ->required(),
                DatePicker::make('log_date')
                    ->default(now())
                    ->required(),
                Select::make('overall_status')
                    ->options(['good' => 'Good', 'needs_attention' => 'Needs attention', 'critical' => 'Critical'])
                    ->default('good')
                    ->required(),
                Textarea::make('notes')
                    ->columnSpanFull(),

                Repeater::make('details')
                    ->relationship()
                    ->schema([
                        Select::make('checklist_item_id')
                            ->relationship('checklistItem', 'name')
                            ->required()
                            ->disableOptionsWhenSelectedInSiblingRepeaterItems()
                            ->columnSpan(2),
                        Select::make('status')
                            ->options([
                                'ok' => 'OK',
                                'not_ok' => 'Not OK',
                                'n/a' => 'N/A',
                            ])
                            ->default('ok')
                            ->required()
                            ->columnSpan(1),
                        Textarea::make('notes')
                            ->rows(1)
                            ->columnSpan(3),
                    ])
                    ->columns(6)
                    ->columnSpanFull()
                    ->mutateRelationshipDataBeforeCreateUsing(function (array $data): array {
                        return $data;
                    })
            ]);
    }
}
