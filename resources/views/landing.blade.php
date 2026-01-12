<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LANTIK - Layanan TIK</title>
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;600;700&display=swap" rel="stylesheet">
    <!-- Lucide Icons -->
    <script src="https://unpkg.com/lucide@latest"></script>
    <style>
        :root {
            --primary: #3b82f6;
            --primary-dark: #1d4ed8;
            --accent: #8b5cf6;
            --bg: #f8fafc;
            --text: #0f172a;
            --text-muted: #64748b;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Outfit', sans-serif;
        }

        body {
            background-color: var(--bg);
            color: var(--text);
            min-height: 100vh;
            overflow-x: hidden;
        }

        /* Abstract Background Elements */
        .bg-gradient {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
            background:
                radial-gradient(circle at 0% 0%, rgba(59, 130, 246, 0.05) 0%, transparent 50%),
                radial-gradient(circle at 100% 100%, rgba(139, 92, 246, 0.05) 0%, transparent 50%);
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 1.5rem;
        }

        /* Navbar */
        nav {
            padding: 2rem 0;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 1.5rem;
            font-weight: 700;
            color: var(--primary);
            letter-spacing: -0.025em;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .logo span {
            color: var(--text);
            font-weight: 300;
            font-size: 0.9rem;
            opacity: 0.7;
            margin-left: 0.25rem;
            letter-spacing: 0.05em;
        }

        /* Hero Section */
        .hero {
            text-align: center;
            padding: 1rem 0 2rem;
            animation: fadeIn 0.8s ease-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .hero h1 {
            font-size: clamp(3rem, 8vw, 5rem);
            font-weight: 700;
            line-height: 1;
            margin-bottom: 1.5rem;
            letter-spacing: -0.05em;
            background: linear-gradient(135deg, var(--primary), var(--accent));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .hero p {
            font-size: 1.25rem;
            color: var(--text-muted);
            max-width: 600px;
            margin: 0 auto 3rem;
        }

        /* Services Grid */
        .services-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 2rem;
            margin-bottom: 6rem;
        }

        .service-card {
            background: rgba(255, 255, 255, 0.7);
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.8);
            border-radius: 2rem;
            padding: 2.5rem;
            text-decoration: none;
            color: inherit;
            transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
            display: flex;
            flex-direction: column;
            gap: 1.5rem;
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.05), 0 2px 4px -1px rgba(0, 0, 0, 0.03);
            position: relative;
            overflow: hidden;
        }

        .service-card:hover {
            transform: translateY(-8px);
            background: white;
            box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.05), 0 10px 10px -5px rgba(0, 0, 0, 0.02);
            border-color: var(--primary);
        }

        .service-card.coming-soon {
            cursor: default;
            opacity: 0.8;
        }

        .service-card.coming-soon:hover {
            transform: none;
            border-color: rgba(255, 255, 255, 0.8);
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.05);
        }

        .icon-box {
            width: 64px;
            height: 64px;
            border-radius: 1.25rem;
            display: flex;
            align-items: center;
            justify-content: center;
            background: linear-gradient(135deg, rgba(59, 130, 246, 0.1), rgba(139, 92, 246, 0.1));
            color: var(--primary);
        }

        .service-card h3 {
            font-size: 1.5rem;
            font-weight: 700;
        }

        .service-card p {
            color: var(--text-muted);
            line-height: 1.6;
        }

        .badge {
            position: absolute;
            top: 1.5rem;
            right: 1.5rem;
            padding: 0.25rem 0.75rem;
            border-radius: 9999px;
            font-size: 0.75rem;
            font-weight: 600;
            background: #f1f5f9;
            color: var(--text-muted);
        }

        .badge.active {
            background: rgba(34, 197, 94, 0.1);
            color: #16a34a;
        }

        /* Footer */
        footer {
            text-align: center;
            padding: 4rem 0;
            border-top: 1px solid rgba(0, 0, 0, 0.05);
            color: var(--text-muted);
            font-size: 0.9rem;
        }

        /* Button Hover Effect */
        .btn-arrow {
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
            color: var(--primary);
            font-weight: 600;
            margin-top: auto;
        }

        .service-card:hover .btn-arrow i {
            transform: translateX(4px);
            transition: transform 0.3s ease;
        }

        /* Search Section */
        .search-section {
            max-width: 800px;
            margin: 0 auto 2rem;
        }

        .search-form {
            display: flex;
            gap: 0.1rem;
            background: white;
            padding: 0.1rem;
            border-radius: 9999px;
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.05);
            border: 1px solid rgba(0, 0, 0, 0.05);
        }

        .search-input {
            flex: 1;
            padding: 0.75rem 1.5rem;
            border: none;
            border-radius: 9999px;
            font-size: 1rem;
            outline: none;
        }

        .search-btn {
            background: var(--primary);
            color: white;
            border: none;
            width: 44px;
            height: 44px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .search-btn:hover {
            background: var(--primary-dark);
            transform: scale(1.05);
        }
    </style>
</head>

<body>
    <div class="bg-gradient"></div>

    <div class="container">
        <nav>
            <div class="logo">
                <i data-lucide="Zap"></i> LANTIK <span>Layanan TIK</span>
            </div>
            <div>
                <!-- Navigation links if any -->
            </div>
        </nav>

        <section class="hero">
            <h1>LANTIK</h1>
            <p>Gerbang utama layanan teknologi informasi dan komunikasi terintegrasi untuk Kota Tanjungpinang.</p>
        </section>

        <section class="search-section">
            <form action="/" method="GET" class="search-form">
                <input type="text" name="q" value="{{ $search }}" placeholder="Cari layanan..." class="search-input">
                <button type="submit" class="search-btn">
                    <i data-lucide="Search" size="20"></i>
                </button>
            </form>
        </section>

        <div class="services-grid">
            @forelse($layanans as $layanan)
                @if ($layanan->is_active)
                    <a href="{{ $layanan->url }}" class="service-card">
                        <div class="badge active">Service Active</div>
                        <div class="icon-box">
                            <i data-lucide="{{ $layanan->icon ?: 'Zap' }}" size="32"></i>
                        </div>
                        <div>
                            <h3>{{ $layanan->name }}</h3>
                            <p>{{ $layanan->description }}</p>
                        </div>
                        <div class="btn-arrow">
                            Buka <i data-lucide="ArrowRight" size="18"></i>
                        </div>
                    </a>
                @else
                    <div class="service-card coming-soon">
                        <div class="badge">Soon</div>
                        <div class="icon-box">
                            <i data-lucide="{{ $layanan->icon ?: 'Zap' }}" size="32"></i>
                        </div>
                        <div>
                            <h3>{{ $layanan->name }}</h3>
                            <p>{{ $layanan->description }}</p>
                        </div>
                    </div>
                @endif
            @empty
                <div style="grid-column: 1/-1; text-align: center; padding: 4rem 0; color: var(--text-muted);">
                    <i data-lucide="Info" size="48" style="margin-bottom: 1rem; opacity: 0.5;"></i>
                    <p>Tidak ada layanan yang ditemukan untuk pencarian "{{ $search }}"</p>
                    <a href="/"
                        style="color: var(--primary); text-decoration: none; font-weight: 600; margin-top: 1rem; display: inline-block;">Hapus
                        Pencarian</a>
                </div>
            @endforelse
        </div>

        <footer>
            <p>&copy; {{ date('Y') }} Dinas Komunikasi dan Informatika Kota Tanjungpinang. <br> Dikembangkan oleh Saiful
                Najib.</p>
        </footer>
    </div>

    <script>
        // Initialize Lucide Icons
        lucide.createIcons();
    </script>
</body>

</html>