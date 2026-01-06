<x-filament-widgets::widget>
    <x-filament::section>
        <x-slot name="heading">
            Peta Sebaran Titik Pemasangan
        </x-slot>

        <div x-data="{
                locations: @js($locations),
                map: null,
                markers: [],
                init() {
                    // Wait for Leaflet to be available if needed, though usually loaded via CDN or layout
                    this.initMap();
                },
                initMap() {
                    if (typeof L === 'undefined') {
                        // Dynamically load Leaflet if not present
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

                    // Center on Tanjungpinang
                    this.map = L.map(this.$refs.map).setView([0.9165, 104.4556], 12);

                    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                        attribution: '&copy; <a href=&quot;https://www.openstreetmap.org/copyright&quot;>OpenStreetMap</a> contributors'
                    }).addTo(this.map);

                    this.loadMarkers();
                },
                loadMarkers() {
                    this.locations.forEach(location => {
                        if (location.lat && location.lng) {
                            const markerColor = this.getMarkerColor(location.status);
                            
                            const svgIcon = `
                                <svg width='30' height='42' viewBox='0 0 30 42' fill='none' xmlns='http://www.w3.org/2000/svg'>
                                    <path d='M15 0C6.71573 0 0 6.71573 0 15C0 26.25 15 42 15 42C15 42 30 26.25 30 15C30 6.71573 23.2843 0 15 0ZM15 20.625C11.8934 20.625 9.375 18.1066 9.375 15C9.375 11.8934 11.8934 9.375 15 9.375C18.1066 9.375 20.625 11.8934 20.625 15C20.625 18.1066 18.1066 20.625 15 20.625Z' fill='${markerColor}' stroke='white' stroke-width='2'/>
                                </svg>
                            `;

                            const customIcon = L.divIcon({
                                className: 'custom-pin-icon',
                                html: svgIcon,
                                iconSize: [30, 42],
                                iconAnchor: [15, 42],
                                popupAnchor: [0, -40]
                            });

                            const marker = L.marker([parseFloat(location.lat), parseFloat(location.lng)], {
                                icon: customIcon,
                                title: location.name
                            }).addTo(this.map);

                            marker.bindPopup(`
                                <div class='p-2' style='font-family: inherit; color: #1e293b; min-width: 150px'>
                                    <h3 class='font-bold text-lg' style='margin-bottom: 4px'>${location.name}</h3>
                                    <p class='text-sm text-gray-500' style='margin-bottom: 8px'>${location.opd}</p>
                                    <div style='margin-top: 8px'>
                                        <span class='px-2 py-1 text-xs rounded-full ${this.getStatusClasses(location.status)}' style='font-weight: 600'>
                                            ${this.getStatusLabel(location.status)}
                                        </span>
                                    </div>
                                </div>
                            `);
                            
                            this.markers.push(marker);
                        }
                    });
                },
                getMarkerColor(status) {
                    switch (status) {
                        case 'pending': return '#94a3b8'; // Gray
                        case 'in_progress': return '#3b82f6'; // Blue
                        case 'completed': return '#22c55e'; // Green
                        case 'maintenance': return '#f59e0b'; // Amber/Orange
                        default: return '#ef4444'; // Red
                    }
                },
                getStatusClasses(status) {
                    const classes = {
                        'pending': 'bg-gray-100 text-gray-800',
                        'in_progress': 'bg-blue-100 text-blue-800',
                        'completed': 'bg-green-100 text-green-800',
                        'maintenance': 'bg-yellow-100 text-yellow-800',
                    };
                    return classes[status] || 'bg-gray-100 text-gray-800';
                },
                getStatusLabel(status) {
                    const labels = {
                        'pending': 'Pending',
                        'in_progress': 'Sedang Dikerjakan',
                        'completed': 'Selesai',
                        'maintenance': 'Pemeliharaan',
                    };
                    return labels[status] || status;
                }
            }" wire:ignore class="w-full h-[500px] rounded-xl overflow-hidden shadow-sm"
            style="height: 500px; display: block;">
            <div x-ref="map" class="w-full h-full" style="height: 100%; width: 100%;"></div>
        </div>
    </x-filament::section>
</x-filament-widgets::widget>