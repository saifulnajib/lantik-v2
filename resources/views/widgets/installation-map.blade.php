<x-filament-widgets::widget>
    <x-filament::section>
        <x-slot name="heading">
            Peta Sebaran Titik Pemasangan
        </x-slot>

        <div x-data="{
                locations: @js($locations),
                init() {
                    let interval = setInterval(() => {
                        if (typeof google !== 'undefined') {
                            clearInterval(interval);
                            console.log('Google Maps loaded, initializing widget...');
                            this.initMap();
                        } else {
                            console.log('Waiting for Google Maps...');
                        }
                    }, 500);
                },
                initMap() {
                    if (typeof google === 'undefined') {
                        console.error('Google Maps API not loaded');
                        return;
                    }

                    const map = new google.maps.Map(this.$refs.map, {
                        center: { lat: 0.9165, lng: 104.4556 }, // Tanjungpinang coordinates
                        zoom: 12,
                        mapTypeId: google.maps.MapTypeId.ROADMAP,
                        styles: [
                            {
                                featureType: 'poi',
                                elementType: 'labels',
                                stylers: [{ visibility: 'off' }]
                            }
                        ]
                    });

                    const infoWindow = new google.maps.InfoWindow();

                    this.locations.forEach(location => {
                        if (location.lat && location.lng) {
                            const marker = new google.maps.Marker({
                                position: { lat: parseFloat(location.lat), lng: parseFloat(location.lng) },
                                map: map,
                                title: location.name,
                                icon: this.getMarkerIcon(location.status)
                            });

                            marker.addListener('click', () => {
                                infoWindow.setContent(`
                                    <div class='p-2'>
                                        <h3 class='font-bold text-lg'>${location.name}</h3>
                                        <p class='text-sm text-gray-600'>${location.opd}</p>
                                        <div class='mt-2'>
                                            <span class='px-2 py-1 text-xs rounded-full ${this.getStatusColor(location.status)}'>
                                                ${this.getStatusLabel(location.status)}
                                            </span>
                                        </div>
                                    </div>
                                `);
                                infoWindow.open(map, marker);
                            });
                        }
                    });
                },
                getStatusColor(status) {
                    const colors = {
                        'pending': 'bg-gray-100 text-gray-800',
                        'in_progress': 'bg-blue-100 text-blue-800',
                        'completed': 'bg-green-100 text-green-800',
                        'maintenance': 'bg-yellow-100 text-yellow-800',
                    };
                    return colors[status] || 'bg-gray-100 text-gray-800';
                },
                getStatusLabel(status) {
                    const labels = {
                        'pending': '<strong>Pending</strong>',
                        'in_progress': '<strong>Sedang Dikerjakan</strong>',
                        'completed': '<strong>Selesai</strong>',
                        'maintenance': '<strong>Pemeliharaan</strong>',
                    };
                    return labels[status] || status;
                },
                getMarkerIcon(status) {
                    let color = '#ea4335'; // default red
                    switch (status) {
                        case 'pending':
                            color = '#9ca3af'; // gray-400
                            break;
                        case 'in_progress':
                            color = '#3b82f6'; // blue-500
                            break;
                        case 'completed':
                            color = '#22c55e'; // green-500
                            break;
                        case 'maintenance':
                            color = '#eab308'; // yellow-500
                            break;
                    }

                    return {
                        path: 'M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zm0 9.5c-1.38 0-2.5-1.12-2.5-2.5s1.12-2.5 2.5-2.5 2.5 1.12 2.5 2.5-1.12 2.5-2.5 2.5z',
                        fillColor: color,
                        fillOpacity: 1,
                        strokeWeight: 1,
                        strokeColor: '#ffffff',
                        scale: 1.5,
                        anchor: new google.maps.Point(12, 22),
                    };
                }
            }" wire:ignore class="w-full h-[500px] rounded-xl overflow-hidden shadow-sm"
            style="height: 500px; display: block;">
            <div x-ref="map" class="w-full h-full" style="height: 100%; width: 100%;"></div>
        </div>
    </x-filament::section>
</x-filament-widgets::widget>