<?php

namespace App\Filament\Forms\Components;

use Filament\Forms\Components\Field;

class CustomLeafletMap extends Field
{
    protected string $view = 'filament.forms.components.custom-leaflet-map';

    protected int $defaultZoom = 13;

    protected array $defaultLocation = [0.9167, 104.4500];

    public function defaultZoom(int $zoom): self
    {
        $this->defaultZoom = $zoom;
        return $this;
    }

    public function defaultLocation(array $location): self
    {
        $this->defaultLocation = $location;
        return $this;
    }

    public function getDefaultZoom(): int
    {
        return $this->defaultZoom;
    }

    public function getDefaultLocation(): array
    {
        return $this->defaultLocation;
    }
}
