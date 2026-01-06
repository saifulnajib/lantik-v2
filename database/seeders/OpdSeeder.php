<?php

namespace Database\Seeders;

use App\Models\Opd;
use Illuminate\Database\Seeder;

class OpdSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $opds = [
            ['kode' => '125', 'nama' => 'Dinas Komunikasi dan Informatika Kota Tanjungpinang', 'alamat' => 'Senggarang', 'kontak' => null, 'email' => null],
            ['kode' => '101', 'nama' => 'Sekretariat Daerah', 'alamat' => 'Jl. Daeng Celak', 'kontak' => null, 'email' => null],
            ['kode' => '102', 'nama' => 'Sekretariat DPRD', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '103', 'nama' => 'Inspektorat Daerah', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '104', 'nama' => 'Badan Perencanaan Pembangunan, Penelitian, dan Pengembangan Daerah', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '105', 'nama' => 'Badan Kepegawaian dan Pengembangan Sumber Daya Manusia', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '106', 'nama' => 'Badan Pengelolaan Pajak dan Retribusi Daerah', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '107', 'nama' => 'Badan Pengelolaan Keuangan dan Aset Daerah', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '108', 'nama' => 'Badan Kesatuan Bangsa dan Politik', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '109', 'nama' => 'Rumah Sakit Umum Daerah', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '110', 'nama' => 'Dinas Kependudukan dan Pencatatan Sipil', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '111', 'nama' => 'Dinas Kesehatan, Pengendalian Penduduk, dan Keluarga Berencana', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '112', 'nama' => 'Dinas Pendidikan', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '113', 'nama' => 'Dinas Kebudayaan dan Pariwisata', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '114', 'nama' => 'Dinas Perhubungan', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '115', 'nama' => 'Dinas Sosial', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '116', 'nama' => 'Dinas Pemberdayaan Perempuan, Perlindungan Anak, dan Pemberdayaan Masyarakat', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '117', 'nama' => 'Dinas Pertanian, Pangan, dan Perikanan', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '118', 'nama' => 'Dinas Kepemudaan dan Olahraga', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '119', 'nama' => 'Dinas Penanaman Modal dan Perizinan Terpadu Satu Pintu', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '120', 'nama' => 'Dinas Tenaga Kerja, Koperasi dan Usaha Mikro', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '121', 'nama' => 'Dinas Perindustrian dan Perdagangan', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '122', 'nama' => 'Dinas Lingkungan Hidup', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '123', 'nama' => 'Dinas Perumahan Rakyat, Kawasan Permukiman, dan Pertamanan', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '124', 'nama' => 'Dinas Pekerjaan Umum dan Penataan Ruang', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '126', 'nama' => 'Dinas Perpustakaan dan Kearsipan', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '127', 'nama' => 'Badan Penanggulangan Bencana Daerah', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '128', 'nama' => 'Satuan Polisi Pamong Praja', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '129', 'nama' => 'Dinas Pemadam Kebakaran dan Penyelamatan', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '132', 'nama' => 'Kecamatan Bukit Bestari', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '133', 'nama' => 'Kecamatan Tanjungpinang Barat', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '130', 'nama' => 'Kecamatan Tanjungpinang Kota', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '131', 'nama' => 'Kecamatan Tanjungpinang Timur', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '135', 'nama' => 'Kelurahan Senggarang, Kecamatan Tanjungpinang Kota', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '136', 'nama' => 'Kelurahan Tanjungpinang Kota, Kecamatan Tanjungpinang Kota', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '137', 'nama' => 'Kelurahan Penyengat, Kecamatan Tanjungpinang Kota', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '134', 'nama' => 'Kelurahan Kampung Bugis, Kecamatan Tanjungpinang Kota', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '149', 'nama' => 'Kelurahan Bukit Cermin, Kecamatan Tanjungpinang Barat', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '151', 'nama' => 'Kelurahan Kemboja, Kecamatan Tanjungpinang Barat', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '148', 'nama' => 'Kelurahan Tanjungpinang Barat, Kecamatan Tanjungpinang Barat', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '150', 'nama' => 'Kelurahan Kampung Baru, Kecamatan Tanjungpinang Barat', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '139', 'nama' => 'Kelurahan Air Raja, Kecamatan Tanjungpinang Timur', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '140', 'nama' => 'Kelurahan Kampung Bulang, Kecamatan Tanjungpinang Timur', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '142', 'nama' => 'Kelurahan Pinang Kencana, Kecamatan Tanjungpinang Timur', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '138', 'nama' => 'Kelurahan Melayu Kota Piring, Kecamatan Tanjungpinang Timur', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '141', 'nama' => 'Kelurahan Batu IX, Kecamatan Tanjungpinang Timur', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '143', 'nama' => 'Kelurahan Tanjungpinang Timur, Kecamatan Bukit Bestari', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '146', 'nama' => 'Kelurahan Sei. Jang, Kecamatan Bukit Bestari', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '144', 'nama' => 'Kelurahan Tanjung Unggat, Kecamatan Bukit Bestari', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '147', 'nama' => 'Kelurahan Dompak, Kecamatan Bukit Bestari', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '145', 'nama' => 'Kelurahan Tanjung Ayun Sakti, Kecamatan Bukit Bestari', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '153', 'nama' => 'UPTD Puskesmas Sei. Jang', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '1531', 'nama' => 'UPTD Puskesmas Pembantu Batu IV', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '152', 'nama' => 'UPTD Puskesmas Tanjungpinang', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '154', 'nama' => 'UPTD Puskesmas Batu 10', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '155', 'nama' => 'UPTD Puskesmas Kampung Bugis', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '156', 'nama' => 'UPTD Puskesmas Melayu Kota Piring', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '157', 'nama' => 'UPTD Puskesmas Mekar Baru', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '158', 'nama' => 'UPTD Puskesmas Tanjung Unggat', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '168', 'nama' => 'UPTD Puskesmas Tanjungpinang Barat', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '1121', 'nama' => 'TK NEGERI PEMBINA I', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '1122', 'nama' => 'TK NEGERI PEMBINA II', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '1123', 'nama' => 'TK NEGERI PEMBINA III', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '1124', 'nama' => 'TK NEGERI PEMBINA IV', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '1125', 'nama' => 'SMP NEGERI 1', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '1126', 'nama' => 'SMP NEGERI 2', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '1127', 'nama' => 'SMP NEGERI 3', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '1128', 'nama' => 'SMP NEGERI 4', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '1129', 'nama' => 'SMP NEGERI 5', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '1130', 'nama' => 'SMP NEGERI 6', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '1131', 'nama' => 'SMP NEGERI 7', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '1132', 'nama' => 'SMP NEGERI 8', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '1133', 'nama' => 'SMP NEGERI 9', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '1134', 'nama' => 'SMP NEGERI 10', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '1135', 'nama' => 'SMP NEGERI 11', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '1136', 'nama' => 'SMP NEGERI 12', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '1137', 'nama' => 'SMP NEGERI 13 Satu Atap', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '1138', 'nama' => 'SMP NEGERI 14 Satu Atap', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '1139', 'nama' => 'SMP NEGERI 15', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '1140', 'nama' => 'SMP NEGERI 16', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '1141', 'nama' => 'SMP NEGERI 17', 'alamat' => null, 'kontak' => null, 'email' => null],
            ['kode' => '161', 'nama' => 'Sanggar Kegiatan Belajar', 'alamat' => null, 'kontak' => null, 'email' => null],
        ];

        foreach ($opds as $opd) {
            Opd::updateOrCreate(['kode' => $opd['kode']], $opd);
        }
    }
}
