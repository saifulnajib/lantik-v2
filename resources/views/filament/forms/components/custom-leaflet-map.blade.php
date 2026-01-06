<x-dynamic-component :component="$getFieldWrapperView()" :field="$field">
    <div x-data="{
            state: $wire.entangle('{{ $getStatePath() }}'),
            map: null,
            marker: null,
            init() {
                this.initMap();
            },
            initMap() {
                if (typeof L === 'undefined') {
                    if (!document.getElementById('leaflet-css')) {
                        const link = document.createElement('link');
                        link.id = 'leaflet-css';
                        link.rel = 'stylesheet';
                        link.href = 'https://unpkg.com/leaflet@1.9.4/dist/leaflet.css';
                        document.head.appendChild(link);
                    }
                    if (!document.getElementById('leaflet-js')) {
                        const script = document.createElement('script');
                        script.id = 'leaflet-js';
                        script.src = 'https://unpkg.com/leaflet@1.9.4/dist/leaflet.js';
                        script.onload = () => this.initMap();
                        document.head.appendChild(script);
                        return;
                    }
                }

                const initialLat = this.$wire.get('{{ $getStatePath() }}.lat') || {{ $field->getDefaultLocation()[0] }};
                const initialLng = this.$wire.get('{{ $getStatePath() }}.lng') || {{ $field->getDefaultLocation()[1] }};

                this.map = L.map(this.$refs.map).setView([initialLat, initialLng], {{ $field->getDefaultZoom() }});

                L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                    attribution: '&copy; <a href=&quot;https://www.openstreetmap.org/copyright&quot;>OpenStreetMap</a> contributors'
                }).addTo(this.map);

                // Add existing marker if latitude/longitude exist
                if (initialLat && initialLng) {
                    this.updateMarker(initialLat, initialLng);
                }

                this.map.on('click', (e) => {
                    this.updateMarker(e.latlng.lat, e.latlng.lng);
                    this.$wire.set('{{ $getStatePath() }}', {
                        lat: e.latlng.lat,
                        lng: e.latlng.lng
                    });
                    
                    // Also update latitude/longitude fields if they are in the form
                    this.$wire.set('data.latitude', e.latlng.lat);
                    this.$wire.set('data.longitude', e.latlng.lng);
                });
            },
            updateMarker(lat, lng) {
                if (this.marker) {
                    this.map.removeLayer(this.marker);
                }

                const svgIcon = `
                    <svg width='30' height='42' viewBox='0 0 30 42' fill='none' xmlns='http://www.w3.org/2000/svg'>
                        <path d='M15 0C6.71573 0 0 6.71573 0 15C0 26.25 15 42 15 42C15 42 30 26.25 30 15C30 6.71573 23.2843 0 15 0ZM15 20.625C11.8934 20.625 9.375 18.1066 9.375 15C9.375 11.8934 11.8934 9.375 15 9.375C18.1066 9.375 20.625 11.8934 20.625 15C20.625 18.1066 18.1066 20.625 15 20.625Z' fill='#3b82f6' stroke='white' stroke-width='2'/>
                    </svg>
                `;

                const customIcon = L.divIcon({
                    className: 'custom-pin-icon',
                    html: svgIcon,
                    iconSize: [30, 42],
                    iconAnchor: [15, 42]
                });

                this.marker = L.marker([lat, lng], {
                    icon: customIcon,
                    draggable: true
                }).addTo(this.map);

                this.marker.on('dragend', (e) => {
                    const position = e.target.getLatLng();
                    this.$wire.set('{{ $getStatePath() }}', {
                        lat: position.lat,
                        lng: position.lng
                    });
                    this.$wire.set('data.latitude', position.lat);
                    this.$wire.set('data.longitude', position.lng);
                });
            }
        }" wire:ignore class="w-full rounded-xl overflow-hidden shadow-sm border border-gray-300"
        style="height: 450px;">
        <div x-ref="map" class="w-full h-full" style="height: 100%;"></div>
    </div>
</x-dynamic-component>