<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <title>Profil Aplikasi - {{ $application->name }}</title>
    <style>
        body {
            font-family: DejaVu Sans, sans-serif;
            font-size: 11px;
            color: #1f2937;
            line-height: 1.4;
        }

        .header {
            text-align: center;
            border-bottom: 2px solid #111827;
            padding-bottom: 10px;
            margin-bottom: 16px;
        }

        .header h2 {
            margin: 0;
            font-size: 15px;
            text-transform: uppercase;
        }

        .header h3 {
            margin: 4px 0 0;
            font-size: 13px;
        }

        .header p {
            margin: 2px 0 0;
            font-size: 10px;
            color: #4b5563;
        }

        .section-title {
            background-color: #f3f4f6;
            padding: 6px 10px;
            font-weight: bold;
            font-size: 11px;
            border-left: 4px solid #d97706;
            margin-top: 14px;
            margin-bottom: 8px;
            text-transform: uppercase;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 8px;
        }

        table th,
        table td {
            border: 1px solid #d1d5db;
            padding: 6px 8px;
            vertical-align: top;
            text-align: left;
        }

        table th {
            width: 32%;
            background-color: #f9fafb;
            font-weight: bold;
        }

        .badge {
            display: inline-block;
            padding: 2px 6px;
            font-size: 10px;
            font-weight: bold;
            border-radius: 4px;
            background: #e5e7eb;
        }

        .signature-box {
            margin-top: 30px;
            width: 100%;
        }

        .signature-box td {
            border: none;
            text-align: center;
            width: 50%;
            padding-top: 10px;
        }

        .footer {
            margin-top: 25px;
            font-size: 9px;
            color: #6b7280;
            text-align: right;
        }
    </style>
</head>

<body>
    <div class="header">
        <h2>Pemerintah Kota Tanjungpinang</h2>
        <h3>Dinas Komunikasi dan Informatika</h3>
        <p>Lembar Profil & Verifikasi Inventarisasi Aplikasi (SIPA) & Kategorisasi Sistem Elektronik (KSE)</p>
    </div>

    <div class="section-title">A. Identitas & Kepemilikan Aplikasi</div>
    <table>
        <tr>
            <th>OPD Pengampu</th>
            <td>{{ $application->opd?->nama ?? '-' }}</td>
        </tr>
        <tr>
            <th>Nama Aplikasi</th>
            <td><strong>{{ $application->name }}</strong></td>
        </tr>
        <tr>
            <th>Asal Aplikasi</th>
            <td>{{ $application->source_type === 'third_party' ? 'Pihak Ketiga / Instansi Pusat' : 'Pembangunan Mandiri / Internal Pemko' }}
            </td>
        </tr>
        <tr>
            <th>Penyedia / Pengembang</th>
            <td>{{ $application->vendor_name ?? '-' }} / {{ $application->developer_name ?? '-' }}</td>
        </tr>
        <tr>
            <th>Tahun Rilis & Status</th>
            <td>{{ $application->launch_year ?? '-' }}
                ({{ $application->is_active ? 'Beroperasi Aktif' : 'Tidak Aktif' }})</td>
        </tr>
        <tr>
            <th>Deskripsi Aplikasi</th>
            <td>{{ $application->description ?? '-' }}</td>
        </tr>
        <tr>
            <th>Dasar Hukum / Regulasi</th>
            <td>{{ $application->legal_basis ?? '-' }}</td>
        </tr>
    </table>

    <div class="section-title">B. Spesifikasi Teknis & Integrasi</div>
    <table>
        <tr>
            <th>Basis Platform</th>
            <td>{{ is_array($application->platforms) ? strtoupper(implode(', ', $application->platforms)) : '-' }}</td>
        </tr>
        <tr>
            <th>Bahasa Pemrograman</th>
            <td>{{ $application->programming_languages ?? '-' }}</td>
        </tr>
        <tr>
            <th>Sistem Database (DBMS)</th>
            <td>{{ $application->databaseSystem?->name ?? '-' }}
                {{ $application->other_database ? '(' . $application->other_database . ')' : '' }}
            </td>
        </tr>
        <tr>
            <th>Lokasi Hosting</th>
            <td>{{ $application->hostingLocation?->name ?? '-' }}</td>
        </tr>
        <tr>
            <th>Alamat Domain / URL</th>
            <td>{{ $application->domain_url ?? '-' }}</td>
        </tr>
        <tr>
            <th>Estimasi Jumlah Pengguna</th>
            <td>{{ $application->user_count_range ?? '-' }}</td>
        </tr>
        <tr>
            <th>Integrasi Sistem</th>
            <td>
                Status: {{ strtoupper($application->integration_status) }}
                @if($application->integration_status === 'ada')
                    <br>Metode: {{ $application->integration_method ?? '-' }}
                    <br>Aplikasi Terkait: {{ $application->integrated_applications ?? '-' }}
                    <br>Instansi Terkait: {{ $application->integrated_opds ?? '-' }}
                @endif
            </td>
        </tr>
    </table>

    <div class="section-title">C. Proses Bisnis & Layanan</div>
    <table>
        <tr>
            <th>Nama / Uraian Proses Bisnis</th>
            <td>{{ $application->business_process_name ?? '-' }}</td>
        </tr>
        <tr>
            <th>Nama Layanan</th>
            <td>{{ $application->service_name ?? '-' }}</td>
        </tr>
        <tr>
            <th>Jenis Layanan & Frekuensi</th>
            <td>{{ $application->serviceType?->name ?? '-' }} / {{ $application->usageFrequency?->name ?? '-' }}</td>
        </tr>
        <tr>
            <th>Estimasi Jumlah Pengguna</th>
            <td>{{ $application->user_count_range ?? '-' }}</td>
        </tr>
    </table>

    <div class="section-title">D. Penanggung Jawab (PIC) & Kategorisasi Sistem Elektronik (KSE)</div>
    <table>
        <tr>
            <th>Nama Penanggung Jawab (PIC)</th>
            <td>{{ $application->pic_name }} (NIP: {{ $application->pic_nip ?? '-' }})</td>
        </tr>
        <tr>
            <th>Jabatan & Kontak PIC</th>
            <td>{{ $application->pic_position ?? '-' }} / Telp: {{ $application->pic_phone ?? '-' }}</td>
        </tr>
        <tr>
            <th>Kelengkapan Dokumen</th>
            <td>
                SPT: {{ filled($application->spt_file_path) ? 'Tersedia' : 'Belum Ada' }} |
                Dokumen Probis: {{ filled($application->business_process_file_path) ? 'Tersedia' : 'Belum Ada' }}
            </td>
        </tr>
        <tr>
            <th>Hasil Penilaian KSE Terakhir</th>
            <td>
                @if($application->latestCategorization)
                    <strong>Kategori: {{ $application->latestCategorization->category }}</strong>
                    (Total Skor: {{ $application->latestCategorization->total_score }} — Tahun
                    {{ $application->latestCategorization->assessment_year }})
                @else
                    Belum dilakukan penilaian KSE
                @endif
            </td>
        </tr>
        <tr>
            <th>Status Verifikasi Diskominfo</th>
            <td>
                <strong>{{ strtoupper($application->verification_status) }}</strong>
                @if($application->verified_at)
                    (Diverifikasi pada: {{ $application->verified_at->format('d/m/Y H:i') }})
                @endif
                @if($application->verification_notes)
                    <br>Catatan: {{ $application->verification_notes }}
                @endif
            </td>
        </tr>
    </table>

    <table class="signature-box">
        <tr>
            <td>
                Mengetahui,<br>
                <strong>Verifikator Diskominfo</strong>
                <br><br><br><br>
                ( ................................................. )
            </td>
            <td>
                Tanjungpinang, {{ now()->translatedFormat('d F Y') }}<br>
                <strong>Penanggung Jawab Aplikasi (PIC)</strong>
                <br><br><br><br>
                ( <strong>{{ $application->pic_name }}</strong> )<br>
                NIP. {{ $application->pic_nip ?? '....................................' }}
            </td>
        </tr>
    </table>

    <div class="footer">
        Dicetak melalui Sistem Lantik v2 Pemerintah Kota Tanjungpinang pada {{ now()->format('d/m/Y H:i:s') }}
    </div>
</body>

</html>