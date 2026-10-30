<div>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
    <div class="fixed inset-0 z-40 flex bg-white font-sans overflow-hidden">
        <!-- Left Column: Form -->
        <div
            class="w-full lg:w-1/2 flex flex-col justify-center px-6 sm:px-12 lg:px-16 overflow-y-auto bg-white shadow-[10px_0_30px_-15px_rgba(0,0,0,0.1)] z-10 relative">
            <div class="w-full max-w-sm mx-auto flex flex-col items-center">
                <!-- Logo -->
                <div class="mb-6 relative mt-8">
                    <div class="absolute inset-0 bg-[#b36f6f] blur-xl opacity-20 rounded-full"></div>
                    <img src="{{ asset('img/logo-tpi.png') }}" alt="Logo Tanjungpinang" width="100px"
                        class="relative  object-contain drop-shadow-md hover:scale-105 transition-transform duration-300">
                </div>

                <!-- Branding -->
                <div class="text-center mb-10 w-full">
                    <h2 class="text-xs sm:text-sm font-bold tracking-widest text-[#b36f6f] uppercase mb-2">
                        Sistem Informasi Pendaftaran Aplikasi
                    </h2>
                    <p class="font-extrabold text-gray-900 tracking-tight">
                        {{ env('APP_NAME', 'Aplikasi') }}
                    </p>
                </div>

                <!-- Form -->
                <div class="w-full mb-8">
                    <form id="form" wire:submit="authenticate">
                        {{ $this->form }}


                        <div class="mt-8">
                            <button type="submit" wire:loading.attr="disabled"
                                class="w-full bg-[#b36f6f] hover:bg-[#a25d5d] focus:ring-4 focus:ring-[#b36f6f]/30 text-white font-semibold py-3.5 px-4 rounded-xl transition-all duration-300 shadow-lg shadow-[#b36f6f]/40 flex justify-center items-center gap-2 group disabled:opacity-70 disabled:cursor-not-allowed">
                                <span wire:loading.remove wire:target="authenticate">Masuk</span>
                                <span wire:loading wire:target="authenticate">Memproses...</span>
                                <svg wire:loading.remove wire:target="authenticate"
                                    class="w-5 h-5 group-hover:translate-x-1 transition-transform" fill="none"
                                    stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                        d="M14 5l7 7m0 0l-7 7m7-7H3"></path>
                                </svg>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- Right Column: Banner / Illustration -->
        <div
            class="hidden lg:flex lg:w-1/2 bg-gradient-to-br from-[#f9f4f4] to-[#f2e6e6] items-center justify-center relative p-12 overflow-hidden">
            <!-- Decorative Abstract Shapes -->
            <div
                class="absolute top-0 right-0 w-[600px] h-[600px] bg-[#b36f6f]/15 rounded-full blur-[80px] transform translate-x-1/3 -translate-y-1/3">
            </div>
            <div
                class="absolute bottom-0 left-0 w-[600px] h-[600px] bg-[#b36f6f]/15 rounded-full blur-[80px] transform -translate-x-1/3 translate-y-1/3">
            </div>
            <!-- Subtle Dot Pattern Overlay -->
            <div
                class="absolute top-0 left-0 w-full h-full bg-[url('data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAiIGhlaWdodD0iMjAiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGNpcmNsZSBjeD0iMiIgY3k9IjIiIHI9IjIiIGZpbGw9IiM2ZmIzOTQiIGZpbGwtb3BhY2l0eT0iMC4wNyIvPjwvc3ZnPg==')] opacity-60 pointer-events-none">
            </div>

            <!-- Banner Container -->
            <div class="relative z-10 w-full max-w-2xl text-center flex flex-col items-center">
                <div class="relative group">
                    <!-- Soft Glow Behind Image -->
                    <div
                        class="absolute -inset-1 bg-gradient-to-r from-[#b36f6f] to-[#a25d5d] rounded-[2rem] blur opacity-25 group-hover:opacity-40 transition duration-1000 group-hover:duration-200">
                    </div>
                    <img src="{{ asset('images/disdukcapil_login_side_banner.png') }}" alt="Banner"
                        class="relative w-full drop-shadow-2xl rounded-[2rem] object-cover transition-transform duration-700 group-hover:scale-[1.01] border border-white/60">
                </div>
            </div>
        </div>
        <!-- Copyright -->
    </div>
    <!-- Custom Styles -->
    <style>
        .fixed.z-40 .fi-input,
        .fixed.z-40 .fi-checkbox-input {
            border-radius: 0.75rem !important;
            /* xl */
            border-color: #e5e7eb !important;
            /* padding-top: 0.75rem !important; */
            /* padding-bottom: 0.75rem !important; */
            box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.05) !important;
            background-color: #f9fafb !important;
            transition: all 0.2s ease-in-out;
        }

        .fixed.z-40 .fi-input:focus,
        .fixed.z-40 .fi-checkbox-input:focus {
            border-color: #6fb394 !important;
            --tw-ring-color: #6fb394 !important;
            --tw-ring-shadow: var(--tw-ring-inset) 0 0 0 calc(3px + var(--tw-ring-offset-width)) rgba(111, 179, 148, 0.2) !important;
            background-color: #ffffff !important;
        }

        .fixed.z-40 label {
            color: #374151 !important;
            font-weight: 600 !important;
            font-size: 0.875rem !important;
        }

        .fixed.z-40 .fi-form-actions {
            display: none !important;
        }

        /* Custom Scrollbar for Form Container */
        .fixed.z-40 .overflow-y-auto::-webkit-scrollbar {
            width: 6px;
        }

        .fixed.z-40 .overflow-y-auto::-webkit-scrollbar-track {
            background: transparent;
        }

        .fixed.z-40 .overflow-y-auto::-webkit-scrollbar-thumb {
            background-color: #cbd5e1;
            border-radius: 20px;
        }

        .fixed.z-40 .overflow-y-auto::-webkit-scrollbar-thumb:hover {
            background-color: #94a3b8;
        }
    </style>
</div>