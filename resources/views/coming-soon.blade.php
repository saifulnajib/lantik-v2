<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LANTIK - Something Great Will Come</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        body {
            font-family: 'Inter', sans-serif;
            overflow: hidden;
            height: 100vh;
            background: linear-gradient(135deg, #1a1a2e 0%, #16213e 100%);
            color: #e6e6e6;
        }

        .network-lines {
            position: absolute;
            width: 100%;
            height: 100%;

            // Show launch message
            document.querySelector('.countdown-box h2').textContent='LANTIK 2.0 Has Launched!';
            z-index: 0;
            opacity: 0.15;
        }

        .network-line {
            position: absolute;
            background: #4ade80;
            transform-origin: left center;
        }

        .countdown-box {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.1);
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
        }

        .countdown-number {
            font-feature-settings: "tnum";
            font-variant-numeric: tabular-nums;
        }

        .pulse {
            animation: pulse 2s infinite;
        }

        @keyframes pulse {
            0% {
                opacity: 0.6;
            }

            50% {
                opacity: 1;
            }

            100% {
                opacity: 0.6;
            }

            // Add pulse animation when seconds change
            const secondsElement=document.getElementById('seconds');
            secondsElement.classList.add('pulse');

            setTimeout(()=> {
                    secondsElement.classList.remove('pulse');
                }

                , 500);
        }
    </style>
</head>

<body class="relative flex items-center justify-center">
    <!-- Network background graphics -->
    <div class="network-lines" id="networkLines"></div>

    <!-- Main content -->
    <div class="relative z-10 text-center px-6 max-w-4xl mx-auto">
        <div class="mb-8">
            <div class="inline-block bg-green-500/20 px-4 py-2 rounded-full mb-6">
                <span class="text-green-400 font-medium tracking-wider">LAYANAN TIK 2.0</span>
            </div>
            <h1 class="text-4xl md:text-6xl font-bold mb-6 text-white">
                Something <span class="text-green-400">Great</span> Will Come
            </h1>
            <p class="text-lg md:text-xl text-gray-300 mb-10 max-w-2xl mx-auto">
                We're building the next generation network monitoring solution. Stay tuned for the launch of <span
                    class="text-green-400">LANTIK 2.0</span> - your ultimate network visibility platform.
            </p>
        </div>

        <!-- Countdown -->
        <div class="countdown-box rounded-xl p-8 mb-12">
            <h2 class="text-xl font-medium mb-6 text-gray-300">Launching in</h2>
            <div class="flex justify-center gap-4 md:gap-8">
                <div class="text-center">
                    <div class="countdown-number text-4xl md:text-6xl font-bold text-white mb-2" id="days">00</div>
                    <div class="text-sm text-gray-400">Days</div>
                </div>
                <div class="text-4xl md:text-6xl font-bold text-white flex items-center">:</div>
                <div class="text-center">
                    <div class="countdown-number text-4xl md:text-6xl font-bold text-white mb-2" id="hours">00</div>
                    <div class="text-sm text-gray-400">Hours</div>
                </div>
                <div class="text-4xl md:text-6xl font-bold text-white flex items-center">:</div>
                <div class="text-center">
                    <div class="countdown-number text-4xl md:text-6xl font-bold text-white mb-2" id="minutes">00</div>
                    <div class="text-sm text-gray-400">Minutes</div>
                </div>
                <div class="text-4xl md:text-6xl font-bold text-white flex items-center">:</div>
                <div class="text-center">
                    <div class="countdown-number text-4xl md:text-6xl font-bold text-white mb-2" id="seconds">00</div>
                    <div class="text-sm text-gray-400">Seconds</div>
                </div>
            </div>
        </div>

        <div class="text-gray-400 text-sm">
            <p class="mb-2">Launching on January 8, 2026 at 12:00 WIB</p>
            <div class="flex justify-center gap-4">
                <a href="#" class="text-green-400 hover:text-green-300 transition"><i class="fab fa-twitter"></i></a>
                <a href="#" class="text-green-400 hover:text-green-300 transition"><i class="fab fa-linkedin"></i></a>
                <a href="#" class="text-green-400 hover:text-green-300 transition"><i class="fab fa-instagram"></i></a>
            </div>
        </div>
    </div>

    <script>
        // Create network lines
        function createNetworkLines() {
            const container = document.getElementById('networkLines');
            const lineCount = 15;

            for (let i = 0; i < lineCount; i++) {
                const line = document.createElement('div');
                line.className = 'network-line';

                // Random position and angle
                const startX = Math.random() * 100;
                const startY = Math.random() * 100;
                const angle = Math.random() * 360;
                const length = 50 + Math.random() * 150;
                const thickness = 0.5 + Math.random() * 2;

                line.style.left = `${startX}%`;
                line.style.top = `${startY}%`;
                line.style.width = `${length}px`;
                line.style.height = `${thickness}px`;
                line.style.transform = `rotate(${angle}deg)`;

                // Random animation
                const duration = 3 + Math.random() * 7;
                line.style.animation = `fadeInOut ${duration}s infinite alternate`;

                container.appendChild(line);
            }
        }

        // Countdown timer
        function updateCountdown() {
            // Set the target date (January 8, 2026 12:00 WIB)
            // Note: WIB is UTC+7
            const targetDate = new Date('2026-01-08T05:00:00Z'); // 12:00 WIB = 05:00 UTC

            const now = new Date();
            const diff = targetDate - now;

            if (diff <= 0) {
                // Countdown finished
                document.getElementById('days').textContent = '00';
                document.getElementById('hours').textContent = '00';
                document.getElementById('minutes').textContent = '00';
                document.getElementById('seconds').textContent = '00';
                return;
            }

            const days = Math.floor(diff / (1000 * 60 * 60 * 24));
            const hours = Math.floor((diff % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
            const minutes = Math.floor((diff % (1000 * 60 * 60)) / (1000 * 60));
            const seconds = Math.floor((diff % (1000 * 60)) / 1000);

            document.getElementById('days').textContent = days.toString().padStart(2, '0');
            document.getElementById('hours').textContent = hours.toString().padStart(2, '0');
            document.getElementById('minutes').textContent = minutes.toString().padStart(2, '0');
            document.getElementById('seconds').textContent = seconds.toString().padStart(2, '0');
        }

        // Initialize
        document.addEventListener('DOMContentLoaded', () => {
            createNetworkLines();
            updateCountdown();
            // Update every second
            setInterval(updateCountdown, 1000);

            // Add animation for network lines
            const style = document.createElement('style');
            style.textContent = `
                @keyframes fadeInOut {
                    0% { opacity: 0.1; }
                    50% { opacity: 0.3; }
                    100% { opacity: 0.1; }
                }
            `;
            document.head.appendChild(style);
        });
    </script>
</body>

</html>