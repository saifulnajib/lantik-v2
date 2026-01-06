<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MONJA - Monitoring Jaringan Tanjungpinang</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;600;700&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary: #3b82f6;
            --success: #22c55e;
            --warning: #eab308;
            --danger: #ef4444;
            --dark: #0f172a;
            --glass: rgba(255, 255, 255, 0.05);
            --glass-border: rgba(255, 255, 255, 0.1);
        }

        body {
            font-family: 'Outfit', sans-serif;
            background-color: var(--dark);
            color: #f8fafc;
            margin: 0;
            padding: 0;
            overflow-x: hidden;
        }

        header {
            padding: 2rem;
            text-align: center;
            background: linear-gradient(to bottom, rgba(59, 130, 246, 0.1), transparent);
        }

        header h1 {
            margin: 0;
            font-size: 2.5rem;
            font-weight: 700;
            letter-spacing: -0.025em;
        }

        header p {
            color: #94a3b8;
            margin-top: 0.5rem;
        }

        .container {
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 2rem 4rem;
        }

        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
            gap: 1.5rem;
            margin-bottom: 2rem;
        }

        .stat-card {
            background: var(--glass);
            backdrop-filter: blur(12px);
            border: 1px solid var(--glass-border);
            padding: 1.5rem;
            border-radius: 1.5rem;
            text-align: center;
            transition: transform 0.3s ease, border-color 0.3s ease;
        }

        .stat-card:hover {
            transform: translateY(-5px);
            border-color: rgba(255, 255, 255, 0.2);
        }

        .stat-card .value {
            display: block;
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: 0.25rem;
        }

        .stat-card .label {
            color: #94a3b8;
            font-size: 0.875rem;
            text-transform: uppercase;
            letter-spacing: 0.05em;
        }

        .main-grid {
            display: grid;
            grid-template-columns: 320px 1fr;
            gap: 2rem;
            margin-bottom: 2rem;
        }

        @media (max-width: 1024px) {
            .main-grid {
                grid-template-columns: 1fr;
            }
        }

        .card {
            background: var(--glass);
            backdrop-filter: blur(12px);
            border: 1px solid var(--glass-border);
            border-radius: 1.5rem;
            overflow: hidden;
        }

        .card-header {
            padding: 1.25rem 1.5rem;
            border-bottom: 1px solid var(--glass-border);
            font-weight: 600;
        }

        .sidebar {
            display: flex;
            flex-direction: column;
            gap: 1.5rem;
            padding: 1.5rem;
        }

        .filter-group label {
            display: block;
            margin-bottom: 0.5rem;
            font-size: 0.875rem;
            color: #94a3b8;
        }

        select,
        input {
            width: 100%;
            background: rgba(0, 0, 0, 0.2);
            border: 1px solid var(--glass-border);
            padding: 0.75rem;
            border-radius: 0.75rem;
            color: white;
            font-family: inherit;
            outline: none;
        }

        select:focus,
        input:focus {
            border-color: var(--primary);
        }

        #map {
            height: 600px;
            width: 100%;
            border-radius: 1.5rem;
        }

        .recent-updates {
            margin-top: 3rem;
        }

        .update-list {
            display: flex;
            flex-direction: column;
            gap: 1rem;
            padding: 1.5rem;
        }

        .update-item {
            display: grid;
            grid-template-columns: auto 1fr auto;
            align-items: center;
            gap: 1.5rem;
            padding: 1rem;
            border-radius: 1rem;
            background: rgba(255, 255, 255, 0.02);
            border: 1px solid transparent;
            transition: all 0.3s ease;
        }

        .update-item:hover {
            background: rgba(255, 255, 255, 0.05);
            border-color: var(--glass-border);
        }

        .badge {
            padding: 0.25rem 0.75rem;
            border-radius: 9999px;
            font-size: 0.75rem;
            font-weight: 600;
        }

        .badge-success {
            background: rgba(34, 197, 94, 0.2);
            color: var(--success);
        }

        .badge-info {
            background: rgba(59, 130, 246, 0.2);
            color: var(--primary);
        }

        .badge-warning {
            background: rgba(234, 179, 8, 0.2);
            color: var(--warning);
        }

        .badge-danger {
            background: rgba(239, 68, 68, 0.2);
            color: var(--danger);
        }

        .update-info h4 {
            margin: 0;
            font-size: 1rem;
        }

        .update-info p {
            margin: 0.25rem 0 0;
            font-size: 0.875rem;
            color: #94a3b8;
        }

        .update-time {
            font-size: 0.875rem;
            color: #64748b;
        }

        footer {
            text-align: center;
            padding: 4rem 2rem;
            color: #64748b;
            font-size: 0.875rem;
        }

        /* Leaflet Overrides */
        .leaflet-container {
            background: #1e293b;
        }

        .leaflet-popup-content-wrapper {
            background: var(--dark);
            color: white;
            border: 1px solid var(--glass-border);
            border-radius: 1rem;
        }

        .leaflet-popup-tip {
            background: var(--dark);
        }
    </style>
</head>

<body>

    <header>
        <h1>MONJA</h1>
        <p>Monitoring Evaluasi Jaringan Kota Tanjungpinang</p>
    </header>

    <div class="container">
        <div class="stats-grid">
            <div class="stat-card">
                <span class="value">{{ $stats['total'] }}</span>
                <span class="label">Total Titik</span>
            </div>
            <div class="stat-card" style="color: var(--success)">
                <span class="value">{{ $stats['completed'] }}</span>
                <span class="label">Selesai</span>
            </div>
            <div class="stat-card" style="color: var(--primary)">
                <span class="value">{{ $stats['in_progress'] }}</span>
                <span class="label">Proses</span>
            </div>
            <div class="stat-card" style="color: var(--warning)">
                <span class="value">{{ $stats['pending'] }}</span>
                <span class="label">Pending</span>
            </div>
        </div>

        <div class="main-grid">
            <div class="card">
                <div class="card-header">Filter Tampilan</div>
                <div class="sidebar">
                    <div class="filter-group">
                        <label>Pilih OPD</label>
                        <select id="opd-filter">
                            <option value="all">Semua OPD</option>
                            @foreach($opds as $opd)
                                <option value="{{ $opd->id }}">{{ $opd->nama }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="filter-group">
                        <label>Status</label>
                        <select id="status-filter">
                            <option value="all">Semua Status</option>
                            <option value="completed">Selesai</option>
                            <option value="in_progress">Dalam Progress</option>
                            <option value="pending">Pending</option>
                            <option value="maintenance">Pemeliharaan</option>
                        </select>
                    </div>
                    <div class="filter-group">
                        <label>Cari Lokasi</label>
                        <input type="text" id="search-input" placeholder="Ketik nama lokasi...">
                    </div>
                </div>
            </div>

            <div id="map"></div>
        </div>

        <div class="recent-updates card">
            <div class="card-header">Aktifitas Terbaru Vendor</div>
            <div class="update-list">
                @forelse($recentUpdates as $update)
                    <div class="update-item">
                        <span class="badge {{ $update->percentage >= 100 ? 'badge-success' : 'badge-info' }}">
                            {{ $update->percentage }}%
                        </span>
                        <div class="update-info">
                            <h4>{{ $update->installationPoint->nama_lokasi }}</h4>
                            <p>{{ $update->description }}</p>
                        </div>
                        <div class="update-time">
                            {{ $update->created_at->diffForHumans() }}
                        </div>
                    </div>
                @empty
                    <p style="text-align: center; color: #64748b; padding: 2rem;">Belum ada aktifitas terbaru.</p>
                @endforelse
            </div>
        </div>
    </div>

    <footer>
        &copy; {{ date('Y') }} Dinas Komunikasi dan Informatika Kota Tanjungpinang.
    </footer>

    <script src="{{ \Cheesegrits\FilamentGoogleMaps\Helpers\MapsHelper::mapsUrl() }}"></script>
    <script>
        const points = @json($points);
        let map;
        let markers = [];
        let infoWindow;

        function initMap() {
            map = new google.maps.Map(document.getElementById('map'), {
                center: { lat: 0.9165, lng: 104.4556 },
                zoom: 12,
                mapId: "DEMO_MAP_ID", // Optional
                mapTypeId: google.maps.MapTypeId.ROADMAP,
                styles: [
                    { featureType: "poi", elementType: "labels", stylers: [{ visibility: "off" }] }
                ]
            });

            infoWindow = new google.maps.InfoWindow();

            // Create all markers initially
            createMarkers(points);
        }

        function getMarkerIcon(status) {
            let color = '#ea4335';
            switch (status) {
                case 'pending': color = '#9ca3af'; break; // Gray
                case 'in_progress': color = '#3b82f6'; break; // Blue
                case 'completed': color = '#22c55e'; break; // Green
                case 'maintenance': color = '#eab308'; break; // Yellow
            }

            return {
                path: "M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zm0 9.5c-1.38 0-2.5-1.12-2.5-2.5s1.12-2.5 2.5-2.5 2.5 1.12 2.5 2.5-1.12 2.5-2.5 2.5z",
                fillColor: color,
                fillOpacity: 1,
                strokeWeight: 1,
                strokeColor: '#ffffff',
                scale: 1.5,
                anchor: new google.maps.Point(12, 22),
            };
        }

        function createMarkers(data) {
            // Clear existing markers
            markers.forEach(m => m.setMap(null));
            markers = [];

            data.forEach(p => {
                if (!p.lat || !p.lng) return;

                const marker = new google.maps.Marker({
                    position: { lat: parseFloat(p.lat), lng: parseFloat(p.lng) },
                    map: map,
                    title: p.nama,
                    icon: getMarkerIcon(p.status)
                });

                // Attach data for filtering
                marker.data = p;

                marker.addListener('click', () => {
                    const contentString = `
                    <div style="font-family: 'Outfit', sans-serif; padding: 5px;">
                        <strong style="color: #64748b;font-size: 1.1rem; display: block; margin-bottom: 0.5rem">${p.nama}</strong>
                        <span style="color: #64748b; font-size: 0.875rem">${p.opd}</span>
                        <div style="margin-top: 0.75rem; display: flex; align-items: center; gap: 0.5rem">
                            <span class="badge" style="background: #f1f5f9; color: #334155; padding: 2px 8px; border-radius: 99px; font-size: 0.7rem; font-weight: bold;">
                                ${p.status.replace('_', ' ').toUpperCase()}
                            </span>
                            <strong style="color: #3b82f6">${p.percentage}%</strong>
                        </div>
                    </div>
                   `;
                    infoWindow.setContent(contentString);
                    infoWindow.open(map, marker);
                });

                markers.push(marker);
            });
        }

        function filterData() {
            const opdId = document.getElementById('opd-filter').value;
            const status = document.getElementById('status-filter').value;
            const search = document.getElementById('search-input').value.toLowerCase();

            markers.forEach(marker => {
                const p = marker.data;
                const matchOpd = opdId === 'all' || p.opd_id == opdId;
                const matchStatus = status === 'all' || p.status == status;
                const matchSearch = p.nama.toLowerCase().includes(search);

                if (matchOpd && matchStatus && matchSearch) {
                    marker.setMap(map);
                } else {
                    marker.setMap(null);
                }
            });
        }

        document.getElementById('opd-filter').addEventListener('change', filterData);
        document.getElementById('status-filter').addEventListener('change', filterData);
        document.getElementById('search-input').addEventListener('input', filterData);

        // Init map when Google API is ready
        window.initGoogleMaps = initMap;

        // Check if google is already loaded/defined slightly later if callback doesn't fire
        if (typeof google !== 'undefined' && typeof google.maps !== 'undefined') {
            initMap();
        }
    </script>
</body>

</html>