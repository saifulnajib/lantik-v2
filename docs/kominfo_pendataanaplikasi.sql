-- phpMyAdmin SQL Dump
-- version 5.2.3+alpine-r0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 29 Okt 2026 pada 06.03
-- Versi server: 11.4.9-MariaDB
-- Versi PHP: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Basis data: `kominfo_pendataanaplikasi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `acls`
--

CREATE TABLE `acls` (
  `acl_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `acl_read` tinyint(4) DEFAULT 0,
  `acl_create` tinyint(4) NOT NULL DEFAULT 0,
  `acl_update` tinyint(4) NOT NULL DEFAULT 0,
  `acl_delete` tinyint(4) NOT NULL DEFAULT 0,
  `acl_approve` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `acls`
--

INSERT INTO `acls` (`acl_id`, `group_id`, `module_id`, `acl_read`, `acl_create`, `acl_update`, `acl_delete`, `acl_approve`) VALUES
(1, 1, 1, 1, 0, 0, 0, 0),
(2, 1, 2, 1, 1, 1, 1, 0),
(3, 1, 3, 1, 1, 1, 1, 0),
(4, 1, 4, 1, 1, 1, 1, 0),
(5, 1, 5, 1, 1, 1, 1, 1),
(6, 1, 6, 1, 0, 1, 0, 0),
(7, 1, 7, 1, 1, 1, 1, 0),
(36, 1, 8, 1, 0, 0, 1, 0),
(381, 1, 14, 1, 0, 1, 0, 0),
(420, 1, 28, 1, 0, 0, 0, 0),
(423, 1, 29, 1, 0, 1, 0, 0),
(426, 1, 30, 1, 0, 1, 0, 0),
(429, 1, 31, 1, 0, 1, 1, 0),
(432, 1, 32, 1, 0, 1, 1, 0),
(719, 1, 54, 1, 0, 0, 0, 0),
(720, 1, 55, 1, 0, 0, 0, 0),
(722, 1, 57, 0, 0, 0, 0, 0),
(726, 1, 61, 0, 0, 0, 0, 0),
(727, 2, 1, 0, 0, 0, 0, 0),
(728, 2, 2, 0, 0, 0, 0, 0),
(729, 2, 3, 0, 0, 0, 0, 0),
(730, 2, 4, 0, 0, 0, 0, 0),
(731, 2, 5, 0, 0, 0, 0, 0),
(732, 2, 6, 0, 0, 0, 0, 0),
(733, 2, 7, 0, 0, 0, 0, 0),
(734, 2, 8, 0, 0, 0, 0, 0),
(735, 2, 14, 0, 0, 0, 0, 0),
(736, 2, 28, 0, 0, 0, 0, 0),
(737, 2, 29, 0, 0, 0, 0, 0),
(738, 2, 30, 0, 0, 0, 0, 0),
(739, 2, 31, 0, 0, 0, 0, 0),
(740, 2, 32, 0, 0, 0, 0, 0),
(741, 2, 54, 0, 0, 0, 0, 0),
(742, 2, 55, 0, 0, 0, 0, 0),
(744, 2, 57, 1, 1, 1, 1, 0),
(747, 2, 61, 0, 0, 0, 0, 0),
(748, 1, 62, 0, 0, 0, 0, 0),
(749, 2, 62, 1, 1, 1, 1, 0),
(750, 1, 63, 0, 0, 0, 0, 0),
(751, 2, 63, 0, 0, 0, 0, 0),
(752, 1, 64, 0, 0, 0, 0, 0),
(753, 2, 64, 0, 0, 0, 0, 0),
(754, 1, 65, 0, 0, 0, 0, 0),
(755, 2, 65, 0, 0, 0, 0, 0),
(756, 1, 66, 1, 1, 1, 1, 0),
(757, 2, 66, 0, 0, 0, 0, 0),
(758, 1, 67, 0, 0, 0, 0, 0),
(759, 2, 67, 0, 0, 0, 0, 0),
(760, 3, 1, 0, 0, 0, 0, 0),
(761, 3, 2, 0, 0, 0, 0, 0),
(762, 3, 3, 0, 0, 0, 0, 0),
(763, 3, 4, 0, 0, 0, 0, 0),
(764, 3, 5, 0, 0, 0, 0, 0),
(765, 3, 6, 0, 0, 0, 0, 0),
(766, 3, 7, 0, 0, 0, 0, 0),
(767, 3, 8, 0, 0, 0, 0, 0),
(768, 3, 14, 0, 0, 0, 0, 0),
(769, 3, 28, 0, 0, 0, 0, 0),
(770, 3, 29, 0, 0, 0, 0, 0),
(771, 3, 30, 0, 0, 0, 0, 0),
(772, 3, 31, 0, 0, 0, 0, 0),
(773, 3, 32, 0, 0, 0, 0, 0),
(774, 3, 54, 0, 0, 0, 0, 0),
(775, 3, 55, 0, 0, 0, 0, 0),
(776, 3, 57, 0, 0, 0, 0, 0),
(777, 3, 61, 0, 0, 0, 0, 0),
(778, 3, 62, 0, 0, 0, 0, 0),
(779, 3, 63, 0, 0, 0, 0, 0),
(780, 3, 64, 0, 0, 0, 0, 0),
(781, 3, 65, 0, 0, 0, 0, 0),
(782, 3, 66, 0, 0, 0, 0, 0),
(783, 3, 67, 0, 0, 0, 0, 0),
(784, 1, 68, 0, 0, 0, 0, 0),
(785, 2, 68, 0, 0, 0, 0, 0),
(786, 3, 68, 1, 1, 1, 0, 0),
(787, 1, 69, 1, 0, 1, 0, 0),
(788, 2, 69, 0, 0, 0, 0, 0),
(789, 3, 69, 0, 0, 0, 0, 0),
(790, 4, 1, 0, 0, 0, 0, 0),
(791, 4, 2, 0, 0, 0, 0, 0),
(792, 4, 3, 0, 0, 0, 0, 0),
(793, 4, 4, 0, 0, 0, 0, 0),
(794, 4, 5, 0, 0, 0, 0, 0),
(795, 4, 6, 0, 0, 0, 0, 0),
(796, 4, 7, 0, 0, 0, 0, 0),
(797, 4, 8, 0, 0, 0, 0, 0),
(798, 4, 14, 0, 0, 0, 0, 0),
(799, 4, 28, 0, 0, 0, 0, 0),
(800, 4, 29, 0, 0, 0, 0, 0),
(801, 4, 30, 0, 0, 0, 0, 0),
(802, 4, 31, 0, 0, 0, 0, 0),
(803, 4, 32, 0, 0, 0, 0, 0),
(804, 4, 54, 0, 0, 0, 0, 0),
(805, 4, 55, 0, 0, 0, 0, 0),
(806, 4, 57, 0, 0, 0, 0, 0),
(807, 4, 61, 0, 0, 0, 0, 0),
(808, 4, 62, 0, 0, 0, 0, 0),
(809, 4, 63, 0, 0, 0, 0, 0),
(810, 4, 64, 0, 0, 0, 0, 0),
(811, 4, 65, 0, 0, 0, 0, 0),
(812, 4, 66, 0, 0, 0, 0, 0),
(813, 4, 67, 0, 0, 0, 0, 0),
(814, 4, 68, 0, 0, 0, 0, 0),
(815, 4, 69, 1, 0, 1, 0, 0),
(816, 1, 70, 1, 0, 1, 0, 0),
(817, 2, 70, 0, 0, 0, 0, 0),
(818, 3, 70, 1, 1, 1, 1, 0),
(819, 4, 70, 1, 0, 1, 0, 0),
(824, 1, 72, 1, 0, 1, 0, 0),
(825, 2, 72, 0, 0, 0, 0, 0),
(826, 3, 72, 0, 0, 0, 0, 0),
(827, 4, 72, 1, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `captcha`
--

CREATE TABLE `captcha` (
  `captcha_id` bigint(13) UNSIGNED NOT NULL,
  `captcha_time` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `word` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `wordencrypt` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data untuk tabel `captcha`
--

INSERT INTO `captcha` (`captcha_id`, `captcha_time`, `ip_address`, `word`, `wordencrypt`) VALUES
(2275, 1601954258, '', 'ssne', '5ce6a6a3f8f6f7f9fd9e165e4f8f0a10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `config_company`
--

CREATE TABLE `config_company` (
  `config_company_id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `notelepon` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `kop` varchar(255) DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `changed_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `config_company`
--

INSERT INTO `config_company` (`config_company_id`, `nama`, `alamat`, `notelepon`, `fax`, `email`, `logo`, `kop`, `changed_by`, `changed_on`) VALUES
(1, 'Diskominfo Kota Tanjungpinang', 'Tanjungpinang', '-', '-', 'safulnajib17@gmail.com', 'resources/config_site/logo-tpi.png', '', 1, '2022-11-02 21:35:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `config_site`
--

CREATE TABLE `config_site` (
  `config_site_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subname` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `background` varchar(255) DEFAULT NULL,
  `copyright` varchar(255) NOT NULL,
  `preview` text DEFAULT NULL,
  `flagcounter` text DEFAULT NULL,
  `isforget` enum('y','n') DEFAULT 'n',
  `iscaptcha` enum('y','n') DEFAULT 'n',
  `issinglesession` enum('y','n') DEFAULT 'n',
  `isgoogle` enum('y','n') DEFAULT 'n',
  `isfacebook` enum('y','n') DEFAULT 'n',
  `trylogin` int(11) DEFAULT NULL,
  `timelock` int(11) DEFAULT NULL,
  `hostmail` varchar(50) DEFAULT NULL,
  `portmail` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `passmail` varchar(250) DEFAULT NULL,
  `tokensms` varchar(250) DEFAULT NULL,
  `deviceid` varchar(50) DEFAULT NULL,
  `emailsms` varchar(100) DEFAULT NULL,
  `passsms` varchar(250) DEFAULT NULL,
  `google_client_id` varchar(200) DEFAULT NULL,
  `google_client_secret` varchar(200) DEFAULT NULL,
  `facebook_app_id` varchar(200) DEFAULT NULL,
  `facebook_app_secret` varchar(200) DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `changed_on` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data untuk tabel `config_site`
--

INSERT INTO `config_site` (`config_site_id`, `name`, `subname`, `title`, `icon`, `logo`, `background`, `copyright`, `preview`, `flagcounter`, `isforget`, `iscaptcha`, `issinglesession`, `isgoogle`, `isfacebook`, `trylogin`, `timelock`, `hostmail`, `portmail`, `email`, `passmail`, `tokensms`, `deviceid`, `emailsms`, `passsms`, `google_client_id`, `google_client_secret`, `facebook_app_id`, `facebook_app_secret`, `changed_by`, `changed_on`) VALUES
(1, 'SIPA', 'Sistem Informasi Pendataan Aplikasi', 'Sistem Informasi Pendataan Aplikasi di OPD', 'resources/config_site/logo_penilaian1.png', 'resources/config_site/logo_penilaian.png', 'resources/config_site/5031659.jpg', '© 2022 Diskominfo Kota Tanjungpinang', '<div style=\"text-align: justify;\">-</div>', '-', 'n', 'n', 'n', 'n', 'n', 99, 60, '', '', '', '2068a4db29f7f81057cb7aa50376fdfaea77df7e74a3e4915d1e58e62269cd2d3677acd31fcb5c76722fe397cd9a9e29b549cedba27add1e3b71dd8a80ecf0cdxGT0isST0OKCEugIQsE9K894CCtGssDrz2fdXCBiAxo=', '', '', '', '161b7eef5c166c8278d5d01c6848b850c59e9d2c2b24ae2d402e8d878050e810e606a103661fe3d93d0270524c25f42e2e313dd2f89f85534e9db21e82dd3851/2GMbICDL/MWRarG/5l8GILndSlQBUVxsdLyIw04fvk=', '', '', '', '', 1, '2022-11-11 08:31:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_aplikasi`
--

CREATE TABLE `data_aplikasi` (
  `id_aplikasi` int(11) NOT NULL,
  `id_opd` int(11) NOT NULL,
  `asal_aplikasi` enum('1','2') NOT NULL DEFAULT '1',
  `nama_aplikasi` varchar(200) NOT NULL,
  `penyedia_aplikasi` varchar(100) DEFAULT NULL,
  `deskripsi_aplikasi` text DEFAULT NULL,
  `id_jenis_layanan` int(11) NOT NULL,
  `tahun` year(4) NOT NULL,
  `basis_aplikasi` text NOT NULL,
  `bahasa_pemrograman` varchar(100) DEFAULT NULL,
  `id_dbms` int(11) NOT NULL,
  `dbms_lainnya` varchar(100) DEFAULT NULL,
  `id_lokasi_hosting` int(11) NOT NULL,
  `jumlah_pengguna` varchar(100) NOT NULL,
  `id_frekuensi_penggunaan` int(11) NOT NULL,
  `frekuensi_penggunaan_lainnya` varchar(100) DEFAULT NULL,
  `nama_domain` varchar(100) NOT NULL,
  `ketersediaan_integrasi` enum('Ada','Tidak Ada','Tidak Tahu') NOT NULL,
  `metode_integrasi` varchar(100) DEFAULT NULL,
  `aplikasi_terintegrasi` text DEFAULT NULL,
  `opd_terintegrasi` text DEFAULT NULL,
  `pengembang_aplikasi` varchar(100) DEFAULT NULL,
  `regulasi` text DEFAULT NULL,
  `pic_aplikasi` varchar(100) NOT NULL,
  `nip_pic` varchar(20) NOT NULL,
  `jabatan_pic` varchar(100) NOT NULL,
  `no_telp` varchar(100) NOT NULL,
  `file_spt` text DEFAULT NULL,
  `file_logo` text DEFAULT NULL,
  `file_probis` text DEFAULT NULL,
  `level_privileges` text DEFAULT NULL,
  `rencana_aplikasi` text DEFAULT NULL,
  `proses_bisnis` text DEFAULT NULL,
  `nomor_registrasi_aset` int(11) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `catatan` varchar(100) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `changed_on` datetime DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `approved_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data untuk tabel `data_aplikasi`
--

INSERT INTO `data_aplikasi` (`id_aplikasi`, `id_opd`, `asal_aplikasi`, `nama_aplikasi`, `penyedia_aplikasi`, `deskripsi_aplikasi`, `id_jenis_layanan`, `tahun`, `basis_aplikasi`, `bahasa_pemrograman`, `id_dbms`, `dbms_lainnya`, `id_lokasi_hosting`, `jumlah_pengguna`, `id_frekuensi_penggunaan`, `frekuensi_penggunaan_lainnya`, `nama_domain`, `ketersediaan_integrasi`, `metode_integrasi`, `aplikasi_terintegrasi`, `opd_terintegrasi`, `pengembang_aplikasi`, `regulasi`, `pic_aplikasi`, `nip_pic`, `jabatan_pic`, `no_telp`, `file_spt`, `file_logo`, `file_probis`, `level_privileges`, `rencana_aplikasi`, `proses_bisnis`, `nomor_registrasi_aset`, `keterangan`, `status`, `is_active`, `catatan`, `created_by`, `created_on`, `changed_by`, `changed_on`, `approved_by`, `approved_on`) VALUES
(1, 125, '1', 'Sistem Informasi Aktivitas Presensi (SIAP)', 'Diskominfo Provinsi Kepri', 'Sistem Pencatatan presensi pegawai', 3, '2022', 'iOS,Desktop,', 'PHP, Golang, Dart', 1, NULL, 3, 'di atas 100 pengguna', 1, NULL, 'siap.tanjungpinangkota.go.id', 'Ada', 'REST API', 'ICMS;JDIH', 'Diskominfo, BKPSDM', 'Diskominfo Kota Tanjungpinang', 'Perwako Nomor Sekian tahun Dulu', 'David Fherdinan Samson Sihite, S.Kom', '199411252022021001', 'Pranata Komputer', '081278786575', NULL, 'resources/data_aplikasi/logo_siap.png', '', '- Admin Utama, full akses, 1 orang\r\n- Admin OPD, tidak full akses, 40 orang\r\n- pengguna, presensi masuk dan pulang, 3000 orang', 'untuk meningkatkan kedisiplinan', NULL, 0, 'keterangan', 1, 1, 'File SPT Belum ada', 3, '2022-11-04 14:14:58', 18, '2023-02-20 13:32:40', 11, '2025-03-10 09:38:01'),
(3, 125, '1', 'Sistem Informasi Pendataan Aplikasi', 'Diskominfo Kota Tanjungpinang', 'Apliksi pendataan dan inventaris sistem informasi di Pemerintah kota Tanjungpinang', 1, '2022', 'Website,', 'PHP, JS', 1, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 4, NULL, 'sipa.kominfo.tanjungpinangkota.go.id', 'Ada', 'REST API', 'SIAP Tanjungpinang', 'Diskominfo dan BKPSDM Kota Tanjungpianng', 'Diskominfo Kota Tanjungpinang', 'Perpres No 95 Tahun 2018 Tentang SPBE', 'SAiful', '199411252022021001', 'Ahli Pertama Pranata Komputer', '081270709880', 'resources/data_aplikasi/Anjab-Pranata_Komputer.pdf', NULL, '', '- Admin Utama, mempunyai hak akses penuh, 2 orang\r\n- admin OPD, mempunyai hak akses terbatas, 10 orang', 'aplikasi ini akan digunakan untuk proses pendataan aplikasi guna penilaian SPBE setiap Tahun', NULL, 0, '', 1, 1, 'File SPT Belum ada', 5, '2022-11-11 09:40:52', NULL, NULL, 11, '2025-03-10 09:37:10'),
(5, 112, '1', 'Sistem Penerimaan Murid Baru (SPMB) Kota Tanjungpinang', 'CV. RIQCOM SERVICES', 'Sistem Informasi untuk pengelolaan proses Penerimaan Murid Baru tahun ajaran 2026/2027 di Kota Tanjungpinang pada jenjang TK, SD dan SMP', 1, '2022', 'Website,', 'PHP (Laravel)', 3, NULL, 2, 'di atas 100 pengguna', 1, NULL, 'https://spmb-tanjungpinang.id/', '', '', '', '', 'CV. RIQCOM SERVICES', '', 'Inderi, S.Ag', '197511162005011007', 'Kepala Seksi Peserta Didik dan Pembangunan Karakter SMP', '08127729516', NULL, NULL, '', 'Admin', '', '', 0, '', 1, 1, '', 7, '2022-11-17 21:18:52', 116, '2026-10-05 08:56:53', 11, '2026-10-05 10:29:48'),
(6, 112, '1', 'Website Portal OPD', '-', 'indeks informasi terkini dan terbaru dari dunia pendidikan, sekolah pada dinas pendidikan kota tanjungpinang', 1, '2020', 'Website,', 'PHP, Javascript', 1, NULL, 2, 'di atas 100 pengguna', 2, NULL, 'disdik.tanjungpinangkota.go.id', 'Ada', '', '', '', 'CV. MDAENTERPRISE', '', 'Yuliardi', '197807262010011007', 'Pengadministrasi Kurikulum', '08127063972', NULL, NULL, '', 'Admin', '', NULL, 0, '', 1, 1, NULL, 7, '2022-11-17 21:30:32', NULL, NULL, 1, '2022-11-17 22:05:31'),
(7, 119, '1', 'Website DPMPTSP dan MPP', '-', 'Website Portal OPD', 1, '2019', 'Website,', 'Joomla', 1, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'dpmptsp.tanjungpinangkota.go.id', '', '-', 'OSS', '', '-', '', 'Imam Sudaryanto, S.P', '197503202006041007', 'Penata Perizinan Ahli Muda', '082392808464', 'resources/data_aplikasi/20260824160010SURAT_TUGAS_PIC_WEBSITE_DPMPTSP_DAN_MPP.pdf', 'resources/data_aplikasi/DPMPTSP_LOGO.jpg', '', 'Administrator', '', '', 0, '', 0, 1, NULL, 7, '2022-11-17 21:33:39', 170, '2026-09-01 14:11:24', 1, '2022-11-17 22:05:21'),
(8, 106, '1', 'e-BPHTB', '-', 'Sistem Informasi e BPHTB adalah sistem yang\r\nBerfungsi sebagai sarana untuk\r\nmengoperasikan pengolahan data proses\r\nPelayanan Pajak Daerah diantaranya: untuk\r\nmengoperasikan pengolahan data proses\r\nPelayanan Bea Perolehan Atas Tanah dan\r\nBangunan diantaranya Proses Jual Beli, Waris,\r\nHibah, dll dalam proses Penyelenggaraan\r\nPelayanan BPHTB', 1, '2021', 'Website,', 'PHP', 1, NULL, 1, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'ebphtp.tanjungpinangkota.go.id', 'Ada', 'API', 'HOST TO HOST ANTARA BPPRD DENGAN BPN, BANK RIAU KEPRI, BTN DAN NOTARIS', 'BPN, NOTARIS, BANK RIAU KEPRI, BANK\r\nTABUNGAN NEGARA', 'PT. Geospace Intimatika', 'PERATURAN DAERAH KOTA TANJUNGPINANG\r\nNOMOR 2 TAHUN 2011 TENTANG PAJAK\r\nDAERAH (LEMBARAN DAERAH KOTA\r\nTANJUNGPINANG TAHUN 2011 NOMOR 2)\r\nSEBAGAIMANA TELAH DIUBAH BEBERAPA KALI,\r\nTERAKHIR DENGAN PERATURAN DAERAH KOTA\r\nTANJUNGPINANG NOMOR 1 TAHUN 2020\r\nTENTANG PERUBAHAN KETIGA ATAS\r\nPERATURAN DAERAH NOMOR 2 TAHUN 2011\r\nTENTANG PAJAK DAERAH (LEMBARAN DAERAH\r\nKOTA TANJUNGPINANG TAHUN 2020 NOMOR\r\n39).', 'Muhammad Rivai', '199808292008011008', 'kepala Sub Bidang Pengolahan Data dan Informasi', '0822849999333', NULL, NULL, '', 'Administrator : 3 User\r\nPelayanan / Operator : 4 User\r\nUser : 60 User\r\nAR : 5 user\r\nKasubbid : 3 user\r\nKabid : 7 User\r\nkaban : 1 User', 'Pengembangan laporan yang spesifik', 'Pengelolaan Pajak Daerah', 0, 'Optimalisasi pajak daerah', 1, 1, 'cek 12 maret 2026', 7, '2022-11-17 21:38:14', 149, '2026-03-12 12:53:50', 11, '2026-03-12 12:56:27'),
(9, 106, '1', 'KSWP', '-', 'Sistem Informasi KSWP adalah sistem yang Berfungsi sebagai sarana aplikasi yang digunakan untuk mendapatkan informasi Proses BPHTB menjadi sertifikat yang telah selesai prosesnya di BPN, sehingga menjadi dasar terhadap perubahan data PBB atas kepemilikan Tanah.', 3, '2020', 'Website,', 'Golang', 1, NULL, 1, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'kswp.tanjungpinangkota.go.id', 'Ada', 'API', 'Host to Host antara BPPRD dengan BPN dan DPMPTSP', 'BPN;DPMPTSP', 'M. Taufik Hidayat, ST', 'PERATURAN DAERAH KOTA TANJUNGPINANG NOMOR 2 TAHUN 2011 TENTANG PAJAK DAERAH (LEMBARAN DAERAH KOTA TANJUNGPINANG TAHUN 2011 NOMOR 2) SEBAGAIMANA TELAH DIUBAH BEBERAPA KALI, TERAKHIR DENGAN PERATURAN DAERAH KOTA TANJUNGPINANG NOMOR 1 TAHUN 2020 TENTANG PERUBAHAN KETIGA ATAS PERATURAN DAERAH NOMOR 2 TAHUN 2011 TENTANG PAJAK DAERAH (LEMBARAN DAERAH KOTA TANJUNGPINANG TAHUN 2020 NOMOR 39);', 'Muhammad Rivai', '198308292008011008', 'kepala Sub Bidang Pengolahan Data dan Informasi', '082284999933', NULL, NULL, '', 'User: 1 User', 'Memaksimalkan proses integrasi', 'Pengelolaan Pajak Daerah', 0, 'Optimalisasi pajak daerah', 1, 1, 'cek 12 maret 2026', 7, '2022-11-17 21:41:47', 149, '2026-03-12 12:54:40', 11, '2026-03-12 12:56:18'),
(10, 106, '1', 'INCOMEPOINT', '-', 'Sistem Informasi iNCOMEPOINT adalah sistem yang Berfungsi sebagai sarana untuk mengoperasikan pengolahan data proses Pelayanan Pajak Daerah diantaranya: a. Proses Masuk di Aplikasi Incomepoint, b. Proses Input Data Nomor Pelayanan Pajak, c. Proses Input Data SPTPD (Surat Pemberitahuan Pajak Daerah) (Self assesmant), d. Proses Input Data SPTPD (Surat Pemberitahuan Pajak Daerah) Organisasi Perangkat Daerah, e. Proses Input Pendaftaran Data Baru di bidang Penetapan, f.Proses Pengurangan Pajak Daerah, g. Proses Angsuran Pajak Daerah, h. Proses Input Data BKP, Pembukuan dan Penagihan (Surat Tagihan Pajak Daerah/ STPD, I. Proses Narik Data Laporan, j. Nota Pemeriksaan Pajak Daerah.', 1, '2020', 'Website,', 'Delphi', 2, NULL, 1, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'incomepoint.bpprdkotatanjungpinang.online', 'Ada', 'API', 'Host to Host antara BPPRD dengan bank', 'Bank Riau Kepri;Bank tabungan Negara', 'CV. Softpoint System', 'PERATURAN DAERAH KOTA TANJUNGPINANG NOMOR 2 TAHUN 2011 TENTANG PAJAK DAERAH (LEMBARAN DAERAH KOTA TANJUNGPINANG TAHUN 2011 NOMOR 2) SEBAGAIMANA TELAH DIUBAH BEBERAPA KALI, TERAKHIR DENGAN PERATURAN DAERAH KOTA TANJUNGPINANG NOMOR 1 TAHUN 2020 TENTANG PERUBAHAN KETIGA ATAS PERATURAN DAERAH NOMOR 2 TAHUN 2011 TENTANG PAJAK DAERAH (LEMBARAN DAERAH KOTA TANJUNGPINANG TAHUN 2020 NOMOR 39).', 'Muhammad Rivai', '198308292008011008', 'kepala Sub Bidang Pengolahan Data dan Informasi', '082284999933', NULL, NULL, '', 'SUPER ADMIN : 10 USER, ADMIN PELAYANAN : 4 USER, ADMIN PENDATAAN: 5 USER, ADMIN KEBERATAN DAN PENGURANGAN: 2 USER, ADMIN PERHITUNGAN DAN PENETAPAN: 4 USER, ADMIN POTENSI PAJAK DAN RETRIBUSI: 3 USER, ADMIN BENDAHARA PENERIMA: 3 USER, ADMIN PEMBUKUAN: 4 USER, ADMIN PEMERIKSAAN: 3 USER, ADMIN PENAGIHAN: 6 USER, ADMIN LEMBAGA PEMERIKSA: 1 USER', 'Pengembangan Proses pemeriksaan yang terintegrasi', NULL, 0, 'Optimalisasi pajak daerah', 1, 1, NULL, 7, '2022-11-17 21:46:35', NULL, NULL, 1, '2022-11-17 21:58:31'),
(13, 103, '1', 'Sistem Akuntabilitas Kinerja Instansi Pemerintahan', 'Inspektorat Daerah Kota Tanjungpinang', '(Sistem Akuntabilitas Kinerja Instansi Pemerintah Online) APLIKASI ini menampilkan proses perencanaan kinerja, penganggaran kinerja, keterkaitan kegiatan/sub kegiatan dalam pencapaian target kinerja, dan monitoring serta evaluasi pencapaian kinerja dan keuangan', 3, '2018', 'Website,', '-', 10, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 4, NULL, 'esakip.tanjungpinangkota.go.id', '', '', '', '', 'Inspektorat Daerah Kota Tanjungpinang', 'Peraturan Presiden (PERPRES) No.29 Tahun 2014 tentang Sistem Akuntabilitas Kinerja Instansi Pemerintah Permen PANRB No. 88 Tahun 2021 tentang Evaluasi Akuntabilitas Kinerja Instansi Pemerintah', 'Muhammad Najib, S.AP', '197809082007011021', 'PPUD Ahli Muda', '0811704269', NULL, NULL, '', 'Administrator Utama', '', '', 0, '', 0, 1, NULL, 7, '2022-11-17 21:57:18', 235, '2026-08-21 09:35:35', 1, '2022-11-17 22:05:03'),
(14, 116, '1', 'Website Portal DP3APM', '-', 'WEBSITE DINAS PEMBERDAYAAN\r\nPEREMPUAN,PERLINDUNGAN ANAK DAN\r\nPEMBERDAYAAN MASYARAKAT DIGUNAKAN\r\n/DIFUNGSIKAN UNTUK MEMBERITAHU KEPADA\r\nPUBLIK KEGIATAN ATAU BERITA YANG SUDAH\r\nDILAKUKAN OLEH DINAS PEMBERDAYAAN\r\nPEREMPUAN PERLINDUNGAN ANAK DAN\r\nPEMBERDAYAAN MASYRAKAT, DI WEB INI\r\nBERISI KEGIATAN,BERITA,FOTO, DATA DAN\r\nLAYANAN PUBLIK APA SAJA YANG ADA DI\r\nDP3AM', 3, '2018', 'Website,', 'Joomla', 1, NULL, 2, 'di bawah dan sama dengan 25 pengguna', 7, NULL, 'dp3apm.tanjungpinangkota.go.id', 'Ada', '', '', '', 'DP3APM', '', 'Boy Puspla, SE', '197609082006041014', 'Prencana Ahli Muda', '08126119397', NULL, NULL, '', '- Administrasi Utama, adalah user yang\r\nmemiliki seluruh fungsi pada sistem, 1 orang', '', NULL, 0, '', 1, 1, NULL, 8, '2022-11-25 07:25:46', NULL, NULL, 1, '2022-11-25 07:49:43'),
(16, 111, '1', 'E-Puskesmas', '-', 'e-puskesmas adalah aplikasi manajemen\r\npuskesmas, mulai dari pendaftaran pasien\r\nhingga sistem pelaporan puskesmas', 1, '2018', 'Website,', 'PHP', 1, NULL, 2, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'tanjungpianng.epuskesmas.id', '', '', '', '', 'PT. INFOKES', '', 'R. Leila Mutia, SKM', '197608052003042009', 'Perencana Ahli Muda', '081364309329', NULL, NULL, '', '-Administrator Dinkes, merupakan admin di\r\ndinas kesehatan yang dapat mengakses\r\nlaporan dari masing-masing puskesmas\r\n-Administrator Puskesmas, terdiri dari admin di\r\npendaftaran puskesmas, admin masingmasing poli di puskesmas, dan pemegang\r\nprogram', '', '', 0, '', 0, 1, 'cek 12 maret 2026', 8, '2022-11-25 07:30:25', 31, '2026-08-20 10:19:12', 11, '2026-03-12 11:31:21'),
(18, 119, '1', 'Website MPP', '-', '', 1, '2022', 'Website,Android,iOS,', '-', 1, NULL, 1, 'di atas 100 pengguna', 1, NULL, 'mpp.tanjungpinangkota.go.id', '', '', '', '', 'PT. Medianusa Permana', '', 'Imam Sudaryanto, S.P', '197503202006041007', 'Penata Perizinan Ahli Muda', '082392808464', 'resources/data_aplikasi/20260824160010SURAT_TUGAS_PIC_WEBSITE_DPMPTSP_DAN_MPP1.pdf', 'resources/data_aplikasi/MPP_LOGO.jpg', '', '', '', '', 0, '', 0, 1, NULL, 8, '2022-11-25 07:39:07', 170, '2026-09-01 14:11:37', 1, '2022-11-25 07:49:37'),
(20, 105, '1', 'SIMPEG', '-', 'SIMPEG ini digunakan untuk merakam, mengubah, menghapus dan mencari data serta laporan yang menampilkan hasil perekaman data', 3, '2013', 'Website,', 'PHP', 1, NULL, 1, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'http://202.134.231.34:88//simpegtpinang', '', '', '', '', '-', '', 'Halipah Haini', '197808062009022005', 'Ketua Tim Pengelola SIMPEG', '0811694024', NULL, NULL, '', '- Administrator utama adalah user yang\r\nmemiliki seluruh fungsi pada sistem, 15 orang\r\n- Administrator OPD adalah user yang memiliki\r\nseluruh fungsi OPD nya, 56 orang', 'Aplikasi SIMPEG kedepannya dapat\r\nterintergrasi dengan absensi, manajemen\r\nkinerja dan manajemen talenta serta pelayanan\r\nkepegawaian lainnya.', '', 0, '', 0, 1, NULL, 8, '2022-11-25 07:45:58', 237, '2026-08-21 09:28:14', 1, '2022-11-25 07:49:17'),
(21, 125, '1', 'JAVIDCON', '-', 'Aplikasi Penjadwalan Video Conference', 3, '2022', 'Website,', 'PHP', 1, NULL, 2, 'di atas 25 sampai dengan 100 pengguna', 3, NULL, 'javidcon.tanjungpinangkota.go.id', 'Ada', '', '', '', 'Rakhmad Kafyandi, ST', '', 'Rakhmad Kafyandi', '199507292022021001', 'Pranata Komputer Ahli Pertama', '081275265829', NULL, NULL, '', 'Admin Diskominfo', '', NULL, 0, '', 1, 1, NULL, 8, '2022-11-25 08:04:16', NULL, NULL, 1, '2023-01-31 11:11:45'),
(22, 125, '1', 'Digital Up Skill', '-', 'Portal layanan peningkatan kapasitas SDM dalam pemanfaatan Sistem Informasi Pemerintahan dan Sistem Informasi Publik', 2, '2022', 'Website,', 'PHP', 1, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'digitalupskill.kominfo.tanjungpinangkota.go.id', '', '', '', '', 'David Fherdinan Samsom Sihite, S.Kom', '', 'David Fherdinan Samsom Sihite, S.Kom', '199407062022021001', 'Pranata Komputer Ahli Pertama', '081216902746', NULL, NULL, '', 'Admin Utama', '', '', 0, '', 1, 1, '', 8, '2022-11-25 08:05:56', 152, '2026-08-19 08:34:47', 1, '2026-08-19 08:36:05'),
(27, 122, '1', 'Website Portal DLH', '-', 'Website ini Sebagai upaya peningkatan\r\nkualitas pelayanan publik dalam rangka\r\npercepatan mewujudkan cita dan pencapaian\r\ntujuan pembangunan berkelanjutan yang\r\nmerupakan INOVASI dalam Menjaring,\r\nmendokumentasikan, mendiseminasikan, dan\r\nmempromosikan, guna Peningkatan Tata kelola\r\npenyelenggaraan pelayanan publik yang\r\nefektif, efisien, dan berkinerja tinggi.', 1, '2018', 'Website,', '-', 10, NULL, 2, 'di atas 100 pengguna', 2, NULL, 'dlh.tanjungpinangkota.goid', '', '', '', '', '-', '', 'Supriadi', '198312312005021006', 'Pengadministrasi Perkantoran', '0822-8658-1118', NULL, NULL, '', 'ADMINISTRATOR UTAMA ADALAH USER YANG\r\nMEMILIKI SEMUA FUNGSI BERJUMLAH 1 ORANG,\r\nADMINISTRASI PENGELOLA ADA USER YANG\r\nMENGELOLA PENGINPUTAN DATA PADA\r\nWEBSITES BERJUMLAH 1 ORANG YANG\r\nBERSTATUS PTT PADA DINAS LINGKUNGAN\r\nHIDUP', '', '', 0, '', 0, 1, NULL, 8, '2022-11-25 08:22:04', 188, '2026-06-11 10:32:32', 1, '2023-01-31 11:13:26'),
(31, 107, '2', 'SIMDA Keuangan', 'BPKP', 'Aplikasi pengelolaan Keuangan daerah yang prosesnya dimulai dari penganggaran, penatausahaan dan pelaporan', 3, '2013', 'Desktop,', 'Delphi', 2, NULL, 1, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, '', 'Ada', 'VPN', 'Sinergi SIKD', 'Semua OPD terintegrasi', '-', '', 'Sulaiman', '198004192009021002', 'Kasubid Pembidaan dan Evaluasi', '0819678040', NULL, NULL, '', '', '', NULL, 0, '', 1, 1, 'tidak ada file spt', 8, '2022-11-25 08:34:20', NULL, NULL, 11, '2026-10-16 08:44:06'),
(32, 107, '2', 'SIMDA BMD', 'BPKP RI', 'Penatausahaan dan pelaporan barang milik daerah', 4, '2016', 'Desktop,', 'VB', 2, NULL, 1, 'di atas 100 pengguna', 1, NULL, '', 'Ada', '', '', '', '-', '', 'Ramadian, SE', '198008092005021004', 'Analis Kebijakan Ahli Muda', '081364235373', NULL, NULL, '', '', '', NULL, 0, '', 1, 1, 'file spt tidak di unggah', 8, '2022-11-25 08:37:58', NULL, NULL, 11, '2026-10-16 08:43:54'),
(33, 101, '1', 'JDIH Kota Tanjungpinang', 'Diskominfo Kota Tanjungpinang', 'Jaringan Dokumentasi dan Informasi Hukum (JDIH) Kota Tanjungpinang merupakan aplikasi repositori produk hukum sendiri dan nasional yang disediakan oleh Pemerintah Kota Tanjungpinang.', 1, '2023', 'Website,', 'PHP', 1, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'jdih.tanjungpinangkota.go.id', 'Ada', '', '', '', 'Diskominfo Kota Tanjungpinang', 'Permenkumham Nomor 8 Tahun 2019 tentang Standar Pengelolaan Dokumen dan Informasi Hukum, Perwako Nomor 8 Tahun 2022 tentang Penyelenggaraan SPBE', 'SUGIARTO, SH, M.H.', '198903312015031002', 'Analis Hukum', '0811-6666-788', NULL, NULL, '', 'Admin Utama Dengan Hak Akses Tidak Terbatas', '', NULL, 0, '', 1, 1, 'File SPT Belum tersedia', 11, '2023-01-09 21:27:52', NULL, NULL, 11, '2025-03-10 08:39:07'),
(35, 125, '1', 'Portal Open Data Tanjungpinang', 'Diskominfo Kota Tanjungpinang', 'Open Data Tanjungpinang adalah Portal Satu Data Pemerintah Kota Tanjungpinang yang menyediakan sumber data terbuka terkait Statistik Sektoral dan data lainnya yang merupakan data terbuka yang diproduksi oleh OPD di Lingkungan Pemerintah Kota Tanjungpinang', 1, '2022', 'Website,', 'Python / CKAN', 3, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'opendata.tanjungpinangkota.go.id', 'Ada', 'Rest API', '', '', 'Diskominfo Kota Tanjungpinang', 'Peraturan Presiden Nomor 39 Tahun 2019 tentang Satu Data Indonesia, Perwako 67 Tahun 2020 tentang Penyelenggaraan Satu Data Kota Tanjungpinang', 'Misnanten, S.Kom', '198004152009022005', 'Statistisi', '081364386678', NULL, 'resources/data_aplikasi/2022-07-20-030133_364499opendataH.png', '', 'Admin Utama, Pengguna OPD', 'Membuat Insight dari data yang telah dikumpulkan dan Menyajikannya sebagai Sistem Pendukung Keputusan Perencanaan Pembangunan Daerah', NULL, 0, '', 1, 1, NULL, 11, '2023-01-18 13:09:53', 11, '2023-01-18 13:13:19', 1, '2023-01-31 11:14:11'),
(36, 125, '1', 'Integrated Content Manajemen Sistem (ICMS)', 'CV. LESTARINDO AGARA', 'Portal Pengelolaan Konten Untuk Website Dinas /Template Website Dinas di Lingkungan Pemerintah Kota Tanjungpinang', 3, '2022', 'Website,', 'PHP', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'icms.tanjungpinangkota.go.id', 'Ada', 'Rest API', 'Website OPD / Template Website Dinas Pemerintah Kota Tanjungpinang', 'Kelurahan Tanjungpinang Kota, Kelurahan Bukit Cermin, Dinas Sosial, Dinas Komunikasi dan Informatika', 'Diskominfo Kota Tanjungpinang', 'Perpres 95 Tahun 2018 Tentang Sistem Pemerintahan Berbasis Elektronik, Perwako 8 Tahun 2022 Tentang Penyelenggaraan Sistem Pemerintahan Berbasis Elektronik', 'Muhammad Taufik Hidayat, ST', '198602162008031001', 'Pranata Komputer Ahli Muda', '085272220227', NULL, NULL, '', 'Admin Pemko, Admin OPD, User Biasa', 'Manajemen Pengelolaan Konten Berita, Pengumuman, Event, dsb dalam 1 Aplikasi ICMS', NULL, 0, '', 1, 1, NULL, 11, '2023-01-18 13:23:26', NULL, NULL, 1, '2023-01-31 11:11:40'),
(37, 125, '1', 'Tanjungpinang Aktual', 'Bappelitbang Kota Tanjungpinang', 'Tanjungpinang Aktual (Tanjak) adalah Aplikasi yang bertujuan sebagai Landing Page Informasi Kota Tanjungpinang. Aplikasi ini menyediakan informasi terintegrasi tentang Kota Tanjungpinang', 1, '2020', 'Website,Android,', 'React Native, Golang', 1, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'tanjak2.tanjungpinangkota.go.id', '', 'Rest API', 'Portal Berita Tanjungpinang (tanjungpinangkota.go.id) dalam menyediakan berita', '', 'Diskominfo Kota Tanjungpinang', '', 'Muhammad Taufik Hidayat, ST', '198602162008031001', 'Pranata Komputer Ahli Muda', '085272220227', NULL, 'resources/data_aplikasi/lgo_tanjak_copy.png', '', 'Admin Utama, Pengguna Biasa', 'Pengembangan Aplikasi menjadi Single Window Information System Kota Tanjungpinang', '', 0, 'Diadakan oleh Bappelitbang Kota Tanjungpinang dan Diserahkan ke Dinas Komunikasi dan Informatika Kota Tanjungpinang', 0, 1, 'Link PlayStore Sudah Berganti', 11, '2023-01-18 13:29:53', 11, '2026-06-18 08:32:03', 11, '2026-03-12 13:00:35'),
(38, 125, '2', 'Website PPID Kota Tanjungpinang', 'Kementerian Dalam Negeri RI', 'Salah satu kewajiban badan publik yang dinyatakan dalam Undang-Undang No 14 Tahun 2008 adalah menyediakan Daftar Informasi Publik (DIP). DIP adalah catatan yang berisi keterangan sistematis tentang informasi publik yang berada dibawah penguasaan badan publik. Melalui aplikasi PPID Kemendagri yang digunakan ini, badan publik dapat mempublikasi informasi yang dikuasai yang selanjutnya tersusun sebagai DIP secara otomatis.', 1, '2022', 'Website,', 'PHP', 1, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'ppid.tanjungpinangkota.go.id', 'Ada', 'Integrasi Database', 'PPID Nasional', 'Kementerian Dalam Negeri', 'Kementerian Dalam Negeri RI', 'Undang-Undang No 14 Tahun 2008 tentang Keterbukaan Informasi Publik', 'Wulan Tri Wahyuni', '198504122010012029', 'Analis Kebijakan', '081270063199', NULL, NULL, '', 'Admin Pemko, Admin OPD, Pengguna Biasa', '', NULL, 0, '', 1, 1, NULL, 11, '2023-01-18 13:35:16', NULL, NULL, 1, '2023-01-31 11:13:45'),
(39, 125, '1', 'Email Kedinasan Kota Tanjungpinang', 'Diskominfo Kota Tanjungpinang', 'Aplikasi Pengelolaan Email Kedinasan di Lingkungan Pemerintah Kota Tanjungpinang bagi OPD dan ASN di Lingkungan Pemerintah Kota Tanjungpinang', 3, '2018', 'Website,', 'Python', 10, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'mail.tanjungpinangkota.go.id', 'Ada', '', '', '', 'Diskominfo Kota Tanjungpinang', '', 'David Fherdinan Samsom Sihite, S.Kom', '199407062022021001', 'Pranata Komputer Ahli Pertama', '081216902746', NULL, NULL, '', 'Admin Utama, Pengguna Email', '', NULL, 0, '', 1, 1, NULL, 11, '2023-01-18 13:39:38', NULL, NULL, 1, '2023-01-31 11:12:21'),
(40, 125, '1', 'Website Portal Pemerintah Kota Tanjungpinang', 'CV. ANUGRAH SEJAHTERA', 'Website Portal Pemerintah Kota Tanjungpinang', 1, '2018', 'Website,', 'Javascript', 1, NULL, 3, 'di atas 100 pengguna', 1, NULL, 'tanjungpinangkota.go.id', 'Ada', 'Rest API', 'Tanjak', 'Diskominfo', 'Diskominfo Kota Tanjungpinang', '', 'Aprinaldi, S.Kom', '198804102015031001', 'Pengawas Teknologi Informasi', '085228199298', NULL, NULL, '', 'Pengguna Biasa', '', NULL, 0, '', 1, 1, NULL, 11, '2023-01-18 13:49:32', NULL, NULL, 1, '2023-01-31 11:13:58'),
(46, 121, '1', 'Website Dinas Perdagangan dan Perindustrian Kota Tanjungpinang', 'Avicom Multimedia', 'Sebuah laman website yang berisikan tampilan informasi kegiatan dan informasi update harga bahan pokok hasil pemantauan', 1, '2017', 'Website,Android,Desktop,', 'PHP', 1, NULL, 2, 'di atas 100 pengguna', 1, NULL, 'disperdagin.tanjungpinangkota.go.id', '', '', 'Website Pemerintah Kota Tanjungpinang', '', 'Avicom Multimedia', '', 'REZKY DWI SAPUTRA, A.Md.', '198508302023211013', 'Pranata Komputer Terampil', '081374048885', 'resources/data_aplikasi/surat_tugas_admin_website_dinas_an_REZKY_DWI_SAPUTRA.pdf', NULL, '', 'Admin adalah penginput informasi dan berita', '', '', 0, '', 0, 1, 'File logo dan File SPT belum diunggah', 19, '2023-02-28 16:21:44', 220, '2026-08-20 12:01:04', 115, '2025-03-06 14:40:01'),
(57, 105, '1', 'Website BKPSDM Kota Tanjungpinang', 'BKPSDM Kota Tanjungpinang', 'Website ini merupakan sarana publikasi kegiatan dan informasi serta layanan daring BKPSDM Kota Tanjungpinang', 1, '2022', 'Website,', 'PHP', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 2, NULL, 'https://bkpsdm.tanjungpinangkota.go.id/', 'Ada', '', 'Terintegrasi dengan aplikasi OSS BKPSDM', 'BKPSDM Kota Tanjungpinang', 'BKPSDM Kota Tanjungpinang', 'Peraturan Presiden Republik Indonesia Nomor 95 Tahun 2018 tentang Sistem Pemerintahan Berbasis Elektronik', 'Muhammad Abduh, A.Md', '199003192022021001', 'Pengelola SIMPEG', '085272224626', 'resources/data_aplikasi/SPT_APLIKASI_BKPSDM2.pdf', 'resources/data_aplikasi/tanjungpinang.png', '', 'Administrator Utama adalah user yang\r\nmemiliki seluruh fungsi pada website, dan Administrator Bidang adalah user yang memiliki seluruh fungsi pada bidang', 'Website BKPSDM Kota Tanjungpinang menjadi website utama dari seluruh aplikasi berbasis website BKPSDM Kota Tanjungpinang', NULL, 0, '', 1, 1, 'Harap mengupdate versi PHP', 35, '2023-03-07 10:27:28', 35, '2023-03-15 15:11:08', 11, '2025-03-06 11:47:14'),
(88, 129, '1', 'SIAPI', 'Google (APP Sheet)', 'Laporan Kebakaran dan Non Kebakaran', 2, '2022', 'Android,iOS,Desktop,', 'Open Sourece', 9, NULL, 2, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'https://www.appsheet.com/newshortcut/d6cb992e-999a-48ec-9280-c6e18f8b0d0e', '', 'API', 'Whatsapp', 'Tidak Ada', 'Google (APP Sheet)', 'PERATURAN MENTERI DALAM NEGERI REPUBLIK INDONESIA\r\nNOMOR 114 TAHUN 2018\r\nTENTANG\r\nSTANDAR TEKNIS PELAYANAN DASAR PADA STANDAR PELAYANAN MINIMAL\r\nSUB URUSAN KEBAKARAN DAERAH KABUPATEN/KOTA', 'Firdaus', '197701292006041005', 'Pranata Pemadam Kebakaran', '08126887687', 'resources/data_aplikasi/PIC_SIPA_DINAS_PEMADAM_KEBAKARAN_DAN_PENYELAMATAN_KOTA_TANJUNGPINANG.pdf', 'resources/data_aplikasi/1000873499.jpg', '', 'Admin utama adahalah hak akses untuk semua fitur dan user adalah pengguna App Laporan Insidenti', '', '', 0, '', 0, 1, '', 57, '2023-03-09 12:18:39', 57, '2026-08-21 09:22:55', 11, '2025-03-06 12:55:26'),
(94, 136, '1', 'Website Kelurahan Tanjungpinang Kota', 'diskominfo kota tanjungpinang', '', 1, '2022', 'Website,', 'php,vue js', 1, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'tpikotakel.tanjungpinangkota.go.id', 'Ada', 'API', 'SIAP TANJUNGPINANG DENGAN ICMS', 'DISKOMINFO', 'diskominfo', 'PERWAKO TPI NO 8 TAHUN 2022', 'CHARMA RISSENO', '30910163', 'HONORER PTT', '081275970888', 'resources/data_aplikasi/SPT_BUJANG204.pdf', 'resources/data_aplikasi/Lambang_Kota_Tanjungpinang.png', '', '1 OPERATOR SEBAGAI PENGELOLA WEBSITE', '-', NULL, 0, '-', 1, 1, '', 49, '2023-03-09 15:41:27', 49, '2023-03-09 15:42:03', 11, '2025-03-06 12:57:47'),
(124, 152, '1', 'Website UPT Puskesmas Tanjungpinang', 'Avicom', 'Menyampaikan Informasi dan serangkaian kegiatan yang ada di UPTD Puskesmas Tanjungpinang', 1, '2023', 'Website,Android,iOS,Desktop,', 'html', 1, NULL, 2, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'https://puskesmastpi.tanjungpinangkota.go.id/', '', '', '', '', 'Avicom', '', 'Rika Susinta, S.Tr.Keb', '199405052019022007', 'Admin OPD  dan Bidan pada Puskesmas Tanjungpinang', '082285727244', 'resources/data_aplikasi/SPT_RIKA.pdf', 'resources/data_aplikasi/36702b2ce2582b06e6db021d37ccc3e8.png', '', 'admin bisa akses semua fitur, dapat merubah artikel kapanpun', 'dengan website ini masyarakat dapat mengetahui info ataupun kegiatan yang ada di UPTD Puskesmas Tanjungpinang.', '', 0, '', 0, 1, '', 68, '2023-03-13 12:20:05', 68, '2026-08-31 18:16:26', 11, '2025-03-11 12:16:41'),
(198, 103, '1', 'Kopi Tarik', 'Inspektorat Daerah Kota Tanjungpinang', 'KOPI TARIK (Konsultasi Pengawasan Intern Tata Kelola Manajemen Risiko) adalah aplikasi yang digunakan sebagai jembatan antara Inspektorat Daerah Kota Tanjungpinang dengan perangkat daerah lain dalam ruang lingkup Pemerintah Kota Tanjungpinang untuk berkonsultasi terkait kebutuhan dalam mendapatkan informasi.\r\nTata cara penganjuan pertanyaan konsultasi dimulai dari ASN mendaftar menjadi user/pengguna, setelah berhasil mendaftar, ASN dapat mengajukan pertanyaan, pertanyaan akan diterima oleh PIC, kemudian PIC menjawab pertanyaan yang diajukan oleh ASN, setelah dijawab ASN langsung menerima notifikasi jawaban.', 3, '2022', 'Website,Android,', 'PHP, JS, Dart', 1, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'kopitarik.tanjungpinangkota.go.id', '', 'REST API', 'SIAP Tanjungpinang', 'Diskominfo', 'Danandjaya Saputra', '', 'RUDI YANTO, S.Kom', '198003122009021002', '-', '081270657599', 'resources/data_aplikasi/SPT_SUROSO2.pdf', 'resources/data_aplikasi/logo_kopi_tarik.png', '', 'Admin utama sebagai pengguna dengan hak akses penuh\r\npegawai sebagai pengguna dengan hak akses yang sudah di tentukan', '', '', 0, '', 0, 1, NULL, 18, '2023-03-15 08:09:51', 235, '2026-08-21 09:28:18', 11, '2024-10-02 07:42:26'),
(199, 103, '1', 'SIKADU', 'Inspektorat Daerah Kota Tanjungpinang', 'SIKADU merupakan saluran pelaporan pelanggaran (Whistleblower\'s System) yang dilaporkan oleh Aparatur Sipil Negara (ASN) di lingkungan Pemerintah Kota Tanjungpinang. Pengaduan yang disampaikan adalah informasi terkait pelanggaran yang dilakukan oleh Aparatur Sipil Negara (ASN) di lingkungan Pemerintah Kota Tanjungpinang.', 3, '2022', 'Website,', 'PHP, JS', 1, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'sikadu.tanjungpinangkota.go.id', '', 'REST API', 'SIAP Tanjungpinang', 'Diskominfo Kota Tanjungpinang', 'Danandjaya Saputra', '', 'RUDI YANTO, S.Kom', '198003122009021002', '-', '081270657599', 'resources/data_aplikasi/SPT_SUROSO3.pdf', 'resources/data_aplikasi/Lambang_Kota_Tanjungpinang_1_(1).png', '', 'Admin Utama memiliki hak akses penuh\r\nPemeriksa memiliki hak akases yang sudah di tentukan\r\nPegawai memilik hak akses yang sudah di tentukan', '', '', 0, '', 0, 1, NULL, 18, '2023-03-15 08:13:51', 235, '2026-08-21 09:28:31', 11, '2024-10-02 07:42:39'),
(220, 110, '2', 'PPID', 'DINAS KOMINFO DAN INFORMATIKA KOTA TANJUNGPINANG', 'tentang pengelola layanan informasi publik dan dokumentasi di lingkuan Pemerintah Kota Tanjungpinang', 1, '2022', 'Desktop,', 'bahasa indonesia', 1, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'ppid.tanjungpinangkota.go.id', 'Ada', '', 'Semua OPD', 'Semua OPD', 'DINAS KOMINFO DAN INFORMATIKA KOTA TANJUNGPINANG', 'Undang -Undang No.14 Tahun 2008 tentang keterbukaan Informasi Publik', 'NURAISYAH,S.Sos', '197110212006042020', 'Administrator Database Kependudukan Ahli Muda', '08127757889', 'resources/data_aplikasi/Keputusan_Wali_Kota_Tanjungpinang_Nomor_575_tahun_2022_-_PPID_compressed.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-14_at_16_33_52.jpeg', '', '-', '-', NULL, 0, '-', 1, 1, '', 72, '2023-03-15 10:28:35', NULL, NULL, 11, '2025-03-06 11:51:38'),
(237, 105, '1', 'OSS BKPSDM Tanjungpinang', 'BKPSDM Kota Tanjungpinang', 'Merupakan aplikasi One Stop Service, yaitu aplikasi yang memudahkan OPD selaku pengguna untuk bisa menginput usulan Pelayanan kepegawaian (Kepangkatan, Pencantuman Gelar, Kenaikan Fungsional, Pensiun, Ujian Dinas)', 4, '2020', 'Website,', 'HTML5, PHP', 1, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 8, NULL, 'oss-bkpsdm.tanjungpinangkota.go.id', '', '', 'Terintegrasi dengan aplikasi SIMPEG', '-', 'BKPSDM Kota Tanjungpinang', 'Peraturan Presiden Republik Indonesia Nomor 95 Tahun 2018 tentang Sistem Pemerintahan Berbasis Elektronik', 'Syafrizal, ST', '198312042009021007', 'Analis Kepegawaian Ahli Muda', '085272420002', 'resources/data_aplikasi/SPT_APLIKASI_BKPSDM3.pdf', 'resources/data_aplikasi/tanjungpinang4.png', '', 'Administrator Utama adalah user yang\r\nmemiliki seluruh fungsi pada aplikasi, Administrator Biasa adalah user yang memiliki fungsi standar', '-', '', 0, '-', 0, 1, '', 35, '2023-03-15 15:18:06', 237, '2026-08-21 09:31:02', 11, '2025-03-06 11:39:45'),
(241, 158, '1', 'Website Puskesmas Tanjung Unggat', 'joomla', 'Website berisi tentang profil puskesmas tanjung unggat serta kegiatan yang dilakukan puskesmas tanjung unggat', 1, '2019', 'Website,Android,iOS,', 'php.js', 1, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'https://puskesmastanjungunggat.tanjungpinangkota.go.id/', '', '', '', 'Dinas Kesehatan PP dan KB', 'joomla', '', 'Hari Sapriyanto', '199309042015031001', 'Sanitarian mahir', '081378077874', 'resources/data_aplikasi/PEMERINTAH_KOTA_TANJUNGPINANG.pdf', 'resources/data_aplikasi/1000234233.jpg', '', '', '', '', 0, '', 0, 1, '', 39, '2023-03-15 21:02:33', 39, '2026-08-20 22:34:01', 11, '2025-03-10 09:52:17'),
(279, 106, '1', 'esptpd', 'Soft Point Sistem (Nana Sukmana Angga)', 'Surat Pemberitahuan Pajak Daerah, yang selanjutnya disingkat SPTPD, adalah surat yang oleh Wajib Pajak digunakan untuk melaporkan penghitungan dan/atau pembayaran Pajak, objek Pajak dan/atau bukan objek Pajak, dan/atau harta dan kewajiban sesuai dengan ketentuan peraturan perundang-undangan perpajakan Daerah', 1, '2023', 'Website,Android,', 'pascl dan jafa scryt', 2, NULL, 1, 'di atas 100 pengguna', 3, NULL, 'esptpd.tanjungpinangkota.go.id', 'Ada', '', 'Incomepoint (Aplikasi Pajak Daerah selain PBB dan BPHTB)', 'Badan Pengelolaan Pajak dan Retribusi Daerah', 'Wajib Pajak', '1. Undang-Undang No. 1 Tahun 2022 Tentang Hubungan Keuangan Antara Pemerintah Pusat  dan Pemerintah Daerah\r\n2. Peraturan Pemerintah No. 35 Tahun 2023 Tentang Ketentuan Umum Pajak Daerah dan Retribusi Daerah', 'Muhammad Rivai', '198308292008011008', 'Kasubbid Pengolahan Data dan Informasi', '082284999933', 'resources/data_aplikasi/PIC_ESPTPD_2023.pdf', 'resources/data_aplikasi/LOGO_APLIKASI_ESPTPD.jpeg', '', 'Admin Utama', 'Aplikasi Pembayaran Pajak Daerah', NULL, 0, 'Pelayana Pemerintah untuk Masyarakat', 1, 1, NULL, 69, '2023-11-17 11:00:07', 69, '2023-11-17 11:02:04', 11, '2024-10-02 07:43:59'),
(280, 125, '1', 'Dashboard Kolaborasi Penanganan Stunting', 'Diskominfo', 'Dashboard Penyediaan Informasi Balita Stunting di Kota Tanjungpinang', 1, '2023', 'Website,', 'PHP', 1, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'stunting.tanjungpinangkota.go.id', 'Tidak Ada', '', '', 'Diskominfo; Dinas Kesehatan', 'Diskominfo Kota Tanjungpinang', 'PERATURAN MENTERI KESEHATAN REPUBLIK INDONESIA\r\nNOMOR 2 TAHUN 2020 TENTANG STANDAR ANTROPOMETRI ANAK', 'Muhammad Taufik Hidayat, ST', '198602162008031001', 'Pranata Komputer Ahli Muda', '085272220227', 'resources/data_aplikasi/Doc11.pdf', 'resources/data_aplikasi/logo-tpi1.png', '', 'Admin Utama dapat mengakses keseluruhan sistem; Admin Dinas Kesehatan mengatur user kader posyandu; Kader Posyandu untuk melakukan penginputan data', '', NULL, 0, '', 1, 1, 'SPT Belum ada', 11, '2024-01-17 14:50:04', 11, '2024-01-17 14:59:20', 11, '2025-03-10 08:38:17'),
(281, 125, '1', 'SINERGI', 'Diskominfo Kota Tanjungpinang', 'Sistem Informasi Manajemen Kinerja Pegawai', 4, '2023', 'Website,', 'PHP', 1, NULL, 3, 'di atas 100 pengguna', 1, NULL, 'sinergi.tanjungpinangkota.go.id', 'Ada', 'API', 'SIAP', 'Diskominfo;BKPSDM', 'Diskominfo Kota Tanjungpinang', '', 'Muhammad Taufik Hidayat, ST', '198602162008031001', 'Pranata Komputer Ahli Muda', '085272220227', 'resources/data_aplikasi/Doc12.pdf', 'resources/data_aplikasi/Artboard_10.png', '', '', '', NULL, 0, '', 1, 1, 'File SPT Belum ada', 11, '2024-01-17 15:10:03', NULL, NULL, 11, '2025-03-10 09:39:02'),
(282, 125, '1', 'Website Diskominfo Kota Tanjungpinang', 'Diskominfo Kota Tanjungpinang', 'Portal Layanan Informasi Dinas Komunikasi dan Informatika Kota Tanjungpinang', 2, '2023', 'Website,', 'Javascript/Vue', 9, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'diskominfo.tanjungpinangkota.go.id', 'Ada', 'API', 'ICMS Tanjungpinang', '', 'Diskominfo Kota Tanjungpinang', '', 'Muhammad Taufik Hidayat, ST', '198602162008031001', 'Pranata Komputer Ahli Muda', '085272220227', 'resources/data_aplikasi/Doc13.pdf', 'resources/data_aplikasi/logo-tpi2.png', '', '', '', NULL, 0, '', 1, 1, 'File SPT Belum ada', 11, '2024-01-17 15:49:53', NULL, NULL, 11, '2025-03-10 09:31:48'),
(283, 126, '1', 'Website Dinas Perpustakaan dan Kearsipan Kota Tanjungpinang', 'MDA/DPK', 'aplikasi berbasis web yang memberikan informasi kegiatan yang ada di Perpustakaan dan Kearsipan', 1, '2021', 'Website,', '-', 9, NULL, 2, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'https://pustakaarsip.tanjungpinangkota.go.id/', '', '', '-', 'Diskominfo', 'MDA/DPK', 'PP Nomor 95 Tentanf Sistem Pemerinrtahan Berbasis Elektronik', 'IBNU ROJI', '197807032006041017', 'KASUBAG UMUM', '081218888189', 'resources/data_aplikasi/show.pdf', 'resources/data_aplikasi/Lambang_Kota_Tanjungpinang1.png', '', '', '', '', 0, '', 0, 1, 'dilakukan pemindahan IP ke 103.78.121.47 melalui surat nomor M/003/02/5.17.01/2026 tanggal 2 Februar', 103, '2024-03-26 15:48:12', 192, '2026-06-19 07:42:21', 11, '2026-03-12 11:35:01'),
(287, 109, '2', 'PILAR SIMRS', 'PT. Pilar Data Esensia', 'Sistem Informasi Manajemen Rumah Sakit', 2, '2022', 'Desktop,', 'Delphi', 2, NULL, 1, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'pilar.blangkon.net', 'Ada', 'REST API', 'Terintegrasi dengan BPJS Kesehatan, Satu Sehat Kementerian Kesehatan RI.', 'Kementerian Kesehatan RI\r\nBPJS Kesehatan', 'PT. Pilar Data Esensia', 'PP No. 46 Tahun 2014 tentang Sistem Informasi Kesehatan\r\nPermenkes No. 24 Tahun 2022 tentang Rekam Medis', 'Sari Dewi, ST, MT', '197809262010012007', 'Analis Pengembangan Sistem Operasi Medis', '081364649466', 'resources/data_aplikasi/SK_DIREKTUR_NOMOR_45_TAHUN_2025_-_UNIT_PENGELOLA_IT_compressed.pdf', 'resources/data_aplikasi/SIMRS_PILAR.jpg', '', 'Admin Utama\r\nUser/Client', '', 'Manajemen Pendataan dan Pelayanan di RS', 0, '-', 1, 1, '', 138, '2025-03-05 13:48:38', NULL, NULL, 11, '2026-10-16 08:42:40'),
(288, 109, '1', 'Pilar-Elektronik Rekam Medis (P-ERM)', 'PT. Pilar Data Esensia', 'Sistem Informasi terkait Rekam Medis dan Informasi Kesehatan', 2, '2024', 'Desktop,', 'Delphi', 2, NULL, 1, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'pilar.blangkon.net', 'Ada', 'REST API', 'Terintegrasi dengan Pilar SIMRS', 'RSUD Kota Tanjungpinang', 'PT. Pilar Data Esensia', 'Permenkes No. 24 Tahun 2022 tentang Rekam Medis', 'Sari Dewi, ST, MT', '197809262010012007', 'Analis Pengembangan Sistem Operasi Medis', '081364649466', 'resources/data_aplikasi/SK_DIREKTUR_NOMOR_45_TAHUN_2025_-_UNIT_PENGELOLA_IT_compressed1.pdf', 'resources/data_aplikasi/P-ERM.jpg', '', 'Admin\r\nUser/Client', '-', 'Perekaman dan Pencatatan Status Medis Pasien di RSUD', 0, '-', 1, 1, '', 138, '2025-03-05 13:53:18', NULL, NULL, 11, '2025-03-10 09:46:43'),
(289, 118, '1', 'Sistem Informasi Gerak Jalan Proklamasi', 'Dinas Komunikasi dan Informatika Kota Tanjungpinang', 'Sistem informasi untuk pendaftaran dan penilaian Lomba Gerak Jalan Proklamasi Tahun 2024', 1, '2024', 'Website,', 'HTML, PHP', 1, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 7, NULL, 'https://gerakjalan.tanjungpinangkota.go.id', 'Tidak Ada', '', '', '', 'Dinas Komunikasi dan Informatika Kota Tanjungpinang', 'Perpres 95 Tahun 2018, Perwako 8 Tahun 2022', 'Berima, S.IP, MM', '197711102006041022', 'Pelatih Olahraga Ahli Muda', '081266097649', 'resources/data_aplikasi/Contoh_SPT1.pdf', 'resources/data_aplikasi/Screen_Shot_2025-03-06_at_12_15_47.png', '', 'Admin Utama untuk melakukan pengaturan aplikasi (tahun, kategori lomba, dll), Juri (Nilai & Waktu) untuk melakukan penilaian,', 'Pengembangan mobile app', 'Pembudayaan Olahraga', 0, '', 1, 1, 'SPT Belum ada', 142, '2025-03-06 12:19:08', 142, '2025-03-06 12:19:23', 11, '2025-03-06 12:37:37'),
(290, 101, '1', 'e monev  PEemerintah Kota TanjungPinang', 'BAGIAN PEMBANGUNAN', 'Aplikasi E-Monev Kota Tanjungpinang merupakan sistem informasi berbasis elektronik yang digunakan untuk memantau dan mengevaluasi realisasi fisik dan keuangan pelaksanaan program dan kegiatan pembangunan daerah. Aplikasi ini menyajikan data progres pelaksanaan secara terpadu, akurat, dan periodik, sehingga memudahkan pemerintah daerah dalam melakukan pengendalian, evaluasi, serta pengambilan keputusan. Melalui E-Monev, transparansi dan akuntabilitas pengelolaan anggaran serta capaian kinerja pembangunan di Kota Tanjungpinang dapat ditingkatkan secara efektif.', 3, '2022', 'Website,', 'PHP', 1, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 3, NULL, 'https://monev.tanjungpinangkota.go.id/', 'Tidak Ada', 'DLL', '', '', 'BAGIAN ADMINISTRASI PEMBANGUNAN', '', 'rino haryanto', '198302232010011003', 'analis Kebijakan ahli muda', '085250500500', 'resources/data_aplikasi/tim_penghubung.jpeg', 'resources/data_aplikasi/monev1.jpeg', '', 'admin utama memiliki hak akses sepenuhnya dan seterusnya', 'apalikasi menjadi tolak ukur perkembangan pola perimbangan antar target dan realisasi', 'Peningkatan efektifitas sistem pemerintah kota tanjungpinang', 0, 'oke', 1, 1, '', 145, '2026-03-11 11:11:10', NULL, NULL, 11, '2026-03-11 11:20:39'),
(291, 101, '1', 'Sistem Informasi Pembangunan', 'BAGIAN PEMBANGUNAN', 'Sistem Informasi Pembangunan merupakan sebuah sistem aplikasi berbasis website yang dirancang untuk mendukung pengelolaan, pendataan, dan penyajian informasi pembangunan daerah secara terintegrasi di Kota Tanjungpinang. Sistem ini berfungsi sebagai media pengumpulan dan pengolahan data yang berkaitan dengan pemanfaatan lahan serta infrastruktur strategis, guna mendukung perencanaan, pengawasan, dan pengambilan kebijakan pembangunan yang tepat sasaran.\r\n\r\nRuang lingkup utama sistem ini meliputi data pemakaian lahan Prasarana, Sarana, dan Utilitas (PSU) yang digunakan untuk kegiatan ekonomis, seperti usaha perdagangan, jasa, dan kegiatan produktif lainnya. Data tersebut mencakup informasi lokasi, luas lahan, status pemanfaatan, peruntukan, serta kesesuaian penggunaan lahan dengan ketentuan peraturan perundang-undangan yang berlaku.\r\n\r\nSelain itu, sistem ini juga memuat data tower telekomunikasi di Kota Tanjungpinang, yang meliputi informasi kepemilikan, lokasi koordinat, status perizinan, fungsi tower, serta kondisi eksisting di lapangan. Data tower disajikan secara terstruktur untuk mendukung pengawasan, penertiban, dan pengendalian pembangunan infrastruktur telekomunikasi di wilayah kota.\r\n\r\nMelalui penerapan sistem berbasis website, Sistem Informasi Pembangunan memungkinkan akses data yang cepat, akurat, dan transparan bagi perangkat daerah terkait. Sistem ini diharapkan dapat meningkatkan efektivitas koordinasi antar instansi, mendukung pengambilan keputusan berbasis data, serta mewujudkan tata kelola pembangunan yang tertib, akuntabel, dan berkelanjutan di Kota Tanjungpinang.', 4, '2024', 'Website,', 'PHP', 1, NULL, 3, 'di atas 100 pengguna', 1, NULL, 'https://sip.tanjungpinangkota.go.id/', 'Tidak Ada', 'DLL', '', '', 'BAGIAN ADMINISTRASI PEMBANGUNAN', '', 'FERI ISMANA', '198203292006041012', 'analis Kebijakan ahli muda', '085250500500', 'resources/data_aplikasi/WhatsApp_Image_2026-03-02_at_12_58_141.jpeg', 'resources/data_aplikasi/WhatsApp_Image_2026-03-02_at_12_53_271.jpeg', '', 'admin utama mempunya akses ke semua data dan sistem, 2 Orang, dst', 'aplikasi ini memrupakan gerbang dasar yang nantinya akan di gunakan sebagai bahan pertimbanagan kebijakan terkait pengenaan pajak dan restri busi sebagai salah satu pendukung optimalisasi PAD kota Tanjungpinang', 'Peningkatan Efektifitas peningkatan sistem pemerintahan kota tanjungpinang', 0, 'oke', 1, 1, '', 145, '2026-03-11 11:17:56', NULL, NULL, 11, '2026-03-11 11:21:05'),
(292, 125, '1', 'Satu Data Tanjungpinang', 'Dinas Komunikasi dan Informatika', 'mengintegrasikan data sektoral lintas OPD, menampilkan data statistik secara interaktif, serta menyediakan mekanisme pengelolaan dan publikasi data secara terpusat.', 1, '2025', 'Website,', 'Php', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'satudata.tanjungpinangkota.go.id', 'Ada', 'REST API', 'Opendata', '', 'CV. Danz', '3.	Peraturan Presiden Nomor 39 Tahun 2019 tentang Satu Data Indonesia.\r\n4.	Peraturan Menteri Komunikasi dan Informatika Republik Indonesia Nomor 8 Tahun 2020 tentang Pedoman Teknis Penyelenggaraan Satu Data Indonesia di Daerah.\r\n5.	Peraturan Wali Kota Tanjungpinang tentang Penyelenggaraan Satu Data Daerah (apabila telah ditetapkan).', 'Misnanten', '198004152009022005', 'Analis Kebijakan', '081364386678', 'resources/data_aplikasi/TPI_13_02_CFM_01_drawio.pdf', 'resources/data_aplikasi/logo_tpi.png', '', 'Admin utama memiliki akses untuk menambahkan data, Admin OPD memiliki akses untuk menambahkan data per OPD, pengguna aplikasi terdaftar untuk menggunakan rest API', 'akan diintegrasikan dengan aplikasi lain sebagai SPLPD', 'Penyelenggaraan Statistik Sektoral Pemerintah Daerah', 0, '', 1, 1, '', 11, '2026-03-12 12:08:31', NULL, NULL, 11, '2026-03-12 12:57:28'),
(293, 125, '1', 'E-SKM', 'Diskominfo Tanjungpinang', 'Survey Kepuasan Masyarakat', 1, '2025', 'Website,', 'PHP, VueJS', 1, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 3, NULL, 'https://skm.tanjungpinangkota.go.id', 'Ada', 'REST API', '', 'Diskominfo,  Sekretariat Daerah', 'Diskominfo Tanjungpinang', 'Permenpan No. 14 Tahun 2017', 'Saiful Najib', '199411252022021001', 'Pranata Komputer Ahli Pertama', '081270709880', 'resources/data_aplikasi/Lambang_Kota_Tanjungpinang2.png', 'resources/data_aplikasi/Lambang_Kota_Tanjungpinang3.png', '', '', '', 'Penyelenggaraan Urusan Pemerintahan Umum', 0, '', 1, 1, '', 115, '2026-03-12 12:09:05', NULL, NULL, 11, '2026-03-12 12:57:13'),
(294, 125, '1', 'SIDEKRA', 'Diskominfo Tanjungpinang', 'Sistem Informasi Database Kerajinan', 1, '2025', 'Website,', 'PHP', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 2, NULL, 'sidekra.tanjungpinangkota.go.id', 'Ada', 'REST API', '', '', 'Diskominfo Tanjungpinang', '', 'Saiful Najib', '199411252022021001', 'Pranata Komputer Ahli Pertama', '081270709880', 'resources/data_aplikasi/Lambang_Kota_Tanjungpinang4.png', 'resources/data_aplikasi/Lambang_Kota_Tanjungpinang5.png', '', '', '', '-', 0, '', 1, 1, '', 115, '2026-03-12 12:15:31', NULL, NULL, 11, '2026-03-12 12:57:20'),
(295, 125, '1', 'Drive Tanjungpinang', 'Dinas Kominfo', 'Penyimpanan File dan Berbagi Pakai File untuk Tanjungpinang', 3, '2020', 'Website,', '-', 10, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'drive.tanjungpinangkota.go.id', '', '', '', '', 'Dinas Kominfo', '', 'Aprinaldi', '198804102015031001', 'PENATA KELOLA SISTEM DAN TEKNOLOGI INFORMASI', '085228199298', 'resources/data_aplikasi/Doc3.pdf', 'resources/data_aplikasi/logo_tpi1.png', '', '', '', '', 0, '', 0, 1, '', 11, '2026-03-12 13:05:17', 11, '2026-06-18 08:35:50', 11, '2026-03-12 13:23:34'),
(296, 107, '1', 'Website Portal BPKAD Kota Tanjungpinang', 'Diskominfo Tanjungpinang', '', 1, '2022', 'Website,', 'vue js', 1, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 4, NULL, 'bpkad.tanjungpinangkota.go.id', '', '', 'SIAP, ICMS', '', 'Diskominfo Tanjungpinang', '', 'Azwar, S.Sos', '197311102008011020', 'Pengadministrasi Perkantoran', '081268886729', 'resources/data_aplikasi/114_-_ST_SHARING_KNOWLEDGE_BERSAMA_PIC.pdf', 'resources/data_aplikasi/Screenshot_2026-08-19_094843.png', '', 'Admin utama memiliki akses untuk menginput dan mengakses website dalam hal update kegiatan kantor', 'Website ini bertujuan memberikan informasi kepada publik terkait kegiatan yang dilakukan oleh BPKAD Tanjungpinang', '', 0, '', 0, 1, NULL, 202, '2026-08-19 10:00:12', NULL, NULL, NULL, NULL),
(297, 120, '2', 'AK 1', 'CV. MITRA GEMILANG', '', 1, '2019', 'Website,', 'PHP', 1, NULL, 3, 'di atas 100 pengguna', 1, NULL, 'https://disnakerkopum.tanjungpinangkota.go.id', '', '', '', 'Disnaker', 'ZULKIFLI', '', 'EKA DESRIMIANTI EFFENDI', '199012162025212055', 'PENATA LAYANAN OPERASIOAL', '085171161213', 'resources/data_aplikasi/SURAT_PERINTAH_DIKA_BARU.pdf', 'resources/data_aplikasi/Screenshot_2026-08-19_102150.png', '', '', '', '', 0, '', 1, 1, '', 204, '2026-08-19 10:29:01', NULL, NULL, 11, '2026-10-05 09:21:09'),
(298, 114, '2', 'https://dishub.tanjungpinangkota.go.id', 'CV. Mutiara Alam', 'Sebagai kanal transparansi kebijakan, penyebaran informasi layanan perhubungan, serta dokumentasi kinerja dinas.', 1, '2023', 'Website,', 'PHP', 1, NULL, 2, 'di atas 25 sampai dengan 100 pengguna', 3, NULL, 'https://dishub.tanjungpinangkota.go.id', '', 'semua integrasi menggunakan protokol REST API dengan format JSON', 'Tidak terintegrasi dengan Aplikasi apapun,hanya terintegrasi dengan portal Pemko Tanjungpinang,serta portal Pemprov Kepulauan Riau', 'Dishub Kota Tanjungpinang', 'CV. Mutiara Alam', 'Undang-Undang No. 22 Tahun 2009 tentang Lalu Lintas dan Angkutan Jalan (LLAJ): Ini adalah undang-undang sektoral utama yang mengatur hampir seluruh aspek operasional, mulai dari manajemen lalu lintas, persyaratan kelaikan kendaraan, hingga perizinan angkutan umum.\r\n· Undang-Undang No. 23 Tahun 2014 tentang Pemerintahan Daerah: UU ini mengatur pembagian urusan pemerintahan konkuren antara pusat, provinsi, dan kabupaten/kota, termasuk di bidang perhubungan, sehingga menjadi dasar kewenangan daerah.\r\n· Undang-Undang No. 17 Tahun 2008 tentang Pelayaran: Mengatur aspek transportasi laut, yang relevan mengingat Tanjungpinang adalah daerah kepulauan.\r\n· Peraturan Pemerintah (PP) dan Peraturan Menteri (Permen): Sebagai aturan pelaksana dari UU, misalnya PP No. 18 Tahun 2016 tentang Perangkat Daerah dan Permenhub No. 47 Tahun 2023 tentang Penyelenggaraan Angkutan Orang dengan Kendaraan Bermotor Umum Tidak Dalam Trayek.', 'Haris Biantoro', '198706012025211071', 'Pengadministrasi Perkantoran', '087897947780', 'resources/data_aplikasi/SURAT_TUGAS_HARIS_BIANTORO.pdf', 'resources/data_aplikasi/271997.png', '', 'Admin memiliki akses ke semua fitur', 'Belum ada aplikasi lanjutan yang hendak dikembangkan,dan akan di-update jika ada', '', 0, 'Portal Informasi Publik', 0, 1, NULL, 203, '2026-08-19 12:22:17', NULL, NULL, NULL, NULL),
(299, 101, '1', 'Monev PBJ', 'Bagian Pengadaan Barang dan Jasa', 'Aplikasi Monitoring dan evaluasi Pengadaan Barang dan Jasa', 2, '2025', 'Website,', 'PHP', 3, NULL, 1, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'monevpbj.tanjungpinangkota.go.id', '', '', 'SPSE, SiRUP, Katalog Electronic', 'LKPP', 'Bagian Pengadaan Barang dan Jasa', 'Perpres No 21 Tahun 2025', 'Sulaiman', '197805162006041019', 'Pengadministrasian LPSE', '082389593388', 'resources/data_aplikasi/spt_admin_PIC_SULAIMAN-TTE1.pdf', 'resources/data_aplikasi/Screenshot_2026-08-19_at_2_50_36 PM-dikompresi.jpg', '', 'Admin Utama, Sub Admin, User', 'Aplikasi Monitoring pengadaan bisa sebagai informasi tentang berapa jumlah tender dan lainnya serta bisa menjadi sumber ubntuk menghitung berapa jumlah anggaran pengadaan di Tanjungpinang', '', 0, '', 0, 1, NULL, 201, '2026-08-19 14:56:37', NULL, NULL, NULL, NULL);
INSERT INTO `data_aplikasi` (`id_aplikasi`, `id_opd`, `asal_aplikasi`, `nama_aplikasi`, `penyedia_aplikasi`, `deskripsi_aplikasi`, `id_jenis_layanan`, `tahun`, `basis_aplikasi`, `bahasa_pemrograman`, `id_dbms`, `dbms_lainnya`, `id_lokasi_hosting`, `jumlah_pengguna`, `id_frekuensi_penggunaan`, `frekuensi_penggunaan_lainnya`, `nama_domain`, `ketersediaan_integrasi`, `metode_integrasi`, `aplikasi_terintegrasi`, `opd_terintegrasi`, `pengembang_aplikasi`, `regulasi`, `pic_aplikasi`, `nip_pic`, `jabatan_pic`, `no_telp`, `file_spt`, `file_logo`, `file_probis`, `level_privileges`, `rencana_aplikasi`, `proses_bisnis`, `nomor_registrasi_aset`, `keterangan`, `status`, `is_active`, `catatan`, `created_by`, `created_on`, `changed_by`, `changed_on`, `approved_by`, `approved_on`) VALUES
(300, 101, '2', 'SPSE', 'LKPP', 'Aplikasi Sistem Pengadaan Barang dan Jasa Secara Elektronik', 1, '2011', 'Website,', 'PHP', 3, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'https://spse.inaproc.id/tanjungpinangkota/', '', '', 'Sikap, OSS,', '', 'LKPP', 'Perpres 21 Tahun 2025', 'Sulaiman', '197805162006041019', 'Pengadministrasian LPSE', '082389593388', 'resources/data_aplikasi/spt_admin_PIC_SULAIMAN-TTE2.pdf', 'resources/data_aplikasi/Screenshot_2026-08-19_at_3_01.jpg', '', 'Admin PPE, ADMIN Agency', '', '', 0, '', 1, 1, '', 201, '2026-08-19 15:03:15', NULL, NULL, 11, '2026-10-16 08:44:28'),
(301, 153, '2', 'Website UPTD Puskesmas Sei Jang', 'Avicom', 'Homepage perkenalan dan berbagi informasi tentang Puskesmas Sei Jang', 1, '2017', 'Website,Desktop,', 'php', 1, NULL, 2, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'puskesmasseijang.tanjungpinangkota.go.id', '', 'API', 'Tidak ada', 'UPTD Puskesmas Sei Jang', 'Avicom', 'Perpres Nomor 95 Tahun 2018 tentang Sistem Pemerintahan Berbasis Elektronik', 'Helmatussa\'diyah, A.Md.Keb', '19960120 201902 2 00', 'Bidan Terampil', '+62 812-7600-8807', 'resources/data_aplikasi/SPT1.pdf', 'resources/data_aplikasi/Screenshot_2026-08-20_092828.png', '', 'Admin', 'Pengembangan website sebagai media informasi dan pelayanan publik UPTD Puskesmas Sei Jang yang menyediakan informasi kesehatan, informasi pelayanan, edukasi kesehatan, serta akses layanan dan pengaduan masyarakat secara online.', '', 0, 'Website resmi UPTD Puskesmas Sei Jang yang digunakan untuk menyampaikan informasi mengenai profil, pelayanan kesehatan, program/kegiatan, edukasi kesehatan, berita, serta informasi dan layanan bagi masyarakat.', 0, 1, NULL, 34, '2026-08-20 09:28:15', 34, '2026-08-20 10:25:43', NULL, NULL),
(302, 111, '1', 'Website DKP2KB Kota Tanjungpinang', 'Avicom', 'Berisi profil DKP2KB Kota Tanjungpinang', 1, '2018', 'Website,', '-', 2, NULL, 2, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'DKP2KB.tanjungpinangkota.go.id', '', '-', '-', '-', 'Avicom', '-', 'R. Leila Mutia, SKM', '197608052003122009', 'Perencana ahli muda', '081364309329', 'resources/data_aplikasi/SRIKANDI_-_SURAT_DINAS_Undangan_Penyusunan_Metadata.pdf', 'resources/data_aplikasi/2765.jpg', '', '', '', '', 0, '', 0, 1, NULL, 31, '2026-08-20 09:57:36', 31, '2026-08-20 10:18:48', NULL, NULL),
(303, 140, '1', 'Website Profile', 'Diskominfo', 'Website Profile Kelurahan Kampung Bulang', 1, '2022', 'Website,', 'PHP', 9, NULL, 3, 'di atas 100 pengguna', 1, NULL, 'kampungbulang.tanjungpinangkota.go.id/', '', 'API', 'Belum Terintegrasi', 'Kelurahan Kampung Bulang', 'Diskominfo', '', 'Agustian Ahmadi', '198608282025211013', 'Pengadministrasi Perkantoran', '087773565270', 'resources/data_aplikasi/178719525015414891537559048080971.jpg', 'resources/data_aplikasi/Screenshot_20260820-100803.png', '', 'Admin Utama', 'Pusat informasi di wilayah Kelurahan Kampung Bulang', '', 0, '', 0, 1, NULL, 193, '2026-08-20 10:09:30', 193, '2026-08-20 10:21:05', NULL, NULL),
(305, 150, '1', 'Kelurahan kampung baru kecamatan tanjungpinang barat', 'Diskominfo kota Tanjungpinang', 'Sebagai informasi untuk masyarakat kelurahan kampung baru', 1, '2023', 'Website,', 'up,js,php', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'https://kampungbarukel.tanjungpinangkota.go.id/', '', 'API', '-', 'Diskominfo', 'Diskominfo kota Tanjungpinang', '', 'Sutrisno', '198601152025211007', 'Staf', '085274973300', 'resources/data_aplikasi/Screenshot_2026-08-22-04-40-20-720_com_mi_globalbrowser.jpg', 'resources/data_aplikasi/1000191387.jpg', '', '', 'Mempermudah memberikan informasi kepada masyarakat', '', 0, 'Informasi', 0, 1, NULL, 230, '2026-08-20 10:16:08', 230, '2026-08-22 04:42:12', NULL, NULL),
(308, 154, '2', 'WEBSITE PROFILE PUKSESMAS BATU 10', 'Avicom', 'HOMEPAGE PERKENALAN DAN BERBAGI INFORMASI TENTANG PUSKESMAS BATU 10', 1, '2018', 'Website,', 'PHP', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'https://puskesmasbatu10.tanjungpinangkota.go.id/', '', 'API,', '', '', 'Avicom', '', 'dr. Budi Ariwibowo', '199104112025041001', 'dokter umum', '----', 'resources/data_aplikasi/Screenshot_(5).png', 'resources/data_aplikasi/Screenshot_2023-11-29_081428.png', '', '', '', '', 0, '', 0, 1, NULL, 225, '2026-08-20 10:21:22', 225, '2026-08-20 10:26:19', NULL, NULL),
(309, 155, '1', 'Web profil', 'Avicom', 'Web UPTD Puskesmas Kampung Bugis', 1, '2019', 'Website,', 'Php.', 1, NULL, 2, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'Puskesmaskampungbugis.tanjungpinangkota.go.id', '', '', '', '', 'Avicom', '', 'Dwi Herawaty', '198512042011012004', 'Admin OPD dan Pembimbing Kes. Kerja', '081328374484', 'resources/data_aplikasi/ST_Hera.pdf', 'resources/data_aplikasi/Untitled-1.jpg', '', '', '', '', 0, '', 0, 1, NULL, 33, '2026-08-20 10:24:24', 33, '2026-08-23 17:05:02', NULL, NULL),
(310, 151, '2', 'Website Profile Kelurahan Kemboja', 'Diskominfo Tanjungpinang', 'Aplikasi berbasis informasi portal Kelurahan Kemboja', 1, '2024', 'Website,', 'PHP', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'https://www.tanjungpinangkota.go.id/data/unitkerja/kel-kemboja#', '', 'Siap Tanjungpinang', 'Siap Tanjungpinang', 'Diskominfo', 'Diskominfo Tanjungpinang', '', 'ARI OKTAFIO', '2172010910000001', 'Operator Layanan Operasional', '081266003165', 'resources/data_aplikasi/Road_To_Tropical_Night_Run_2026_-_Google_Formulir.pdf', 'resources/data_aplikasi/IMG_1106.png', '', 'Admin Utama', 'Aplikasi berbasis masyarakat yang mengembangkan informasi seputar kelurahan kemboja', '', 0, '-', 0, 1, NULL, 222, '2026-08-20 10:25:39', 222, '2026-08-20 10:26:48', NULL, NULL),
(311, 156, '2', 'Website Profil Puskesmas', 'Diskominfo', 'Profil Puskesmas', 1, '2016', 'Website,', 'Vue.js.php', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'Puskesmasmkp.tanjungpinangkota.go.id', '', 'API', 'Satu sehat', 'Diskominfo', 'Diskominfo', '', 'Mira Tania', '198506272010012004', 'Kepala Tata Usaha', '081277322666', 'resources/data_aplikasi/PEJABAT_ESELON_4_PEJABAT_FUNGSIONAL_SETARA.pdf', 'resources/data_aplikasi/1001952429.jpg', '', '', '', '', 0, '', 0, 1, NULL, 36, '2026-08-20 10:25:49', 36, '2026-08-20 10:31:26', NULL, NULL),
(312, 157, '2', 'WEBSITE PROFILE PUSKESMAS MEKAR BARU', 'Diskominfo Tanjungpinang', 'HOMEPAGE PERKENALAN DAN BERBAGI INFORMASI TENTANG PUSKESMAS MEKAR BARU', 1, '2018', 'Website,', '.Php', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'https://puskesmasmekarbaru.tanjungpinangkota.go.id/index.php', '', 'Apl', '', '', 'Diskominfo Tanjungpinang', '', 'Eva Neilfina', '199301182024212004', 'Promosi kesehatan dan Ilmu Perilaku', '085765026270', 'resources/data_aplikasi/Surat_CKG_anak_sekolah_2026.pdf', 'resources/data_aplikasi/1000995104.jpg', '', '', '', '', 0, '', 0, 1, NULL, 227, '2026-08-20 10:26:12', 227, '2026-08-20 10:32:24', NULL, NULL),
(313, 133, '2', 'kec. tpibarat@tanjungpinang.go.id', 'Diskominfo Kota Tanjungpinang', 'Sebagai Media Informasi untuk Masyarakat', 1, '2023', 'Website,', 'Up, JF, PHP', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'kec.tpibarat@tanjungpinangkota.go.id', '', 'Koordinasi', '-', 'Diskominfo', 'Diskominfo Kota Tanjungpinang', '-', 'SUHENDRI', '197707012008011013', 'Staf', '082326971777', 'resources/data_aplikasi/SERTIFIKAT-Suhendri_(2).pdf', 'resources/data_aplikasi/IMG-20260326-WA0001.jpg', '', '', 'Mempermudah Masyarakat Mendapatkan Informasi', '', 0, '-', 0, 1, NULL, 231, '2026-08-20 10:26:27', NULL, NULL, NULL, NULL),
(314, 137, '2', 'WEBSITE PROFIL KELURAHAN PENYENGAT', 'DISKOMINFO KOTA TANJUNGPINANG', 'WEBSITE RESMI KELURAHAN PENYENGAT KECAMATAN TANJUNGPINANG KOTA , KOTA TANJUNGPINANG', 1, '2026', 'Website,', 'PHP', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'https://penyengat.tanjungpinangkota.go.id/', '', '', '', '', 'DISKOMINFO KOTA TANJUNGPINANG', '', 'MUHAMMAD ARIANSYAH, S.Sos', '199208282025211010', 'staf', '082284710116', 'resources/data_aplikasi/Lambang_Kota_Tanjungpinang6.png', 'resources/data_aplikasi/Lambang_Kota_Tanjungpinang7.png', '', '', '', '', 0, '', 0, 1, NULL, 234, '2026-08-20 10:28:41', NULL, NULL, NULL, NULL),
(315, 149, '2', 'Website profile Kelurahan', 'Diskominfo', 'Home page perkenalan dan berbagi informasi di internal kelurahan bukit cermin', 1, '2024', 'Website,', 'PHP', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 2, NULL, 'https://bukitcerminkel.tanjungpinangkota.go.id/', '', 'APL', '', '', 'Diskominfo', '', 'asrisandy', '197902182009021003', 'pengolah data dan informasi', '085272222515', 'resources/data_aplikasi/Surat_Tugas_Asrisandy.pdf', 'resources/data_aplikasi/gambar_web_bucer.png', '', '', '', '', 0, '', 0, 1, NULL, 223, '2026-08-20 10:29:06', NULL, NULL, NULL, NULL),
(316, 135, '2', 'website profile Kelurahan Senggarang', 'Diskominfo Kota Tanjungpinang', 'Website Kelurahan Senggarang', 1, '2026', 'Website,', 'PHP', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'Senggarangkel.tanjungpinangkota.go.id', '', '', '', '', 'Diskominfo Kota Tanjungpinang', '', 'Ronny Saputra, S.Sos', '197105202007011029', 'Analis Teknik Kebijakan', '081274975006', 'resources/data_aplikasi/41.jpeg', 'resources/data_aplikasi/pexels-pixabay-147411.jpg', '', '', '', '', 0, '', 0, 1, NULL, 232, '2026-08-20 10:29:10', 232, '2026-08-20 10:35:08', NULL, NULL),
(317, 140, '1', 'Simkel', 'Diskominfo', 'simkel.kampungbulang.tanjungpinangkota.go.id', 1, '2022', 'Website,', 'PHP', 10, NULL, 3, 'di atas 100 pengguna', 1, NULL, 'simkel.kampungbulang.tanjungpinangkota.go.id', '', 'API', 'Belum', 'Belum', 'Diskominfo', '', 'Agustian Ahmadi', '198608282025211013', 'Pengadministrasi Perkantoran', '087773565270', 'resources/data_aplikasi/Screenshot_20260820-1008031.png', 'resources/data_aplikasi/Screenshot_20260820-1008032.png', '', '', '', '', 0, '', 0, 1, NULL, 193, '2026-08-20 10:30:51', NULL, NULL, NULL, NULL),
(318, 141, '2', 'proklim.batuixtanjungpinangkota.go.id', '-', '-', 1, '2020', 'Website,', 'Php', 2, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, '-', '', '-', '', '', '-', '', 'Yasmadi', '-', '-', '-', 'resources/data_aplikasi/IMG_20260820_1024511.jpg', 'resources/data_aplikasi/1001011503.jpg', '', '', '', '', 0, '', 0, 1, NULL, 229, '2026-08-20 10:37:25', NULL, NULL, NULL, NULL),
(319, 131, '2', 'Website Profil Kecamatan Tanjungpinang Timur', 'Diskominfo Tanjungpinang', 'Homepage perkenalan dan berbagi informasi tentang kecamatan tanjungpinang timur', 1, '2026', 'Website,', 'PHP', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'https://tpitimurkec.tanjungpinangkota.go.id/', '', 'APL', '', '', 'Diskominfo Tanjungpinang', '', 'AFRIANI,S.E.', '198010012003122009', 'Plt. Kasubbag Umum dan Kepegawaian', '082170797650', 'resources/data_aplikasi/SPT_PIC_WEBSITE_PROFIL_preview.pdf', 'resources/data_aplikasi/rr.png', '', '', '', '', 0, '', 0, 1, NULL, 226, '2026-08-20 14:47:36', 226, '2026-08-28 14:47:39', NULL, NULL),
(321, 102, '1', 'WEBSITE PROFIL DPRD KOTA TANJUNGPINANGF', 'Sekretariat DPRD', 'Website resmi DPRD Kota Tanjungpinang', 1, '2023', 'Website,', 'PHP', 1, NULL, 1, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'dprd.tanjungpinangkota.go.id', '', '', '', '', 'Sekretariat DPRD', '', 'Dani Ramdani', '-', 'Tenaga Ahli', '081277111113', 'resources/data_aplikasi/SK_TENAGA_AHLI_KOMUNIKASI_PUBLIKASI_DAN_DOKUMENTASI.pdf', 'resources/data_aplikasi/Screenshot_2026-08-28_100114.png', '', '', '', '', 0, '', 0, 1, NULL, 177, '2026-08-21 09:25:00', 177, '2026-08-28 10:03:50', NULL, NULL),
(322, 128, '2', 'WEBSITE PROFILE SATPOL PP KOTA TANJUNGPINANG', 'SatpolPP', 'Website resmi Satuan Polisi Pamong Praja Kota Tanjungpinang', 1, '2023', 'Website,', 'PHP', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'satpolpp.tanjungpinangkota.go.id', '', '', '', '', 'SatpolPP', '', 'Muflih Syukron, S.Kom', '198802072019021004', 'Penelaah Teknis Kebijakan', '082173709445', 'resources/data_aplikasi/12.png', 'resources/data_aplikasi/2.png', '', '', '', '', 0, '', 0, 1, NULL, 238, '2026-08-21 09:32:24', 238, '2026-08-21 09:32:40', NULL, NULL),
(323, 102, '1', 'MITRAWAN', 'Sekretariat DPRD', 'Aplikasi internal Sekretariat DPRD', 2, '2023', 'Website,Android,', 'PHP', 2, NULL, 1, 'di atas 100 pengguna', 1, NULL, 'mitra-wan.tanjungpinangkota.go.id', '', '', '', '', 'Sekretariat DPRD', '', 'AGUNG TRI SAPUTRO, S.Sos', '19920923 202521 1 06', 'Tim Teknis', '082172574949', 'resources/data_aplikasi/SK_TIM_MITRAWAN_2025.pdf', 'resources/data_aplikasi/Screenshot_2026-08-28_081001.png', '', '', '', '', 0, '', 0, 1, NULL, 177, '2026-08-28 08:22:28', NULL, NULL, NULL, NULL),
(324, 113, '2', 'Website Museum Sultan Sulaiman Badrul Alamsyah', 'Pihak Ketiga', 'Website di gunakan sebagai company profile museum dan juga digunakan sebagai wadah untuk menampung data koleksi yang nantinya url di generate menjadi qrcode, sehingga pengunjung museum cukup mengscan qrcode untuk mengetahui informasi dari koleksi tersebut', 1, '2024', 'Website,', 'wordpress', 1, NULL, 3, 'di atas 100 pengguna', 1, NULL, 'museum.tanjungpinangkota.go.id', '', '', '', '', 'Pihak Ketiga', '', 'Shendy Afriyatno Soehendrawan', '199704132024211006', 'Pranata Komputer Terampil', '081268230354', 'resources/data_aplikasi/3.PNG', 'resources/data_aplikasi/cap.PNG', '', 'user hanya admin utama sebagai kontrol penuh terhadap aplikasi', 'website sebagai wadah untuk menampung data koleksi yang nantinya url di generate menjadi qrcode, sehingga pengunjung museum cukup mengscan qrcode untuk mengetahui informasi dari koleksi tersebut', '', 0, '', 0, 1, NULL, 199, '2026-08-28 08:52:26', 199, '2026-10-06 11:03:57', NULL, NULL),
(326, 106, '1', 'Sistem Informasi Pelayanan PBB', 'CV. Dias Klapertama', '', 1, '2025', 'Website,', 'PHP', 3, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'https://rukunpajak.tanjungpinangkota.go.id/', '', 'API', 'Payment Online, transaksi keuangan BANK BTN dan BRKs', '', 'CV. Rajawali Biru Sukses', '', 'Mohammad Farly Rizki', '198803022015031002', 'Pengelola Data Informasi', '081275038222', 'resources/data_aplikasi/SPPBJ.pdf', 'resources/data_aplikasi/rk.png', '', '', 'Aplikasi 1 pintu untuk pelayanan perpajakan daerah', '', 0, '', 0, 1, NULL, 54, '2026-08-31 08:55:44', NULL, NULL, NULL, NULL),
(327, 106, '1', 'Website BPPRD', 'CV. AFA Kreatif Media', 'Website BPPRD Kota Tanjungpinang merupakan portal layanan digital yang dikembangkan dan dikelola oleh Badan Pengelolaan Pajak dan Retribusi Daerah Kota Tanjungpinang sebagai media penyampaian informasi sekaligus sarana pelayanan perpajakan daerah secara elektronik kepada masyarakat. Website ini menjadi gerbang utama (single entry point) bagi masyarakat, Wajib Pajak, maupun pemangku kepentingan dalam mengakses berbagai informasi dan layanan perpajakan daerah secara mudah, cepat, dan terintegrasi', 1, '2024', 'Website,', 'PHP', 1, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'https://bpprd.tanjungpinangkota.go.id/', '', 'API', 'Pembayaran Payment Online', '', 'CV. Dias Klapertama', '', 'Mohammad Farly Rizki', '198803022015031002', 'Pengelola Data Informasi', '081275038222', 'resources/data_aplikasi/SPPBJ3.pdf', 'resources/data_aplikasi/rk1.png', '', '', '', '', 0, '', 0, 1, NULL, 54, '2026-08-31 09:06:41', NULL, NULL, NULL, NULL),
(328, 106, '1', 'Pelayanan PBB Online', 'CV. Dias Klapertama', 'Aplikasi Pelayanan Mobile PBB merupakan layanan administrasi Pajak Bumi dan Bangunan Perdesaan dan Perkotaan (PBB-P2) berbasis smartphone yang dikembangkan oleh Badan Pengelolaan Pajak dan Retribusi Daerah (BPPRD) Kota Tanjungpinang sebagai bagian dari Sistem Informasi Pelayanan PBB (SIP-PBB). Aplikasi ini dirancang untuk memudahkan masyarakat dalam mengajukan berbagai pelayanan administrasi PBB-P2 secara daring tanpa harus datang langsung ke kantor BPPRD.', 1, '2026', 'Website,', 'PHP', 3, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'https://rukunpajak.tanjungpinangkota.go.id/', '', 'API', '', '', 'CV. Rajawali Biru Sukses', '', 'Mohammad Farly Rizki', '198803022015031002', 'Pengelola Data Informasi', '081275038222', 'resources/data_aplikasi/Screenshot_2026-06-24_100842.png', 'resources/data_aplikasi/Screenshot_2026-07-01_142559.png', '', '', '', '', 0, '', 0, 1, NULL, 54, '2026-08-31 09:14:34', NULL, NULL, NULL, NULL),
(329, 106, '1', 'Pantau Pajak', 'CV. Rajawali Biru Sukses', 'Aplikasi Pantau Pajak merupakan aplikasi berbasis web yang dikembangkan oleh Badan Pengelolaan Pajak dan Retribusi Daerah (BPPRD) Kota Tanjungpinang sebagai media monitoring dan visualisasi realisasi penerimaan pajak daerah secara terpadu. Aplikasi ini berfungsi sebagai dashboard eksekutif yang menyajikan informasi penerimaan daerah dalam bentuk grafik, indikator capaian target, tabel, dan statistik sehingga memudahkan proses monitoring serta evaluasi kinerja penerimaan pajak daerah', 3, '2025', 'Website,', 'PHP', 3, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'https://pantaupajak.tanjungpinangkota.go.id/', '', 'API', '', '', 'CV. Rajawali Biru Sukses', '', 'Mohammad Farly Rizki', '198803022015031002', 'Pengelola Data Informasi', '081275038222', 'resources/data_aplikasi/Dokumentasi_Aplikasi.pdf', 'resources/data_aplikasi/Screenshot_2026-06-09_112306.png', '', '', '', '', 0, '', 0, 1, NULL, 54, '2026-08-31 09:19:56', NULL, NULL, NULL, NULL),
(330, 106, '1', 'Aplikasi Sosialisasi dan Pelayanan', 'CV. Rajawali Biru Sukses', 'Aplikasi Sosialisasi dan Pelayanan merupakan sistem informasi yang digunakan untuk mendukung kegiatan penyampaian Surat Pemberitahuan Pajak Terutang Pajak Bumi dan Bangunan (SPPT PBB-P2) kepada masyarakat melalui kelurahan. Aplikasi ini menjadi sarana pencatatan sekaligus bukti digital penyerahan SPPT PBB-P2, sehingga proses distribusi SPPT kepada Wajib Pajak dapat terdokumentasi, dipantau, dan dipertanggungjawabkan dengan lebih baik.', 3, '2025', 'Website,', 'PHP', 3, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'https://rukunpajak.tanjungpinangkota.go.id/', '', 'API', 'Terintegrasi dengan aplikasi PBB', 'Seluruh Kelurahan di Tanjungpinang', 'CV. Rajawali Biru Sukses', '', 'Mohammad Farly Rizki', '198803022015031002', 'Pengelola Data Informasi', '081275038222', 'resources/data_aplikasi/Screenshot_2026-06-21_154351.png', 'resources/data_aplikasi/Screenshot_2026-07-20_104919.png', '', '', '', '', 0, '', 0, 1, NULL, 54, '2026-08-31 09:32:12', NULL, NULL, NULL, NULL),
(331, 109, '1', 'website RSUD Kota Tanjungpinang', 'RSUD Kota Tanjungpinang', 'Website berisi informasi pelayanan RSUD Kota Tanjungpinang', 1, '2017', 'Website,', 'php', 1, NULL, 2, 'di atas 100 pengguna', 1, NULL, 'rsud.tanjungpinangkota.go.id', '', '', '', '', 'Tim IT RSUD Kota Tanjungpinang', 'Perpres No. 95 Tahun 2018 tentang Sistem Pemerintahan Berbasis Elektronik (SPBE)', 'Sari Dewi, S.T, M.T', '197809262010012007', 'Penata Layanan Operasional', '081364649466', 'resources/data_aplikasi/SK_Diterktur_Nomor_45_Tahun_2025-unit_IT.pdf', 'resources/data_aplikasi/logo_website.png', '', '', '', '', 0, '', 0, 1, NULL, 136, '2026-08-31 09:51:30', NULL, NULL, NULL, NULL),
(332, 124, '2', 'Dinas Pekerjaan Umum dan Penataan Ruang Kota Tanjungpinang', 'Diskominfo Kota Tanjungpinang', 'Profil Dinas Pekerjaan Umum dan Penataan Ruang Kota Tanjungpinang', 1, '2026', 'Website,', '-', 10, NULL, 3, 'di atas 100 pengguna', 1, NULL, 'https://dpupr.tanjungpinangkota.go.id/', '', '-', '-', '-', 'Diskominfo Kota Tanjungpinang', '-', 'Leo Hady Sucipto', '199608082022021001', 'Penelaah Teknis Kebijakan', '082283106107', 'resources/data_aplikasi/20260831121258SURAT_TUGAS_ADMIN_WEBSITE_PUPR.pdf', 'resources/data_aplikasi/0b16680b35eae6f6c02417c47b5224c0.png', '', '-', 'Profil Dinas Pekerjaan Umum dan Penataan Ruang Kota Tanjungpinang', '', 0, '-', 0, 1, NULL, 206, '2026-09-01 08:36:54', NULL, NULL, NULL, NULL),
(333, 121, '1', 'Siniaga', 'Softpoint System', 'Sebuah dashboard yang menampilkan data lengkap Industri Kecil Menengah di Kota Tanjungpinang yang telah mengisi Form data di Dataniaga', 2, '2023', 'Desktop,', '0', 2, NULL, 2, 'di atas 100 pengguna', 1, NULL, 'siniaga.disperdagin.tanjungpinangkota.go.id', '', '', '', '', 'Softpoint System', '', 'Dedi Kurniawan, S.T', '198906232023211014', 'Penyuluh Perindag', '081270087505', 'resources/data_aplikasi/surat_tugas_admin_aplikasi_siniaga_an_DEDI_KURNIAWAN.pdf', 'resources/data_aplikasi/Screenshot_(141).png', '', '', '', '', 0, '', 0, 1, NULL, 200, '2026-09-07 10:55:44', NULL, NULL, NULL, NULL),
(334, 121, '1', 'Dataniaga', 'Softpoint System', 'Sebuah platform berbasis android dalam menyediakan form pengisian data Industri kecil menengah yang ada di Kota Tanjungpinang', 1, '2023', 'Desktop,', 'Delphi', 2, NULL, 2, 'di atas 100 pengguna', 1, NULL, 'dataniaga.tanjungpinangkota.go.id', '', '', '', '', 'Softpoint System', '', 'Molisha, S.Kom', '197911202003122010', 'Penelaah teknis kebijakan', '081277173899', 'resources/data_aplikasi/surat_tugas_admin_aplikasi_data_niaga_an_MOLISHA.pdf', 'resources/data_aplikasi/Screenshot_(142).png', '', '', '', '', 0, '', 0, 1, NULL, 200, '2026-09-07 11:03:44', NULL, NULL, NULL, NULL),
(336, 145, '1', 'sisakti', 'Diskominfo', '', 1, '2025', 'Website,', 'javascript', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'sisakti.tanjungayunartikel.tanjungpinangkota.go.id', '', '', '', '', 'Diskominfo', '', 'Sri Utoyo, S.E.', '198907282025211011', 'Penata Layanan Operasional', '085765244318', 'resources/data_aplikasi/sinergi_september_2_2.jpeg', 'resources/data_aplikasi/sinergi_september_2_1.jpeg', '', '', '', '', 0, '', 0, 1, NULL, 187, '2026-10-06 09:52:11', NULL, NULL, NULL, NULL),
(337, 145, '2', 'website profile kelurahan Tanjung Ayun Sakti', 'Diskominfo', '', 1, '2025', 'Website,', 'javascript', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'tanjungayunartikel.tanjungpinangkota.go.id', '', '', '', '', 'Diskominfo', '', 'Sri Utoyo, S.E.', '198907282025211011', 'Penata Layanan Operasional', '085765244318', 'resources/data_aplikasi/sinergi_september_2_21.jpeg', 'resources/data_aplikasi/sinergi_september_2_22.jpeg', '', '', '', '', 0, '', 0, 1, NULL, 187, '2026-10-06 09:54:54', NULL, NULL, NULL, NULL),
(338, 115, '1', 'Website Dinas Sosial', 'Diskominfo', 'Website profil dinas sosial', 1, '2022', 'Website,', '-', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 4, NULL, 'dinsos.tanjungpinangkota.go.id', '', '', '', '', 'Diskominfo', '', 'AYI MURZADI', '197703172024211001', 'Pranata Komputer Terampil', '082286610033', 'resources/data_aplikasi/20261007110301spt_ayi_sebagai_admin_website_dinsos.pdf', 'resources/data_aplikasi/Lambang_Kota_Tanjungpinang8.png', '', '', '', '', 0, '', 0, 1, NULL, 122, '2026-10-07 09:28:10', 122, '2026-10-07 11:57:28', NULL, NULL),
(339, 106, '1', 'Gurindampay', 'PT.Softpoint', 'GURINDAM PAY (Gerakan Unggul Real Time Integrasi Data dan Monitoring Pajak) merupakan aplikasi digital Pemerintah Kota Tanjungpinang yang dirancang untuk mengintegrasikan pembayaran elektronik, pencatatan transaksi usaha, dan pengawasan pajak daerah secara real time. Aplikasi ini mendukung monitoring omzet dan penerimaan pajak, analisis kepatuhan wajib pajak, serta optimalisasi Pendapatan Asli Daerah (PAD).', 1, '2026', 'Website,', 'Delphi (Object Pascal)', 2, NULL, 1, 'di atas 100 pengguna', 1, NULL, 'https://incomepoint.tanjungpinangkota.go.id/gurpay/', '', 'API', 'Incomepoint dan Perbankan', 'Wajib Pajak', 'Softpoint', '', 'Mohammad Farly Rizki', '198803022015031002', 'Pengelola Data Informasi', '081275038222', 'resources/data_aplikasi/CONCEPT_PAPER.pdf', 'resources/data_aplikasi/Gurindampay.png', '', 'Admin Utama, Pengawas Sistem, dan user untuk monitoring', 'Implementasi GURINDAM PAY untuk mengintegrasikan transaksi pembayaran elektronik dengan pencatatan dan pengawasan pajak daerah secara real time. Tahap awal difokuskan pada PBJT Makanan dan/atau Minuman, dengan dashboard monitoring transaksi, omzet, penerimaan pajak, dan kepatuhan wajib pajak, serta rencana perluasan bertahap ke sektor pajak daerah lainnya.', '', 0, 'Aplikasi dikelola oleh BPPRD Kota Tanjungpinang dengan dukungan vendor pengembang serta koordinasi dengan DISKOMINFO dan mitra perbankan. Aplikasi mendukung digitalisasi pengawasan pajak daerah dan optimalisasi PAD. Spesifikasi teknis serta mekanisme integrasi pembayaran dan penyetoran pajak dikonfirmasi bersama vendor dan mitra terkait.', 0, 1, NULL, 54, '2026-10-07 10:13:51', NULL, NULL, NULL, NULL),
(340, 110, '1', 'Website Dinas Kependudukan dan Pencatatan Sipil', 'Disdukcapil Kota Tanjungpinang', 'Website Dinas Kependudukan dan Pencatatan Sipil', 1, '2022', 'Website,', 'php', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'disdukcapil.tanjungpinangkota.go.id', '', '', '', '', 'Disdukcapil Kota Tanjungpinang', '', 'Moh. Ismail Wisuda', '199312212023211011', 'Arsiparis Ahli Pertama', '082283869473', 'resources/data_aplikasi/contoh.pdf', 'resources/data_aplikasi/pemko_tpi_logo.png', '', 'admin, operator', '', '', 0, '', 0, 1, NULL, 182, '2026-10-07 11:49:10', NULL, NULL, NULL, NULL),
(341, 110, '1', 'Tuah Gurindam', 'DINAS KOMINFO DAN INFORMATIKA KOTA TANJUNGPINANG', 'Layanan Terintegrasi Berbasis Teknologi Informasi dalam Perubahan Data Administrasi Kependudukan Sidang di luar gedung Pengadilan Negeri Tanjungpinang', 1, '2026', 'Website,', 'php', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 2, NULL, 'layanan.disdukcapil.tanjungpinangkota.go.id', '', '', 'E-Court', 'Pengadilan Negeri Tanjungpinang Kelas 1A', 'DINAS KOMINFO DAN INFORMATIKA KOTA TANJUNGPINANG', '', 'DAHLIANA', '197012061990032004', 'Penelaah Teknis Kebijakan', '082391421735', 'resources/data_aplikasi/contoh1.pdf', 'resources/data_aplikasi/pemko_tpi_logo1.png', '', 'Admin, Petugas Disduk, Petuga Pengadilan', '', '', 0, '', 0, 1, NULL, 182, '2026-10-07 12:00:08', NULL, NULL, NULL, NULL),
(342, 108, '1', 'Website Bakesbangpol Kota Tanjungpinang', 'Diskominfo Kota Tanjungpinang', 'Website  ini Berisikan Informasi Publik di Lingkungan Bakesbangpol Kota Tanjungpinang.', 1, '2026', 'Website,', 'php', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 4, NULL, 'bakesbangpol.tanjungpinangkota.go.id/', '', '', '', '', 'Diskominfo Kota Tanjungpinang', '', 'Raja Nooraini Harianti, S.H.', '199611132025212010', 'Penata Layanan Operasional', '082310680106', 'resources/data_aplikasi/1.pdf', 'resources/data_aplikasi/pemko_tanjungpinang.jpg', '', '', '', '', 0, '', 0, 1, NULL, 161, '2026-10-09 09:24:48', 161, '2026-10-09 09:27:41', NULL, NULL),
(343, 134, '1', 'Website Profil Kelurahan Kampung Bugis', 'Diskominfo Kota Tanjungpinang', 'website berisikan informasi publik di lingkungan kelurahan kampung bugis', 1, '2022', 'Website,', 'php', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 4, NULL, 'kampungbugiskel.tanjungpinangkota.go.id/', '', '', '', '', 'Diskominfo Kota Tanjungpinang', '', 'Fitrianingsih', '198008122007012013', 'Pengadministrasi perkantoran', '082391406386', 'resources/data_aplikasi/Draft_SPT1.pdf', 'resources/data_aplikasi/GKV132_Kota_Tanjung_Pinang-logobase_net.png', '', '', '', '', 0, '', 0, 1, NULL, 172, '2026-10-09 09:58:05', NULL, NULL, NULL, NULL),
(344, 132, '1', 'asdasd', 'ads', 'asdasd', 1, '2026', 'Website,', 'asd', 1, NULL, 1, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'asd', '', 'asd', 'asd', 'asd', 'ad', 'asd', 'asd', '123123123', 'asd', '0582834234', 'resources/data_aplikasi/test_php.pdf', 'resources/data_aplikasi/tio.jpg', '', 'asd', 'asd', '', 0, 'asd', 0, 1, NULL, 160, '2026-10-20 21:42:06', 160, '2026-10-20 21:42:55', NULL, NULL),
(346, 140, '1', 'Simbiosis.tanjungpinangkota.go.id', 'Ichsan Pramatya, S.Sos', '', 1, '2026', 'Website,', 'Java Script', 1, NULL, 2, 'di atas 100 pengguna', 1, NULL, 'Simbiosis.tanjungpinangkota.go.id', '', 'API', 'SIKS-NG, https://bpprd.tanjungpinangkota.go.id/cekpbb.php', 'Dinas Sosial, Dinas Kesehatan, BPPRD Kota Tanjungpinang', 'Ichsan Pramatya, S.Sos', 'Perpres Nomor 95 Tahun 2018 tentang Sistem Pemerintahan Berbasis Elekronik, Pepres Nomor 82 Tahun 2022 tentang percepatan Transformasi digital dan keterpaduan layanan digital nasional', 'Makhzuni. A.Md', '197509112005021006', 'Pranata SDM Aparatur Penyelia', '082169287060', 'resources/data_aplikasi/Surat_Tugas_PIC_SIMBIOSIS9.pdf', 'resources/data_aplikasi/Logo_Simbiosis_a_jpg6.jpg', 'resources/data_aplikasi/Screenshot_20261023_111820_com_huawei_hsl_edit_302858204283734.jpg', 'Admin Utama adalah pengguna yang menggunakan hak akses kesemua fitur', 'Aplikasi simbiosis adalah aplikasi satu pintu dengan menggunakan aplikasi berbasis web dalam rangka kemudahan akses dan pengelolaan pelayanan masyarakat yang transparan, berintegritas, optimal, akuntabel dan sinergis   pada kecamatan dan kelurahan dilingkungan Pemerintah Kota Tanjungpinang.', 'Pengelolaan Pelayanan Publik yang transparan, akuntabel, serta kemudahan dalam pengelolaan pelayanan publik yang terintegrasi dalam aplikasi berbasis web dan SOP pelayanan digital yang selaras dengan visi BIMA SAKTI pada Kecamatan dan Kelurahan dilingkungan Pemerintah Kota Tanjungpinang.', 0, 'Dalam rangka meningkatkan kualitas, pelayanan publik, tranparansi, akuntabel, serta kemudahan dalam pengelolaan pelayanan masyarakat pada kecamatan dan kelurahan sekota tanjungpinang .melalui aplikasi berbasis web berupa aplikasi sistem pelayanan berbasis web dan SOP pelayanan  digital', 1, 1, '', 260, '2026-10-23 11:19:40', NULL, NULL, 11, '2026-10-24 07:52:54'),
(347, 124, '2', 'Smart SKRD DPUPR Kota Tanjungpinang', 'DPUPR Kota Tanjungpinang', 'Aplikasi Surat Ketetapan Retribusi Daerah (SKRD)', 2, '2026', 'Website,', 'TypeScript & Golang', 3, NULL, 2, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'https://smartskrd.dpupr.tanjungpinangkota.go.id', '', '-', '-', '-', 'DPUPR Kota Tanjungpinang', '-', 'Dessy Daryati, S.T', '197512052008032002', 'Kepala Bidang Jasa Konstruksi', '085272121975', 'resources/data_aplikasi/20261021173004SURAT_TUGAS2.pdf', 'resources/data_aplikasi/WhatsApp_Image_2026-10-08_at_17_59_522.jpeg', 'resources/data_aplikasi/bisnis_proses.jpeg', '-', '', 'Aplikasi Surat Ketetapan Retribusi Daerah (SKRD)', 0, '-', 0, 1, NULL, 53, '2026-10-24 13:14:06', 53, '2026-10-24 13:15:20', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_aplikasi_2026`
--

CREATE TABLE `data_aplikasi_2026` (
  `id_aplikasi` int(11) NOT NULL,
  `id_opd` int(11) NOT NULL,
  `asal_aplikasi` enum('1','2') NOT NULL DEFAULT '1',
  `nama_aplikasi` varchar(200) NOT NULL,
  `penyedia_aplikasi` varchar(100) DEFAULT NULL,
  `deskripsi_aplikasi` text DEFAULT NULL,
  `id_jenis_layanan` int(11) NOT NULL,
  `tahun` year(4) NOT NULL,
  `basis_aplikasi` text NOT NULL,
  `bahasa_pemrograman` varchar(100) DEFAULT NULL,
  `id_dbms` int(11) NOT NULL,
  `dbms_lainnya` varchar(100) DEFAULT NULL,
  `id_lokasi_hosting` int(11) NOT NULL,
  `jumlah_pengguna` varchar(100) NOT NULL,
  `id_frekuensi_penggunaan` int(11) NOT NULL,
  `frekuensi_penggunaan_lainnya` varchar(100) DEFAULT NULL,
  `nama_domain` varchar(100) NOT NULL,
  `ketersediaan_integrasi` enum('Ada','Tidak Ada','Tidak Tahu') NOT NULL,
  `metode_integrasi` varchar(100) DEFAULT NULL,
  `aplikasi_terintegrasi` text DEFAULT NULL,
  `opd_terintegrasi` text DEFAULT NULL,
  `pengembang_aplikasi` varchar(100) DEFAULT NULL,
  `regulasi` text DEFAULT NULL,
  `pic_aplikasi` varchar(100) NOT NULL,
  `nip_pic` varchar(20) NOT NULL,
  `jabatan_pic` varchar(100) NOT NULL,
  `no_telp` varchar(100) NOT NULL,
  `file_spt` text DEFAULT NULL,
  `file_logo` text DEFAULT NULL,
  `level_privileges` text DEFAULT NULL,
  `rencana_aplikasi` text DEFAULT NULL,
  `proses_bisnis` text DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `catatan` varchar(100) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `changed_on` datetime DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `approved_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data untuk tabel `data_aplikasi_2026`
--

INSERT INTO `data_aplikasi_2026` (`id_aplikasi`, `id_opd`, `asal_aplikasi`, `nama_aplikasi`, `penyedia_aplikasi`, `deskripsi_aplikasi`, `id_jenis_layanan`, `tahun`, `basis_aplikasi`, `bahasa_pemrograman`, `id_dbms`, `dbms_lainnya`, `id_lokasi_hosting`, `jumlah_pengguna`, `id_frekuensi_penggunaan`, `frekuensi_penggunaan_lainnya`, `nama_domain`, `ketersediaan_integrasi`, `metode_integrasi`, `aplikasi_terintegrasi`, `opd_terintegrasi`, `pengembang_aplikasi`, `regulasi`, `pic_aplikasi`, `nip_pic`, `jabatan_pic`, `no_telp`, `file_spt`, `file_logo`, `level_privileges`, `rencana_aplikasi`, `proses_bisnis`, `keterangan`, `status`, `is_active`, `catatan`, `created_by`, `created_on`, `changed_by`, `changed_on`, `approved_by`, `approved_on`) VALUES
(1, 125, '1', 'Sistem Informasi Aktivitas Presensi (SIAP)', 'Diskominfo Provinsi Kepri', 'Sistem Pencatatan presensi pegawai', 3, '2022', 'iOS,Desktop,', 'PHP, Golang, Dart', 1, NULL, 3, 'di atas 100 pengguna', 1, NULL, 'siap.tanjungpinangkota.go.id', 'Ada', 'REST API', 'ICMS;JDIH', 'Diskominfo, BKPSDM', 'Diskominfo Kota Tanjungpinang', 'Perwako Nomor Sekian tahun Dulu', 'David Fherdinan Samson Sihite, S.Kom', '199411252022021001', 'Pranata Komputer', '081278786575', NULL, 'resources/data_aplikasi/logo_siap.png', '- Admin Utama, full akses, 1 orang\r\n- Admin OPD, tidak full akses, 40 orang\r\n- pengguna, presensi masuk dan pulang, 3000 orang', 'untuk meningkatkan kedisiplinan', NULL, 'keterangan', 1, 1, 'File SPT Belum ada', 3, '2022-11-04 14:14:58', 18, '2023-02-20 13:32:40', 11, '2025-03-10 09:38:01'),
(3, 125, '1', 'Sistem Informasi Pendataan Aplikasi', 'Diskominfo Kota Tanjungpinang', 'Apliksi pendataan dan inventaris sistem informasi di Pemerintah kota Tanjungpinang', 1, '2022', 'Website,', 'PHP, JS', 1, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 4, NULL, 'sipa.kominfo.tanjungpinangkota.go.id', 'Ada', 'REST API', 'SIAP Tanjungpinang', 'Diskominfo dan BKPSDM Kota Tanjungpianng', 'Diskominfo Kota Tanjungpinang', 'Perpres No 95 Tahun 2018 Tentang SPBE', 'SAiful', '199411252022021001', 'Ahli Pertama Pranata Komputer', '081270709880', 'resources/data_aplikasi/Anjab-Pranata_Komputer.pdf', NULL, '- Admin Utama, mempunyai hak akses penuh, 2 orang\r\n- admin OPD, mempunyai hak akses terbatas, 10 orang', 'aplikasi ini akan digunakan untuk proses pendataan aplikasi guna penilaian SPBE setiap Tahun', NULL, '', 1, 1, 'File SPT Belum ada', 5, '2022-11-11 09:40:52', NULL, NULL, 11, '2025-03-10 09:37:10'),
(4, 112, '1', 'SIPBOS Kota Tanjungpinang', '-', 'Sistem Informasi Pengelolaan Dana BOS Kota Tanjungpinang', 2, '2019', 'Website,', 'PHP (Yii Framework)', 3, NULL, 2, 'di atas 100 pengguna', 1, NULL, 'sipbos-tanjungpinang.id', 'Ada', '', '', '', 'CV. RIQCOM SERVICES', '', 'Heni Wati, S.Pd.I', '197406221998022003', 'Kasi Peserta Didik dan Pembangunan Karakter SD', '082324647748', NULL, NULL, 'Admin', '', NULL, '', 1, 0, 'cek 12 maret 2026', 7, '2022-11-17 21:18:52', NULL, NULL, 11, '2026-03-12 11:33:36'),
(5, 112, '1', 'Sistem Penerimaan Murid Baru (SPMB) Kota Tanjungpinang', 'CV. RIQCOM SERVICES', 'Sistem Informasi untuk pengelolaan proses Penerimaan Murid Baru tahun ajaran 2026/2027 di Kota Tanjungpinang pada jenjang TK, SD dan SMP', 1, '2022', 'Website,', 'PHP (Laravel)', 3, NULL, 2, 'di atas 100 pengguna', 1, NULL, 'https://spmb-tanjungpinang.id/', '', '', '', '', 'CV. RIQCOM SERVICES', '', 'Inderi, S.Ag', '197511162005011007', 'Kepala Seksi Peserta Didik dan Pembangunan Karakter SMP', '08127729516', NULL, NULL, 'Admin', '', '', '', 1, 1, '', 7, '2022-11-17 21:18:52', 116, '2026-10-05 08:56:53', 11, '2026-10-05 10:29:48'),
(6, 112, '1', 'Website Portal OPD', '-', 'indeks informasi terkini dan terbaru dari dunia pendidikan, sekolah pada dinas pendidikan kota tanjungpinang', 1, '2020', 'Website,', 'PHP, Javascript', 1, NULL, 2, 'di atas 100 pengguna', 2, NULL, 'disdik.tanjungpinangkota.go.id', 'Ada', '', '', '', 'CV. MDAENTERPRISE', '', 'Yuliardi', '197807262010011007', 'Pengadministrasi Kurikulum', '08127063972', NULL, NULL, 'Admin', '', NULL, '', 1, 1, NULL, 7, '2022-11-17 21:30:32', NULL, NULL, 1, '2022-11-17 22:05:31'),
(7, 119, '1', 'Website DPMPTSP dan MPP', '-', 'Website Portal OPD', 1, '2019', 'Website,', 'Joomla', 1, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'dpmptsp.tanjungpinangkota.go.id', '', '-', 'OSS', '', '-', '', 'Imam Sudaryanto, S.P', '197503202006041007', 'Penata Perizinan Ahli Muda', '082392808464', 'resources/data_aplikasi/20260824160010SURAT_TUGAS_PIC_WEBSITE_DPMPTSP_DAN_MPP.pdf', 'resources/data_aplikasi/DPMPTSP_LOGO.jpg', 'Administrator', '', '', '', 0, 1, NULL, 7, '2022-11-17 21:33:39', 170, '2026-09-01 14:11:24', 1, '2022-11-17 22:05:21'),
(8, 106, '1', 'e-BPHTB', '-', 'Sistem Informasi e BPHTB adalah sistem yang\r\nBerfungsi sebagai sarana untuk\r\nmengoperasikan pengolahan data proses\r\nPelayanan Pajak Daerah diantaranya: untuk\r\nmengoperasikan pengolahan data proses\r\nPelayanan Bea Perolehan Atas Tanah dan\r\nBangunan diantaranya Proses Jual Beli, Waris,\r\nHibah, dll dalam proses Penyelenggaraan\r\nPelayanan BPHTB', 1, '2021', 'Website,', 'PHP', 1, NULL, 1, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'ebphtp.tanjungpinangkota.go.id', 'Ada', 'API', 'HOST TO HOST ANTARA BPPRD DENGAN BPN, BANK RIAU KEPRI, BTN DAN NOTARIS', 'BPN, NOTARIS, BANK RIAU KEPRI, BANK\r\nTABUNGAN NEGARA', 'PT. Geospace Intimatika', 'PERATURAN DAERAH KOTA TANJUNGPINANG\r\nNOMOR 2 TAHUN 2011 TENTANG PAJAK\r\nDAERAH (LEMBARAN DAERAH KOTA\r\nTANJUNGPINANG TAHUN 2011 NOMOR 2)\r\nSEBAGAIMANA TELAH DIUBAH BEBERAPA KALI,\r\nTERAKHIR DENGAN PERATURAN DAERAH KOTA\r\nTANJUNGPINANG NOMOR 1 TAHUN 2020\r\nTENTANG PERUBAHAN KETIGA ATAS\r\nPERATURAN DAERAH NOMOR 2 TAHUN 2011\r\nTENTANG PAJAK DAERAH (LEMBARAN DAERAH\r\nKOTA TANJUNGPINANG TAHUN 2020 NOMOR\r\n39).', 'Muhammad Rivai', '199808292008011008', 'kepala Sub Bidang Pengolahan Data dan Informasi', '0822849999333', NULL, NULL, 'Administrator : 3 User\r\nPelayanan / Operator : 4 User\r\nUser : 60 User\r\nAR : 5 user\r\nKasubbid : 3 user\r\nKabid : 7 User\r\nkaban : 1 User', 'Pengembangan laporan yang spesifik', 'Pengelolaan Pajak Daerah', 'Optimalisasi pajak daerah', 1, 1, 'cek 12 maret 2026', 7, '2022-11-17 21:38:14', 149, '2026-03-12 12:53:50', 11, '2026-03-12 12:56:27'),
(9, 106, '1', 'KSWP', '-', 'Sistem Informasi KSWP adalah sistem yang Berfungsi sebagai sarana aplikasi yang digunakan untuk mendapatkan informasi Proses BPHTB menjadi sertifikat yang telah selesai prosesnya di BPN, sehingga menjadi dasar terhadap perubahan data PBB atas kepemilikan Tanah.', 3, '2020', 'Website,', 'Golang', 1, NULL, 1, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'kswp.tanjungpinangkota.go.id', 'Ada', 'API', 'Host to Host antara BPPRD dengan BPN dan DPMPTSP', 'BPN;DPMPTSP', 'M. Taufik Hidayat, ST', 'PERATURAN DAERAH KOTA TANJUNGPINANG NOMOR 2 TAHUN 2011 TENTANG PAJAK DAERAH (LEMBARAN DAERAH KOTA TANJUNGPINANG TAHUN 2011 NOMOR 2) SEBAGAIMANA TELAH DIUBAH BEBERAPA KALI, TERAKHIR DENGAN PERATURAN DAERAH KOTA TANJUNGPINANG NOMOR 1 TAHUN 2020 TENTANG PERUBAHAN KETIGA ATAS PERATURAN DAERAH NOMOR 2 TAHUN 2011 TENTANG PAJAK DAERAH (LEMBARAN DAERAH KOTA TANJUNGPINANG TAHUN 2020 NOMOR 39);', 'Muhammad Rivai', '198308292008011008', 'kepala Sub Bidang Pengolahan Data dan Informasi', '082284999933', NULL, NULL, 'User: 1 User', 'Memaksimalkan proses integrasi', 'Pengelolaan Pajak Daerah', 'Optimalisasi pajak daerah', 1, 1, 'cek 12 maret 2026', 7, '2022-11-17 21:41:47', 149, '2026-03-12 12:54:40', 11, '2026-03-12 12:56:18'),
(10, 106, '1', 'INCOMEPOINT', '-', 'Sistem Informasi iNCOMEPOINT adalah sistem yang Berfungsi sebagai sarana untuk mengoperasikan pengolahan data proses Pelayanan Pajak Daerah diantaranya: a. Proses Masuk di Aplikasi Incomepoint, b. Proses Input Data Nomor Pelayanan Pajak, c. Proses Input Data SPTPD (Surat Pemberitahuan Pajak Daerah) (Self assesmant), d. Proses Input Data SPTPD (Surat Pemberitahuan Pajak Daerah) Organisasi Perangkat Daerah, e. Proses Input Pendaftaran Data Baru di bidang Penetapan, f.Proses Pengurangan Pajak Daerah, g. Proses Angsuran Pajak Daerah, h. Proses Input Data BKP, Pembukuan dan Penagihan (Surat Tagihan Pajak Daerah/ STPD, I. Proses Narik Data Laporan, j. Nota Pemeriksaan Pajak Daerah.', 1, '2020', 'Website,', 'Delphi', 2, NULL, 1, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'incomepoint.bpprdkotatanjungpinang.online', 'Ada', 'API', 'Host to Host antara BPPRD dengan bank', 'Bank Riau Kepri;Bank tabungan Negara', 'CV. Softpoint System', 'PERATURAN DAERAH KOTA TANJUNGPINANG NOMOR 2 TAHUN 2011 TENTANG PAJAK DAERAH (LEMBARAN DAERAH KOTA TANJUNGPINANG TAHUN 2011 NOMOR 2) SEBAGAIMANA TELAH DIUBAH BEBERAPA KALI, TERAKHIR DENGAN PERATURAN DAERAH KOTA TANJUNGPINANG NOMOR 1 TAHUN 2020 TENTANG PERUBAHAN KETIGA ATAS PERATURAN DAERAH NOMOR 2 TAHUN 2011 TENTANG PAJAK DAERAH (LEMBARAN DAERAH KOTA TANJUNGPINANG TAHUN 2020 NOMOR 39).', 'Muhammad Rivai', '198308292008011008', 'kepala Sub Bidang Pengolahan Data dan Informasi', '082284999933', NULL, NULL, 'SUPER ADMIN : 10 USER, ADMIN PELAYANAN : 4 USER, ADMIN PENDATAAN: 5 USER, ADMIN KEBERATAN DAN PENGURANGAN: 2 USER, ADMIN PERHITUNGAN DAN PENETAPAN: 4 USER, ADMIN POTENSI PAJAK DAN RETRIBUSI: 3 USER, ADMIN BENDAHARA PENERIMA: 3 USER, ADMIN PEMBUKUAN: 4 USER, ADMIN PEMERIKSAAN: 3 USER, ADMIN PENAGIHAN: 6 USER, ADMIN LEMBAGA PEMERIKSA: 1 USER', 'Pengembangan Proses pemeriksaan yang terintegrasi', NULL, 'Optimalisasi pajak daerah', 1, 1, NULL, 7, '2022-11-17 21:46:35', NULL, NULL, 1, '2022-11-17 21:58:31'),
(11, 106, '1', 'PBB Online', '-', 'Sistem Informasi PBB ONLINE adalah sistem yang Berfungsi sebagai sarana untuk mengoperasikan pengolahan data proses Pelayanan Pajak Bumi dan Bangunan, terkait dengan proses pelayanan data base secara sistematis dan informatif yang menyajikan: Proses Penginputan dan pencarian serta perekaman Data Baru, Mutasi, Pembetulan, Pembatalan, Penggabungan, Keberatan, Keringanan dalam proses Penyelenggaraan Pelayanan Pajak Bumi dan Bangunan', 1, '2014', 'Website,', 'PHP', 3, NULL, 1, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'pbb.tanjungpinangkota.go.id', '', 'API', 'Host to Host antara BPPRD dengan BRK dan BTN', 'BRK;BTN', 'Universitas Pendidikan Indonesia', 'PERATURAN DAERAH KOTA TANJUNGPINANG NOMOR 2 TAHUN 2011 TENTANG PAJAK DAERAH (LEMBARAN DAERAH KOTA TANJUNGPINANG TAHUN 2011 NOMOR 2) SEBAGAIMANA TELAH DIUBAH BEBERAPA KALI, TERAKHIR DENGAN PERATURAN DAERAH KOTA TANJUNGPINANG NOMOR 1 TAHUN 2020 TENTANG PERUBAHAN KETIGA ATAS PERATURAN DAERAH NOMOR 2 TAHUN 2011 TENTANG PAJAK DAERAH (LEMBARAN DAERAH KOTA TANJUNGPINANG TAHUN 2020 NOMOR 39).', 'Muhammad Rivai', '198308292008011008', 'kepala Sub Bidang Pengolahan Data dan Informasi', '082284999933', NULL, NULL, 'SUPER ADMIN : 7 USER, ADMIN PELAYANAN : 7 USER, ADMIN PENGOLAHAN DATA DAN INFORMASI 4 USER, ADMIN EKSTENINTEN : 12 USER, ADMIN PENAGIHAN : 14 USER, ADMIN PERBANKAN : 1 USER', 'Pengembangan Rekapan Pelaporan transaksi non tunai secara terperinci', '', 'Optimalisasi Pajak Daerah', 0, 0, 'cek 12 maret 2026', 7, '2022-11-17 21:50:24', 54, '2026-08-31 08:44:27', 11, '2026-03-12 12:56:11'),
(12, 117, '1', 'Gerai Tani\'e', '-', 'Aplikasi yang Menghubungkan Produk Pangan Terbaik di Gerai Pangan Tanjungpinang dari Hasil Pertanian, Peternakan dan Perikanan serta UMKM (Sayuran, Buah-Buahan, Produk UMKM, Makanan Olahan dll) kepada Konsumen melalui Aplikasi Mobile bagi masyarakat Kota Tanjungpinang dengan berbelanja secara daring (online)', 1, '2022', 'Website,Android,iOS,', 'PHP', 3, NULL, 2, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'geraitanie.com', '', '', '', '', 'CV. Jastindo Gradana', '', 'H. Hamerudin, S.P', '197007072002121011', 'Sekretaris Dinas Pertanian Pangan dan Perikanan Kota Tanjungpinang', '081364771970', NULL, NULL, 'Administrator utama, mengelola seluruh fungsi pada sistem, 1 orang', 'Dengan menggunakan aplikasi gerai tani\'e, berbelanja di gerai pangan Tanjungpinang secara daring (online) lebih mudah dan hemat', '', '', 0, 0, 'cek 12 maret 2026', 7, '2022-11-17 21:54:14', 196, '2026-06-23 11:50:28', 11, '2026-03-12 11:31:49'),
(13, 103, '1', 'Sistem Akuntabilitas Kinerja Instansi Pemerintahan', 'Inspektorat Daerah Kota Tanjungpinang', '(Sistem Akuntabilitas Kinerja Instansi Pemerintah Online) APLIKASI ini menampilkan proses perencanaan kinerja, penganggaran kinerja, keterkaitan kegiatan/sub kegiatan dalam pencapaian target kinerja, dan monitoring serta evaluasi pencapaian kinerja dan keuangan', 3, '2018', 'Website,', '-', 10, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 4, NULL, 'esakip.tanjungpinangkota.go.id', '', '', '', '', 'Inspektorat Daerah Kota Tanjungpinang', 'Peraturan Presiden (PERPRES) No.29 Tahun 2014 tentang Sistem Akuntabilitas Kinerja Instansi Pemerintah Permen PANRB No. 88 Tahun 2021 tentang Evaluasi Akuntabilitas Kinerja Instansi Pemerintah', 'Muhammad Najib, S.AP', '197809082007011021', 'PPUD Ahli Muda', '0811704269', NULL, NULL, 'Administrator Utama', '', '', '', 0, 1, NULL, 7, '2022-11-17 21:57:18', 235, '2026-08-21 09:35:35', 1, '2022-11-17 22:05:03'),
(14, 116, '1', 'Website Portal DP3APM', '-', 'WEBSITE DINAS PEMBERDAYAAN\r\nPEREMPUAN,PERLINDUNGAN ANAK DAN\r\nPEMBERDAYAAN MASYARAKAT DIGUNAKAN\r\n/DIFUNGSIKAN UNTUK MEMBERITAHU KEPADA\r\nPUBLIK KEGIATAN ATAU BERITA YANG SUDAH\r\nDILAKUKAN OLEH DINAS PEMBERDAYAAN\r\nPEREMPUAN PERLINDUNGAN ANAK DAN\r\nPEMBERDAYAAN MASYRAKAT, DI WEB INI\r\nBERISI KEGIATAN,BERITA,FOTO, DATA DAN\r\nLAYANAN PUBLIK APA SAJA YANG ADA DI\r\nDP3AM', 3, '2018', 'Website,', 'Joomla', 1, NULL, 2, 'di bawah dan sama dengan 25 pengguna', 7, NULL, 'dp3apm.tanjungpinangkota.go.id', 'Ada', '', '', '', 'DP3APM', '', 'Boy Puspla, SE', '197609082006041014', 'Prencana Ahli Muda', '08126119397', NULL, NULL, '- Administrasi Utama, adalah user yang\r\nmemiliki seluruh fungsi pada sistem, 1 orang', '', NULL, '', 1, 1, NULL, 8, '2022-11-25 07:25:46', NULL, NULL, 1, '2022-11-25 07:49:43'),
(15, 132, '1', 'Sistem Informasi Arsip Tanah', '-', '', 1, '2022', 'Website,', 'PHP', 1, NULL, 3, 'di atas 100 pengguna', 1, NULL, 'simarta.kecbukitbestari.tanjungpinangkota.go.id', 'Ada', '', '', '', 'Pangeran56', '', 'Leo Gunawan, S.Sos', '197908192006041018', 'Sekretaris Kecamatan', '08127007908', NULL, NULL, '- Administrator Utama sebanyak 5 orang\r\n- User Kelurahan sebanyak 5 orang', '', NULL, '', 1, 0, '', 8, '2022-11-25 07:28:29', NULL, NULL, 11, '2026-10-16 07:56:35'),
(16, 111, '1', 'E-Puskesmas', '-', 'e-puskesmas adalah aplikasi manajemen\r\npuskesmas, mulai dari pendaftaran pasien\r\nhingga sistem pelaporan puskesmas', 1, '2018', 'Website,', 'PHP', 1, NULL, 2, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'tanjungpianng.epuskesmas.id', '', '', '', '', 'PT. INFOKES', '', 'R. Leila Mutia, SKM', '197608052003042009', 'Perencana Ahli Muda', '081364309329', NULL, NULL, '-Administrator Dinkes, merupakan admin di\r\ndinas kesehatan yang dapat mengakses\r\nlaporan dari masing-masing puskesmas\r\n-Administrator Puskesmas, terdiri dari admin di\r\npendaftaran puskesmas, admin masingmasing poli di puskesmas, dan pemegang\r\nprogram', '', '', '', 0, 1, 'cek 12 maret 2026', 8, '2022-11-25 07:30:25', 31, '2026-08-20 10:19:12', 11, '2026-03-12 11:31:21'),
(17, 119, '1', 'Website Support Mall Pelayanan Publik', '-', '', 1, '2022', 'Website,Android,iOS,', 'PHP, JS', 1, NULL, 1, 'di atas 100 pengguna', 1, NULL, 'apimpp.tanjungpinangkota.go.id', '', '', '', '', 'PT. Medianusa Permana', '', 'Wambok Malilu', '197703022005021006', 'Koorbid PPIPPM', '08117048787', NULL, NULL, '', '', '', '', 0, 0, NULL, 8, '2022-11-25 07:35:17', 170, '2026-08-21 09:00:31', 1, '2022-11-25 07:49:48'),
(18, 119, '1', 'Website MPP', '-', '', 1, '2022', 'Website,Android,iOS,', '-', 1, NULL, 1, 'di atas 100 pengguna', 1, NULL, 'mpp.tanjungpinangkota.go.id', '', '', '', '', 'PT. Medianusa Permana', '', 'Imam Sudaryanto, S.P', '197503202006041007', 'Penata Perizinan Ahli Muda', '082392808464', 'resources/data_aplikasi/20260824160010SURAT_TUGAS_PIC_WEBSITE_DPMPTSP_DAN_MPP1.pdf', 'resources/data_aplikasi/MPP_LOGO.jpg', '', '', '', '', 0, 1, NULL, 8, '2022-11-25 07:39:07', 170, '2026-09-01 14:11:37', 1, '2022-11-25 07:49:37'),
(19, 110, '1', 'SIstem Informasi Kependudukan dan Pencatatan Sipil (SIKANCIL)', '-', '', 1, '2020', 'Website,Android,', 'Web Based PHP (Laravel) dan Mobile APP (Ionic Framework)', 3, NULL, 2, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'sikancil-disdukcapil.tanjungpinangkota.go.id', '', '', '', '', 'CV Jastindo Gradana', 'Permendagri RI Nomor 108 Tahun 2019 tentang Peraturan Perpres Nomor 96 Tahun 2018 Tentang Persyaratan dan Tata Cara Pendaftaran Penduduk dan Pencatatan Sipil', 'H. arlius, S.Sos', '196807221991031007', 'Sekretaris', '08126164739', NULL, NULL, '', '- Admin Utama 1 Orang (Sekretaris)\r\n- Admin Support 2 Orang (Staf Sekretaris)', '', 'Mengintegrasikan dengan Layanan Publik, Pendidikan, Perpajakan, dan BPJS,', 0, 0, NULL, 8, '2022-11-25 07:42:58', 197, '2026-06-30 08:33:54', 1, '2022-11-25 07:49:30'),
(20, 105, '1', 'SIMPEG', '-', 'SIMPEG ini digunakan untuk merakam, mengubah, menghapus dan mencari data serta laporan yang menampilkan hasil perekaman data', 3, '2013', 'Website,', 'PHP', 1, NULL, 1, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'http://202.134.231.34:88//simpegtpinang', '', '', '', '', '-', '', 'Halipah Haini', '197808062009022005', 'Ketua Tim Pengelola SIMPEG', '0811694024', NULL, NULL, '- Administrator utama adalah user yang\r\nmemiliki seluruh fungsi pada sistem, 15 orang\r\n- Administrator OPD adalah user yang memiliki\r\nseluruh fungsi OPD nya, 56 orang', 'Aplikasi SIMPEG kedepannya dapat\r\nterintergrasi dengan absensi, manajemen\r\nkinerja dan manajemen talenta serta pelayanan\r\nkepegawaian lainnya.', '', '', 0, 1, NULL, 8, '2022-11-25 07:45:58', 237, '2026-08-21 09:28:14', 1, '2022-11-25 07:49:17'),
(21, 125, '1', 'JAVIDCON', '-', 'Aplikasi Penjadwalan Video Conference', 3, '2022', 'Website,', 'PHP', 1, NULL, 2, 'di atas 25 sampai dengan 100 pengguna', 3, NULL, 'javidcon.tanjungpinangkota.go.id', 'Ada', '', '', '', 'Rakhmad Kafyandi, ST', '', 'Rakhmad Kafyandi', '199507292022021001', 'Pranata Komputer Ahli Pertama', '081275265829', NULL, NULL, 'Admin Diskominfo', '', NULL, '', 1, 1, NULL, 8, '2022-11-25 08:04:16', NULL, NULL, 1, '2023-01-31 11:11:45'),
(22, 125, '1', 'Digital Up Skill', '-', 'Portal layanan peningkatan kapasitas SDM dalam pemanfaatan Sistem Informasi Pemerintahan dan Sistem Informasi Publik', 2, '2022', 'Website,', 'PHP', 1, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'digitalupskill.kominfo.tanjungpinangkota.go.id', '', '', '', '', 'David Fherdinan Samsom Sihite, S.Kom', '', 'David Fherdinan Samsom Sihite, S.Kom', '199407062022021001', 'Pranata Komputer Ahli Pertama', '081216902746', NULL, NULL, 'Admin Utama', '', '', '', 1, 1, '', 8, '2022-11-25 08:05:56', 152, '2026-08-19 08:34:47', 1, '2026-08-19 08:36:05'),
(23, 103, '2', 'Laporan Harta Kekayaan Aparatur Sipil Negara', '-', 'Laporan Harta Kekayaan Aparatur Sipil Negara\r\nyang selanjutnya disingkat LHKASN adalah\r\ndaftar seluruh harta kekayaan ASN yang\r\ndituangkan dalam formulir LHKASN yang\r\nditetapkan oleh Kementrian Pendayagunaan\r\nAparatur Negara dan Reformasi Birokrasi.\r\nSekarang diisi secara online melalui aplkasi\r\nSIHARKA', 3, '2019', 'Website,', '-', 10, NULL, 4, 'di atas 100 pengguna', 7, NULL, 'siharka.menpan.go.id', '', '', '', '', '-', '', 'Suroso', '197202082006041015', 'Pengadministrasi Umum', '081364139403', NULL, NULL, 'Admin OPD', '', '', '', 0, 0, '', 8, '2022-11-25 08:08:25', 194, '2026-06-22 09:09:40', 11, '2025-03-10 10:24:40'),
(24, 103, '2', 'Pengelolaan Laporan Harta Kekayaan Penyelenggara Negara', '-', 'Apa itu e-LHKPN? Laporan Harta Kekayaan\r\nPenyelenggara Negara menggunakan aplikasi\r\nyang berbasis web (web based) dengan alamat\r\nelhkpn. kpk.go.id, sehingga data yang diinput\r\noleh PN/WL secara otomatis tersimpan dalam\r\nserver yang ada di KPK.', 2, '2017', 'Website,', '-', 10, NULL, 4, 'di atas 100 pengguna', 7, NULL, 'elhkpn.kpk.go.id', '', '', '', '', '-', 'Undang-Undang Nomor 28 Tahun 1999 tentang\r\nPenyelenggara Negara Yang Bersih Dan Bebas\r\nDari Korupsi, Kolusi Dan Nepotisme; UndangUndang Nomor 30 Tahun 2002 tentang Komisi\r\nPemberantasan Tindak Pindana Korupsi', 'SOFIAH MARDIANSYAH, ST, M.M', '198008102009022006', 'Kasubag UMPEGKEU', '08125222242', NULL, NULL, 'Admin OPD', '', '', '', 0, 0, NULL, 8, '2022-11-25 08:11:06', 235, '2026-08-21 09:17:44', 1, '2023-01-31 11:13:37'),
(25, 103, '2', 'Pencegahan dan Pemberantasan Penyalahgunaan dan Peredaran Gelap Narkotika (P4GN)', '-', 'P4GN adalah singkatan dari pencegahan\r\npemberantasan penyalahgunaan dan\r\nperedaran gelap narkotika, sebuah upaya yang\r\nterus menerus dilakukan oleh berbagai\r\nkomponen masyarakat dan Pemerintah serta\r\ndunia, usaha untuk mengindahkan masyarakat\r\ndari resiko penyalahgunaan adiksi narkotika,\r\npsikotropika dan zat adiktif lainnya.', 4, '2020', 'Website,', '-', 10, NULL, 2, 'di atas 100 pengguna', 7, NULL, 'inpresp4gn.bnn.go.id', '', '', '', '', '-', '1. Undang-Undang Nomor 35 Tahun 2009\r\ntentang Narkotika;\r\n2. Peraturan Presiden Nomor 47 Tahun 2019\r\ntentang Perubahan atas Peraturan\r\nPresiden Nomor 23 Tahun 2010 tentang Badan\r\nNarkotika Nasional;', 'Eko Haryanto, S.E', '197408072006041015', 'Analis Pengembangan SDM Aparatur', '08117779007', NULL, NULL, 'Administrator OPD', '', '', '', 0, 0, '', 8, '2022-11-25 08:17:18', 235, '2026-08-21 09:17:27', 11, '2025-03-10 10:25:57'),
(26, 103, '2', 'SIBIJAK', 'BPKP', 'SIBIJAK adalah Sistem Informasi Pembinaan\r\nJabatan Fungsional Auditor (JFA) yang\r\ndibangun oleh Pusat Pembinaan (Pusbin)\r\nJabatan Fungsional Auditor dalam rangka\r\npembinaan JFA di seluruh unit Aparat\r\nPengawasan Intern Pemerintah (APIP).', 2, '2021', 'Website,', '-', 10, NULL, 4, 'di atas 100 pengguna', 6, NULL, 'sibijak.bpkp.go.id', '', '', '', '', '-', 'Peraturan Pemerintah No. 11 Tahun 2017 pasal 9 ayat 3 tentang pengembangan jabatan fungsional', 'Adi Wijaya', '198202122007011008', 'Pengadministrasi Umum', '081364280026', NULL, NULL, 'Admin OPD', '', '', '', 0, 0, NULL, 8, '2022-11-25 08:19:23', 235, '2026-08-21 09:18:11', 1, '2023-01-31 11:14:33'),
(27, 122, '1', 'Website Portal DLH', '-', 'Website ini Sebagai upaya peningkatan\r\nkualitas pelayanan publik dalam rangka\r\npercepatan mewujudkan cita dan pencapaian\r\ntujuan pembangunan berkelanjutan yang\r\nmerupakan INOVASI dalam Menjaring,\r\nmendokumentasikan, mendiseminasikan, dan\r\nmempromosikan, guna Peningkatan Tata kelola\r\npenyelenggaraan pelayanan publik yang\r\nefektif, efisien, dan berkinerja tinggi.', 1, '2018', 'Website,', '-', 10, NULL, 2, 'di atas 100 pengguna', 2, NULL, 'dlh.tanjungpinangkota.goid', '', '', '', '', '-', '', 'Supriadi', '198312312005021006', 'Pengadministrasi Perkantoran', '0822-8658-1118', NULL, NULL, 'ADMINISTRATOR UTAMA ADALAH USER YANG\r\nMEMILIKI SEMUA FUNGSI BERJUMLAH 1 ORANG,\r\nADMINISTRASI PENGELOLA ADA USER YANG\r\nMENGELOLA PENGINPUTAN DATA PADA\r\nWEBSITES BERJUMLAH 1 ORANG YANG\r\nBERSTATUS PTT PADA DINAS LINGKUNGAN\r\nHIDUP', '', '', '', 0, 1, NULL, 8, '2022-11-25 08:22:04', 188, '2026-06-11 10:32:32', 1, '2023-01-31 11:13:26'),
(28, 103, '2', 'E-SAKIP', 'Menpan RB', 'Aplikasi Sebagai Upaya Peningkatan Kualitas\r\nPelaksanaan Akuntabilitas Kinerja Di\r\nLingkungan Instansi Pemerintah Untuk\r\nMeningkatkan Etibilitas Efesiensi Pengguna\r\nAnggaran', 3, '2019', 'Desktop,', '-', 1, NULL, 4, 'di atas 100 pengguna', 7, NULL, 'https://esr.menpan.go.id/', '', '', '', '', '-', '', 'Muhammad Najib, S.AP', '197809082007011021', 'PPUPD Ahli Muda', '0811704269', NULL, NULL, '', '', '', '', 0, 0, NULL, 8, '2022-11-25 08:25:05', 235, '2026-08-21 09:17:12', 1, '2023-01-31 11:11:34'),
(29, 103, '2', 'Sistem informasi Manajemen hasil Pengawasan (SIMHP)', 'Inspektorat Daerah Kota Tanjungpinang', 'Aplikasi Berbasis Teknologi Tang Digunakan\r\nSebagai Alat Pengelohan Data Hasil\r\nPengawasan Untuk Memudahkan penyajian\r\nInformasi Kepada Para Stake Holders', 3, '2010', 'Desktop,', '-', 10, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 3, NULL, '', '', '', '', '', '-', '', 'Deva Suzianti, S.Ap', '198701062025212055', 'Operator', '081277500881', NULL, NULL, '', '', '', '', 0, 0, NULL, 8, '2022-11-25 08:27:27', 235, '2026-08-21 09:18:26', 1, '2023-01-31 11:14:23'),
(30, 103, '2', 'Sistem Informasi Pemantauan Tindak Lanjut Temuan (SIPTL)', 'BPK RI', '2017', 3, '2017', 'Desktop,', '-', 10, NULL, 4, 'di atas 100 pengguna', 4, NULL, 'https://eauditee.bpk.go.id/', '', '', '', '', '-', '', 'Misnul Huda, S.Tr', '198809172015031002', 'Operator', '081374427446', NULL, NULL, '', '', '', '', 0, 0, NULL, 8, '2022-11-25 08:30:24', 235, '2026-08-21 09:18:38', 1, '2023-01-31 11:13:11'),
(31, 107, '2', 'SIMDA Keuangan', 'BPKP', 'Aplikasi pengelolaan Keuangan daerah yang prosesnya dimulai dari penganggaran, penatausahaan dan pelaporan', 3, '2013', 'Desktop,', 'Delphi', 2, NULL, 1, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, '', 'Ada', 'VPN', 'Sinergi SIKD', 'Semua OPD terintegrasi', '-', '', 'Sulaiman', '198004192009021002', 'Kasubid Pembidaan dan Evaluasi', '0819678040', NULL, NULL, '', '', NULL, '', 0, 1, 'tidak ada file spt', 8, '2022-11-25 08:34:20', NULL, NULL, 1, '2025-03-06 10:37:01'),
(32, 107, '2', 'SIMDA BMD', 'BPKP RI', 'Penatausahaan dan pelaporan barang milik daerah', 4, '2016', 'Desktop,', 'VB', 2, NULL, 1, 'di atas 100 pengguna', 1, NULL, '', 'Ada', '', '', '', '-', '', 'Ramadian, SE', '198008092005021004', 'Analis Kebijakan Ahli Muda', '081364235373', NULL, NULL, '', '', NULL, '', 0, 1, 'file spt tidak di unggah', 8, '2022-11-25 08:37:58', NULL, NULL, 1, '2025-03-06 10:37:22'),
(33, 101, '1', 'JDIH Kota Tanjungpinang', 'Diskominfo Kota Tanjungpinang', 'Jaringan Dokumentasi dan Informasi Hukum (JDIH) Kota Tanjungpinang merupakan aplikasi repositori produk hukum sendiri dan nasional yang disediakan oleh Pemerintah Kota Tanjungpinang.', 1, '2023', 'Website,', 'PHP', 1, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'jdih.tanjungpinangkota.go.id', 'Ada', '', '', '', 'Diskominfo Kota Tanjungpinang', 'Permenkumham Nomor 8 Tahun 2019 tentang Standar Pengelolaan Dokumen dan Informasi Hukum, Perwako Nomor 8 Tahun 2022 tentang Penyelenggaraan SPBE', 'SUGIARTO, SH, M.H.', '198903312015031002', 'Analis Hukum', '0811-6666-788', NULL, NULL, 'Admin Utama Dengan Hak Akses Tidak Terbatas', '', NULL, '', 1, 1, 'File SPT Belum tersedia', 11, '2023-01-09 21:27:52', NULL, NULL, 11, '2025-03-10 08:39:07'),
(34, 128, '2', 'Siap Tindak', 'Banyak Oentung Creative', 'Aplikasi Internal Penindakan, Penegakan dan Pelaporan bagi Anggota Satpol dalam Optimalisasi Peningkatan Kinerja dan Kedisplinan Pegawai', 2, '2022', 'Android,', 'Kotlin', 2, NULL, 2, 'di atas 100 pengguna', 1, NULL, 'siaptindak.satpolpp.tanjungpinangkota.go.id/', '', 'API', '', '', 'Banyak Oentung Creative', '', 'Ferry Andana, S. STP', '198605272006021001', 'Sekretaris', '+62 811-7007-017', NULL, NULL, '', '', '', '', 0, 0, '', 12, '2023-01-17 06:09:50', 238, '2026-10-06 11:40:52', 11, '2025-03-06 12:51:30'),
(35, 125, '1', 'Portal Open Data Tanjungpinang', 'Diskominfo Kota Tanjungpinang', 'Open Data Tanjungpinang adalah Portal Satu Data Pemerintah Kota Tanjungpinang yang menyediakan sumber data terbuka terkait Statistik Sektoral dan data lainnya yang merupakan data terbuka yang diproduksi oleh OPD di Lingkungan Pemerintah Kota Tanjungpinang', 1, '2022', 'Website,', 'Python / CKAN', 3, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'opendata.tanjungpinangkota.go.id', 'Ada', 'Rest API', '', '', 'Diskominfo Kota Tanjungpinang', 'Peraturan Presiden Nomor 39 Tahun 2019 tentang Satu Data Indonesia, Perwako 67 Tahun 2020 tentang Penyelenggaraan Satu Data Kota Tanjungpinang', 'Misnanten, S.Kom', '198004152009022005', 'Statistisi', '081364386678', NULL, 'resources/data_aplikasi/2022-07-20-030133_364499opendataH.png', 'Admin Utama, Pengguna OPD', 'Membuat Insight dari data yang telah dikumpulkan dan Menyajikannya sebagai Sistem Pendukung Keputusan Perencanaan Pembangunan Daerah', NULL, '', 1, 1, NULL, 11, '2023-01-18 13:09:53', 11, '2023-01-18 13:13:19', 1, '2023-01-31 11:14:11'),
(36, 125, '1', 'Integrated Content Manajemen Sistem (ICMS)', 'CV. LESTARINDO AGARA', 'Portal Pengelolaan Konten Untuk Website Dinas /Template Website Dinas di Lingkungan Pemerintah Kota Tanjungpinang', 3, '2022', 'Website,', 'PHP', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'icms.tanjungpinangkota.go.id', 'Ada', 'Rest API', 'Website OPD / Template Website Dinas Pemerintah Kota Tanjungpinang', 'Kelurahan Tanjungpinang Kota, Kelurahan Bukit Cermin, Dinas Sosial, Dinas Komunikasi dan Informatika', 'Diskominfo Kota Tanjungpinang', 'Perpres 95 Tahun 2018 Tentang Sistem Pemerintahan Berbasis Elektronik, Perwako 8 Tahun 2022 Tentang Penyelenggaraan Sistem Pemerintahan Berbasis Elektronik', 'Muhammad Taufik Hidayat, ST', '198602162008031001', 'Pranata Komputer Ahli Muda', '085272220227', NULL, NULL, 'Admin Pemko, Admin OPD, User Biasa', 'Manajemen Pengelolaan Konten Berita, Pengumuman, Event, dsb dalam 1 Aplikasi ICMS', NULL, '', 1, 1, NULL, 11, '2023-01-18 13:23:26', NULL, NULL, 1, '2023-01-31 11:11:40'),
(37, 125, '1', 'Tanjungpinang Aktual', 'Bappelitbang Kota Tanjungpinang', 'Tanjungpinang Aktual (Tanjak) adalah Aplikasi yang bertujuan sebagai Landing Page Informasi Kota Tanjungpinang. Aplikasi ini menyediakan informasi terintegrasi tentang Kota Tanjungpinang', 1, '2020', 'Website,Android,', 'React Native, Golang', 1, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'tanjak2.tanjungpinangkota.go.id', '', 'Rest API', 'Portal Berita Tanjungpinang (tanjungpinangkota.go.id) dalam menyediakan berita', '', 'Diskominfo Kota Tanjungpinang', '', 'Muhammad Taufik Hidayat, ST', '198602162008031001', 'Pranata Komputer Ahli Muda', '085272220227', NULL, 'resources/data_aplikasi/lgo_tanjak_copy.png', 'Admin Utama, Pengguna Biasa', 'Pengembangan Aplikasi menjadi Single Window Information System Kota Tanjungpinang', '', 'Diadakan oleh Bappelitbang Kota Tanjungpinang dan Diserahkan ke Dinas Komunikasi dan Informatika Kota Tanjungpinang', 0, 1, 'Link PlayStore Sudah Berganti', 11, '2023-01-18 13:29:53', 11, '2026-06-18 08:32:03', 11, '2026-03-12 13:00:35'),
(38, 125, '2', 'Website PPID Kota Tanjungpinang', 'Kementerian Dalam Negeri RI', 'Salah satu kewajiban badan publik yang dinyatakan dalam Undang-Undang No 14 Tahun 2008 adalah menyediakan Daftar Informasi Publik (DIP). DIP adalah catatan yang berisi keterangan sistematis tentang informasi publik yang berada dibawah penguasaan badan publik. Melalui aplikasi PPID Kemendagri yang digunakan ini, badan publik dapat mempublikasi informasi yang dikuasai yang selanjutnya tersusun sebagai DIP secara otomatis.', 1, '2022', 'Website,', 'PHP', 1, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'ppid.tanjungpinangkota.go.id', 'Ada', 'Integrasi Database', 'PPID Nasional', 'Kementerian Dalam Negeri', 'Kementerian Dalam Negeri RI', 'Undang-Undang No 14 Tahun 2008 tentang Keterbukaan Informasi Publik', 'Wulan Tri Wahyuni', '198504122010012029', 'Analis Kebijakan', '081270063199', NULL, NULL, 'Admin Pemko, Admin OPD, Pengguna Biasa', '', NULL, '', 1, 1, NULL, 11, '2023-01-18 13:35:16', NULL, NULL, 1, '2023-01-31 11:13:45'),
(39, 125, '1', 'Email Kedinasan Kota Tanjungpinang', 'Diskominfo Kota Tanjungpinang', 'Aplikasi Pengelolaan Email Kedinasan di Lingkungan Pemerintah Kota Tanjungpinang bagi OPD dan ASN di Lingkungan Pemerintah Kota Tanjungpinang', 3, '2018', 'Website,', 'Python', 10, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'mail.tanjungpinangkota.go.id', 'Ada', '', '', '', 'Diskominfo Kota Tanjungpinang', '', 'David Fherdinan Samsom Sihite, S.Kom', '199407062022021001', 'Pranata Komputer Ahli Pertama', '081216902746', NULL, NULL, 'Admin Utama, Pengguna Email', '', NULL, '', 1, 1, NULL, 11, '2023-01-18 13:39:38', NULL, NULL, 1, '2023-01-31 11:12:21'),
(40, 125, '1', 'Website Portal Pemerintah Kota Tanjungpinang', 'CV. ANUGRAH SEJAHTERA', 'Website Portal Pemerintah Kota Tanjungpinang', 1, '2018', 'Website,', 'Javascript', 1, NULL, 3, 'di atas 100 pengguna', 1, NULL, 'tanjungpinangkota.go.id', 'Ada', 'Rest API', 'Tanjak', 'Diskominfo', 'Diskominfo Kota Tanjungpinang', '', 'Aprinaldi, S.Kom', '198804102015031001', 'Pengawas Teknologi Informasi', '085228199298', NULL, NULL, 'Pengguna Biasa', '', NULL, '', 1, 1, NULL, 11, '2023-01-18 13:49:32', NULL, NULL, 1, '2023-01-31 11:13:58'),
(41, 112, '1', 'SICERDIK Tanjungpinang', 'CV. Maestro Duta Asia', 'Tujuan Aplikasi sicerdik ialah:\r\n1. Mempermudah Orang Tua, Sekolah  dan Dinas Pendidikan dalam  mengurus surat pindah sekolah\r\n2. Mengurangi penggunaan Kertas\r\n3. Menghemat biaya dan waktu, keamanan terjamin\r\n4. Surat terbukti resmi  dengan adanya TTE dan data bisa diakses  dalam jangka panjang', 1, '2022', 'Website,', 'ReactJS, ExpressJS, NodeJS', 5, NULL, 2, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'sicerdik.tanjungpinangkota.go.id', '', '-', '-', '-', 'CV. Maestro Duta Asia', '-', 'H. SAPARILLIS, S.Ag, M.Si', '197205132006041024', 'SEKRETARIS', '08127062215', 'resources/data_aplikasi/SPT_ADMIN_UTAMA_SICERDIK.jpeg', 'resources/data_aplikasi/LOGO_SICERDIK.png', 'Admin Utama adalah pengguna yag memiliki Memiliki semua hak akses, manajemen pengguna, manajemen setting aplikasi dan database.', 'Aplikasi dapat digunakan oleh semua sekolah negeri SD dan SMP di Tanjungpinang untuk membantu masyarakat memindahkan anaknya ke sekolah yang dituju', '', '-', 0, 0, NULL, 15, '2023-01-26 10:18:15', 116, '2026-08-19 12:23:04', 1, '2023-01-31 11:14:55'),
(42, 121, '1', 'Dagin Market Hub', 'CV ECOMODA BESTARI', 'Dagin Market Hub merupakan sebuah aplikasi pemasaran dan penjualan produk IKM melalui sebuah platform berbasis marketplace', 1, '2022', 'Website,Android,', 'VUE JES', 1, NULL, 3, 'di atas 100 pengguna', 1, NULL, 'dagin.markethub.tanjungpinangkota.go.id', 'Tidak Ada', '', '', '', 'CV ECOMODA BESTARI', '', 'Surya Dharma Sarno', '197311082006041015', 'Kepala Bidang Perindustrian', '089514455405', NULL, 'resources/data_aplikasi/DAGIN_Market_Hub.png', 'Admin utama adalah pengguna semua fitur dan yang melakukan pemeriksaan semua dokumen yang diupload UKM/IKM sebelum menjadi pelapak dalam marketplace tersebut.', '', NULL, '', 1, 0, 'cek 12 maret 2026', 19, '2023-02-27 12:05:38', 19, '2023-04-05 12:02:24', 11, '2026-03-12 11:29:45'),
(43, 119, '2', 'OSS', 'BKPM', 'Aplikasi Pelayanan Perizinan dan Non Perizinan', 1, '2018', 'Website,', 'INDONESIA', 2, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'oss.go.id', '', '', '', 'DINAS KESEHATAN,DINAS PENDIDIKAN,BPPRD', 'BKPM', 'PP NOMOR 5 TAHUN 2021 TENTANG PENYELENGGARAAN PERIZINAN BERBASIS RESIKO', 'SYAPRIL', '197704132007011016', 'PENYUSUN BARANG INVENTARIS', '08117044449', 'resources/data_aplikasi/pp_5_th_2021.jpeg', 'resources/data_aplikasi/logo.png', '', '', '', '', 0, 0, NULL, 24, '2023-02-28 14:44:00', 170, '2026-08-21 09:01:09', NULL, NULL),
(44, 119, '2', 'SICANTIK', 'KEMENTERIAN KOMUNIKASI INFORMASI', 'Layanan Perizinan dan Non Perizinan', 1, '2019', 'Website,', 'INDONESIA', 2, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'sicantik.go.id', '', '', 'TIDAK ADA', 'DINAS PENDIDIKAN,DINAS KESEHATAN,BPPRD', 'KEMENTERIAN KOMUNIKASI INFORMASI', 'PP NOMOR 5 TAHUN 2021', 'SYAPRIL', '197704132007011016', 'PENYUSUN BARANG INVENTARIS', '08117044449', 'resources/data_aplikasi/sicantik.jpeg', 'resources/data_aplikasi/sicantik.png', '', '', '', '', 0, 0, NULL, 24, '2023-02-28 14:51:13', 170, '2026-08-21 09:01:17', NULL, NULL),
(45, 119, '2', 'SIMBG', 'KEMENTRIAN PU', 'Pelayanan PBG', 1, '2019', 'Website,', 'INDONESI', 2, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'simbg.pu.go.id', '', '', 'TIDAK ADA', 'DINAS PEKERJAAN UMUM', 'KEMENTRIAN PU', 'PERMEN PUPR NOMOR 19 TAHUN 2018', 'SYAPRIL', '197704132007011016', 'PENYUSUN BARANG INVENTARIS', '08117044449', 'resources/data_aplikasi/ATURAN_PBG.jpeg', 'resources/data_aplikasi/PBG.png', '', '', '', '', 0, 0, NULL, 24, '2023-02-28 14:54:37', 170, '2026-08-21 09:01:23', NULL, NULL),
(46, 121, '1', 'Website Dinas Perdagangan dan Perindustrian Kota Tanjungpinang', 'Avicom Multimedia', 'Sebuah laman website yang berisikan tampilan informasi kegiatan dan informasi update harga bahan pokok hasil pemantauan', 1, '2017', 'Website,Android,Desktop,', 'PHP', 1, NULL, 2, 'di atas 100 pengguna', 1, NULL, 'disperdagin.tanjungpinangkota.go.id', '', '', 'Website Pemerintah Kota Tanjungpinang', '', 'Avicom Multimedia', '', 'REZKY DWI SAPUTRA, A.Md.', '198508302023211013', 'Pranata Komputer Terampil', '081374048885', 'resources/data_aplikasi/surat_tugas_admin_website_dinas_an_REZKY_DWI_SAPUTRA.pdf', NULL, 'Admin adalah penginput informasi dan berita', '', '', '', 0, 1, 'File logo dan File SPT belum diunggah', 19, '2023-02-28 16:21:44', 220, '2026-08-20 12:01:04', 115, '2025-03-06 14:40:01'),
(48, 108, '2', 'SIORMAS', 'Kementerian Dalam Negeri', 'Aplikasi pendataan organisasi masyarakat terpadu nasional', 2, '2023', 'Website,', 'Html', 10, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'https://siormas.kemendagri.go.id/polpum', 'Tidak Tahu', '', '', '', 'Kementerian Dalam Negeri', '', 'EFRIZAL, S.Kom', '196604052006041010', 'Analis Partai Politik', '081364210005', 'resources/data_aplikasi/IMG_20230303_085721.jpg', 'resources/data_aplikasi/Screenshot_2023-03-03-08-54-35-96.jpg', 'Operator daerah bertugas melakukn pendataan ormas di kesbngpol tanjungpinang', '', NULL, 'Aplikasi pusat yang digunakan operator daerah', 1, 0, 'Domain/sub domain tidak bisa di akses', 30, '2023-03-03 09:26:07', NULL, NULL, 115, '2025-03-06 11:38:52'),
(49, 108, '2', 'SRIKANDI', 'Kementerian Dalam Negeri', 'Penerbitan surat menyurat secara digital', 4, '2022', 'Website,', 'Html', 2, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'srikandi.arsip.go.id', '', 'REST API', 'Terintegrasi dengan data app Srikandi Kemendagri secara nasional', 'Diskominfo, Dinas Perpustakaan dan Kearsipan', 'Kementerian Dalam Negeri', '', 'RIA DESPITA, SH', '198104052006042017', 'Kasubbag Umum dan Kepegawaian', '081277430618', 'resources/data_aplikasi/Screenshot_2023-03-03-11-21-31-35.jpg', 'resources/data_aplikasi/IMG-20230303-WA0014.jpg', 'User', '', '', '', 0, 0, '', 30, '2023-03-03 11:25:22', 161, '2026-10-09 09:18:16', 115, '2025-03-06 11:40:45'),
(51, 155, '2', 'Sistem Kewaspadaan Dini dan Respon (SKDR) Surveilans', 'kementerian Kesehatan RI', 'Suatu sistem yang dapat memantau perkembangan trend penyakit menular potensial KLB/Wabah dari waktu ke waktu dan sinyal kepada pengelola program', 2, '2010', 'Website,Android,', '-', 10, NULL, 4, 'di atas 100 pengguna', 2, NULL, 'skdr.surveilans.org', '', '', '', 'Dinas Kesehatan Pengendalian Penduduk dan KB', 'Kementerian Kesehatan RI', '', 'Gotti Martein Abdinusa Batubara, AMK', '198605062015031003', 'Perawat Mahir', '085763106896', 'resources/data_aplikasi/ST_Aplikasi.pdf', 'resources/data_aplikasi/Screenshot_2023-03-06-12-00-43-40_40deb401b9ffe8e1df2f1cc5ba480b12.jpg', 'Pengguna', '', '', '', 0, 0, NULL, 40, '2023-03-06 12:03:32', 33, '2026-08-20 09:28:40', NULL, NULL),
(52, 155, '2', 'sigiziterpadu', 'KEMKES', '', 1, '2020', 'Website,', 'Indonesia', 1, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'sigiziterpadu.kemkes.go.id', '', '', '', '', 'KEMKES', '', 'Evita Widiyati, AMG', '198603312011022004', 'Pengelola Program Gizi', '082261612020', 'resources/data_aplikasi/ST_Aplikasi13.pdf', 'resources/data_aplikasi/LOGO_ePPGBM_page-00011.jpg', '', '', '', '', 0, 0, NULL, 42, '2023-03-06 12:48:04', 33, '2026-08-20 09:27:23', NULL, NULL),
(53, 155, '2', 'SITKO', 'Kementerian Kesehatan RI', 'Sistem Informasi Terpadu Kesehatan Kerja dan Olahraga', 2, '2018', 'Website,', 'Bahasa Indonesia', 1, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'kampungbugis@kesjaor.id', 'Tidak Tahu', 'REST API', '', '', 'Kementerian Kesehatan RI', '', 'DWI HERAWATY, S.KM', '198512042011012004', 'PEMBIMBING KES. KERJA AHLI MUDA', '081328374484', 'resources/data_aplikasi/ST_Aplikasi2.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-06_at_12_52_29_PM.jpeg', '', '', NULL, '', 1, 0, 'Bukan Aplikasi yang dimaksud', 33, '2023-03-06 12:54:49', NULL, NULL, 11, '2025-03-10 10:02:58'),
(54, 155, '2', 'RENBUT', 'KEMKES RI', 'Perencanaan Kebutuhan Sumber daya Kesehatan', 1, '2016', 'Website,', 'Bahasa Indonesia', 2, NULL, 4, 'di atas 100 pengguna', 6, NULL, 'renbut.kemkes.go.id', '', '', 'SISDMK', '', 'Dinkes Provinsi Kepri', '', 'ERMILA DEVI ZAHRA,S.Kep', '197412031998032003', 'Perawat Ahli Muda', '085236920974', 'resources/data_aplikasi/WhatsApp_Image_2023-03-06_at_12_24_21.jpeg', 'resources/data_aplikasi/WhatsApp_Image_2023-03-06_at_12_23_55.jpeg', '', '', '', '', 0, 0, NULL, 43, '2023-03-06 13:02:55', 33, '2026-08-20 09:24:49', NULL, NULL),
(55, 155, '2', 'SI-SDMK', 'KEMKES RI', 'Sistem Informasi Sumber daya manusia Kesehatan', 1, '2016', 'Website,', 'Bahasa Indonesia', 2, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'sisdmk.kemkes.go.id', '', '', 'RENBUT', '', 'Dinkes Provinsi Kepri', '', 'ERMILA DEVI ZAHRA,S.Kep', '197412031998032003', 'Perawat Ahli Muda', '085236920974', 'resources/data_aplikasi/WhatsApp_Image_2023-03-06_at_12_24_211.jpeg', 'resources/data_aplikasi/WhatsApp_Image_2023-03-06_at_13_21_26.jpeg', '', '', '', '', 0, 0, NULL, 43, '2023-03-06 13:24:13', 33, '2026-08-20 09:27:33', NULL, NULL),
(56, 155, '2', 'E-Formasi Sibangjangkri', 'KEMKES RI', 'Penghitungan Formasi Jabfung Kesehatan sistem informasi pengembangan jabatan Fungsional kesehatan', 1, '2021', 'Website,', 'Bahasa Indonesia', 2, NULL, 4, 'di atas 100 pengguna', 7, NULL, 'sibangjangkri.kemkes.go.id', 'Ada', '', 'Renbut', '', 'Dinkes Provinsi Kepri', '', 'ERMILA DEVI ZAHRA,S.Kep', '197412031998032003', 'Perawat Ahli Muda', '085236920974', 'resources/data_aplikasi/WhatsApp_Image_2023-03-06_at_12_24_212.jpeg', 'resources/data_aplikasi/WhatsApp_Image_2023-03-06_at_13_21_26_(1).jpeg', '', '', NULL, '', 1, 0, 'Website Error', 43, '2023-03-06 13:34:30', NULL, NULL, 11, '2025-03-10 14:41:41'),
(57, 105, '1', 'Website BKPSDM Kota Tanjungpinang', 'BKPSDM Kota Tanjungpinang', 'Website ini merupakan sarana publikasi kegiatan dan informasi serta layanan daring BKPSDM Kota Tanjungpinang', 1, '2022', 'Website,', 'PHP', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 2, NULL, 'https://bkpsdm.tanjungpinangkota.go.id/', 'Ada', '', 'Terintegrasi dengan aplikasi OSS BKPSDM', 'BKPSDM Kota Tanjungpinang', 'BKPSDM Kota Tanjungpinang', 'Peraturan Presiden Republik Indonesia Nomor 95 Tahun 2018 tentang Sistem Pemerintahan Berbasis Elektronik', 'Muhammad Abduh, A.Md', '199003192022021001', 'Pengelola SIMPEG', '085272224626', 'resources/data_aplikasi/SPT_APLIKASI_BKPSDM2.pdf', 'resources/data_aplikasi/tanjungpinang.png', 'Administrator Utama adalah user yang\r\nmemiliki seluruh fungsi pada website, dan Administrator Bidang adalah user yang memiliki seluruh fungsi pada bidang', 'Website BKPSDM Kota Tanjungpinang menjadi website utama dari seluruh aplikasi berbasis website BKPSDM Kota Tanjungpinang', NULL, '', 1, 1, 'Harap mengupdate versi PHP', 35, '2023-03-07 10:27:28', 35, '2023-03-15 15:11:08', 11, '2025-03-06 11:47:14'),
(58, 105, '1', 'APEKEJE', 'BKPSDM Kota Tanjungpinang', 'Aplikasi Penilaian Kinerja Elektronik merupakan aplikasi yang berfungsi merekam data aktivitas setiap PNS di BKPSDM Kota Tanjungpinang, sebagai dasar pembayaran Tambahan Penghasilan Pegawai', 4, '2020', 'Website,', 'PHP', 1, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'http://tanjungpinangkota.go.id:1608', 'Tidak Ada', '', '-', 'BKPSDM Kota Tanjungpinang', 'BKPSDM Kota Tanjungpinang', 'Peraturan Presiden Republik Indonesia Nomor 95 Tahun 2018 tentang Sistem Pemerintahan Berbasis Elektronik', 'Yofriwansyah, S.Psi', '198206132011011003', 'Analis Kepegawaian Ahli Muda', '081328248665', 'resources/data_aplikasi/SPT_APLIKASI_BKPSDM.pdf', 'resources/data_aplikasi/goldenwood2.png', 'Administrator Utama adalah user yang\r\nmemiliki seluruh fungsi pada aplikasi, Administrator Biasa adalah user yang memiliki fungsi standar', '-', NULL, '-', 1, 0, 'Website tidak dapat diakses', 35, '2023-03-07 11:27:39', 35, '2023-03-15 15:08:00', 11, '2025-03-06 11:37:11'),
(59, 155, '2', 'CMS', 'Bank Riau Kepri Syariah', '', 1, '2020', 'Website,', 'Indonesia', 1, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'https://cms.brksyariah.co.id/CMSBRK/login', '', '', '', '', 'Bank Riau Kepri Syariah', '', 'Ika Mulyani, Amk', '198311142009022006', 'Bendaharan Pengeluaran Pembantu', '085263725912', 'resources/data_aplikasi/ST_Aplikasi9.pdf', 'resources/data_aplikasi/CMS_page-0001.jpg', '', '', '', '', 0, 0, 'Tambahkan deskripsi Aplikasi', 48, '2023-03-07 14:01:45', 33, '2026-08-20 09:18:59', 11, '2025-03-10 14:32:29'),
(60, 155, '2', 'SIPD KEUANGAN', 'KEMENDAGRI', '', 1, '2022', 'Website,', 'Indonesia', 1, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'https://tanjungpinang.sipd.kemendagri.go.id/siap/login', '', '', '', '', 'KEMENDAGRI', '', 'Ika Mulyani, Amk', '198311142009022006', 'Bendaharan Pengeluaran Pembantu', '085263725912', 'resources/data_aplikasi/ST_Aplikasi8.pdf', 'resources/data_aplikasi/SIPD_KEUANGAN_page-0001.jpg', '', '', '', '', 0, 0, NULL, 48, '2023-03-07 14:06:59', 33, '2026-08-20 09:26:12', NULL, NULL),
(61, 155, '2', 'LPSE TANJUNGPINANG', 'LPSE Kota Tanjungpinang', '', 1, '2020', 'Website,', 'Indonesia', 1, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'lpse.tanjungpinangkota.go.id/eproc4', '', '', '', '', 'LPSE Kota Tanjungpinang', '', 'Ika Mulyani, Amk', '198311142009022006', 'Bendaharan Pengeluaran Pembantu', '085263725912', 'resources/data_aplikasi/ST_Aplikasi10.pdf', 'resources/data_aplikasi/LPSE_page-0001.jpg', '', '', '', '', 0, 0, NULL, 48, '2023-03-07 14:25:55', 33, '2026-08-20 09:24:36', NULL, NULL),
(62, 155, '2', 'SIPD PERENCANAAN', 'KEMENDAGRI', '', 1, '2020', 'Website,', 'Indonesia', 1, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'tanjungpinang.sipd.kemendagri.go.id/daerah', '', '', '', '', 'KEMENDAGRI', '', 'Ika Mulyani, Amk', '198311142009022006', 'Bendaharan Pengeluaran Pembantu', '085263725912', 'resources/data_aplikasi/ST_Aplikasi11.pdf', 'resources/data_aplikasi/sipd_perencanaan_(2)_page-0001.jpg', '', '', '', '', 0, 0, NULL, 48, '2023-03-07 14:29:04', 33, '2026-08-20 09:26:01', NULL, NULL),
(63, 155, '2', 'SIRUP', 'LKPP', '', 1, '2020', 'Website,', 'Indonesia', 1, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'sirup.lkpp.go.id/sirup', '', '', '', '', 'LKPP', '', 'Ika Mulyani, Amk', '198311142009022006', 'Bendaharan Pengeluaran Pembantu', '085263725912', 'resources/data_aplikasi/ST_Aplikasi12.pdf', 'resources/data_aplikasi/SIRUP_page-0001.jpg', '', '', '', '', 0, 0, NULL, 48, '2023-03-07 14:33:49', 33, '2026-08-20 09:29:38', NULL, NULL),
(64, 155, '2', 'SILANTOR', 'KEMENKES', '', 1, '2020', 'Website,', 'INDONESIA', 1, NULL, 1, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'https://silantor.kemkes.go.id/', '', '', '', '', 'KEMENKES', '', 'FARIDA SRI RAHAYU', '199102012015032001', 'PENGELOLA PROGRAM DBD', '081268605554', 'resources/data_aplikasi/ST_Aplikasi14.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-08_at_15_30_40.jpeg', '', '', '', '', 0, 0, NULL, 55, '2023-03-08 15:34:38', 33, '2026-08-20 09:26:39', NULL, NULL),
(66, 155, '2', 'ESISMAIL V.3', 'KEMENKES', '', 2, '2023', 'Website,', 'INDONESIA', 1, NULL, 1, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'https://sismal.kemkes.go.id/landing', '', '', '', '', 'KEMENKES', '', 'FAJAR RIYADI SAPUTRO', '198403092006041006', 'PENGELOLA PROGRAM MALARIA', '082283465776', 'resources/data_aplikasi/ST_Aplikasi16.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-08_at_15_40_041.jpeg', '', '', '', '', 0, 0, '', 44, '2023-03-08 15:44:11', 33, '2026-08-20 09:21:28', 11, '2025-03-10 15:29:44'),
(67, 105, '1', 'e-ROBKOP', 'CV. Dias Klapertama', 'Elektronik Rencana Formasi Berbasis Kompetensi (eROBKOP) melayani penyusunan ANJABABK, pengusulan eformasi dan rekomendasi jabatan berdasarkan kompetensi pegawai.', 3, '2023', 'Website,', 'HTML5, JS, CSS3, PHP7, Ajax/Fetch.', 1, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'http://tanjungpinangkota.go.id:1608/eformasi/', 'Tidak Tahu', '', '', '', 'CV. Dias Klapertama', '1. PP 11 Tahun 2017 tentang Manajemen ASN\r\n2. Permenpan RB nomor 03 Tahun 2020 tentang Manajemen Talenta\r\n3. Permenpan RB Nomor 40 Tahun 2018 tentang Pedoman Pelaksanaan Sistem Merit\r\n5. Permenpan RB nomor 45 Tahun 2022 tentang Nomenklatur Jabatan Pelaksana', 'Rizki', '198803022015031002', 'Pengelola Bahan Perencanaan', '081275038222', 'resources/data_aplikasi/SPT_APlikasi.pdf', 'resources/data_aplikasi/ROBCOP2.png', '- Super Admin = 1 Orang (semua fitur)\r\n- Admin BKPSDM = 1 Orang (Verifikasi berkas)\r\n- Admin Ortal = 1 Orang (Verifikasi ANJABABK dan Formasi)\r\n- Admin OPD = Creator Jabatan, Formasi, dan perpindahan Pegawai\r\n- user = Para Pegawai memutakhirkan data kepegawaiannya', 'eROBKOP adalah aplikasi dasar yang pengembangannya akan menuju pada sistem manajemen talenta, perhitungan skoring kompetensi, potensi, serta kualifikasi pegawai dan jabatan, tool assesment online untuk menentukan potensi ASN, dan analisis perencanaan keuangan terhadap jumlah formasi yang akan diusulkan.', NULL, '', 1, 0, '- Website tidak dapat diakses, \r\n- Mohon mengganti pic', 54, '2023-03-08 19:59:21', NULL, NULL, 11, '2025-03-06 11:38:40'),
(68, 154, '2', 'Ekohort', 'Kemenkes', 'E kohort Kesehatan Ibu dan Anak.  E kohort Kesehatan Reproduksi', 2, '2022', 'Website,', 'html', 1, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'ekohort.kemkes.go.id', '', '', '', '', 'Kemenkes', '', 'Hj. Farida Tulfaraid, S.Sos., SST', '19700221 199102 2 00', 'Bidan Madya', '+62 821-7077-8800', 'resources/data_aplikasi/sk_pengelola_program.pdf', 'resources/data_aplikasi/logo_kemenkes.png', '', '', '', '', 0, 0, '', 38, '2023-03-09 09:28:32', 225, '2026-08-20 10:36:53', 11, '2025-03-10 15:27:50');
INSERT INTO `data_aplikasi_2026` (`id_aplikasi`, `id_opd`, `asal_aplikasi`, `nama_aplikasi`, `penyedia_aplikasi`, `deskripsi_aplikasi`, `id_jenis_layanan`, `tahun`, `basis_aplikasi`, `bahasa_pemrograman`, `id_dbms`, `dbms_lainnya`, `id_lokasi_hosting`, `jumlah_pengguna`, `id_frekuensi_penggunaan`, `frekuensi_penggunaan_lainnya`, `nama_domain`, `ketersediaan_integrasi`, `metode_integrasi`, `aplikasi_terintegrasi`, `opd_terintegrasi`, `pengembang_aplikasi`, `regulasi`, `pic_aplikasi`, `nip_pic`, `jabatan_pic`, `no_telp`, `file_spt`, `file_logo`, `level_privileges`, `rencana_aplikasi`, `proses_bisnis`, `keterangan`, `status`, `is_active`, `catatan`, `created_by`, `created_on`, `changed_by`, `changed_on`, `approved_by`, `approved_on`) VALUES
(69, 154, '2', 'Siga BKKBN', 'BKKBN', 'aplikasi sistem informasi keluarga dari BKKBN yang telah mengintegrasikan sistem informasi kependudukan dengan Basis Data Keluarga Indonesia', 4, '2022', 'Website,', 'HTML', 1, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'newsiga.bkkbn.go.id', '', '', '', '', 'BKKBN', '', 'Hj. Farida Tulfaraid, S.Sos., SST', '19700221 199102 2 00', 'Bidan Madya', '+62 821-7077-8800', 'resources/data_aplikasi/sk_pengelola_program1.pdf', 'resources/data_aplikasi/LogoBKKBN.png', '', '', '', '', 0, 0, NULL, 38, '2023-03-09 09:32:17', 225, '2026-08-20 10:37:34', NULL, NULL),
(70, 154, '2', 'ePPGBM', 'kemenkes', 'Sistem informasi gizi terpadu (SIGIZI TERPADU) merupakan bagian besar dari sistem yang digunakan untuk mencatat dan melaporkan data gizi baik data sasaran tiap individu, status gizi, cakupan kinerja dan juga data PMT yang bersumber dari APBN maupun dari APBD.', 2, '2020', 'Website,', 'html', 1, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'sigiziterpadu.kemkes.go.id', '', '', '', '', 'kemenkes', '', 'Ilmaryefa, SKM', '19800302 200803 2 00', 'Analis Gizi', '081372310345', 'resources/data_aplikasi/sk_pengelola_program2.pdf', 'resources/data_aplikasi/logo_kemenkes1.png', '', '', '', '', 0, 0, '', 38, '2023-03-09 09:38:00', 225, '2026-08-20 10:37:01', 11, '2025-03-10 15:28:15'),
(71, 154, '2', 'Siskohatkes', 'kemenkes', 'Siskohatkes merupakan satuan rangkaian komponen perangkat keras dan perangkat lunak yang berguna untuk kegiatan pengelolaan data kesehatan Jemaah Haji.', 4, '2019', 'Website,', 'html', 1, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'siskohatkes.kemkes.go.id', '', '', '', '', 'kemenkes', '', 'Fitri Susilawati,S.Kep.Ns', '19830704 201001 2 00', 'Perawar Ahli Muda', '082170471983', 'resources/data_aplikasi/sk_pengelola_program3.pdf', 'resources/data_aplikasi/logo_kemenkes2.png', '', '', '', '', 0, 0, NULL, 38, '2023-03-09 09:42:07', 225, '2026-08-20 10:50:40', NULL, NULL),
(72, 154, '2', 'Simona', 'kemenkes', 'Aplikasi SIMONA apotek merupakan aplikasi berbasis web yang berfungsi sebagai sistem pembinaan serta monitoring untuk rumah sakit, apotek, toko obat, apotek, dan klinik yang merupakan bagian dari Fasilitas Pelayanan Kefarmasian', 4, '2023', 'Website,', 'html', 1, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'simona.kemkes.go.id', '', '', '', '', 'kemenkes', '', 'Pinni Maya Nita, S. Farm,Apt', '19900521 201503 2 00', 'Apoteker Ahli Muda', '085272222525', 'resources/data_aplikasi/logo_kemenkes3.png', 'resources/data_aplikasi/logo_kemenkes4.png', '', '', '', '', 0, 0, NULL, 38, '2023-03-09 09:47:42', 225, '2026-08-20 10:50:25', NULL, NULL),
(73, 154, '2', 'Asik Sehat IndonesiaKu', 'kemenkes', 'ASIK atau Aplikasi Sehat IndonesiaKu adalah salah satu aplikasi yang diluncurkan Kemenkes RI melalui Digital Transformation Office untuk memudahkan dalam pencatatan imunisasi pada anak.', 4, '2021', 'Website,', 'html', 1, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 2, NULL, 'sehatindonesiaku.kemkes.go.id', '', '', '', '', 'kemenkes', '', 'Sri Kandi Harsi, A.Md.keb', '19940829 201902 2 01', 'Bidan Pelaksana', '+62 812-4785-5102', 'resources/data_aplikasi/sk_pengelola_program4.pdf', 'resources/data_aplikasi/logo_kemenkes5.png', '', '', '', '', 0, 0, '', 38, '2023-03-09 09:54:19', 225, '2026-08-20 10:48:36', 11, '2025-03-10 14:29:27'),
(74, 154, '2', 'Erenggar Bok Salur', 'kemenkes', 'E-renggar merupakan perangkat lunak berbasis online yang dimiliki oleh Kementerian Kesehatan untuk menunjang fungsi perencanaan, penganggaran dan monitoring evaluasi dalam 1 perangkat lunak yang terpadu.', 2, '2023', 'Website,', 'html', 1, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'e-renggar-boksalur.kemkes.go.id', '', '', '', '', 'kemenkes', '', 'Dahrima Septiyana, A.Md.Keb', '19930909 201902 2 00', 'Bidan Pelaksana', '085226014988', 'resources/data_aplikasi/sk_pengelola_program5.pdf', 'resources/data_aplikasi/logo_kemenkes6.png', '', '', '', '', 0, 0, '', 38, '2023-03-09 09:58:09', 225, '2026-08-20 10:37:13', 11, '2025-03-10 15:28:44'),
(75, 154, '2', 'Aplikasi Keluarga Sehat Versi 2.0', 'Kemenkes', 'Aplikasi resmi yang dapat digunakan untuk mendukung Program Indonesia Sehat dengan Pendekatan Keluarga (PIS-PK) dalam hal pendataan keluarga sehat melalui kunjungan rumah.', 4, '2015', 'Website,', 'HTML', 1, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'keluargasehat.kemkes.go.id', 'Tidak Tahu', '', '', '', 'Kemenkes', '', 'dr. Sejahtera Surbakti', '19881119 201503 1 00', 'Dokter Ahli Muda', '085216271782', 'resources/data_aplikasi/sk_pengelola_program6.pdf', 'resources/data_aplikasi/keluarga_sehat.png', '', '', NULL, '', 1, 0, 'Situs ini dalam masa pemeliharaan', 38, '2023-03-09 10:07:18', 38, '2023-03-09 10:07:32', 11, '2025-03-10 14:27:17'),
(77, 154, '2', 'SIPD', 'KEMENDAGRI', 'Sistem Informasi Pemerintahan Daerah.', 4, '2020', 'Website,', 'HTML', 1, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'sipd.kemendagri.go.id', '', '', '', '', 'KEMENDAGRI', '', 'Marlinda', '19830517 200604 2 01', 'Bendahara', '+62 813-6464-9631', 'resources/data_aplikasi/SK_BENDAHARA_PENERIMAAN_-_PENGELUARAN_2023_11zon1.pdf', 'resources/data_aplikasi/sipd1.png', '', '', '', '', 0, 0, NULL, 38, '2023-03-09 10:22:00', 225, '2026-08-20 10:50:56', NULL, NULL),
(78, 154, '2', 'CMS BRK', 'Bank Riau Kepri', 'Aplikasi Keuangan Bank Riau Kepri', 4, '2021', 'Website,', 'html', 1, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'cms.brksyariah.co.id', '', '', '', '', 'Bank Riau Kepri', '', 'Marlinda, AMK', '19830517 200604 2 01', 'Bendahara', '+62 813-6464-9631', 'resources/data_aplikasi/SK_BENDAHARA_PENERIMAAN_-_PENGELUARAN_2023_11zon.pdf', 'resources/data_aplikasi/brk_syariah.png', '', '', '', '', 0, 0, '', 38, '2023-03-09 10:27:44', 225, '2026-08-20 10:36:33', 11, '2025-03-10 14:33:35'),
(79, 154, '2', 'Silantor', 'kemenkes', 'Silantor merupakan sistem yang dikembangkan dalam rangka kewaspadaan dini terhadap penyakit tular vektor dan zoonotik termasuk DBD', 4, '2021', 'Website,', 'html', 1, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 2, NULL, 'silantor.kemkes.go.id', '', '', '', '', 'kemenkes', '', 'Iin Ade Adriyani, A.Md.KL', '19930711 201902 2 00', 'Sanitarian Terampil', '082385713351', 'resources/data_aplikasi/sk_pengelola_program10.pdf', 'resources/data_aplikasi/logo_kemenkes7.png', '', '', '', '', 0, 0, NULL, 38, '2023-03-09 10:30:59', 225, '2026-08-20 10:49:29', NULL, NULL),
(80, 154, '2', 'Aspak', 'kemenkes', 'aplikasi berbasis web yang menghimpun data dan menyajikan informasi mengenai Sarana, Prasarana, dan Alat Kesehatan pada Fasilitas Pelayanan Kesehatan.', 4, '2019', 'Website,', 'html', 1, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'aspak.kemkes.go.id', '', '', '', '', 'kemenkes', '', 'Shanti Dewi Hardiyanti, A.md.Keb', '19930209 201902 2 00', 'Bidan Pelaksana', '087801364979', 'resources/data_aplikasi/sk_pengelola_program11.pdf', 'resources/data_aplikasi/logo_kemenkes8.png', '', '', '', '', 0, 0, '', 38, '2023-03-09 10:34:27', 225, '2026-08-20 10:36:13', 11, '2025-03-10 14:30:40'),
(81, 154, '2', 'Skdr', 'kemenkes', 'Sistem Kewaspadaan Dini dan Respon adalah suatu sistem yang dapat memantau perkembangan trend suatu penyakit menular potensial KLB/wabah dari waktu ke waktu (periode mingguan) dan memberikan sinyal peringatan (alert) kepada pengelola program bila kasus tersebut melebihi nilai ambang batasnya sehingga mendorong program untuk melakukan respons. Alert atau signal yang muncul pada system bukan berarti sudah terjadi KLB tetapi merupakan pra-KLB yang mengharuskan petugas untuk melakukan respons cepat agar tidak terjadi KLB.', 4, '2023', 'Website,', 'html', 1, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'skdr.surveilans.org', '', '', '', '', 'kemenkes', '', 'Yeni Wahyuningsih, AMK', '19910803 202202 2 00', 'Perawat Pelaksana', '08562283032', 'resources/data_aplikasi/sk_pengelola_program12.pdf', 'resources/data_aplikasi/logo_kemenkes9.png', '', '', '', '', 0, 0, NULL, 38, '2023-03-09 10:37:28', 225, '2026-08-20 10:49:43', NULL, NULL),
(82, 154, '2', 'Pcare BPJS', 'Bpjs Kesehatan', 'Pelayanan Pasien dan vaksinasi', 1, '2015', 'Website,', 'HTML', 1, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'bpjs-kesehatan.go.id', '', '', '', '', 'Bpjs Kesehatan', '', 'dr. Muhammad Al Ghiffari', '19851108 201503 1 00', 'Kepala Puskesmas', '085375990900', 'resources/data_aplikasi/sk_pengelola_program13.pdf', 'resources/data_aplikasi/Logo_BPJS.png', '', '', '', '', 0, 0, NULL, 38, '2023-03-09 10:53:34', 225, '2026-08-20 10:37:24', NULL, NULL),
(83, 154, '2', 'e-Monev TFU', 'kemenkes', 'Untuk membantu dalam pemantauan dan evaluasi terhadap hasil pengawasan dan pembinaan tempat-tempat umum, diuperlukan data dan informasi terkait tempat-tempat umum secara detail, tempat waktu, maka dikembangkan Sistem Informasi Ekektronik Monitoring dan Informasi Tempatdan Fasilitas Umum (E-Monev-TFU).', 4, '2022', 'Website,', 'HTML', 1, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'https://e-satu.kemkes.go.id/', '', '', '', '', 'kemenkes', '', 'Mirakusumadewi, AMKL', '19790623 201101 2 00', 'Sanitarian Pelaksana Lanjutan', '+62 852-6639-5721', 'resources/data_aplikasi/sk_pengelola_program14.pdf', 'resources/data_aplikasi/logo_kemenkes10.png', '', '', '', '', 0, 0, '', 38, '2023-03-09 11:27:06', 225, '2026-08-20 10:36:43', 11, '2025-03-10 15:24:20'),
(84, 154, '2', 'SITB', 'kemenkes', 'Aplikasi Penyakit TB-PARU', 4, '2020', 'Website,', 'HTML', 1, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'sitb.kemkes.go.id/sitb/', '', '', '', '', 'kemenkes', '', 'Ela Afrida,AMd.Kep', '19900411 201101 2 00', 'Perawat Pelaksana Lanjutan', '085272224144', 'resources/data_aplikasi/sk_pengelola_program16.pdf', 'resources/data_aplikasi/logo_kemenkes11.png', '', '', '', '', 0, 0, NULL, 38, '2023-03-09 11:37:55', 225, '2026-08-20 10:50:10', NULL, NULL),
(85, 154, '2', 'Sikelim', 'kemenkes', 'Sistem Informasi Kelola Limbah Medis', 4, '2022', 'Website,', 'HTML', 1, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'sikelimkemkes.id', '', '', '', '', 'kemenkes', '', 'Mirakusumadewi, AMKL', '19790623 201101 2 00', 'Sanitarian Pelaksana Lanjutan', '085266395721', 'resources/data_aplikasi/sk_pengelola_program17.pdf', 'resources/data_aplikasi/logo_kemenkes12.png', '', '', '', '', 0, 0, NULL, 38, '2023-03-09 11:46:15', 225, '2026-08-20 10:48:55', NULL, NULL),
(86, 154, '2', 'TPM', 'kemenkes', 'laik sehat', 4, '2022', 'Website,', 'html', 1, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'tpm.kemkes.go.id/rbi/web/', '', '', '', '', 'kemenkes', '', 'Mirakusumadewi, AMKL', '19790623 201101 2 00', 'Sanitarian Pelaksana Lanjutan', '085266395721', 'resources/data_aplikasi/sk_pengelola_program18.pdf', 'resources/data_aplikasi/LOGO_TPM.png', '', '', '', '', 0, 0, NULL, 38, '2023-03-09 11:52:02', 225, '2026-08-20 10:49:15', NULL, NULL),
(87, 154, '2', 'Sihepi', 'kemenkes', 'SISTEM INFORMASI HEPATITIS DAN INFEKSI SALURAN PENCERNAAN', 4, '2015', 'Website,', 'html', 1, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'https://sihepi.kemkes.go.id/', '', '', '', '', 'kemenkes', '', 'Yulia Sumanti, S.Tr.Keb', '19730730 199302 2 00', 'Bidan Pelaksana Lanjutan', '+62 813-6410-2686', 'resources/data_aplikasi/sk_pengelola_program19.pdf', 'resources/data_aplikasi/logo_kemenkes13.png', '', '', '', '', 0, 0, NULL, 38, '2023-03-09 11:55:04', 225, '2026-08-20 10:48:29', NULL, NULL),
(88, 129, '1', 'SIAPI', 'Google (APP Sheet)', 'Laporan Kebakaran dan Non Kebakaran', 2, '2022', 'Android,iOS,Desktop,', 'Open Sourece', 9, NULL, 2, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'https://www.appsheet.com/newshortcut/d6cb992e-999a-48ec-9280-c6e18f8b0d0e', '', 'API', 'Whatsapp', 'Tidak Ada', 'Google (APP Sheet)', 'PERATURAN MENTERI DALAM NEGERI REPUBLIK INDONESIA\r\nNOMOR 114 TAHUN 2018\r\nTENTANG\r\nSTANDAR TEKNIS PELAYANAN DASAR PADA STANDAR PELAYANAN MINIMAL\r\nSUB URUSAN KEBAKARAN DAERAH KABUPATEN/KOTA', 'Firdaus', '197701292006041005', 'Pranata Pemadam Kebakaran', '08126887687', 'resources/data_aplikasi/PIC_SIPA_DINAS_PEMADAM_KEBAKARAN_DAN_PENYELAMATAN_KOTA_TANJUNGPINANG.pdf', 'resources/data_aplikasi/1000873499.jpg', 'Admin utama adahalah hak akses untuk semua fitur dan user adalah pengguna App Laporan Insidenti', '', '', '', 0, 1, '', 57, '2023-03-09 12:18:39', 57, '2026-08-21 09:22:55', 11, '2025-03-06 12:55:26'),
(89, 155, '2', 'SITB', 'Kemenkes Republik Indonesia', 'Sistem informasi Tuberkulosis yang digunakan untuk pengelolaan data penanggulangan TBC sensitif maupun resisten dalam jangkauan skalabilitas jumlah dan akses oleh struktur administrasi wilayah dan fasilitas pelayanan kesehatan di seluruh Indonesia, yang dapat diakses melalui mekanisme sistem online dan offline', 2, '2018', 'Website,Android,', 'tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'http://www.sitb.id/sitb/manual/#', '', '', 'SIMRS; Wifi TB; BPJS; ASDK; SITK', 'DINAS KESEHATAN PENGENDALIAN PENDUDUK DAN KELUARGA BERENCANA', 'Kemenkes Republik Indonesia', '', 'SUNYOTO WAHYU UTOMO', '198504112015031002', 'PERAWAT MAHIR', '081364993142', 'resources/data_aplikasi/ST_Aplikasi17.pdf', 'resources/data_aplikasi/Screenshot_2023-03-09-13-34-37-873_com_android_chrome.jpg', 'Pengguna yang memiliki akses adalah admin utama (Sunyoto Wahyu Utomo), Analis (Iis Istianah), dan Apotik (Rika Jayanti Putri)', 'aplikasi online yang dapat digunakan oleh petugas layanan kesehatan Tuberkulosis di puskesmas untuk penginputan data pasien, follow up terhadap pasien dan pencatatan logistik', '', '', 0, 0, NULL, 46, '2023-03-09 14:29:27', 33, '2026-08-20 09:27:45', NULL, NULL),
(90, 155, '2', 'ASPAK', 'Kemenkes Republik Indonesia', 'suatu aplikasi berbasis web yang menghimpun data dan menyajikan \r\n informasi mengenai Sarana, Prasarana, dan Alat  Kesehatan pada Fasilitas Pelayanan Kesehatan', 2, '2018', 'Website,Android,', 'tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'https://aspak.kemkes.go.id/aplikasi/#', '', '', '', '', 'Kemenkes Republik Indonesia', '', 'SUNYOTO WAHYU UTOMO', '198504112015031002', 'PERAWAT MAHIR', '081364993142', 'resources/data_aplikasi/ST_Aplikasi19.pdf', 'resources/data_aplikasi/CamScanner_03-09-2023_14_38.jpg', '', '', '', '', 0, 0, '', 46, '2023-03-09 14:41:34', 33, '2026-08-20 09:14:45', 11, '2025-03-10 14:30:55'),
(91, 155, '2', 'SISKOHATKES SHAR,I', 'Kemenkes Republik Indonesia', 'sistem Informasi terintegrasi bagi petugas kesehatan untuk menunjang kegiatan pra-operasional, operasional, dan pasca operasional pelayanan kesehatan jemaah haji indonesia', 2, '2020', 'Website,Android,', 'tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 8, NULL, 'https://siskohatkes.kemkes.go.id/authenticate/login', '', '', '', '', 'Kemenkes Republik Indonesia', '', 'SUNYOTO WAHYU UTOMO', '198504112015031002', 'PERAWAT MAHIR', '081364993142', 'resources/data_aplikasi/ST_Aplikasi20.pdf', 'resources/data_aplikasi/siskohatkes.jpg', '', '', '', '', 0, 0, NULL, 46, '2023-03-09 14:51:27', 33, '2026-08-20 09:28:59', NULL, NULL),
(92, 155, '2', 'lapor frambusia online', 'Kemenkes Republik Indonesia', 'laporan jumlah kasus (Suspek, diperiksa RDT dan dan RDT positif) dan jumlah kegiatan pencarian frambusia di SD dan Puskesmas Keliling masing-masing Puskesmas yang bersumber dari Laporan Bulanan Frambusia Puskesmas ke Dinas Kesehatan Kabupaten/Kota.', 2, '2018', 'Website,Android,', 'tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'https://s.id/laporframbusia', '', '', '', '', 'Kemenkes Republik Indonesia', '', 'SUNYOTO WAHYU UTOMO', '198504112015031002', 'PERAWAT MAHIR', '081364993142', 'resources/data_aplikasi/ST_Aplikasi21.pdf', 'resources/data_aplikasi/frambusia_aplikasi.jpg', '', '', '', '', 0, 0, NULL, 46, '2023-03-09 15:05:44', 33, '2026-08-20 09:24:17', NULL, NULL),
(93, 155, '2', 'SITB Mobile', 'Kemenkes Republik Indonesia', '', 2, '2023', 'Android,iOS,', 'tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'https://mobile.sitb.id', '', '', '', '', 'Kemenkes Republik Indonesia', '', 'SUNYOTO WAHYU UTOMO', '198504112015031002', 'PERAWAT MAHIR', '081364993142', 'resources/data_aplikasi/ST_Aplikasi22.pdf', 'resources/data_aplikasi/SITB_Mobile.jpg', '', '', '', '', 0, 0, NULL, 46, '2023-03-09 15:14:13', 33, '2026-08-20 09:25:32', NULL, NULL),
(94, 136, '1', 'Website Kelurahan Tanjungpinang Kota', 'diskominfo kota tanjungpinang', '', 1, '2022', 'Website,', 'php,vue js', 1, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'tpikotakel.tanjungpinangkota.go.id', 'Ada', 'API', 'SIAP TANJUNGPINANG DENGAN ICMS', 'DISKOMINFO', 'diskominfo', 'PERWAKO TPI NO 8 TAHUN 2022', 'CHARMA RISSENO', '30910163', 'HONORER PTT', '081275970888', 'resources/data_aplikasi/SPT_BUJANG204.pdf', 'resources/data_aplikasi/Lambang_Kota_Tanjungpinang.png', '1 OPERATOR SEBAGAI PENGELOLA WEBSITE', '-', NULL, '-', 1, 1, '', 49, '2023-03-09 15:41:27', 49, '2023-03-09 15:42:03', 11, '2025-03-06 12:57:47'),
(95, 155, '2', 'e-monev HSP', 'Kemenkes RI', 'Monitoring dan Evaluasi Tempat Pengolahan Pangan', 2, '2018', 'Website,', 'Bahasa Indonesia', 8, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'https://tpm.kemkes.go.id/rbi/tpp/', '', '', '', '', 'Kemenkes Ri', '', 'Yustina Susilowati, S.KL', '198510072015032003', 'Sanitarian Mahir', '08122581744', 'resources/data_aplikasi/ST_Aplikasi23.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-03_at_10_32_02.jpeg', '', '', '', '', 0, 0, '', 62, '2023-03-10 08:33:12', 33, '2026-08-20 09:19:09', 11, '2025-03-10 14:45:01'),
(96, 155, '2', 'e-satu', 'Kemenkes RI', '', 2, '2020', 'Website,', 'Bahasa Indonesia', 8, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'https://e-satu.kemkes.go.id/', '', '', '', '', 'Kemenkes RI', '', 'Yustina Susilowati, S.KL', '198510072015032003', 'Sanitarian Mahir', '08122581744', 'resources/data_aplikasi/ST_Aplikasi24.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-03_at_10_32_52.jpeg', '', '', '', '', 0, 0, 'Tambahkan deskripsi Aplikasi', 62, '2023-03-10 08:40:26', 33, '2026-08-20 09:20:57', 11, '2025-03-10 15:26:20'),
(97, 155, '2', 'SIKELIM', 'Kemenkes RI', '', 2, '2022', 'Website,', 'Bahasa Indonesia', 8, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'https://sikelimkemkes.id/welcome', '', '', '', '', 'Kemenkes RI', '', 'Yustina Susilowati, S.KL', '198510072015032003', 'Sanitarian Mahir', '08122581744', 'resources/data_aplikasi/ST_Aplikasi25.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-03_at_10_34_15.jpeg', '', '', '', '', 0, 0, NULL, 62, '2023-03-10 08:44:30', 33, '2026-08-20 09:26:58', NULL, NULL),
(98, 155, '2', 'e-monev PKAM', 'Kemenkes RI', '', 2, '2019', 'Website,', 'Bahasa Indonesia', 8, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'https://projects.axometrix.com/who/emonev/', 'Tidak Tahu', '', '', '', 'Kemenkes RI', '', 'Yustina Susilowati, S.KL', '198510072015032003', 'Sanitarian Mahir', '08122581744', 'resources/data_aplikasi/ST_Aplikasi26.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-03_at_10_38_35.jpeg', '', '', NULL, '', 1, 0, 'Aplikasi tidak aktif', 62, '2023-03-10 08:48:07', NULL, NULL, 11, '2025-03-10 14:50:15'),
(99, 155, '2', 'Dashboard Air dan Sanitasi', 'Kemenkes RI', '', 2, '2020', 'Website,', 'Bahasa Indonesia', 8, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'https://link.kemkes.go.id/DashboardAirdanSanitasiDasar', 'Tidak Tahu', '', '', '', 'Kemenkes RI', '', 'Yustina Susilowati, S.KL', '198510072015032003', 'Sanitarian Mahir', '08122581744', 'resources/data_aplikasi/ST_Aplikasi27.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-03_at_10_41_12.jpeg', '', '', NULL, '', 1, 0, 'Aplikasi Error', 62, '2023-03-10 08:56:30', NULL, NULL, 11, '2025-03-10 14:34:16'),
(100, 153, '2', 'SRIKANDI', 'Arsip Nasional Republik Indonesia (ANRI)', 'berupa website yang digunakan untuk pengelolaan arsip secara online dengan fitur tanda tangan elektronik yang terintegrasi.', 4, '2022', 'Website,Android,iOS,Desktop,', 'tidak diketahui', 10, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'srikandi.arsip.go.id', '', '-', '-', 'seluruh OPD di Tanjungpinang', 'tidak diketahui', 'Peraturan Presiden Nomor 95 Tahun 2018 tentang Sistem Pemerintahan Berbasis Elektronik (SPBE)', 'Eva Susanti, A.Md.Keb', '19780427 200502 2 00', 'Kepala Tata Usaha', '085264390705', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi.pdf', 'resources/data_aplikasi/SRIKANDI.jpeg', 'terdapat konseptor, dan 2 verifikator', 'Srikandi bertujuan menciptakan kelancaran dalam persyaratan dan kearsipan secara elektronik yang efektif dalam penyelenggaraan pemerintahan. Aplikasi ini dapat memenuhi kebutuhan pembuatan surat menyurat dan arsip elektronik secara online secara integrasi serta terekam pada pusat data nasional', '', '', 0, 0, NULL, 34, '2023-03-10 09:29:29', 34, '2026-08-20 09:13:52', NULL, NULL),
(101, 146, '2', 'SIAP', 'Diskominfo Provinsi Kepri', 'Sistem Informasi Aktifitas Presensi dimana Pegawai dapat melakukan presensi secara online dengan melakukan swafoto melalui handphone.', 3, '2022', 'Website,Android,Desktop,', 'tidak diketahui', 10, NULL, 3, 'di atas 100 pengguna', 1, NULL, 'siap.tanjungpinangkota.go.id', 'Ada', '-', '-', 'Diskominfo', 'tidak diketahui', 'Perpres Nomor 95 Tahun 2018 Tentang Sistem Pemerintahan Berbasis Elektronik', 'Eva Susanti, A.Md.Keb', '19780427 200502 2 00', 'Kepala Tata Usaha', '085264390705', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi1.pdf', 'resources/data_aplikasi/SIAP.jpeg', 'seluruh pegawai di pemerintahan Kota Tanjungpinang menjadi user', 'penggunaan aplikasi SIAP ini bertujuan untuk menciptakan keterpaduan dan keserasian antara penegakan aturan jam kerja dengan absensi ASN yang berbasis online sehingga pelaksanaan kewajiban menaati kewajiban masuk jam kerja dapat berjalan optimal.', NULL, '', 0, 0, NULL, 34, '2023-03-10 09:56:40', NULL, NULL, NULL, NULL),
(102, 153, '2', 'SIAP', 'Diskominfo Provinsi Kepri', 'Sistem Informasi Aktivitas Presensi yang digunakan pegawai untuk melakukan presensi secara online dengan melakukan swafoto melalui handphone', 3, '2022', 'Website,Android,Desktop,', 'tidak diketahui', 10, NULL, 3, 'di atas 100 pengguna', 1, NULL, 'siap.tanjungpinangkota.go.id', '', '-', '-', 'Diskominfo', 'tidak diketahui', 'Perpres Nomor 95 Tahun 2018 tentang Sistem Pemerintahan Berbasis Elektronik.', 'Eva Susanti, A.Md.Keb', '19780427 200502 2 00', 'Kepala Tata Usaha', '085264390705', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi2.pdf', 'resources/data_aplikasi/SIAP1.jpeg', 'seluruh pegawai di Pemko Tanjungpinang dapat mengakses aplikasi tersebut sebagai user', 'Penerapan aplikasi SIAP bagi seluruh pegawai pemko bertujuan untuk meningkatkan disiplin ASN dalam mematuhi jadwal masuk dan pulang kantor sesuai jam kerja yang telah ditentukan.', '', '', 0, 0, NULL, 34, '2023-03-10 10:02:10', 34, '2026-08-20 09:14:42', NULL, NULL),
(103, 153, '2', 'SIMONA (Sistem Perizinan, Monitoring dan Pembinaan Apotek)', 'Kemenkes', 'Aplikasi SIMONA apotek merupakan aplikasi berbasis web yang berfungsi sebagai sistem pembinaan serta monitoring untuk rumah sakit, apotek, toko obat, apotek, dan klinik yang merupakan bagian dari Fasilitas Pelayanan Kefarmasian', 2, '2021', 'Website,', 'tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'simona.kemkes.go.id', '', '-', 'tidak diketahui', 'DKP2KB', 'tidak diketahui', '-', 'Gestining Mirsanita, S.Si.Apt', '19790713 200502 2 00', 'Apoteker Madya', '081372578999', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi3.pdf', 'resources/data_aplikasi/SIMONA.png', 'admin utama, user', 'Diharapkan dengan adanya pelaporan pelayanan kefarmasian ini, akan menjadi lebih baik dalam penyelenggaraan pelayanan kefarmasian di fasilitas pelayanan kesehatan.', '', '', 0, 0, NULL, 34, '2023-03-10 10:21:06', 34, '2026-08-20 09:15:38', NULL, NULL),
(104, 153, '2', 'SIPNAP (Sistem Pelaporan Narkotika dan Psikotropika)', 'Kementerian Kesehatan Republik Indonesia', 'sistem informasi yang digunakan untuk melacak dan melaporkan penggunaan sediaan jadi narkotika dan psikotropika di Indonesia. Sistem ini merupakan bagian dari upaya pemerintah untuk memantau dan mengatasi masalah penyalahgunaan narkoba di Indonesia.', 2, '2020', 'Website,Desktop,', 'tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'sipnap.kemkes.go.id', '', '-', '-', 'DKP2KB', 'Direktorat Bina Produksi dan Distribusi Kefarmasian, Ditjen Binfar dan Alkes, Kementerian Kesehatan', 'Permenkes No 3 Tahun 2015 Tentang apa?\r\nPermenkes No. 3 Tahun 2015 tentang Peredaran, Penyimpanan, Pemusnahan, Dan Pelaporan Narkotika, Psikotropika, Dan Prekursor Farmasi', 'M. Ornas Yunandys, S.Si.Apt', '19840909 201403 1 00', 'Apoteker Muda', '081380242470', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi4.pdf', 'resources/data_aplikasi/SIPNAP.png', 'USER', 'Penggunaan SIPNAP bertujuan untuk mengumpulkan dan menganalisis data penggunaan narkoba dan psikotropika di seluruh Indonesia. Informasi ini kemudian dapat digunakan oleh pemerintah untuk menentukan arahan dan kebijakan yang efektif untuk mengatasi masalah penyalahgunaan narkoba.', '', '', 0, 0, NULL, 34, '2023-03-10 10:31:58', 34, '2026-08-20 09:15:53', NULL, NULL),
(105, 153, '2', 'SELENA (Sistem Elektronik Pengelolaan dan Pelayanan Kefarmasian)', 'Direktorat Pengelolaan dan Pelayanan Kefarmasian', 'Sistem Elektronik yang dikembangkan oleh Direktorat Pengelolaan dan Pelayanan Kefarmasian untuk mendukung kegiatan diskusi Ketersediaan Obat dan Indikator Obat di Fasilitas Kesehatan Seluruh Indonesia', 4, '2022', 'Android,', 'tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'apksos.com/app/id.go.kemkes.monevkatalogobat.selena', '', '-', '-', 'DKP2KB', 'Direktorat Pengelolaan dan Pelayanan Kefarmasian', '-', 'M. Ornas Yunandys, S.Si.Apt', '19840909 201403 1 00', 'Apoteker Muda', '081380242470', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi5.pdf', 'resources/data_aplikasi/SELENA.png', 'USER', 'pengelolaan obat dan bahan medis habis pakai', '', '', 0, 0, NULL, 34, '2023-03-10 10:43:10', 34, '2026-08-20 09:14:30', NULL, NULL),
(106, 153, '2', 'E-Puskesmas', 'PT INFOKES INDONESIA', 'Aplikasi managemen puskesmas mulai dari pendaftaran pasien sampai sistem pelaporan', 2, '2019', 'Website,Desktop,', 'tidak diketahui', 10, NULL, 2, 'di atas 100 pengguna', 1, NULL, 'tanjungpinang.epuskesmas.id/pelayanan', '', '-', 'PCare/Eclaim BPJS', 'BPJS, DKP2KB', 'DKP2KB', '-', 'Renvile Gita Lestari . P, S.Kep.Ners', '19840212 200904 2 00', 'Perawat Muda', '081275598785', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi6.pdf', 'resources/data_aplikasi/EPUS.png', 'USER', 'Adanya aplikasi ini diharapkan dapat memicu seluruh puskesmas jadi bisa saling bersaing dalam memberikan dan menghasilkan mutu layanan terbaik kepada seluruh pengguna layanan serta  berkompetisi untuk memperbaharui system pelaporan data. masyarakat juga bisa terlayani dengan maksimal, seluruh data terhimpun dalam epuskesmas.', '', '', 0, 0, '', 34, '2023-03-10 11:00:00', 34, '2026-08-20 09:12:21', 11, '2025-03-10 15:25:04'),
(107, 153, '2', 'E-Kohort', 'Kementerian Kesehatan Republik Indonesia', 'sebuah sistem pemantauan terintegrasi bagi ibu, bayi, dan balita yang mencakup implementasi pencatatan-el, pemantauan-el, dan pelaporan-el pelayanan KIA berbasis teknologi informasi', 2, '2021', 'Website,Android,Desktop,', 'tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'ekohort.kemkes.go.id', '', '-', '-', 'DKP2KB Kota Tanjungpinang, Dinkes Provinsi Kepri', 'USAID, UNFPA, PT. Sijarimas Teknologi Inovasi', '-', 'Ririk Puji Lestari, A.Md.Keb', '19691002 199101 2 00', 'Bidan Penyelia', '082283237627', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi7.pdf', 'resources/data_aplikasi/e_kohort.jpeg', 'user', 'Kohort KIA merupakan basis data yang sangat penting karena berisi informasi lengkap terkait data dasar, catatan hasil pemeriksaan, dan pelayanan kesehatan yang diberikan dari fase kehamilan ibu sampai si anak mencapai usia lima tahun.', '', '', 0, 0, '', 34, '2023-03-10 11:08:41', 34, '2026-08-20 09:11:41', 11, '2025-03-10 14:44:28'),
(108, 153, '2', 'MPDN (Maternal Perinatal Death Notification)', 'Kementerian Kesehatan Republik Indonesia', 'aternal Perinatal Death Notification merupakan aplikasi yang ditujukan khusus membantu pelaporan Kematian Maternal dan Peri-Neonatal di Indonesia secara cepat dan menyeluruh. Setiap pelaporan kematian akan terkumpul secara berjenjang di tiap tingkatan wilayah dan men-trigger pemberitahuan (Notifikasi) ke setiap Pengampu yang ada di wilayah kematian ibu dan tingkatan wilayah diatasnya hingga level nasional.', 4, '2020', 'Website,Android,iOS,Desktop,', 'tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'https://play.google.com/store/apps/details?id=com.kubuslab.android.mpdn', '', '-', '-', 'DKP2KB, Dinkes Prov Kepri, Kemenkes', 'Medika Andromedia', '-', 'Ririk Puji Lestari, A.Md.Keb', '19691002 199101 2 00', 'Bidan Penyelia', '082283237627', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi8.pdf', 'resources/data_aplikasi/MPDN.jpeg', 'USER', 'Aplikasi MPDN dibuat dengan tujuan mendapatkan laporan adanya kematian maternal sedini mungkin dengan data yang akurat dan disertai dengan analisis statistik sederhana guna meningkatkan kecepatan pengambilan keputusan bersumber data', '', '', 0, 0, NULL, 34, '2023-03-10 11:19:22', 34, '2026-08-20 09:13:12', NULL, NULL),
(109, 155, '2', 'SIMONA', 'Kemenkes RI', 'aplikasi berbasis web yang berfungsi sebagai sistem  monitoring serta pembinaan untuk fasilitas pelayanan kesehatan.', 2, '2022', 'Website,', 'Indonesia', 8, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'https://simona.kemkes.go.id', '', '', '', '', 'Kemenkes RI', '', 'Rika Jayanti Putri, S.Farm., Apt.', '19900123 201503 2 00', 'Apoteker Muda', '081277844342', 'resources/data_aplikasi/ST_Aplikasi28.pdf', 'resources/data_aplikasi/SIMONA1.png', '', '', '', '', 0, 0, NULL, 64, '2023-03-10 11:54:56', 33, '2026-08-20 09:26:21', NULL, NULL),
(110, 155, '2', 'SIHA (SISTEM INFORMASI HIV-AIDS)', 'KEMENKES', '', 1, '2019', 'Website,', 'INDONESIA', 1, NULL, 1, 'di atas 25 sampai dengan 100 pengguna', 3, NULL, 'https://sihapims.kemkes.go.id/login', '', '', '', '', 'KEMENKES', '', 'ROSNIWATI, SKM', '197606112009022001', 'PENGELOLA PROGRAM HIV', '085365396165', 'resources/data_aplikasi/ST_Aplikasi29.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-10_at_12_46_50.jpeg', '', '', '', '', 0, 0, NULL, 56, '2023-03-10 12:48:23', 33, '2026-08-20 09:27:07', NULL, NULL),
(111, 155, '2', 'SIPTM', 'KEMENKES', '', 1, '2019', 'Website,', 'INDONESIA', 1, NULL, 1, 'di atas 25 sampai dengan 100 pengguna', 3, NULL, 'https://surveilans-pptm.kemkes.go.id/', '', '', 'Terintegrasi dengan aplikasi ASIK', 'DISDUK', 'KEMENKES', '', 'EFIKA,A.Md.Kep', '198112272006042011', 'PENGELOLA PROGRAM PTM', '085376107300', 'resources/data_aplikasi/ST_Aplikasi30.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-10_at_12_55_10.jpeg', '', '', '', '', 0, 0, NULL, 66, '2023-03-10 12:55:39', 33, '2026-08-20 09:25:48', NULL, NULL),
(112, 153, '2', 'Mutu Fasyankes', 'Kementerian Kesehatan Republik Indonesia', 'Mutu fasyankes digunakan dalam penginputan caapian indikator mutu nasional tiap bulan', 4, '2021', 'Website,Android,Desktop,', 'tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'mutufasyankes.kemkes.go.id', '', '-', '-', 'DKP2KB Kota Tanjungpinang, Dinkes Provinsi Kepri, Kemenkes RI', 'tidak diketahui', 'PERATURAN MENTERI KESEHATAN REPUBLIK INDONESIA\r\nNOMOR 30 TAHUN 2022 TENTANG INDIKATOR NASIONAL MUTU PELAYANAN KESEHATAN TEMPAT PRAKTIK\r\nMANDIRI DOKTER DAN DOKTER GIGI, KLINIK, PUSAT KESEHATAN MASYARAKAT, RUMAH SAKIT, LABORATORIUM KESEHATAN, DAN UNIT TRANSFUSI DARAH', 'dr. Mutia Syafrida', '19810709 201001 2 00', 'Dokter Madya', '082273680743', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi9.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-13_at_9_53_39_AM.jpeg', 'user', 'indikator nasional mutu pelayanan kesehatan\r\nmerupakan salah satu perangkat untuk menilai dan\r\nmengevaluasi tempat praktik mandiri dokter dan dokter\r\ngigi, klinik, pusat kesehatan masyarakat, rumah sakit,\r\nlaboratorium kesehatan, dan unit transfusi darah dalam\r\nmempertahankan dan meningkatkan mutu pelayanan\r\nkesehatan', '', '', 0, 0, NULL, 34, '2023-03-13 09:56:15', 34, '2026-08-20 09:13:18', NULL, NULL),
(113, 153, '2', 'Aplikasi Keluarga Sehat 2.0 (PIS-PK)', 'Kementerian Kesehatan Republik Indonesia', 'Aplikasi Keluarga Sehat merupakan aplikasi manajemen pengelolaan data kesehatan keluarga (indeks keluarga sehat)', 4, '2019', 'Website,Android,iOS,Desktop,', 'tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'keluargasehat.kemkes.go.id', 'Tidak Tahu', '-', '-', 'DKP2KB Kota Tanjungpinang, Dinkes Provinsi Kepri, Kemenkes RI', 'Pusdatin Kemenkes', 'Peraturan Menteri Kesehatan Nomor 39 Tahun 2016 tentang Pedoman Penyelenggaraan Program Indonesia Sehat Dengan Pendekatan Keluarga', 'Maretha Hasian, A.Md.Keb,SKM', '19840328 200604 2 01', 'Penyuluh Kesehatan dan Pencegahan Penyakit', '082173653434', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi10.pdf', 'resources/data_aplikasi/PISPK.png', 'USER', 'Dengan adanya aplikasi ini, Kemenkes bisa melakukan pendataan keluarga sehat tanpa perlu melakukan kunjungan ke rumah.', NULL, '', 1, 0, 'Situs ini dalam masa pemeliharaan', 34, '2023-03-13 10:14:37', NULL, NULL, 11, '2025-03-10 14:27:04'),
(114, 105, '1', 'Seleksi JPT', 'BKPSDM Kota Tanjungpinang', 'Aplikasi Seleksi JPT merupakan aplikasi yang berfungsi memudahkan pengguna dalam rangka pelaksanaan Seleksi Jabatan Pimpinan Tinggi di lingkungan Pemerintah Kota Tanjungpinang', 1, '2023', 'Website,', 'PHP', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 8, NULL, 'seleksijpt.tanjungpinangkota.go.id', 'Tidak Tahu', '', '', 'BKPSDM Kota Tanjungpinang', 'BKPSDM Kota Tanjungpinang', 'Peraturan Presiden Republik Indonesia Nomor 95 Tahun 2018 tentang Sistem Pemerintahan Berbasis Elektronik', 'Syafrizal, ST', '198312042009021007', 'Analis Kepegawaian Ahli Muda', '085272420002', 'resources/data_aplikasi/SPT_APLIKASI_BKPSDM1.pdf', 'resources/data_aplikasi/tanjungpinang1.png', 'Administrator Utama adalah user yang\r\nmemiliki seluruh fungsi pada aplikasi, Administrator Biasa adalah user yang memiliki fungsi standar', '-', NULL, '-', 1, 0, 'Website tidak dapat diakses', 35, '2023-03-13 10:30:41', 35, '2023-03-15 15:08:18', 11, '2025-03-06 11:41:30'),
(115, 153, '2', 'NEW ALL RECORD (NAR) COVID-19', 'Kementerian Kesehatan Republik Indonesia', 'Aplikasi AllRecord Pemeriksaan Antigen-Covid 19 merupakan manajemen pengelolaan data Pemeriksaan Antigen-Covid 19', 4, '2020', 'Website,Desktop,', 'tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'allrecord-antigen.kemkes.go.id', '', '-', 'PeduliLindungi', 'DKP2KB, DINKES PROVINSI KEPRI, KEMENKES RI', 'tidak diketahui', 'SE NOMOR HK.02.01/MENKES/381/2020 TENTANG UPAYA PENGUATAN DATA DAN INFORMASI DALAM PERCEPATAN PENANGANAN COVID-19 MELALUI SISTEM INFORMASI ALL  RECORD TRACKING COVID19', 'Maretha Hasian, A.Md.Keb,SKM', '19840328 200604 2 01', 'Penyuluh Kesehatan dan Pencegahan Penyakit', '082173653434', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi11.pdf', 'resources/data_aplikasi/NAR.jpeg', 'user', 'mengurangi pemalsuan data terkait hasil vaksinasi dan tes COVID-19, serta pemberian obat gratis tepat sasaran.', '', '', 0, 0, NULL, 34, '2023-03-13 10:41:30', 34, '2026-08-20 09:13:28', NULL, NULL),
(116, 105, '2', 'SSCASN', 'Badan Kepegawaian Negara RI', 'SSCASN atau Sistem Seleksi Calon Aparatur Sipil Negara adalah situs resmi pendaftaran ASN secara nasional sebagai pintu pendaftaran pertama seleksi ASN ke seluruh instansi baik Pusat maupun Daerah dan dikelola oleh Badan Kepegawaian Negara RI sebagai Panitia Seleksi Penerimaan Nasional yang dapat diakses di\r\nhttps://sscasn.bkn.go.id', 1, '2022', 'Website,', 'HTML5, PHP', 1, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 8, NULL, 'https://sscasn.bkn.go.id', '', '', '-', '-', 'Badan Kepegawaian Negara RI', 'Peraturan Presiden Republik Indonesia Nomor 95 Tahun 2018 tentang Sistem Pemerintahan Berbasis Elektronik', 'Syafrizal, ST', '198312042009021007', 'Analis Kepegawaian Ahli Muda', '085272420002', 'resources/data_aplikasi/PENGUSULAN_ADMIN_SSCASN.pdf', 'resources/data_aplikasi/sscasn.png', '- Super Administrator Utama adalah user yang\r\nmemiliki seluruh fungsi pada aplikasi\r\n- Administrator Instansi adalah user yang memiliki seluruh fungsi pada instansi', '-', '', '-', 0, 0, '', 35, '2023-03-13 10:58:15', 237, '2026-08-21 09:22:11', 11, '2025-03-06 11:46:22'),
(117, 153, '2', 'E-RENGGAR', 'Kementerian Kesehatan Republik Indonesia', 'Untuk laporan realisasi BOK Puskesmas', 4, '2016', 'Website,', 'tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'e-renggar.kemkes.go.id', '', '-', '-', 'kemenkes RI', 'tidak diketahui', 'PERMENKES RI NOMOR 13 TAHUN 2022 TENTANG PERUBAHAN PERMENKES NOMOR 21 TAHUN 2020 TENTANG RENCANA STRATEGIS KEMENTRIAN KESEHATAN TAHUN 2020-2024', 'Dwi Erina Herninanto, A.Md.Kep', '19841017 200604 2 00', 'Perawat Penyelia', '081364544266', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi12.pdf', 'resources/data_aplikasi/e-renggar_kemkes_go_id.png', 'user', 'E-renggar ditujukan untuk mempermudah kerja dari petugas pelaksana perencanaan, penganggaran dan monitoring evaluasi dengan menggunakan sistem terpadu berbasis online.', '', '', 0, 0, '', 34, '2023-03-13 11:02:25', 34, '2026-08-20 09:12:30', 11, '2025-03-10 15:25:27'),
(118, 153, '2', 'SITKO (Sistem informasi terpadu kesehatan kerja dan olahraga)', 'Kementerian Kesehatan Republik Indonesia', 'pelaporan kegiatan kesehatan kerja dan olahraga internal dan eksternal secara online', 4, '2020', 'Website,', 'tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'sitko.kemkes.go.id', '', '-', '-', 'DKP2KB, DINKES PROVINSI KEPRI, KEMENKES', 'tidak diketahui', '-', 'Febti Elizabet, AMK', '19810224 200604 2 01', 'Perawat Penyelia', '082174012282', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi13.pdf', 'resources/data_aplikasi/SITKO.jpeg', 'USER', 'Mempermudah sistem pelaporan kegiatan kesehatan kerja dan olahraga di tiap tingkat administrasi', '', '', 0, 0, NULL, 34, '2023-03-13 11:13:20', 34, '2026-08-20 09:17:35', NULL, NULL),
(119, 105, '2', 'SIMPEGNAS', 'Badan Kepegawaian Negara RI', 'Sistem Informasi Manajemen Kepegawaian Nasional (SIMPEGNAS) diselenggarakan secara nasional dan terintegritas antar-Instansi Pemerintah bertujuan mewujudkan Satu Data ASN', 1, '2022', 'Website,', 'HTML5, PHP', 1, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'https://simpegnas.bkn.go.id/simpegnas/', '', '', '-', '-', 'Badan Kepegawaian Negara RI', 'Peraturan Presiden Republik Indonesia Nomor 95 Tahun 2018 tentang Sistem Pemerintahan Berbasis Elektronik', 'Syafrizal, ST', '198312042009021007', 'Analis Kepegawaian Ahli Muda', '085272420002', 'resources/data_aplikasi/(800-2093-4_2_02-2022)_PENGUSULAN_ADMIN_SIMPEGNAS_PEMKO_TPI.pdf', 'resources/data_aplikasi/simpegnas.png', '- Super Administrator Utama adalah user yang\r\nmemiliki seluruh fungsi pada aplikasi\r\n- Administrator Instansi adalah user yang memiliki seluruh fungsi pada instansi', '-', '', '-', 0, 0, '', 35, '2023-03-13 11:21:16', 237, '2026-08-21 09:22:05', 11, '2025-03-06 11:45:56'),
(120, 105, '2', 'SIDARA', 'Badan Kepegawaian Negara RI', '', 1, '2022', 'Website,', 'HTML5, PHP', 1, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'dpdd.kemendagri.go.id', 'Tidak Tahu', '', '- Super Administrator Utama adalah user yang\r\nmemiliki seluruh fungsi pada aplikasi\r\n- Administrator Instansi adalah user yang memiliki seluruh fungsi pada instansi', '-', 'Badan Kepegawaian Negara RI', 'Peraturan Presiden Republik Indonesia Nomor 95 Tahun 2018 tentang Sistem Pemerintahan Berbasis Elektronik', 'Syafrizal, ST', '198312042009021007', 'Analis Kepegawaian Ahli Muda', '085272420002', 'resources/data_aplikasi/(820-1726-4_2_02-2022)_OPERATOR_DATABASE_PEJABAT_DUKCAPIL_DAERAH_(SIDARA).pdf', 'resources/data_aplikasi/tanjungpinang3.png', '- Super Administrator Utama adalah user yang\r\nmemiliki seluruh fungsi pada aplikasi\r\n- Administrator Instansi adalah user yang memiliki seluruh fungsi pada instansi', '-', NULL, '-', 1, 0, 'Website tidak dapat diakses', 35, '2023-03-13 11:32:48', 35, '2023-03-13 12:05:34', 11, '2025-03-06 11:42:38'),
(121, 153, '2', 'PWS Imunisasi (IDL, Campak Rubela)', 'Tidak diketahui', 'Input data vaksin dan capaian perwilayah kelurahan', 4, '2018', 'Desktop,', 'tidak diketahui', 10, NULL, 2, 'di atas 100 pengguna', 3, NULL, 'PWS Imunisasi', '', '-', '-', 'DKP2KB', 'Tidak diketahui', 'PERATURAN MENTERI KESEHATAN REPUBLIK INDONESIA\r\nNOMOR 12 TAHUN 2017 TENTANG PENYELENGGARAAN IMUNISASI', 'Sarjono, A.Md', '19800819 200502 1 00', 'Perawat Penyelia', '081364641164', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi14.pdf', 'resources/data_aplikasi/PWS.jpeg', 'user', 'mendukung pemantauan wilayah sekitar (PWS) yang dapat melihat kinerja pelayanan imunisasi di Posyandu tiap bulannya.', '', '', 0, 0, NULL, 34, '2023-03-13 11:33:57', 34, '2026-08-20 09:14:17', NULL, NULL),
(122, 153, '2', 'Pcare BPJS COVID-19', 'BPJS Kesehatan', 'Input data vaksinasi covid 19', 4, '2021', 'Website,Desktop,', 'tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'pcare.bpjs-kesehatan.go.id/vaksin', '', '-', 'PeduliLindungi', 'Kemenkes, BPJS Kesehatan', 'tidak diketahui', 'KEPUTUSAN MENTERI KESEHATAN REPUBLIK INDONESIA\r\nNOMOR HK.01.07/MENKES/4638/2021 TENTANG\r\nPETUNJUK TEKNIS PELAKSANAAN VAKSINASI DALAM RANGKA PENANGGULANGAN PANDEMI CORONA VIRUS DISEASE 2019 (COVID-19)', 'Sarjono, A.Md', '19800819 200502 1 00', 'Perawat Penyelia', '081364641164', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi15.pdf', 'resources/data_aplikasi/PCARE_V.png', 'ADMIN', 'Aplikasi P-Care Vaksinasi digunakan untuk pencatatan yang meliputi registrasi sasaran penerima vaksin, screening status kesehatan serta pencatatan dan pelaporan hasil pelayanan vaksinasi', '', '', 0, 0, NULL, 34, '2023-03-13 11:49:09', 34, '2026-08-20 09:14:05', NULL, NULL),
(123, 153, '2', 'SISDMK (Sistem Informasi SDM Kesehatan)', 'Kementerian Kesehatan Republik Indonesia', 'SISDMK adalah singkatan dari Sistem Informasi Sumber Daya Manusia Kesehatan merupakan sistem yang memberitahukan mengenai informasi sumber daya manusia (SDM) di bidang kesehatan yang diluncurkan oleh Kemenkes RI.', 4, '2012', 'Website,Desktop,', 'tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 8, NULL, 'sisdmk.kemkes.go.id', '', '-', 'renbut kemenkes', 'DKP2KB, BKPSDM, DINKES PROVINSI KEPRI, KEMENKES RI', 'tidak diketahui', 'Peraturan Presiden Nomor 39 Tahun 2019 tentang Satu Data Indonesia', 'Ratna Pratiwi, S.AP', '19870505 200604 2 00', 'Analis Tata Usaha', '081372875537', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi16.pdf', 'resources/data_aplikasi/SISDMK.png', 'ADMIN', 'Tujuan dirancang sistem ini adalah untuk mengelola SDM di bidang kesehatan agar lebih mudah dalam pendataan dan menghindari kesenjangan antar nakes antar wilayah.\r\n\r\nSelain itu, SISDMK juga berfungsi untuk pembaharuan profil nakes dengan cepat dan efisien untuk perkembangan karier dan juga dapat memberi feedback kepada Kemenkes RI.', '', '', 0, 0, NULL, 34, '2023-03-13 12:10:26', 34, '2026-08-20 09:16:34', NULL, NULL),
(124, 152, '1', 'Website UPT Puskesmas Tanjungpinang', 'Avicom', 'Menyampaikan Informasi dan serangkaian kegiatan yang ada di UPTD Puskesmas Tanjungpinang', 1, '2023', 'Website,Android,iOS,Desktop,', 'html', 1, NULL, 2, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'https://puskesmastpi.tanjungpinangkota.go.id/', '', '', '', '', 'Avicom', '', 'Rika Susinta, S.Tr.Keb', '199405052019022007', 'Admin OPD  dan Bidan pada Puskesmas Tanjungpinang', '082285727244', 'resources/data_aplikasi/SPT_RIKA.pdf', 'resources/data_aplikasi/36702b2ce2582b06e6db021d37ccc3e8.png', 'admin bisa akses semua fitur, dapat merubah artikel kapanpun', 'dengan website ini masyarakat dapat mengetahui info ataupun kegiatan yang ada di UPTD Puskesmas Tanjungpinang.', '', '', 0, 1, '', 68, '2023-03-13 12:20:05', 68, '2026-08-31 18:16:26', 11, '2025-03-11 12:16:41'),
(125, 153, '2', 'RENBUT (Aplikasi Perencanaan Kebutuhan SDMK)', 'Kementerian Kesehatan Republik Indonesia', 'Rencana Kebutuhan Sumber Daya Manusia Kesehatan adalah Upaya dalam meningkatkan mutu tenaga dalam rangka penyelenggara pelayanan kesehatan.', 4, '2015', 'Website,', 'tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 8, NULL, 'renbut.kemkes.go.id', '', '-', 'SISDMK', 'DKP2KB, BKPSDM,', 'tidak diketahui', 'Peraturan Menteri Kesehatan No 33 Tahun 2015 tentang Pedoman Penyusunan Perencanaan Kebutuhan Sumber Daya Manusia Kesehatan', 'Ratna Pratiwi, S.AP', '19870505 200604 2 00', 'Analis Tata Usaha', '081372875537', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi17.pdf', 'resources/data_aplikasi/RENBUT.png', 'admin', 'Penyusunan Rencana Kebutuhan Sumber Daya Manusia Kesehatan bertujuan untuk memberikan acuan bagi setiap satuan kerja dari tingkat institusi, kabupaten/kota, provinsi, dan nasional dalam melaksanakan penyusunan perencanaan kebutuhan sumber daya manusia kesehatan sesuai dengan tugas dan fungsi masing masing.', '', '', 0, 0, NULL, 34, '2023-03-13 14:56:51', 34, '2026-08-20 09:14:24', NULL, NULL),
(126, 157, '2', 'NEWSIGA', 'BKKBN', '', 4, '2022', 'Website,', 'HDML', 9, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 1, NULL, '', '', '', '', '', 'BKKBN', '', 'WINDHA DEWI MINDAWATI', '198410212014042001', 'BIDAN', '081364067331', 'resources/data_aplikasi/ST_Pengguna_Aplikasi.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-13_at_16_07_08.jpeg', '1 ORANG OPERATOR', '', '', '', 0, 0, NULL, 74, '2023-03-13 16:08:54', 227, '2026-08-24 13:35:42', NULL, NULL),
(127, 157, '2', 'e-Puskesmas', 'Tanjungpinang Kota', '', 4, '2019', 'Website,', 'HDML', 9, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'tanjungpinang.epuskesmas/id.login', 'Tidak Ada', '', '', '', 'Tanjungpinang Kota', '', 'ROZALITA', '198202242010012006', 'Perawat Ahli Pertama', '082288029330', 'resources/data_aplikasi/ST_Pengguna_Aplikasi1.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-13_at_16_15_07.jpeg', '1 orang operator', '', NULL, '', 1, 0, 'Tambahkan deskripsi Aplikasi', 65, '2023-03-13 16:50:16', NULL, NULL, 11, '2025-03-10 15:25:15'),
(128, 157, '2', 'sigiziterpadu/eppgbm', 'kemenkes', '', 1, '2018', 'Website,', 'HDML', 9, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'sigiziterpadu.kemkes.go.id', '', '', '', '', 'kemenkes', '', 'Maulida Sylvaviani', '198512272010012004', 'Pengelola Program Gizi', '081220053982', 'resources/data_aplikasi/ST_Pengguna_Aplikasi2.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-13_at_17_09_40.jpeg', '1 orang operator', '', '', '', 0, 0, NULL, 77, '2023-03-13 17:11:06', 227, '2026-08-24 13:40:01', NULL, NULL),
(129, 157, '2', 'ASPAK', 'KEMENKES', '', 2, '2010', 'Website,', 'Indonesia', 10, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'aspak.kemkes.go.id', '', '', '', '', 'KEMENKES', '', 'RINA FRIYULI', '198106292006042006', 'PERAWAT AHLI MUDA', '081277272620', 'resources/data_aplikasi/ST_Pengguna_Aplikasi3.pdf', 'resources/data_aplikasi/8B5E7E2A-C206-48C7-839D-2C394C351F41.jpeg', '', '', '', '', 0, 0, '', 80, '2023-03-13 17:13:16', 227, '2026-08-24 13:34:58', 11, '2025-03-10 14:31:05'),
(130, 157, '2', 'SIAP', 'BPKAD', '', 3, '2022', 'Website,', 'Indonesia', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'siap.tanjungpinangkota.go.id', 'Tidak Ada', '', '', '', 'BPKAD', '', 'RINA FRIYULI', '198106292006042006', 'PERAWAT AHLI MUDA', '081277272620', 'resources/data_aplikasi/ST_Pengguna_Aplikasi4.pdf', 'resources/data_aplikasi/1FC34FFB-AA35-4BAE-A1A0-BE69B5568F42.jpeg', '', '', NULL, '', 0, 0, NULL, 80, '2023-03-13 17:21:53', 80, '2023-03-14 12:47:51', NULL, NULL),
(131, 153, '2', 'Si Gizi Terpadu - ePPGBM (Pencatatan dan Pelaporan Gizi Berbasis Masyarakat)', 'Kementerian Kesehatan RI', 'Eletronik Pencatatan dan Pelaparan Gizi berbasis Masyarakat (ePPGBM) berupa Website yang digunakan untuk pencatatan dan pelaporan Program Gizi dan KIA secara online yang terintegrasi.', 4, '2018', 'Website,Desktop,', '-', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'sigiziterpadu.kemkes.go.id', '', '-', '-', 'DISDKCAPIL, DKP2KB, DIKES PROV. KEPRI', '-', 'PERATURAN MENTERI KESEHATAN REPUBLIK INDONESIA NOMOR 14 TAHUN 2019 TENTANG\r\nPELAKSANAAN TEKNIS SURVEILANS GIZI', 'Gotri Marsedi Siahaan, SKM', '19790913 200902 1 00', 'Analis Gizi', '+62 821-6963-0621', 'resources/data_aplikasi/PIC_APLIKASI.pdf', 'resources/data_aplikasi/EPPGB.jpeg', 'admin', 'Capaian entry hasil pengukuran berat dan tinggi badan juga dijadikan dasar intervensi percepatan penurunan stunting', '', '', 0, 0, NULL, 34, '2023-03-13 20:03:36', 34, '2026-08-20 09:14:37', NULL, NULL);
INSERT INTO `data_aplikasi_2026` (`id_aplikasi`, `id_opd`, `asal_aplikasi`, `nama_aplikasi`, `penyedia_aplikasi`, `deskripsi_aplikasi`, `id_jenis_layanan`, `tahun`, `basis_aplikasi`, `bahasa_pemrograman`, `id_dbms`, `dbms_lainnya`, `id_lokasi_hosting`, `jumlah_pengguna`, `id_frekuensi_penggunaan`, `frekuensi_penggunaan_lainnya`, `nama_domain`, `ketersediaan_integrasi`, `metode_integrasi`, `aplikasi_terintegrasi`, `opd_terintegrasi`, `pengembang_aplikasi`, `regulasi`, `pic_aplikasi`, `nip_pic`, `jabatan_pic`, `no_telp`, `file_spt`, `file_logo`, `level_privileges`, `rencana_aplikasi`, `proses_bisnis`, `keterangan`, `status`, `is_active`, `catatan`, `created_by`, `created_on`, `changed_by`, `changed_on`, `approved_by`, `approved_on`) VALUES
(132, 157, '2', 'e-Formasi Jabatan Fungsional Kesehatan', 'Kemenkes', '', 4, '2021', 'Website,', 'Indonesia', 10, NULL, 4, 'di atas 100 pengguna', 7, NULL, 'https://cloud.mcreasindo.com/kes-eformasi/login', '', '', '', '', 'Kemenkes', '', 'R.Sri Rahayu Kartini', '197104211991012002', 'Ka TU Puskesmas Mekar Baru', '085272208111', 'resources/data_aplikasi/ST_Pengguna_Aplikasi5.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-13_at_12_11_20.jpeg', '', '', '', '', 0, 0, 'Tambahkan deskripsi Aplikasi', 83, '2023-03-14 08:30:20', 227, '2026-08-28 15:40:24', 11, '2025-03-10 14:39:03'),
(133, 157, '2', 'Srikandi', 'BKPSDM', '', 4, '2022', 'Website,', 'Indonesia', 10, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'https://srikandi.arsip.go.id/login', '', '', '', '', 'BKPSDM', '', 'Al Atika', '197804302000122003', 'Perawat Mahir', '081364792824', 'resources/data_aplikasi/ST_Pengguna_Aplikasi6.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-14_at_08_37_37.jpeg', '', '', '', '', 0, 0, NULL, 83, '2023-03-14 08:38:58', 227, '2026-08-24 13:47:38', NULL, NULL),
(134, 157, '2', 'SISDMK', 'Kemenkes', '', 4, '2020', 'Website,', 'Indonesia', 10, NULL, 4, 'di atas 100 pengguna', 4, NULL, 'https://sisdmk.kemkes.go.id/login', '', '', '', '', 'Kemenkes', '', 'R.Sri Rahayu Kartini', '197104211991012002', 'Ka TU Puskesmas Mekar Baru', '085272208111', 'resources/data_aplikasi/ST_Pengguna_Aplikasi7.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-13_at_12_04_34.jpeg', '', '', '', '', 0, 0, NULL, 83, '2023-03-14 08:49:16', 227, '2026-08-24 13:40:37', NULL, NULL),
(135, 157, '2', 'SIMPEG', 'BKPSDM', '', 3, '2021', 'Website,', 'Indonesia', 10, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 6, NULL, 'http://202.154.184.77:88/simpegtpinang/MZLogin/', '', '', '', '', 'BKPSDM', '', 'Dwi Cahyani M., S.KKK', '198205202005022005', 'Pembimbing Kesehatan Kerja', '08127757019', 'resources/data_aplikasi/ST_Pengguna_Aplikasi8.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-14_at_08_57_19.jpeg', '', '', '', '', 0, 0, NULL, 83, '2023-03-14 09:01:22', 227, '2026-08-24 13:48:32', NULL, NULL),
(136, 152, '1', 'Internalpancur@gmail.com', 'GOOGLE', 'Mengirim data data yang diperlukan, sebagai alat komunikasi pengiriman data ke tata usaha', 4, '2022', 'Android,iOS,Desktop,', 'C++', 10, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 2, NULL, 'Internalpancur@gmail.com', 'Tidak Tahu', '', '', '', 'Rika Susinta a.Md.Keb', '', 'Rika Susinta, A.Md Keb', '199405052019022007', 'Admin OPD  dan Bidan pada Puskesmas Tanjungpinang', '082285727244', 'resources/data_aplikasi/SK_admin_2.pdf', 'resources/data_aplikasi/logo_kemenkes_hijau.jpg', '', '', NULL, '', 0, 0, 'Bukan aplikasi yang dimaksud', 68, '2023-03-14 09:21:36', NULL, NULL, 11, '2025-03-10 10:25:07'),
(137, 157, '2', 'RENBUT', 'Kemenkes', '', 4, '2019', 'Website,', 'Indonesia', 10, NULL, 4, 'di atas 100 pengguna', 7, NULL, 'https://renbut.kemkes.go.id/', '', '', '', '', 'Kemenkes', '', 'Al Atika., AMK', '197804302000122003', 'Perawat Mahir', '081364792824', 'resources/data_aplikasi/ST_Pengguna_Aplikasi9.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-13_at_12_08_08_(2).jpeg', '', '', '', '', 0, 0, NULL, 83, '2023-03-14 09:25:41', 227, '2026-08-24 13:36:08', NULL, NULL),
(138, 157, '2', 'SISKOHATKES', 'KEMENKES', '', 4, '2012', 'Website,Android,iOS,', 'INDONESIA', 10, NULL, 4, 'di atas 100 pengguna', 7, NULL, 'https://siskohatkes.kemkes.go.id/authenticate/login', '', '', '', '', 'KEMENKES', '', 'MAHARANI SEPTINA', 'NR-PTT.61601090', 'PTT', '085264887321', 'resources/data_aplikasi/ST_Pengguna_Aplikasi10.pdf', 'resources/data_aplikasi/SISKOHATKES.png', '', '', '', '', 0, 0, NULL, 80, '2023-03-14 09:30:08', 227, '2026-08-24 13:40:22', NULL, NULL),
(139, 124, '2', 'Sistem Informasi Manajemen Bangunan Gedung', 'KEMENTERIAN PU', 'Aplikasi Pendataan dan sistem informasi di Pemerintah Kota Tanjungpinang', 1, '2018', 'Website,', 'PHPJS', 1, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'simbg.pu.go.id', '', '', 'SIMBG', 'DPMPTSP', 'KEMENTERIAN PU', 'UU Nomor 28 Tahun 2002', 'HENDRO SULISTIYO, ST', '197705142009021003', 'KEPALA BIDANG CIPTA KARYA', '08117019770', 'resources/data_aplikasi/SK_PENGAWAS_SIMBG_2025.pdf', 'resources/data_aplikasi/new-logo-simbg-primary.png', '', '', '', '', 0, 0, NULL, 25, '2023-03-14 10:18:38', 206, '2026-08-28 11:00:43', NULL, NULL),
(140, 157, '2', 'SELENA', 'KEMENKES', '', 3, '2022', 'Website,Android,', 'INDONESIA', 10, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 3, NULL, 'https://monevkatalogobat.kemkes.go.id/#front/home', '', '', '', '', 'KEMENKES', '', 'FARADIBA FASIHA', '199602172022022002', 'APOTEKER AHLI PERTAMA', '021327730460', 'resources/data_aplikasi/ST_Pengguna_Aplikasi11.pdf', 'resources/data_aplikasi/Screenshot_(18).png', '', '', '', '', 0, 0, NULL, 80, '2023-03-14 11:27:06', 227, '2026-08-24 13:36:41', NULL, NULL),
(141, 157, '2', 'SIMONA', 'KEMENKES', '', 3, '2022', 'Website,Android,', 'INDONESIA', 10, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 3, NULL, 'https://simyanfar.kemkes.go.id/#/', '', '', '', '', 'KEMENKES', '', 'FARADIBA FASIHA', '199602172022022002', 'APOTEKER AHLI PERTAMA', '021327730460', 'resources/data_aplikasi/ST_Pengguna_Aplikasi12.pdf', 'resources/data_aplikasi/Screenshot_(20).png', '', '', '', '', 0, 0, NULL, 80, '2023-03-14 11:33:37', 227, '2026-08-24 13:48:15', NULL, NULL),
(142, 157, '2', 'Mutu Fasyankes', 'kemenkes', '', 1, '2022', 'Website,', 'HDML', 9, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 6, NULL, 'mutufasyankes.kemkes.go.id', '', '', '', '', 'kemenkes', '', 'dr. Fitria Kemala Sari', '198406172009042003', 'Dokter Madya', '081992311655', 'resources/data_aplikasi/ST_Pengguna_Aplikasi13.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-14_at_11_37_57.jpeg', '1 orang operator', '', '', '', 0, 0, NULL, 76, '2023-03-14 11:39:48', 227, '2026-08-24 13:35:28', NULL, NULL),
(143, 153, '2', 'Sistem Informasi Pegawai', '-', 'berisi seluruh informasi kepegawaian PNS di Kota Tanjungpinang', 2, '2010', 'Website,Desktop,', 'tidak diketahui', 9, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 8, NULL, '202.154.184.77:88/simpegtpinang/MZLogin', '', '-', 'OSS BKPSDM lainnya', 'BKPSDM, DKP2KB', 'tidak diketahui', '-', 'Ratna Pratiwi, S.AP', '19870505 200604 2 00', 'Analis Tata Usaha', '+62 813-7287-5537', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi18.pdf', 'resources/data_aplikasi/SIMPEG.png', 'ADMIN', 'Aplikasi Simpeg memudahkan bagian Kepegawaian untuk mencari informasi atau data mengenai PNS dan update data PNS', '', '', 0, 0, NULL, 34, '2023-03-14 12:02:41', 34, '2026-08-20 09:17:23', NULL, NULL),
(144, 157, '2', 'SITKO', 'Kemenkes', '', 4, '2018', 'Website,', 'Indonesia', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'https://sitko.kemkes.go.id/puskesmas', '', '', '', '', 'Kemenkes', '', 'Dwi Cahyani. M, S. KKK', '19820520 200502 2 00', 'Pembimbing Kesehatan Kerja Pertama', '08127757019', 'resources/data_aplikasi/ST_Pengguna_Aplikasi14.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-10_at_15_09_13.jpeg', '', '', '', '', 0, 0, NULL, 86, '2023-03-14 12:06:14', 227, '2026-08-24 13:35:07', NULL, NULL),
(145, 157, '2', 'MPDN', 'kemenkes', '', 2, '2019', 'Website,', 'HDML', 9, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 8, NULL, 'mpdn,kemenkes.go.id', '', '', '', '', 'kemenkes', '', 'Rina Mustika', '198603242010012010', 'bidan mahir', '085263448677', 'resources/data_aplikasi/ST_Pengguna_Aplikasi15.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-14_at_12_09_48.jpeg', '1 orang operator', '', '', '', 0, 0, NULL, 85, '2023-03-14 12:12:03', 227, '2026-08-24 13:34:25', NULL, NULL),
(146, 157, '2', 'SITB', 'DINKES', '', 4, '2021', 'Website,', 'INDONESIA', 9, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'Sitb.id/sitb/pasienso#', '', '', '', '', 'UPTD PUSKESMAS MEKAR BARU', '', 'NOVIATUN BARROTUT TAQIYAH', '1988110902010012002', 'PENATA MUDA TK. I / III B', '081371950980', 'resources/data_aplikasi/ST_Pengguna_Aplikasi16.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-14_at_12_19_25.jpeg', '', '', '', '', 0, 0, NULL, 73, '2023-03-14 12:20:34', 227, '2026-08-24 13:34:51', NULL, NULL),
(147, 157, '2', 'SIHA', 'DINKES', '', 4, '2015', 'Website,', 'INDONESIA', 9, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'https://siha.kemkes.go.id/index.php', '', '', '', '', 'UPTD PUSKESMAS MEKAR BARU', '', 'NOVIATUN BARROTUT TAQIYAH', '198811092010012002', 'PENATA MUDA TK. I / III B', '081371950980', 'resources/data_aplikasi/ST_Pengguna_Aplikasi18.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-14_at_12_19_25_(1)1.jpeg', '', '', '', '', 0, 0, NULL, 73, '2023-03-14 12:24:54', 227, '2026-08-24 13:41:34', NULL, NULL),
(148, 157, '2', 'SILANTOR', 'KEMENKES', '', 4, '2021', 'Website,Android,', 'INDONESIA', 10, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 3, NULL, 'https://silantor.kemkes.go.id/', '', '', '', '', 'KEMENKES', '', 'YUNIARSIH', '197603271996032002', 'PERAWAT PENYELIA', '081366284363', 'resources/data_aplikasi/ST_Pengguna_Aplikasi20.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-14_at_12_25_26.jpeg', '', '', '', '', 0, 0, NULL, 80, '2023-03-14 12:27:58', 227, '2026-08-24 13:47:06', NULL, NULL),
(149, 153, '2', 'E-Formasi', 'Kementerian Kesehatan Republik Indonesia', 'e-Formasi atau sistem aplikasi e-formasi ASN adalah merupakan salah satu sistem yang berguna untuk penyusunan kebutuhan formasi ASN setiap tahunnya.', 4, '2020', 'Website,Desktop,', 'tidak diketahui', 9, NULL, 4, 'di atas 100 pengguna', 7, NULL, 'cloud.mcreasindo.com/kes-eformasi/formasi_jfk', '', '-', '-', 'DKP2KB, BKPSDM, DINKES PROVINSI KEPRI. KEMENKES RI, MENPAN RB', 'tidak diketahui', '-', 'Ratna Pratiwi, S.AP', '19870505 200604 2 00', 'Analis Tata Usaha', '+62 813-7287-5537', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi19.pdf', 'resources/data_aplikasi/E_FORMASI.jpeg', 'ADMIN', 'Tujuan sistem e-formasi ini adalah untuk mengetahui gambaran struktur organisasi, peta jabatan, jumlah pegawai yang ada, jumlah pegawai yang dibutuhkan dan jumlah kekurangan/kelebihan pegawai di instansi pemerintah', '', '', 0, 0, '', 34, '2023-03-14 12:28:59', 34, '2026-08-20 09:11:36', 11, '2025-03-10 14:38:47'),
(150, 157, '2', 'SKDR', 'KEMENKES', '', 4, '2021', 'Website,Android,', 'INDONESIA', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'https://skdr.surveilans.org/auth', '', '', '', '', 'KEMENKES', '', 'YUNIARSIH', '197603271992032002', 'PERAWAT PENYELIA', '08126125634', 'resources/data_aplikasi/ST_Pengguna_Aplikasi21.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-14_at_12_25_27.jpeg', '', '', '', '', 0, 0, NULL, 80, '2023-03-14 12:34:41', 227, '2026-08-24 13:41:00', NULL, NULL),
(151, 153, '2', 'SIHA (Sistem Informasi HIV/AIDS)', 'Kementerian Kesehatan Republik Indonesia', 'pencatatan dan pelaporan HIV AIDS', 4, '2020', 'Website,Desktop,', 'tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'https://sihapims.kemkes.go.id/', '', '-', '-', 'DKP2KB, KEMENKES RI', 'tidak diketahui', '-', 'Sadar Naoli Nainggolan, AMK', '19800202 200502 2 00', 'Perawat Penyelia', '+62 813-7214-5714', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi20.pdf', 'resources/data_aplikasi/SIHA.jpeg', 'ADMIN', 'diharapkan dengan pencatatan dan pelaporan HIV AIDS yang terintegrasi dapat  menanggulangi epidemi HIV dan AIDS secara komprehensif dan efektif', '', '', 0, 0, NULL, 34, '2023-03-14 12:38:12', 34, '2026-08-20 09:14:48', NULL, NULL),
(152, 157, '2', 'Mobile JKN', 'bpjs kesehatan', '', 1, '2021', 'Android,', '-', 9, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'mobiljkn.go.id', '', '', '', '', 'bpjs kesehatan', '', 'dr.neni tanjung', '445.166', 'dokter umum', '081361335523', 'resources/data_aplikasi/ST_Pengguna_Aplikasi22.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-13_at_16_35_04.jpeg', 'satu orang operator', '', '', '', 0, 0, NULL, 76, '2023-03-14 12:41:28', 227, '2026-08-20 10:34:26', NULL, NULL),
(153, 157, '2', 'SIMKESWA', 'kemenkes', '', 2, '2022', 'Website,', 'HDML', 9, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'simkeswa.kemkes.go.id', '', '', '', '', 'kemenkes', '', 'AL ATIKA', '197804302000122003', 'Perawat Mahir', '081364792824', 'resources/data_aplikasi/ST_Pengguna_Aplikasi23.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-14_at_12_57_03.jpeg', '1 orang operator', '', '', '', 0, 0, NULL, 87, '2023-03-14 12:57:54', 227, '2026-08-24 13:47:20', NULL, NULL),
(154, 157, '2', 'pcare eclaim', 'bpjs kesehatan', 'milik BPJS Kesehatan yang menawarkan Fasilitas Kesehatan Tingkat Pertama (FTKP) untuk masyarakat', 2, '2014', 'Website,', 'HDML', 9, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'pcarejkn.bpjs-kesehatan.go.id/eclaim/Login', '', '', 'epuskesmas', 'dinas kesehatan pengendalian penduduk dan keluarga berencana', 'bpjs kesehatan', '', 'zahrotul aziza', '199107142015032001', 'staff', '082218566867', 'resources/data_aplikasi/ST_Pengguna_Aplikasi24.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-10_at_14_41_49.jpeg', 'ADMIN UTAMA', '', '', '', 0, 0, NULL, 75, '2023-03-14 13:02:58', 227, '2026-08-24 13:35:59', NULL, NULL),
(155, 157, '2', 'SEHAT INDONESIAKU', 'KEMENKES', 'aplikasi terpusat yang digunakan untuk input dan monitoring data perkembangan pasien/peserta program untuk seluruh tenaga kesehatan layanan Primer.', 3, '2022', 'Android,', '-', 9, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 3, NULL, '', '', '', '', '', 'KEMENKES', '', 'ZAHROTUL AZIZA', '1991071420150320001', 'staff', '082218566867', 'resources/data_aplikasi/ST_Pengguna_Aplikasi25.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-10_at_14_41_49_(1).jpeg', '', '', '', '', 0, 0, NULL, 75, '2023-03-14 13:16:41', 227, '2026-08-24 13:36:33', NULL, NULL),
(156, 157, '2', 'ASIK', 'KEMENKES', '', 4, '2022', 'Website,Android,', 'INDONESIA', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'https://sehatindonesiaku.kemkes.go.id/login', '', '', '', '', 'KEMENKES', '', 'NENI SEPTIANI', '198409022015032001', 'PERAWAT MAHIR', '08117008851', 'resources/data_aplikasi/ST_Pengguna_Aplikasi26.pdf', 'resources/data_aplikasi/Screenshot_(24).png', '', '', '', '', 0, 0, 'Tambahkan deskripsi Aplikasi', 80, '2023-03-14 13:21:38', 227, '2026-08-24 13:34:42', 11, '2025-03-10 14:28:35'),
(157, 110, '2', 'SIAK', 'Kementrian Dalam Negeri', 'adalah aplikasi untuk mengolah data administrasi kependudukan.Keluaran dari aplikasi ini adalah Kartu Keluarga,Akte Kelahiran, Akte Kematian ,Akte Perkawinan,dll.', 2, '2011', 'Desktop,', 'bahasa indonesia', 1, NULL, 4, 'di atas 100 pengguna', 1, NULL, '', 'Tidak Ada', '', 'tidak ada', 'tidak ada', 'Kementrian Dalam Negeri', 'Undang-undang N0.23 Tahun 2006 tentang Administrasi kependudukan', 'YUSRIZAL,S.KOM.M.KOM', '197110242010011003', 'Analis Sistem Informasi', '081270033885', 'resources/data_aplikasi/Surat_Penanggunjawab_Aplikasi.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-13_at_15_03_19.jpeg', '-', '-', NULL, '', 1, 0, '', 72, '2023-03-14 13:42:19', NULL, NULL, 11, '2025-03-06 11:51:52'),
(158, 153, '2', 'SIHEPI (Sistem Informasi Hepatitis)', 'Kementerian Kesehatan Republik Indonesia', 'Pencatatan dan pelaporan hepatitis dan infeksi saluran pencernaan', 4, '2020', 'Website,Desktop,', 'tidak diketahui', 9, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'sihepi.kemkes.go.id/hepc/dashboard/dashboard_main.php', '', '-', '-', 'DKP2KB, DINKES PROVINSI KEPRI, KEMENKES RI', 'tidak diketahui', '-', 'Sadar Naoli Nainggolan, AMK', '19800202 200502 2 00', 'Perawat Penyelia', '+62 813-7214-5714', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi21.pdf', 'resources/data_aplikasi/SIHEPI.jpeg', 'ADMIN', 'diharapkan dapat membantu monitoring dan evaluasi pelaksanaan deteksi dini hepatitis C', '', '', 0, 0, NULL, 34, '2023-03-14 13:47:28', 34, '2026-08-20 09:15:12', NULL, NULL),
(159, 111, '2', 'SISKOHATKES', 'Pusat Kesehatan Haji Kemenkes', '', 2, '2018', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 7, NULL, 'siskohatkes.kemkes.go.id', '', '', '', 'Puskesmas, Kementerian Agama', 'Tidak Tahu', '', 'Yuli Permatasari', '198107262005022002', 'Pengawas monitoring dan evaluasi imunisasi', '081364466572', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB.pdf', 'resources/data_aplikasi/SISKOHATKES.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-14 13:49:18', 31, '2026-08-20 09:22:42', NULL, NULL),
(160, 110, '2', 'BENROLL', 'Kementrian Dalam Negeri', 'adalah aplikasi yang digunakan untuk merekam data biometrik, yang meliputi irish mata,foto,sidik jari dan tanda tangan.Data biometrik disimpan dalam data base terpisah tetapi terhubung dengan biodata', 2, '2011', 'Desktop,', 'bahasa indonesia', 1, NULL, 4, 'di atas 100 pengguna', 1, NULL, '', 'Tidak Ada', '', 'tidak ada', 'tidak ada', 'Kementrian Dalam Negeri', 'Undan-undang No.23 Tahun 2006 tentang Administrasi Kependudukan', 'YUSRIZAL,S.Kom,M.Kom', '197110242010011003', 'Analis Sistem Informasi', '081270033885', 'resources/data_aplikasi/Surat_Penanggunjawab_Aplikasi_(1).pdf', 'resources/data_aplikasi/Benrol.jpeg', '-', '-', NULL, '', 1, 0, '', 72, '2023-03-14 13:56:36', NULL, NULL, 11, '2025-03-06 11:49:11'),
(161, 153, '2', 'SISMAL (Sistem Informasi Malaria)', 'Kementerian Kesehatan Republik Indonesia', 'Sistem Informasi Surveilans Malaria (SISMAL) adalah instrumen guna melakukan kegiatan pencatatan, pelaporan dan untuk meningkatkan validitas dan kelengkapan dalam pelaporan data malaria', 4, '2019', 'Website,Desktop,', 'tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'sismal.kemkes.go.id/login', '', '-', '-', 'DKP2KB, DINKES PROVINSI KEPRI, KEMENKES RI', 'tidak diketahui', '-', 'Anna Elizabeth Purba, AMK', '19840728 200902 2 00', 'Perawat Penyelia', '+62 813-7214-4598', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi22.pdf', 'resources/data_aplikasi/SISMAL.jpeg', 'ADMIN', 'Aplipikasi SISMAL memberikan manfaat bagi peningkatan dan kemampuan petugas malaria di puskesmas dalam melakukan pelaporan penderita malaria di wilayah kerja puskesmas masing-masing sehingga dari data yang diperoleh dapat diambil langkah, tindakan dan kebijakan untuk menanggulangi permasalahan malaria.', '', '', 0, 0, NULL, 34, '2023-03-14 14:02:02', 34, '2026-08-20 09:17:15', NULL, NULL),
(162, 110, '2', 'BCARD', 'Kementrian Dalam Negeri', 'adalah aplikasi yang digunakan untuk mencetak KTP elektronik .Terkoneksi dengan data center Kemendagri', 2, '2011', 'Desktop,', 'bahasa indonesia', 1, NULL, 4, 'di atas 100 pengguna', 1, NULL, '', '', '', 'tidak ada', 'tidak ada', 'Kementrian Dalam Negeri', 'Undang -undang No.23 Tahun 2006 Adminsitrasi Kependudukan', 'YUSRIZAL,S.KOM.M.KOM', '197110242010011003', 'Penata Kelola Sistem dan teknologi Informasi', '081270033885', 'resources/data_aplikasi/Surat_Penanggunjawab_Aplikasi_(1)1.pdf', 'resources/data_aplikasi/Bcard.jpeg', 'tidak ada', 'tidak ada', '', '', 0, 0, '', 72, '2023-03-14 14:02:29', 197, '2026-06-30 08:54:44', 11, '2025-03-06 11:48:53'),
(163, 157, '2', 'SLHS', 'KEMENKES', '', 4, '2022', 'Website,', 'HMDL', 9, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'tpm.kemkes.go.id', '', '', '', '', 'KEMENKES', '', 'DANI IMADUDDIN', '198202042006041010', 'Pemeriksa Sanitasi', '081277199998', 'resources/data_aplikasi/ST_Pengguna_Aplikasi27.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-11_at_08_07_13.jpeg', '1 orang operator', '', '', '', 0, 0, NULL, 88, '2023-03-14 14:04:13', 227, '2026-08-24 13:41:50', NULL, NULL),
(164, 111, '2', 'SITKO', 'Kemenkes', 'Merupakan Sistem Informasi Terpadu Kesehatan Kerja dan Olahraga', 2, '2020', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'sitko.kemkes.go.id', '', '', '', '', 'Tidak diketahui', '', 'Kusuma Wijayanti', '198601042010012007', 'pemeriksa sanitasi', '082304011986', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB1.pdf', 'resources/data_aplikasi/Logo_Aplikasi.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-14 14:04:49', 31, '2026-08-20 09:21:23', NULL, NULL),
(165, 111, '2', 'e-formasi jabatan fungsional kesehatan', 'Kemenkes', '', 2, '2021', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 8, NULL, 'cloud.mcreasindo.com/kes-eformasi', '', '', '', '', 'Tidak diketahui', '', 'Sri Fathenia Qisthi,S.Psi', '1999607152020122004', 'analis kepegawaian ahli pertama', '081261001670', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB2.pdf', 'resources/data_aplikasi/E-FORMASI.jpg', '', '', '', '', 0, 0, 'Tambahkan deskripsi Aplikasi', 31, '2023-03-14 14:09:39', 31, '2026-08-20 09:12:28', 11, '2025-03-10 14:39:31'),
(166, 111, '2', 'OSS BKPSDM', 'BKPSDM', '', 3, '2020', 'Website,', 'Tidak tahu', 10, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'oss-bkpsdm.tanjungpinangkota.go.id', '', '', '', 'BKPSDM', 'Tidak diketahui', '', 'Sri Fathenia Qisthi,S.Psi', '1999607152020122004', 'analis kepegawaian ahli pertama', '081261001670', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB3.pdf', 'resources/data_aplikasi/OSS_BKPSDM.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-14 14:13:12', 31, '2026-08-20 09:17:59', NULL, NULL),
(167, 157, '2', 'STBM', 'KEMENKES', '', 2, '2015', 'Website,', 'HMDL', 9, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'http://monev.stbm.kemkes.go.id', '', '', '', '', 'KEMENKES', '', 'DANI IMADUDDIN', '198202042006041010', 'Pemeriksa Sanitasi', '081277199998', 'resources/data_aplikasi/WhatsApp_Image_2023-03-11_at_08_15_35.jpeg', 'resources/data_aplikasi/WhatsApp_Image_2023-03-11_at_08_15_351.jpeg', '1 ORANG OPERATOR', '', '', '', 0, 0, NULL, 88, '2023-03-14 14:13:46', 227, '2026-08-24 13:39:28', NULL, NULL),
(168, 111, '2', 'E-SAKIP', 'Pemko Tanjungpinang', '', 3, '2018', 'Website,', 'Tidak tahu', 10, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 7, NULL, 'esakip.tanjungpinangkota.go.id', '', '', '', '', 'Tidak diketahui', '', 'R.Leila Mutia,SKM', '197608052003122009', 'Perencana ahli muda', '081364309329', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB4.pdf', 'resources/data_aplikasi/ESAKIP.jpg', '', '', '', '', 0, 0, 'Aplikasi milik Inspektorat', 31, '2023-03-14 14:16:53', 31, '2026-08-20 09:13:32', 11, '2025-03-10 15:26:10'),
(169, 110, '2', 'E OFFICE', 'Kementrian Dalam Negeri', 'adalah aplikasi yang digunakan untuk proses pengajuan pindah datang yang difasilitasi Dinas Kependudukan dan Pencatatan Sipil seluruh Indonesia', 2, '2021', 'Website,', 'bahasa indonesia', 1, NULL, 4, 'di atas 100 pengguna', 1, NULL, '-', 'Tidak Ada', '', 'tidak ada', 'tidak ada', 'Kementrian Dalam Negeri', '', 'YUSRIZAL,S.KOM.M.KOM', '197110242010011003', 'Analis Sistem Informasi', '081270033885', 'resources/data_aplikasi/Surat_Penanggunjawab_Aplikasi_(1)2.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-14_at_11_11_49.jpeg', '-', '-', NULL, '', 1, 0, '', 72, '2023-03-14 14:17:11', NULL, NULL, 11, '2025-03-06 11:49:30'),
(170, 153, '2', 'Silantor (Surveilan Vektor)', 'Kementerian Kesehatan Republik Indonesia', 'Silantor ini merupakan sistem yang dikembangkan dalam rangka kewaspadaan dini terhadap penyakit tular vektor dan zoonotik.', 4, '2019', 'Website,Android,', 'tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'silantor.kemkes.go.id', '', '-', '-', 'DKP2KB, Dinkes Provinsi Kepri, KEMENKES RI', 'tidak diketahui', '-', 'Anna Elizabeth Purba, AMK', '19780427 200502 2 00', 'Perawat Penyelia', '+62 813-7214-4598', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi23.pdf', 'resources/data_aplikasi/SILANTOR.jpeg', 'ADMIN', 'Data vektor yang diinput ke Silantor akan dianalisis secara otomatis oleh sistem untuk mengetahui tingkat kebahayaan penyakit tular vektor.\r\nDengan mengetahui kepadatan vektor di suatu wilayah maka akan diketahui potensi penyakit yang akan muncul seperti apa.', '', '', 0, 0, NULL, 34, '2023-03-14 14:18:30', 34, '2026-08-20 09:15:25', NULL, NULL),
(171, 111, '2', 'Sistem Informasi Pegawai (SIMPEG)', 'BKPSDM', '', 2, '2018', 'Website,', 'Tidak tahu', 10, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, '202.154.184.77:88/simpegtpinang/MZLogin/', '', '', '', '', 'Tidak diketahui', '', 'Sri Fathenia Qisthi,S.Psi', '1999607152020122004', 'analis kepegawaian ahli pertama', '081261001670', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB5.pdf', 'resources/data_aplikasi/SIMPEG.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-14 14:20:25', 127, '2026-08-20 09:13:19', NULL, NULL),
(172, 111, '2', 'esakip review', 'MENPAN-RB', '', 2, '2018', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 7, NULL, 'esr.menpan.go.id', '', '', '', '', 'Tidak diketahui', '', 'R.Leila Mutia,SKM', '197608052003122009', 'Perencana ahli muda', '081364309329', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB6.pdf', 'resources/data_aplikasi/ESAKIP_REVIEW.jpg', '', '', '', '', 0, 0, 'Tambahkan deskripsi Aplikasi', 31, '2023-03-14 14:23:07', 31, '2026-08-20 09:14:21', 11, '2025-03-10 15:29:15'),
(173, 157, '2', 'SIKELIM', 'KEMENKES', '', 2, '2022', 'Website,', 'HMDL', 9, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'sikelimkemkes.id', '', '', '', '', 'KEMENKES', '', 'DANI IMADUDDIN', '198202042006041010', 'Pemeriksa Sanitasi', '081277199998', 'resources/data_aplikasi/ST_Pengguna_Aplikasi28.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-11_at_08_11_41.jpeg', '1 ORANG OPERATOR', '', '', '', 0, 0, NULL, 88, '2023-03-14 14:23:39', 227, '2026-08-24 13:42:35', NULL, NULL),
(174, 111, '2', 'Lapor SP4N', 'Diskominfo', '', 3, '2019', 'Website,', 'Tidak tahu', 10, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'tanjungpinangkota.lapor.go.id', '', '', '', '', 'Tidak diketahui', '', 'R.Leila Mutia,SKM', '197608052003122009', 'Perencana ahli muda', '081364309329', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB7.pdf', 'resources/data_aplikasi/LAPOR_SP4N.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-14 14:25:16', 31, '2026-08-20 09:15:48', NULL, NULL),
(175, 111, '2', 'e-SPM', 'Kemendagri', '', 2, '2021', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 4, NULL, 'spm.bangda.kemendagri.go.id', '', '', '', '', 'Tidak diketahui', '', 'R.Leila Mutia,SKM', '197608052003122009', 'Perencana ahli muda', '081364309329', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB8.pdf', 'resources/data_aplikasi/E-SPM.jpg', '', '', '', '', 0, 0, 'Tambahkan deskripsi Aplikasi', 31, '2023-03-14 14:27:25', 31, '2026-08-20 09:13:47', 11, '2025-03-10 15:26:44'),
(176, 153, '2', 'E-Monev Kualitas Kesling (TTU, TFU, PKAM, STBM, PLM, KKS)', 'Kementerian Kesehatan Republik Indonesia', 'berupa website yg digunakan untuk mengolah data TTU, pkam, stbm', 4, '2020', 'Website,', 'tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'e-satu.kemkes.go.id', '', '-', '-', 'DKP2KB, DINKES PROVINSI KEPRI, KEMENKES RI', 'tidak diketahui', '-', 'Nelvy Ernita, S.KL', '19810607 200604 2 02', 'Sanitaran Penyelia', '+62 812-7002-1688', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi24.pdf', 'resources/data_aplikasi/E_MONEV.jpeg', 'ADMIN', 'Diharapkan dapat dapat meningkatkan kualitas air dengan mengurangi polusi, menghentikan pembuangan limbah, meminimalisasi produksi limbah berbahaya, mengurangi air limbah yang tidak diolah, meningkatkan daur ulang (recycle), dan penggunaan kembali (reuse) secara substansial.', '', '', 0, 0, '', 34, '2023-03-14 14:29:24', 34, '2026-08-20 09:12:01', 11, '2025-03-10 14:49:18'),
(177, 111, '2', 'eformasi Kemenpan', 'MENPAN-RB', '', 2, '2020', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'https://formasi.menpan.go.id/', '', '', '', '', 'Tidak diketahui', '', 'Sri Fathenia Qisthi,S.Psi', '197608052003122009', 'Perencana ahli muda', '081364309329', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB9.pdf', 'resources/data_aplikasi/EFORMASI_KEMENPAN.jpg', '', '', '', '', 0, 0, 'Tambahkan deskripsi Aplikasi', 31, '2023-03-14 14:31:12', 31, '2026-08-20 09:13:57', 11, '2025-03-10 15:27:38'),
(178, 157, '2', 'TFU', 'KEMENKES', '', 2, '2022', 'Website,', 'HMDL', 9, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'e-satu.kemkes.go.id', '', '', '', '', 'KEMENKES', '', 'DANI IMADUDDIN', '198202042006041010', 'Pemeriksa Sanitasi', '081277199998', 'resources/data_aplikasi/ST_Pengguna_Aplikasi-1.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-11_at_08_13_48.jpeg', '1 ORANG OPERATOR', '', '', '', 0, 0, NULL, 88, '2023-03-14 14:31:13', 227, '2026-08-24 13:37:51', NULL, NULL),
(179, 111, '2', 'e-Anjab ABK', 'Kemendagri', '', 2, '2022', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 8, NULL, 'anjababk-simona.kemendagri.go.id', '', '', '', '', 'Tidak diketahui', '', 'Sri Fathenia Qisthi,S.Psi', '1999607152020122004', 'analis kepegawaian ahli pertama', '081261001670', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB10.pdf', 'resources/data_aplikasi/E-ANJAB-ABK.jpg', '', '', '', '', 0, 0, 'Tambahkan deskripsi Aplikasi', 31, '2023-03-14 14:33:20', 31, '2026-08-20 09:12:20', 11, '2025-03-10 14:36:11'),
(180, 111, '2', 'eRenggar', 'Kemenkes', '', 2, '2014', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 3, NULL, 'e-renggar.kemkes.go.id', '', '', '', '', 'Tidak diketahui', '', 'R.Leila Mutia,SKM', '197608052003122009', 'Perencana ahli muda', '081261001670', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB11.pdf', 'resources/data_aplikasi/E-RENGGAR.jpg', '', '', '', '', 0, 0, '', 31, '2023-03-14 14:35:48', 31, '2026-08-20 09:14:11', 11, '2025-03-10 15:28:28'),
(181, 111, '2', 'KRISNA', 'Pemko Tanjungpinang', '', 3, '2017', 'Website,', 'Tidak tahu', 10, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 3, NULL, 'tanjungpinangkota.krisna.systems', '', '', '', '', 'Tidak diketahui', '', 'R.Leila Mutia,SKM', '197608052003122009', 'Perencana ahli muda', '081364309329', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB12.pdf', 'resources/data_aplikasi/KRISNA.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-14 14:39:05', 31, '2026-08-20 09:15:35', NULL, NULL),
(182, 153, '2', 'E-Monev HSP (Higien dan Sanitasi Pangan)', 'Kementerian Kesehatan Republik Indonesia', 'website yang digunakan untuk mengolah data higiene Sanitasi Pangan', 4, '2014', 'Website,', 'tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'tpm.kemkes.go.id', '', '-', '-', 'DKP2KB, DINKES PROVINSI KEPRI, KEMENKES RI', 'tidak diketahui', '-', 'Nelvy Ernita, S.KL', '19810607 200604 2 02', 'Sanitaran Penyelia', '+62 812-7002-1688', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi25.pdf', 'resources/data_aplikasi/HSP.jpeg', 'USER', 'Model pengawasan TPM dengan e-Monev HSP sangat membantu karena data yang tersedia dapat langsung diinput oleh sanitarian puskesmas sehingga kabupaten, provinsi dan pusat dapat juga mengakses dan mendapatkan manfaat dengan informasi cepat ini.', '', '', 0, 0, '', 34, '2023-03-14 14:43:33', 34, '2026-08-20 09:11:47', 11, '2025-03-10 14:48:37'),
(183, 157, '2', 'SISMAL', 'KEMENKES', '', 2, '2017', 'Website,', 'HMDL', 9, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'sismal.kemkes.go.id/login', '', '', '', '', 'KEMENKES', '', 'DANI IMADUDDIN', '198202042006041010', 'Pemeriksa Sanitasi', '081277199998', 'resources/data_aplikasi/ST_Pengguna_Aplikasi-11.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-14_at_13_45_41(1).jpeg', '1 ORANG OPERATOR', '', '', '', 0, 0, NULL, 88, '2023-03-14 14:45:08', 227, '2026-08-24 13:41:11', NULL, NULL),
(184, 111, '2', 'KOMDAT', 'Kemenkes', '', 2, '2017', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'komdat.kemkes.go.id', '', '', '', '', 'Tidak diketahui', '', 'R.Leila Mutia,SKM', '197608052003122009', 'Perencana ahli muda', '081364309329', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB13.pdf', 'resources/data_aplikasi/KOMDAT_KEMKES.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-14 14:48:56', 31, '2026-08-20 09:15:09', NULL, NULL),
(185, 157, '2', 'EKOHORT', 'KEMENKES', '', 4, '2022', 'Website,', 'HMDL', 9, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'ekohort.kemenkes.go.id', '', '', '', '', 'KEMENKES', '', 'MOZA MUSMIRETNY', '199003142015032002', 'BIDAN MAHIR', '081376461119', 'resources/data_aplikasi/ST_Pengguna_Aplikasi-12.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-14_at_14_46_00.jpeg', '1 ORANG OPERATOR', '', '', '', 0, 0, 'Tambahkan deskripsi Aplikasi', 89, '2023-03-14 14:53:35', 227, '2026-08-28 15:40:14', 11, '2025-03-10 15:24:41'),
(186, 157, '2', 'SMILE', 'KEMENKES', '', 4, '2022', 'Website,', 'HMDL', 9, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'imunisasi-logistik.kemkes.go.id', '', '', '', '', 'KEMENKES', '', 'RIRI GUSPIKA ZULFI', '445.2.340', 'BIDAN', '081364995294', 'resources/data_aplikasi/ST_Pengguna_Aplikasi29.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-14_at_15_02_45.jpeg', '1 ORANG OPERATOR', '', '', '', 0, 0, NULL, 89, '2023-03-14 15:03:33', 227, '2026-08-24 13:42:48', NULL, NULL),
(187, 157, '2', 'KELUARGA SEHAT', 'KEMENKES', '', 4, '2017', 'Website,', 'HMDL', 9, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 3, NULL, 'keluargasehat.kemkes.go.id', '', '', '', '', 'KEMENKES', '', 'MARINI', '197908182003122009', 'PERAWAT AHLI MADYA', '081275814266', 'resources/data_aplikasi/ST_Pengguna_Aplikasi30.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-14_at_15_23_22.jpeg', '5 ORANG ADMIN', '', '', '', 0, 0, NULL, 91, '2023-03-14 15:24:35', 227, '2026-08-20 10:35:32', NULL, NULL),
(188, 157, '2', 'BOK SALUR', 'kemkes', '', 2, '2023', 'Website,', 'INDONESIA', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'e-renggar.kemkes.go.id', '', '', '', '', 'kemkes', '', 'ANDI NURCAHAYA', '198712032010012004', 'PERAWAT MAHIR', '081261989596', 'resources/data_aplikasi/ST_Pengguna_Aplikasi32.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-14_at_15_24_57.jpeg', '', '', '', '', 0, 0, 'Tambahkan deskripsi Aplikasi', 81, '2023-03-14 15:34:25', 227, '2026-08-28 15:39:55', 11, '2025-03-10 14:32:01'),
(189, 157, '2', 'MPN G3', 'kemenkeu', '', 1, '2020', 'Website,', 'INDONESIA', 2, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'mpn.kemenkeu.go.id/login', '', '', '', '', 'kemenkeu', '', 'ANDI NURCAHAYA, S.KL', '198712032010012004', 'PERAWAT MAHIR', '081261989596', 'resources/data_aplikasi/ST_Pengguna_Aplikasi33.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-14_at_15_26_591.jpeg', '', '', '', '', 0, 0, NULL, 81, '2023-03-14 15:40:31', 227, '2026-08-24 13:35:19', NULL, NULL),
(190, 157, '2', 'SIHEPI', 'kemenkes', '', 4, '2019', 'Website,', 'HDML', 9, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'sihepi.kemkes.go.id', '', '', '', '', 'kemenkes', '', 'Rina Mustika', '198603242010012010', 'bidan mahir', '085263448677', 'resources/data_aplikasi/ST_Pengguna_Aplikasi34.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-14_at_12_23_32.jpeg', '1 orang operator', '', '', '', 0, 0, NULL, 85, '2023-03-14 16:11:42', 227, '2026-08-24 13:42:21', NULL, NULL),
(191, 157, '2', 'DJP Online', 'direktorat jendral keuangan', '', 1, '2010', 'Website,', 'HDML', 9, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'djponline.pajak.go.id/login', '', '', '', '', 'direktorat jendral keuangan', '', 'MYSA ISTI WAHYUNI', '198706272010012004', 'BENDAHARA PENGELUARAN PEMBANTU', '085264692287', 'resources/data_aplikasi/ST_Pengguna_Aplikasi35.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-14_at_16_29_54.jpeg', '1 ORANG OPERATOR', '', '', '', 0, 0, 'Tambahkan deskripsi Aplikasi', 92, '2023-03-14 16:30:36', 227, '2026-08-28 15:40:05', 11, '2025-03-10 14:35:15'),
(192, 157, '2', 'CMS Bank Riau', '-', '', 1, '2020', 'Website,', 'HDML', 9, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 8, NULL, 'cms.brksyariah.co.id/CMSBRK/login', 'Tidak Ada', '', '', '', '-', '', 'MYSA ISTI WAHYUNI', '198706272010012004', 'BENDAHARA PENGELUARAN PEMBANTU', '195264692287', 'resources/data_aplikasi/ST_Pengguna_Aplikasi36.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-14_at_16_34_04.jpeg', '1 orang operator', '', NULL, '', 1, 0, '', 92, '2023-03-14 16:42:15', NULL, NULL, 11, '2025-03-10 14:33:02'),
(193, 132, '1', 'cektanah', 'Hartono', 'Masyarakat dapat mengecek surat tanahnya dengan aplikasi ini apakah terdaftar atau tidak diregister kecamatan', 1, '2022', 'Website,', 'php', 1, NULL, 3, 'di atas 100 pengguna', 1, NULL, 'https://cektanah.kecbukitbestari.tanjungpinangkota.go.id/', 'Tidak Ada', '', '', '', 'Hartono', '', 'LEO GUNAWAN, S.Sos', '197908192006041018', 'Sekretaris Kecamatan', '08127007908', 'resources/data_aplikasi/bukit_bestari.pdf', 'resources/data_aplikasi/Untitled.png', '', '', NULL, '', 1, 0, '', 90, '2023-03-14 19:20:22', NULL, NULL, 11, '2026-10-16 07:56:28'),
(194, 138, '1', 'Website Kelurahan', 'Hartono', 'Memberikan informasi tentang Kelurahan Melayu Kota Piring', 1, '2022', 'Website,', 'php', 1, NULL, 3, 'di atas 100 pengguna', 1, NULL, 'https://melayukotapiring.tanjungpinangkota.go.id/', 'Tidak Ada', '', '', '', 'Hartono', '', 'Hartono', '198410082006041007', 'Sekretaris Kelurahan', '085264271688', 'resources/data_aplikasi/sp_PIC.pdf', 'resources/data_aplikasi/Untitled1.png', '', '', NULL, '', 1, 0, 'Data Sub domain tidak ditemukan', 61, '2023-03-14 19:30:12', NULL, NULL, 11, '2025-03-10 09:36:21'),
(195, 153, '2', 'NEW SIGA (Sistem Informasi Keluarga)', 'BKKBN', 'Aplikasi New SIGA merupakan aplikasi sistem informasi keluarga dari BKKBN yang telah mengintegrasikan sistem informasi kependudukan dengan Basis Data Keluarga Indonesia.', 4, '2022', 'Website,Desktop,', 'Tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'newsiga.bkkbn.go.id', '', '-', 'Basis Data Keluarga Indonesia', 'DKP2KB, DINKES PROVINSI KEPULAUAN RIAU, BKKBN', '-', 'peraturan Pemerintah Nomor 87 tahun 2014 tentang Perkembangan Kependudukan Dan Pembangunan Keluarga Keluarga Berencana Dan Sistem Informasi Keluarga', 'Binti Purwanti, A.Md.Keb', '19810719 201001 2 00', 'Bidan Pelaksana Lanjutan', '081268212879', 'resources/data_aplikasi/SPT_PIC_APLIKASI.pdf', 'resources/data_aplikasi/siga.png', 'admin', 'Penggunaan aplikasi New SIGA akan mampu menyediakan data dan informasi keluarga yang handal bagi pemerintah pusat dan pemerintah daerah dalam mendukung program Pembangunan Keluarga, Kependudukan dan Keluarga Berencana (Bangga Kencana) yang telah ada sebelumnya', '', '', 0, 0, NULL, 34, '2023-03-14 20:17:46', 34, '2026-08-20 09:13:35', NULL, NULL),
(196, 153, '2', 'SITB (Sistem Informasi Tuberkulosis)', 'KEMENKES RI', 'Pencatatan dan Pelaporan Tuberkulosis', 4, '2020', 'Website,Desktop,', 'Tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 4, NULL, 'sumatera.sitb.id', '', '-', '-', 'DKP2KB, DINKES PROVINSI KEPRIL, KEMENKES RI', 'USAID', '-', 'Eka Nirmala A.Gani, AMK', '19881206 201101 2 00', 'Perawat Mahir', '085271603060', 'resources/data_aplikasi/SPT_PIC_APLIKASI1.pdf', 'resources/data_aplikasi/download.jpg', 'admin', 'melalui aplikasi ini memudahkan petugas untuk mendapatkan data TB yang valid', '', '', 0, 0, NULL, 34, '2023-03-14 20:37:02', 34, '2026-08-20 09:17:30', NULL, NULL),
(197, 153, '2', 'Siskohatkes (Sistem Komputerisasi Haji Bidang Kesehatan)', 'KEMENKES RI', 'sistem informasi untuk pencatatan pelaporan data kesehatan Jemaah Haji', 4, '2018', 'Website,Desktop,', 'Tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'puskeshaji.kemkes.go.id', '', '-', '-', 'DKP2KB, DINKES PROVINSI KEPRI, KEMENKES RI,', '-', 'peraturan menteri kesehatan No 62 Tahun 2016 Tentang Penyelenggaraan\r\nKesehatan Haji', 'Crisma Yuslinda, AMK', '19810624 200604 2 01', 'Perawat Mahir', '081364102800', 'resources/data_aplikasi/SPT_PIC_APLIKASI2.pdf', 'resources/data_aplikasi/SISKOHATKES1.png', 'ADMIN', 'Aplikasi ini mendukung pemeriksaan kesehatan jemaah haji sehingga masyarakat dapat melaksanakan ibadah haji dengan baik dan lancar.', '', '', 0, 0, NULL, 34, '2023-03-14 20:49:41', 34, '2026-08-20 09:16:51', NULL, NULL),
(198, 103, '1', 'Kopi Tarik', 'Inspektorat Daerah Kota Tanjungpinang', 'KOPI TARIK (Konsultasi Pengawasan Intern Tata Kelola Manajemen Risiko) adalah aplikasi yang digunakan sebagai jembatan antara Inspektorat Daerah Kota Tanjungpinang dengan perangkat daerah lain dalam ruang lingkup Pemerintah Kota Tanjungpinang untuk berkonsultasi terkait kebutuhan dalam mendapatkan informasi.\r\nTata cara penganjuan pertanyaan konsultasi dimulai dari ASN mendaftar menjadi user/pengguna, setelah berhasil mendaftar, ASN dapat mengajukan pertanyaan, pertanyaan akan diterima oleh PIC, kemudian PIC menjawab pertanyaan yang diajukan oleh ASN, setelah dijawab ASN langsung menerima notifikasi jawaban.', 3, '2022', 'Website,Android,', 'PHP, JS, Dart', 1, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'kopitarik.tanjungpinangkota.go.id', '', 'REST API', 'SIAP Tanjungpinang', 'Diskominfo', 'Danandjaya Saputra', '', 'RUDI YANTO, S.Kom', '198003122009021002', '-', '081270657599', 'resources/data_aplikasi/SPT_SUROSO2.pdf', 'resources/data_aplikasi/logo_kopi_tarik.png', 'Admin utama sebagai pengguna dengan hak akses penuh\r\npegawai sebagai pengguna dengan hak akses yang sudah di tentukan', '', '', '', 0, 1, NULL, 18, '2023-03-15 08:09:51', 235, '2026-08-21 09:28:18', 11, '2024-10-02 07:42:26'),
(199, 103, '1', 'SIKADU', 'Inspektorat Daerah Kota Tanjungpinang', 'SIKADU merupakan saluran pelaporan pelanggaran (Whistleblower\'s System) yang dilaporkan oleh Aparatur Sipil Negara (ASN) di lingkungan Pemerintah Kota Tanjungpinang. Pengaduan yang disampaikan adalah informasi terkait pelanggaran yang dilakukan oleh Aparatur Sipil Negara (ASN) di lingkungan Pemerintah Kota Tanjungpinang.', 3, '2022', 'Website,', 'PHP, JS', 1, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'sikadu.tanjungpinangkota.go.id', '', 'REST API', 'SIAP Tanjungpinang', 'Diskominfo Kota Tanjungpinang', 'Danandjaya Saputra', '', 'RUDI YANTO, S.Kom', '198003122009021002', '-', '081270657599', 'resources/data_aplikasi/SPT_SUROSO3.pdf', 'resources/data_aplikasi/Lambang_Kota_Tanjungpinang_1_(1).png', 'Admin Utama memiliki hak akses penuh\r\nPemeriksa memiliki hak akases yang sudah di tentukan\r\nPegawai memilik hak akses yang sudah di tentukan', '', '', '', 0, 1, NULL, 18, '2023-03-15 08:13:51', 235, '2026-08-21 09:28:31', 11, '2024-10-02 07:42:39'),
(200, 153, '2', 'SIPTM (Sistem Informasi Penyakit Tidak Menular (Kanker, Stroke, DM, Gangguan Indra)', 'Kementerian Kesehatan Republik Indonesia', 'merupakan aplikasi sistem informasi penyakit tidak menular yang digunakan untuk mengentry data skrining faktor resiko penyakit tidak menular', 4, '2020', 'Website,', 'tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'surveilans-pptm.kemkes.go.id', '', '-', '-', 'DKP2KB, DINKES PROVINSI KEPRI, KEMENKES RI', 'tidak diketahui', 'Permenkes 71 tahun 2015 tentang Penanggulangan Penyakit Tidak Menular', 'Defa Jayanti, A.Md.Keb', '19870107 201704 2 00', 'Bidan Terampil', '+62 823-8582-9906', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi26.pdf', 'resources/data_aplikasi/ptm.png', 'admin', 'aplikasi SIPTM digunakan sebagai monitoring dan evaluasi PTM di puskesmas', '', '', 0, 0, NULL, 34, '2023-03-15 08:59:15', 34, '2026-08-20 09:16:22', NULL, NULL),
(201, 122, '2', 'OSS RBA', 'Badan Koordinasi Penanaman Modal', 'sistem perizinan berbasis teknologi informasi yang mengintegrasikan perizinan di daerah dan pusat dalam rangka mempermudah kegiatan usaha di dalam negeri', 1, '2021', 'Website,', 'HTML', 1, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'oss.go.id', 'Ada', '', 'Terintegrasi dengan Amdalnet', 'DLH;DPMPTSP', 'Badan Koordinasi Penanaman Modal', 'Peraturan Pemerintah Nomor 5 Tahun 2021 tentang Penyelenggaraan Perizinan Berusaha Berbasis Risiko', 'Mulyadi, S.Kom. M.H', '197403142006041016', 'Kepala Bidang Tata Lingkungan', '081288886766', 'resources/data_aplikasi/surat_perintah_penanggung_jawab_aplikasi_website.pdf', 'resources/data_aplikasi/oss.jpg', '', '', NULL, '', 0, 0, '', 50, '2023-03-15 09:16:34', NULL, NULL, 11, '2025-03-10 10:25:41'),
(202, 153, '2', 'ASPAK (Aplikasi Sarana, Prasarana, dan Alat Kesehatan)', 'Kementerian Kesehatan Republik Indonesia', 'suatu aplikasi berbasis web yang menghimpun data dan menyajikan informasi mengenai Sarana, Prasarana, dan Alat Kesehatan pada Fasilitas Pelayanan Kesehatan.', 4, '2019', 'Website,Desktop,', 'tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'aspak.kemkes.go.id/aplikasi', '', '-', '-', 'DKP2KB, DINKES PROVINSI KEPRI, KEMENKES', 'tidak diketahui', 'PMK No 31 tentang Aplikasi Sarana Prasarana dan Alat Kesehatan', 'Mardiyanti, A.Md.Keb', '19870309 201704 2 00', 'Bidan Terampil', '+62 813-6471-2287', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi27.pdf', 'resources/data_aplikasi/ASPAK.jpg', 'admin', 'ASPAK dapat menjadi sebuah rujukan dalam perencanaan yang baik untuk pemenuhan sarana, prasarana dan alat kesehatan melalui ketersediaan data ataupun informasi yang valid, terbaru dan tepat waktu.', '', '', 0, 0, '', 34, '2023-03-15 09:18:33', 34, '2026-08-20 09:11:04', 11, '2025-03-10 14:31:18'),
(203, 122, '2', 'Amdalnet', 'Kementerian Lingkungan Hidup dan Kehutanan', 'Sistem Untuk untuk penyusunan, pendaftaran dan penilaian dokumen lingkungan', 1, '2023', 'Website,', 'HTML', 1, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'amdalnet.menlhk.go.id', 'Ada', '', 'Terintegrasi dengan OSS RBA', 'DLH;DPMPTSP', 'Kementerian Lingkungan Hidup dan Kehutanan', 'Peraturan Pemerintah Nomor 22 Tahun 2021 tentang Penyelenggaraan Perlindungan dan Pengelolaan Lingkungan Hidup', 'Mulyadi, S.Kom. M.H', '197403142006041016', 'Kepala Bidang Tata Lingkungan', '081288886766', 'resources/data_aplikasi/surat_perintah_penanggung_jawab_aplikasi_website1.pdf', 'resources/data_aplikasi/amdal_net.png', '', '', NULL, '', 1, 0, 'Agar memperbaharui penanggung jawab', 50, '2023-03-15 09:22:41', NULL, NULL, 1, '2026-04-22 10:04:09'),
(204, 122, '2', 'SIGN SMART', 'Kementerian Lingkungan Hidup dan Kehutanan', 'Pelaporan Penggunaan Emisi Gas Rumah Kaca di Kab/Kota', 2, '2015', 'Website,', 'HTML', 1, NULL, 4, 'di atas 100 pengguna', 7, NULL, 'signsmart.menlhk.go.id', 'Tidak Tahu', '', '', '', 'Kementerian Lingkungan Hidup dan Kehutanan', '', 'Mulyadi, S.Kom. M.H', '197403142006041016', 'Kepala Bidang Tata Lingkungan', '081288886766', 'resources/data_aplikasi/surat_perintah_penanggung_jawab_aplikasi_website2.pdf', 'resources/data_aplikasi/signsmart.png', '', '', NULL, '', 1, 0, '', 50, '2023-03-15 09:28:46', NULL, NULL, 11, '2025-03-06 12:42:53'),
(205, 153, '2', 'Simkeswa (Sistem Informasi Kesehatan Jiwa)', 'Kementerian Kesehatan Republik Indonesia', 'Simkeswa berupa website yg digunakan untuk mencatat atau penginputan pelaporan kegiatan terkait kesehatan jiwa seperti penangan pasien,skrining jiwa dll', 4, '2022', 'Website,Desktop,', 'tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'simkeswa.kemkes.go.id', '', '-', '-', 'DKP2KB, DINKES PROVINSI KEPRI, KEMENKES RI', 'tidak diketahui', '-', 'Nella Novita Dewi, A.Md.Kep', '19931102 201902 2 00', 'Perawat Terampil', '+62 812-4953-2121', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi28.pdf', 'resources/data_aplikasi/simkeswa.jpeg', 'admin', 'Sistem informasi kesehatan\r\njiwa ini akan digunakan di Fasilitas Kesehatan Tingkat Pertama sebagai penginput data\r\nawal dari kunjungan pasien maupun dari laporan masyarakat/kader kesehatan jiwa.', '', '', 0, 0, NULL, 34, '2023-03-15 09:32:32', 34, '2026-08-20 09:15:32', NULL, NULL),
(206, 122, '2', 'Sistem Registri Nasional Perubahan Iklim', 'Kementerian Lingkungan Hidup dan Kehutanan', 'Pendaftaran keberadaan Program Kampung Iklim (ProKLim) dan kegiatan adaptasi dan mitigasi di Kab/Kota', 2, '2017', 'Website,', 'HTML', 1, NULL, 4, 'di atas 100 pengguna', 7, NULL, 'srn.menlhk.go.id', 'Tidak Tahu', '', '', '', 'Kementerian Lingkungan Hidup dan Kehutanan', 'Peraturan Menteri Lingkungan Hidup dan Kehutanan Nomor P.71/MENLHK/SETJEN/KUM.1/12/2017 Tentang Penyelenggaraan Sistem Registri Nasional Pengendalian Perubahan Iklim', 'Mulyadi, S.Kom. M.H', '197403142006041016', 'Kepala Bidang Tata Lingkungan', '081288886766', 'resources/data_aplikasi/surat_perintah_penanggung_jawab_aplikasi_website3.pdf', 'resources/data_aplikasi/SRN.png', '', '', NULL, '', 1, 0, '', 50, '2023-03-15 09:34:50', NULL, NULL, 11, '2025-03-06 12:43:39'),
(207, 111, '2', 'SIPTM', 'Kemenkes', 'Sistem Informasi Penyakit Tidak Menular', 2, '2020', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'surveilans-pptm.kemkes.go.id', '', '', '', '', 'Tidak diketahui', '', 'Suwandi', '198412302008031001', 'Pengelola Penyakit Tidak Menular', '081275592681', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB14.pdf', 'resources/data_aplikasi/SIPTM.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-15 09:42:13', 31, '2026-08-20 09:22:22', NULL, NULL),
(208, 111, '2', 'ASIK', 'Kemenkes', 'Aplikasi Sehat Indonesia Ku', 2, '2022', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'sehatindonesiaku.kemkes.go.id/login', '', '', 'Satu Data Indonesia', '', 'Tidak diketahui', '', 'Suwandi', '198412302008031001', 'Pengelola Penyakit Tidak Menular', '081275592681', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB15.pdf', 'resources/data_aplikasi/ASIK.jpg', '', '', '', '', 0, 0, '', 31, '2023-03-15 09:46:12', 31, '2026-08-20 09:12:01', 11, '2025-03-10 14:29:05');
INSERT INTO `data_aplikasi_2026` (`id_aplikasi`, `id_opd`, `asal_aplikasi`, `nama_aplikasi`, `penyedia_aplikasi`, `deskripsi_aplikasi`, `id_jenis_layanan`, `tahun`, `basis_aplikasi`, `bahasa_pemrograman`, `id_dbms`, `dbms_lainnya`, `id_lokasi_hosting`, `jumlah_pengguna`, `id_frekuensi_penggunaan`, `frekuensi_penggunaan_lainnya`, `nama_domain`, `ketersediaan_integrasi`, `metode_integrasi`, `aplikasi_terintegrasi`, `opd_terintegrasi`, `pengembang_aplikasi`, `regulasi`, `pic_aplikasi`, `nip_pic`, `jabatan_pic`, `no_telp`, `file_spt`, `file_logo`, `level_privileges`, `rencana_aplikasi`, `proses_bisnis`, `keterangan`, `status`, `is_active`, `catatan`, `created_by`, `created_on`, `changed_by`, `changed_on`, `approved_by`, `approved_on`) VALUES
(209, 122, '2', 'Pengendalian Pencemaran dan Kerusakan Lingkungan', 'Kementerian Lingkungan Hidup dan Kehutanan', 'Aplikasi/ Website dari KLHK untuk penginputan pemantauan kualitas lingkungan', 2, '2021', 'Website,', 'HTML', 1, NULL, 4, 'di atas 100 pengguna', 4, NULL, 'ppkl.menlhk.go.id', 'Tidak Tahu', '', '', '', 'Kementerian Lingkungan Hidup dan Kehutanan', '', 'R. Muhamad Ruslan, ST. MT', '197702172006041018', 'Kepala Bidang Pengendalian Pencemaran dan Kerusakan Lingkungan Hidup', '081991685913', 'resources/data_aplikasi/surat_perintah_penanggung_jawab_aplikasi_website4.pdf', 'resources/data_aplikasi/PPKLH.png', '', '', NULL, '', 1, 0, '', 50, '2023-03-15 09:46:45', NULL, NULL, 11, '2025-03-06 12:42:42'),
(210, 153, '2', 'SILACAK (Sistem Informasi Tracing COVID-19)', 'Kementerian Kesehatan Republik Indonesia', 'SiLacak merupakan aplikasi penguatan tracing/penelusuran dalam penanganan Covid-19. Aplikasi ini digunakan oleh petugas untuk melaksanakan pelacakan secara terintegrasi.', 4, '2020', 'Website,Android,Desktop,', 'tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'silacak.kemkes.go.id', '', '-', '-', 'DKP2KB, DINKES PROVINSI KEPRI, KEMENKES RI', 'tidak diketahui', 'KEPUTUSAN MENTERI KESEHATAN REPUBLIK INDONESIA\r\nNOMOR HK.01.07/MENKES/4641/2021 TENTANG\r\nPANDUAN PELAKSANAAN PEMERIKSAAN, PELACAKAN, KARANTINA, DAN ISOLASI DALAM RANGKA PERCEPATAN PENCEGAHAN DAN PENGENDALIAN CORONAVIRUS DISEASE 2019 (COVID-19)', 'Helmatussa\'diyah, A.Md.Keb', '19960120 201902 2 00', 'Bidan Terampil', '081276008807', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi29.pdf', 'resources/data_aplikasi/SILACAK.png', 'ADMIN, USER', 'risiko penularan yang tinggi saat pelonggaran PPKM bisa digantikan dengan peningkatan kontak erat bisa menjalani', '', '', 0, 0, NULL, 34, '2023-03-15 09:47:22', 34, '2026-08-20 09:15:19', NULL, NULL),
(211, 111, '2', 'E-Monev HSP', 'Kemenkes', '', 2, '2017', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'tpm.kemkes.go.id', '', '', '', '', 'Tidak diketahui', '', 'Minar KenlyMelda Dalimunthe,SKL', '197504072006042006', 'Pengelola Penyehatan Lingkungan', '081372673699', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB16.pdf', 'resources/data_aplikasi/E-MONEV_HSP.jpg', '', '', '', '', 0, 0, 'Tambahkan deskripsi Aplikasi', 31, '2023-03-15 09:49:57', 31, '2026-08-20 09:12:44', 11, '2025-03-10 14:48:25'),
(212, 122, '2', 'Sistem Informasi Pengelolaan Sampah Nasional', 'Kementerian Lingkungan Hidup dan Kehutanan', 'Aplikasi dari KLHK untuk penginputan data pengelolaan sampah', 2, '2020', 'Website,', 'HTML', 1, NULL, 4, 'di atas 100 pengguna', 6, NULL, 'sipsn.menlhk.go.id', 'Tidak Tahu', '', '', '', 'Kementerian Lingkungan Hidup dan Kehutanan', 'Peraturan Menteri Lingkungan Hidup dan Kehutanan Nomor 6 Tahun 2022 tentang Sistem Informasi Pengelolaan Sampah Nasional', 'Sutarjo, S.Pd', '196510271989021004', 'Kepala Bidang Pengelolaan Sampah dan Limbah B3', '08126168671', 'resources/data_aplikasi/surat_perintah_penanggung_jawab_aplikasi_website5.pdf', 'resources/data_aplikasi/sipsn.png', '', '', NULL, '', 1, 0, '', 50, '2023-03-15 09:56:32', 50, '2023-03-15 10:46:12', 11, '2025-03-06 12:43:13'),
(213, 122, '2', 'Sistem Informasi Manajemen Bank Sampah', 'Kementerian Lingkungan Hidup dan Kehutanan', 'Aplikasi dari KLHK untuk mengintegrasikan database Bank Sampah di seluruh Indonesia', 2, '2020', 'Website,', 'HTML', 1, NULL, 4, 'di atas 100 pengguna', 6, NULL, 'simba.menlhk.go.id', 'Tidak Tahu', '', '', '', 'Kementerian Lingkungan Hidup dan Kehutanan', 'Peraturan Menteri Lingkungan Hidup dan Kehutanan Nomor 14 Tahun 2021 tentang Pengelolaan Sampah pada Bank Sampah', 'Sutarjo, S.Pd', '196510271989021004', 'Kepala Bidang Pengelolaan Sampah dan Limbah B3', '08126168671', 'resources/data_aplikasi/surat_perintah_penanggung_jawab_aplikasi_website6.pdf', 'resources/data_aplikasi/simba.png', '', '', NULL, '', 1, 0, '', 50, '2023-03-15 09:58:47', 50, '2023-03-15 10:51:54', 11, '2025-03-06 12:43:04'),
(214, 111, '2', 'E-Monev PKAM', 'Kemenkes', '', 2, '2020', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'pkam.kemkes.go.id', '', '', '', '', 'Tidak diketahui', '', 'Minar Kenly Melda Dalimunthe,SKL', '197504072006042006', 'Pengelola Penyehatan Lingkungan', '081372673699', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB17.pdf', 'resources/data_aplikasi/E-MONEV_PKAM.png', '', '', '', '', 0, 0, '', 31, '2023-03-15 09:59:33', 31, '2026-08-20 09:12:59', 11, '2025-03-10 15:23:59'),
(215, 111, '2', 'SIMKESWA', 'Kemenkes', '', 2, '2020', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'simkeswa.kemkes.go.id', '', '', '', '', 'Tidak Tahu', '', 'JUNARTO', '198902162014031004', 'Analis Kesehatan', '085228048948', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB18.pdf', 'resources/data_aplikasi/SIMKESWA.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-15 10:02:41', 31, '2026-08-20 09:21:44', NULL, NULL),
(216, 111, '2', 'SIKELIM', 'Kemenkes', '', 2, '2021', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'sikelimkemkes.id', '', '', '', '', 'Tidak diketahui', '', 'Minar Kenly Melda Dalimunthe,SKL', '197504072006042006', 'Pengelola Penyehatan Lingkungan', '081372673699', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB19.pdf', 'resources/data_aplikasi/SIKELIM.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-15 10:13:30', 31, '2026-08-20 09:19:41', NULL, NULL),
(217, 153, '2', 'Aplikasi Sehat Indonesiaku', 'Kementerian Kesehatan Republik Indonesia', 'aplikasi terpusat yang digunakan untuk input dan monitoring data perkembangan pasien/peserta program untuk seluruh tenaga kesehatan layanan Primer.', 2, '2022', 'Website,Android,Desktop,', 'tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'https://play.google.com/store/apps/details?id=com.dto.sehatindonesiaku&hl=id', '', '-', 'Satu Data Indonesia, PeduliLindungi', 'DKP2KB, DINKES PROVINSI KEPRI, KEMENKES RI', 'Digital Transformation Office', '-', 'Sri Rahmadani, A.Md.Keb', '19910331 201902 2 00', 'Bidan Terampil', '+62 823-8585-3603', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi30.pdf', 'resources/data_aplikasi/ASIK.png', 'admin, user', 'plikasi ASIK akan merekam hasil pemeriksaan kesehatan pasien, yang nantinya bisa diakses oleh pasien pada aplikasi peduli lindungi', '', '', 0, 0, '', 34, '2023-03-15 10:16:22', 34, '2026-08-20 09:10:50', 11, '2025-03-10 14:28:01'),
(218, 111, '2', 'SINAPZA', 'Kemenkes', '', 4, '2021', 'Android,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'apkpure.com/sinapza/com.kemkes.news', '', '', '', '', 'Tidak diketahui', '', 'JUNARTO', '198902162014031004', 'Analis Kesehatan', '085228048948', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB20.pdf', 'resources/data_aplikasi/SINAPZA.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-15 10:19:38', 31, '2026-08-20 09:22:02', NULL, NULL),
(219, 111, '2', 'E Monev STBM', 'Kemenkes', '', 2, '2011', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'stbm.kemkes.go.id', 'Tidak Tahu', '', '', '', 'Tidak diketahui', '', 'Minar Kenly Melda Dalimunthe,SKL', '197504072006042006', 'Pengelola Penyehatan Lingkungan', '081372673699', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB21.pdf', 'resources/data_aplikasi/E-MONEV_STBM.jpg', '', '', NULL, '', 1, 0, 'sistem informasi / aplikasi tidak dapat diakses', 31, '2023-03-15 10:23:20', NULL, NULL, 11, '2025-03-10 14:35:47'),
(220, 110, '2', 'PPID', 'DINAS KOMINFO DAN INFORMATIKA KOTA TANJUNGPINANG', 'tentang pengelola layanan informasi publik dan dokumentasi di lingkuan Pemerintah Kota Tanjungpinang', 1, '2022', 'Desktop,', 'bahasa indonesia', 1, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'ppid.tanjungpinangkota.go.id', 'Ada', '', 'Semua OPD', 'Semua OPD', 'DINAS KOMINFO DAN INFORMATIKA KOTA TANJUNGPINANG', 'Undang -Undang No.14 Tahun 2008 tentang keterbukaan Informasi Publik', 'NURAISYAH,S.Sos', '197110212006042020', 'Administrator Database Kependudukan Ahli Muda', '08127757889', 'resources/data_aplikasi/Keputusan_Wali_Kota_Tanjungpinang_Nomor_575_tahun_2022_-_PPID_compressed.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-14_at_16_33_52.jpeg', '-', '-', NULL, '-', 1, 1, '', 72, '2023-03-15 10:28:35', NULL, NULL, 11, '2025-03-06 11:51:38'),
(221, 111, '2', 'SILAPHAR COVID-19', 'Kemenkes', '', 2, '2020', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'sites.google.com/view/laporancovid19online', '', '', '', '', 'Tidak diketahui', '', 'Noike Sumiati, AMK', '198904142011012003', 'Pengelola Program Imunisasi', '0813964452018', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB22.pdf', 'resources/data_aplikasi/SILAPHAR_COVID-19.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-15 10:29:12', 31, '2026-08-20 09:21:01', NULL, NULL),
(222, 153, '2', 'SMILE (Sistem Monitoring Imunisasi dan Logistik Elektronik)', 'Kementerian Kesehatan Republik Indonesia', 'SMILE memantau secara real-time logistik rantai dingin vaksin dan penyimpanannya di seluruh titik penyedia vaksin, dari provinsi hingga tingkat Puskesmas dan Rumah Sakit.', 4, '2018', 'Website,Desktop,', 'tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'imunisasi-logistik.kemkes.go.id', '', '-', '-', 'DKP2KB, DINKES PROVINSI KEPRI, KEMENKES RI', 'UNDP Indonesia', '-', 'Sri Rahmadani, A.Md.Keb', '19910331 201902 2 00', 'Bidan Terampil', '+62 823-8585-3603', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi31.pdf', 'resources/data_aplikasi/SMILE.png', 'ADMIN', 'SMILE memotong waktu dan menyederhanakan kerumitan penghitungan rekapitulasi vaksin manual hingga vaksinator dapat memastikan jumlah dan kualitas vaksin secara jauh lebih cepat dan praktis.', '', '', 0, 0, NULL, 34, '2023-03-15 10:33:06', 34, '2026-08-20 09:13:58', NULL, NULL),
(223, 111, '2', 'SKDR', 'Kemenkes', '', 2, '2010', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'skdr.surveilans.org/auth', '', '', '', '', 'Tidak diketahui', '', 'Noike Sumiati, AMK', '198904142011012003', 'Pengelola Program Imunisasi', '0813964452018', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB23.pdf', 'resources/data_aplikasi/SKDR.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-15 10:34:13', 31, '2026-08-20 09:23:14', NULL, NULL),
(224, 111, '2', 'SITB', 'Kemenkes', 'Sistem Informasi Tuberkulosis', 2, '2020', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'sumatera.sitb.id', '', '', '', '', 'Tidak diketahui', '', 'Rita Angreni', '198012272006042016', 'Analis Penyakit Menular', '082113872286', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB24.pdf', 'resources/data_aplikasi/SITB.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-15 10:56:44', 127, '2026-08-20 09:13:35', NULL, NULL),
(225, 110, '2', 'APLIKASI CMS', 'BRK SYARIAH', 'Salah satu jenis jasa layanan pegelolaan keuangan yang ditujukan untuk nasabah non perorangan(perusahaan /lembaga dimana nasabah yang bersangkutan dapat melakukan pengelolaan keuangan langsung melalui fasilitas online', 2, '2018', 'Desktop,', 'bahasa indonesia', 1, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'https://cms.brksyariah.co.id', '', '', '-', '-', 'BRK SYARIAH', '', 'MUH.KAUSAR AHAMTA,A.Md', '197605232007011013', 'Kasubag Keuangan', '081290554064', 'resources/data_aplikasi/SK_KASUBAG_KEUANGAN.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-14_at_15_27_52_(1).jpeg', '-', '-', '', '', 0, 0, 'CMS BRKS?', 72, '2023-03-15 11:01:22', 197, '2026-07-02 08:41:12', 11, '2025-03-10 14:26:00'),
(226, 153, '2', 'Health Facility Information System (HFIS)', 'BPJS Kesehatan', 'Aplikasi HFIS (Health Facilities Information System) merupakan aplikasi berbasis website yang dapat dipergunakan melalui internet public oleh semua calon fasilitas kesehatan yang akan bekerjasama dengan BPJS Kesehatan maupun untuk fasilitas kesehatan yang sudah bekerjasama dengan BPJS Kesehatan.', 4, '2018', 'Website,Desktop,', 'tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'hfis.bpjs-kesehatan.go.id/hfis', '', '-', '-', 'BPJS Kesehatan', 'tidak diketahui', '-', 'Sri Indrayani, A.Md.Keb', '800.2.083', 'bidan', '+62 813-6430-6979', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi32.pdf', 'resources/data_aplikasi/HFIS-BPJS-.jpg', 'admin', 'Dengan adanya aplikasi HFIS maka jadwal praktek rawat jalan antar RS diharapkan tidak terjadi jadwal yang beririsan dan sebagai acuan PPK pertama dalam melakukan rujukan ke RS. Dalam aplikasi ini juga terdapat informasi batas maksimal pasien yang bisa dilayani oleh seorang dokter dengan mengacu pada waktu yang diperlukan dalam memeriksa satu orang pasien', '', '', 0, 0, NULL, 34, '2023-03-15 11:07:00', 34, '2026-08-20 09:12:59', NULL, NULL),
(227, 111, '2', 'FRAMBUSIA ONLINE', 'Kemenkes', '', 2, '2019', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'bit.ly/frambusiaonline2023', '', '', '', '', 'Tidak diketahui', '', 'Rita Angreni', '198012272006042016', 'Analis Penyakit Menular', '082113872286', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB25.pdf', 'resources/data_aplikasi/kemenkes.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-15 11:09:33', 31, '2026-08-20 09:14:40', NULL, NULL),
(228, 153, '2', 'SIPP (Penanganan Pengaduan) BPJS', 'BPJS Kesehatan', 'berupa website yang di sediakan untuk peserta JKN-KIS mendapatkan informasi dan menyampaikan pengaduan seputar program JKN yang terhubung langsung oleh Kantor Cabang yang dapat memberikan informasi dan menangani pengaduan sesuai kebutuhan peserta secara realtime.', 1, '2019', 'Website,Desktop,', 'tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'sipp.bpjs-kesehatan.go.id/sipp', '', '-', '-', 'BPJS Kesehatan', 'tidak diketahui', '-', 'Sri Indrayani, A.Md.Keb', '800.2.083', 'bidan', '+62 813-6430-6979', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi33.pdf', 'resources/data_aplikasi/sipp.jpeg', 'admin', 'Saluran Informasi Penanganan Pengaduan dibuat untuk memberikan kemudahan, kecepatan dan kepastian layanan informasi dan penanganan pengaduan peserta yang dapat diakses kapan saja dan dimana saja', '', '', 0, 0, NULL, 34, '2023-03-15 11:24:05', 34, '2026-08-20 09:16:13', NULL, NULL),
(229, 110, '2', 'SIPD', 'Kementrian Dalam Negeri', 'Aplikasi terpadu yang dipergunakan sebagai alat bantu pemerintah daerah yang digunakan meningkatkan efektifitas implementasi', 3, '2020', 'Desktop,', 'bahasa indonesia', 1, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'sipd.kemendagri.go.id', 'Tidak Ada', '', '-', '-', 'Kementrian Dalam Negeri', '-', 'MUH.KAUSAR AHAMTA,A.Md', '197605232007011013', 'Kasubag Keuangan', '081290554064', 'resources/data_aplikasi/SK_KASUBAG_KEUANGAN1.pdf', 'resources/data_aplikasi/WhatsApp_Image_2023-03-14_at_15_27_52_(2).jpeg', '-', '-', NULL, '', 1, 0, '', 72, '2023-03-15 11:26:46', NULL, NULL, 11, '2025-03-06 11:53:46'),
(230, 153, '2', 'Eclaim/Pcare', 'BPJS Kesehatan', 'berupa website yang bertujuan untuk meningkatkan pelayanan kesehatan untuk masyarakat, sehingga masyarakat mudah mendapatkan layanan BPJS Kesehatan', 2, '2012', 'Website,Desktop,', 'tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'pcarejkn.bpjs-kesehatan.go.id/eclaim', '', '-', 'E-Puskesmas', 'BPJS Kesehatan, RSUD Kota Tanjungpinang, RSAL dr.Midiyato Tanjung Pinang, RSUD Raja Ahmad Tabib', 'tidak diketahui', '-', 'Sri Indrayani, A.Md.Keb', '800.2.083', 'bidan', '+62 813-6430-6979', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi34.pdf', 'resources/data_aplikasi/eclaim.jpeg', 'admin', 'Aplikasi ini hanya dapat digunakan oleh petugas di FKTP yang bekerja sama dengan BPJS Kesehatan. Dengan aplikasi ini, para petugas di FKTP mendapatkan banyak kemudahan dalam proses pemeriksaan dan pelayanan pasien', '', '', 0, 0, '', 34, '2023-03-15 11:44:27', 34, '2026-08-20 09:12:50', 11, '2025-03-10 15:27:24'),
(231, 153, '2', 'SIPD (Sistem Informasi Pembangunan Daerah)', 'Kemendagri', 'Berupa website yang digunakan untuk pengelolaan pendapatan, anggaran dan realisasi belanja barang dan jasa beserta modal. Dan termasuk juga untuk mekanisme proses pengajuan pembayaran', 3, '2022', 'Website,Desktop,', 'tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'tanjungpinang.sipd.kemendagri.go.id', '', '-', '-', 'BPKAD', 'tidak diketahui', '-', 'Reza Handayani, A.Md.Keb', '19881121 201101 2 00', 'bendahara', '+62 853-6436-7201', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi35.pdf', 'resources/data_aplikasi/SIPD.png', 'admin', 'diharapkan membawa dampak positif dalam rangka peningkatan kinerja dan akuntabilitas pemerintah untuk mendukung tercapainya program nasional, serta memperkuat strategi nasional pencegahan korupsi.', '', '', 0, 0, NULL, 34, '2023-03-15 11:57:41', 34, '2026-08-20 09:15:46', NULL, NULL),
(232, 153, '2', 'E-Billing (Aplikasi Perpajakan)', 'Direktorat Jenderal Pajak (DJP)', 'Berupa website dalam penginputan PPN dan PPh', 3, '2016', 'Website,Desktop,', 'tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 7, NULL, 'djponline.pajak.go.id/account/login', '', '-', '-', '', 'tidak diketahui', '', 'Reza Handayani, A.Md.Keb', '19881121 201101 2 00', 'bendahara', '+62 853-6436-7201', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi36.pdf', 'resources/data_aplikasi/E_BILLING.png', 'admin', 'e-Billing Pajak ini dihadirkan oleh Direktorat Jenderal Pajak (DJP) sebagai fasilitas untuk memudahkan Wajib Pajak dalam membayar pajak.', '', '', 0, 0, '', 34, '2023-03-15 14:07:58', 34, '2026-08-20 09:11:24', 11, '2025-03-10 14:36:21'),
(233, 153, '2', 'E-Filling (Aplikasi Perpajakan)', 'Direktorat Jenderal Pajak (DJP)', 'Berupa website yang digunakan untuk penginputan pelaporan penghasilan pegawai', 2, '2016', 'Website,Android,iOS,Desktop,', 'tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'djponline.pajak.go.id', '', '-', '-', '-', 'tidak diketahui', '-', 'Reza Handayani, A.Md.Keb', '19881121 201101 2 00', 'bendahara', '+62 853-6436-7201', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi37.pdf', 'resources/data_aplikasi/efilling.png', 'user', 'Aplikasi ini memudahkan pengguna untuk menginput laporan secara online dimana saja', '', '', 0, 0, '', 34, '2023-03-15 14:30:44', 34, '2026-08-20 09:11:30', 11, '2025-03-10 14:36:28'),
(234, 153, '2', 'SIRUP (Sistem Informasi Rencana Umum Pengadaan)', 'Lembaga Kebijakan Pengadaan Barang/Jasa Pemerintah (LKPP)', 'Berupa website yang digunakan untuk penginputan informasi pengadaan .', 3, '2017', 'Website,Desktop,', 'tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 7, NULL, 'sirup.lkpp.go.id/sirup/ro/login', '', '-', '-', 'BPKAD', 'tidak diketahui', '', 'Reza Handayani, A.Md.Keb', '19881121 201101 2 00', 'bendahara', '+62 853-6436-7201', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi38.pdf', 'resources/data_aplikasi/sirup.jpeg', 'admin', 'SiRUP bertujuan untuk mempermudah pihak PA/KPA dalam mengumumkan RUPnya.', '', '', 0, 0, NULL, 34, '2023-03-15 14:38:50', 34, '2026-08-20 09:16:28', NULL, NULL),
(235, 153, '2', 'CMS (Cash Management System) BRK Syariah', 'BRK Syariah', 'berupa website yang digunakan untuk proses transaksi penyaluran uang keluar dan masuk dari rekening. Khususnya rekening Bank Riau Kepri Syariah', 2, '2022', 'Website,Desktop,', 'tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'cms.brksyariah.co.id', '', '-', '-', 'BPKAD', 'tidak diketahui', 'Peraturan Kementerian Dalam Negeri (Permendagri) Nomor 56 Tahun 2021 tentang Tim Percepatan dan Perluasan Digitalisasi Daerah Provinsi dan Kabupaten/Kota Serta Tata Cara Implementasi Elektronifikasi Transaksi Pemerintah Daerah', 'Reza Handayani, A.Md.Keb', '19881121 201101 2 00', 'bendahara', '+62 853-6436-7201', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi39.pdf', 'resources/data_aplikasi/cms.jpeg', 'admin', 'melalui aplikasi CMS bendahara tidak perlu lagi antri ke bank untuk ambil uang tunai. Pembayaran kepada yang berhak juga dapat dilakukan dengan pemindahbukuan melalui gawai seperti telpon pintar dan tablet yang sudah tersedia fasilitas CMS tersebut.', '', '', 0, 0, '', 34, '2023-03-15 14:53:16', 34, '2026-08-20 09:11:10', 11, '2025-03-10 14:32:49'),
(236, 153, '2', 'LPSE (Layanan Pengadaan Secara Elektronik) Kota Tanjungpinang', 'Lembaga Kebijakan Pengadaan Barang/Jasa Pemerintah (LKPP)', 'berupa website yang digunakan untuk penginputan pertama dalam pengadaan barang dan pekerjaan jasa', 3, '2020', 'Website,Desktop,', 'tidak diketahui', 10, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 7, NULL, 'lpse.tanjungpinangkota.go.id/eproc4', '', '-', '-', '-', 'tidak diketahui', '', 'Reza Handayani, A.Md.Keb', '19881121 201101 2 00', 'bendahara', '+62 853-6436-7201', 'resources/data_aplikasi/SPT_Aplikasi_Sistem_Informasi40.pdf', 'resources/data_aplikasi/LPSE.jpeg', 'ADMIN', 'untuk mendukung proses pengadaan barang atau jasa secara eletronik (e-pengadaan) dapat berjalan secara lebih efisien, efektif, transparan serta akuntabel sehingga optimalisasi belanja negara dapat diwujudkan.', '', '', 0, 0, NULL, 34, '2023-03-15 15:09:29', 34, '2026-08-20 09:13:05', NULL, NULL),
(237, 105, '1', 'OSS BKPSDM Tanjungpinang', 'BKPSDM Kota Tanjungpinang', 'Merupakan aplikasi One Stop Service, yaitu aplikasi yang memudahkan OPD selaku pengguna untuk bisa menginput usulan Pelayanan kepegawaian (Kepangkatan, Pencantuman Gelar, Kenaikan Fungsional, Pensiun, Ujian Dinas)', 4, '2020', 'Website,', 'HTML5, PHP', 1, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 8, NULL, 'oss-bkpsdm.tanjungpinangkota.go.id', '', '', 'Terintegrasi dengan aplikasi SIMPEG', '-', 'BKPSDM Kota Tanjungpinang', 'Peraturan Presiden Republik Indonesia Nomor 95 Tahun 2018 tentang Sistem Pemerintahan Berbasis Elektronik', 'Syafrizal, ST', '198312042009021007', 'Analis Kepegawaian Ahli Muda', '085272420002', 'resources/data_aplikasi/SPT_APLIKASI_BKPSDM3.pdf', 'resources/data_aplikasi/tanjungpinang4.png', 'Administrator Utama adalah user yang\r\nmemiliki seluruh fungsi pada aplikasi, Administrator Biasa adalah user yang memiliki fungsi standar', '-', '', '-', 0, 1, '', 35, '2023-03-15 15:18:06', 237, '2026-08-21 09:31:02', 11, '2025-03-06 11:39:45'),
(238, 105, '2', 'SIASN', 'Badan Kepegawaian Negara RI', 'Sistem Informasi Aparatur Sipil Negara (SIASN) adalah aplikasi yang bertujuan untuk mengintegrasikan data ASN secara nasional meliputi seluruh Instansi Pemerintah Pusat dan Instansi Pemerintah Daerah', 1, '2021', 'Website,', 'HTML5, PHP', 1, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'siasn-instansi.bkn.go.id', '', '', 'Terintegrasi dengan', '', 'Badan Kepegawaian Negara RI', '', 'Halipah Haini, S.Kom', '197808062009022005', 'Analis Kepegawaian Ahli Muda', '0811694024', 'resources/data_aplikasi/SPT_APLIKASI_BKPSDM4.pdf', 'resources/data_aplikasi/siasn.png', 'Administrator Utama adalah user yang\r\nmemiliki seluruh fungsi pada aplikasi, Administrator Biasa adalah user yang memiliki fungsi standar', '-', '', '-', 0, 0, '', 35, '2023-03-15 15:27:26', 237, '2026-08-21 09:21:53', 11, '2025-03-06 11:41:58'),
(239, 123, '1', 'ERTEHA TANJUNGPINANG', 'CV. JASTINDO GRADANA', 'Aplikasi Inovasi Pelayanan Ruang Terbuka Hijau   menghadirkan layanan pemanfaatan taman, kendaraan ambulans, pemangkasan pohon dan layanan pendataan pendukung lainnya', 1, '2023', 'Android,', 'Vue Js', 2, NULL, 2, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'https://erteha.online', 'Tidak Ada', '-', 'belum ada', 'belum ada', 'cv. jastindo gradana', '-', 'ZULKIFILI EKO PURWANTO, S. Kom', '198409152009021001', 'ANALIS KEBIJAKAN AHLI MUDA', '085272726660', 'resources/data_aplikasi/SPT_ERTEHA.pdf', 'resources/data_aplikasi/Logo1.png', '', '', 'Layanan RTH Kota Tanjungpinang', '', 1, 0, 'cek 12 maret 2026', 84, '2023-03-15 15:40:04', 114, '2024-06-12 14:06:04', 11, '2026-03-12 11:31:37'),
(240, 105, '1', 'BEZZETING', 'BKPSDM Kota Tanjungpinang', 'Aplikasi yang berfungsi untuk mendata ketersediaan jumlah Pegawai Negeri Sipil di lingkungan Pemerintah Kota Tanjungpinang', 3, '2020', 'Website,', 'HTML5, PHP', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 8, NULL, 'bezzeting.tanjungpinangkota.go.id', 'Tidak Tahu', '-', '-', '-', 'BKPSDM Kota Tanjungpinang', 'Peraturan Presiden Republik Indonesia Nomor 95 Tahun 2018 tentang Sistem Pemerintahan Berbasis Elektronik', 'Halipah Haini, S.Kom', '197808062009022005', 'Analis Kepegawaian Ahli Muda', '0811694024', 'resources/data_aplikasi/SPT_APLIKASI_BKPSDM5.pdf', 'resources/data_aplikasi/tanjungpinang5.png', 'Administrator Utama adalah user yang\r\nmemiliki seluruh fungsi pada aplikasi, Administrator Biasa adalah user yang memiliki fungsi standar', '-', NULL, '-', 1, 0, 'Webiste tidak dapat diakses', 35, '2023-03-15 15:53:07', NULL, NULL, 11, '2025-03-06 11:37:39'),
(241, 158, '1', 'Website Puskesmas Tanjung Unggat', 'joomla', 'Website berisi tentang profil puskesmas tanjung unggat serta kegiatan yang dilakukan puskesmas tanjung unggat', 1, '2019', 'Website,Android,iOS,', 'php.js', 1, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'https://puskesmastanjungunggat.tanjungpinangkota.go.id/', '', '', '', 'Dinas Kesehatan PP dan KB', 'joomla', '', 'Hari Sapriyanto', '199309042015031001', 'Sanitarian mahir', '081378077874', 'resources/data_aplikasi/PEMERINTAH_KOTA_TANJUNGPINANG.pdf', 'resources/data_aplikasi/1000234233.jpg', '', '', '', '', 0, 1, '', 39, '2023-03-15 21:02:33', 39, '2026-08-20 22:34:01', 11, '2025-03-10 09:52:17'),
(242, 111, '2', 'Keamanan Vaksin', 'Kemenkes', '', 2, '2022', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 2, NULL, 'keamananvaksin.kemkes.go.id', '', '', '', '', 'Tidak diketahui', '', 'Nursepty Marthasia Utari, SKL', '198909222010012001', 'Analis Kesehatan Surveilans', '08117002289', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB26.pdf', 'resources/data_aplikasi/KEAMANAN_VAKSIN.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-16 12:28:48', 31, '2026-08-20 09:14:56', NULL, NULL),
(243, 111, '2', 'Pcare Vaksin', 'BPJS', '', 2, '2021', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'pcare.bpjs-kesehatan.go.id', '', '', '', '', 'Tidak diketahui', '', 'Nursepty Marthasia Utari, SKL', '198909222010012001', 'Pengelola Program Imunisasi', '08117002289', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB27.pdf', 'resources/data_aplikasi/PCARE_VAKSIN.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-16 13:16:40', 31, '2026-08-20 09:18:13', NULL, NULL),
(244, 111, '2', 'SILANTOR', 'Kemenkes', '', 2, '2020', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'silantor.kemkes.go.id', '', '', '', '', 'Tidak diketahui', '', 'Noike Sumiati, AMK', '198904142011012003', 'Pengelola Program Imunisasi', '0813964452018', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB28.pdf', 'resources/data_aplikasi/SILANTOR.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-16 15:06:51', 31, '2026-08-20 09:20:38', NULL, NULL),
(245, 111, '2', 'NAR ANTIGEN', 'Kemenkes', '', 2, '2020', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'allrecord-antigen.kemkes.go.id/web/site/login', '', '', '', '', 'Tidak diketahui', '', 'Noike Sumiati, AMK', '198904142011012003', 'Pengelola Program Imunisasi', '0813964452018', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB29.pdf', 'resources/data_aplikasi/NAR_ANTIGEN.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-16 15:10:04', 31, '2026-08-20 09:16:36', NULL, NULL),
(246, 111, '2', 'ALLRECORD-19', 'Kemenkes', '', 2, '2020', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'allrecord-tc19.kemkes.go.id', '', '', '', '', 'Tidak diketahui', '', 'Noike Sumiati, AMK', '198904142011012003', 'Pengelola Program Imunisasi', '0813964452018', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB30.pdf', 'resources/data_aplikasi/ALLRECORD_19.jpg', '', '', '', '', 0, 0, '', 31, '2023-03-16 15:15:14', 31, '2026-08-20 09:11:54', 11, '2025-03-10 14:24:37'),
(247, 111, '2', 'SILACAK', 'Kemenkes', '', 2, '2021', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'silacak-v3.kemkes.go.id', '', '', '', '', 'Tidak diketahui', '', 'Noike Sumiati, AMK', '198904142011012003', 'Pengelola Program Imunisasi', '0813964452018', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB31.pdf', 'resources/data_aplikasi/SILACAK.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-16 15:18:12', 31, '2026-08-20 09:20:07', NULL, NULL),
(248, 111, '2', 'MORENA', 'BKKBN', '', 2, '2014', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 3, NULL, 'morena.bkkbn.go.id', '', '', '', '', 'Tidak diketahui', '', 'R.Leila Mutia,SKM', '197608052003122009', 'Perencana ahli muda', '081364309329', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB32.pdf', 'resources/data_aplikasi/MORENA.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-16 15:22:20', 31, '2026-08-20 09:16:10', NULL, NULL),
(249, 111, '2', 'SIPD', 'Kemendagri', '', 2, '2021', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 3, NULL, 'sipd.kemendagri.go.id', '', '', '', '', 'Tidak diketahui', '', 'R.Leila Mutia,SKM', '197608052003122009', 'Perencana ahli muda', '081364309329', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB33.pdf', 'resources/data_aplikasi/SIPD.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-16 15:24:36', 31, '2026-08-20 09:22:12', NULL, NULL),
(250, 111, '2', 'MONEV', 'Pemko Tanjungpinang', '', 2, '2022', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 3, NULL, 'monev.tanjungpinangkota.go.id', '', '', '', '', 'Tidak diketahui', '', 'R.Leila Mutia,SKM', '197608052003122009', 'Perencana ahli muda', '081364309329', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB34.pdf', 'resources/data_aplikasi/MONEV.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-16 15:27:20', 31, '2026-08-20 09:15:56', NULL, NULL),
(251, 111, '2', 'ALADIN', 'Kemenkeu', '', 2, '2014', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 4, NULL, 'sikd.dipk.kemenkeu.go.id', 'Tidak Tahu', '', '', '', 'Tidak diketahui', '', 'R.Leila Mutia,SKM', '197608052003122009', 'Perencana ahli muda', '081364309329', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB35.pdf', 'resources/data_aplikasi/SIKD.jpg', '', '', NULL, '', 1, 0, 'Tidak dapat diakses', 31, '2023-03-16 15:30:41', NULL, NULL, 11, '2025-03-10 14:24:07'),
(252, 111, '2', 'OMSPAN', 'Kemenkeu', '', 2, '2014', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 3, NULL, 'spanint.kemenkeu.go.id', '', '', '', '', 'Tidak diketahui', '', 'R.Leila Mutia,SKM', '197608052003122009', 'Perencana ahli muda', '081364309329', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB36.pdf', 'resources/data_aplikasi/OM_SPAN.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-16 15:38:14', 31, '2026-08-20 09:17:15', NULL, NULL),
(253, 111, '2', 'SPIP', 'Pemko Tanjungpinang', '', 2, '2020', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 7, NULL, 'spipterintegrasi.bpkp.go.id', '', '', '', '', 'Tidak diketahui', '', 'R.Leila Mutia,SKM', '197608052003122009', 'Perencana ahli muda', '081364309329', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB37.pdf', 'resources/data_aplikasi/SPIP.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-16 15:41:49', 127, '2026-08-20 09:13:45', NULL, NULL),
(254, 111, '2', 'SPM Kemkes', 'Kemenkes', '', 3, '2017', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 4, NULL, 'spm.kemkes.go.id', '', '', '', '', 'Tidak diketahui', '', 'R.Leila Mutia,SKM', '197608052003122009', 'Perencana ahli muda', '081364309329', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB38.pdf', 'resources/data_aplikasi/SPM_KEMKES.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-16 15:46:56', 127, '2026-08-20 09:13:10', NULL, NULL),
(255, 111, '2', 'OSS BKPM', 'DPMPTSP', '', 3, '2021', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'oss.go.id', '', '', '', '', 'Tidak diketahui', '', 'RIZA AVISA', '-', 'Honorer', '081277424954', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB39.pdf', 'resources/data_aplikasi/OSS.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-16 15:50:36', 31, '2026-08-20 09:17:32', NULL, NULL),
(256, 111, '2', 'SICANTIK', 'Pemko Tanjungpinang', '', 3, '2018', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'sicantik.go.id', '', '', '', 'DPMPTSP', 'Tidak diketahui', '', 'RUSLIA PURBA,Amd.keb', '199103192014072001', 'Pengelola Perizinan', '082386488505', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB40.pdf', 'resources/data_aplikasi/SICANTIK.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-16 15:55:49', 31, '2026-08-20 09:19:28', NULL, NULL),
(257, 111, '2', 'RENBUT', 'Kemenkes', '', 3, '2016', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 7, NULL, 'renbut.kemkes.go.id', '', '', '', '', 'Tidak diketahui', '', 'LILIK WINANTI,S.Si.Apt', '1976122220031220011', 'Administrasi Kesehatan Muda', '08127060498', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB41.pdf', 'resources/data_aplikasi/RENBUT.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-17 08:46:53', 31, '2026-08-20 09:19:19', NULL, NULL),
(258, 111, '2', 'SISDMK', 'Kemenkes', '', 3, '2016', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 4, NULL, 'sisdmk.kemenkes.go.id', '', '', '', '', 'Tidak diketahui', '', 'Endah Argiani,S.Tr.Keb', '198512022009032007', 'analis pengembangan SDM aparatur', '081275800055', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB42.pdf', 'resources/data_aplikasi/SISDMK1.png', '', '', '', '', 0, 0, NULL, 31, '2023-03-17 11:03:11', 31, '2026-08-20 09:22:31', NULL, NULL),
(259, 111, '2', 'Dashboard BPJS Kesehatan', 'BPJS', '', 3, '2023', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'https://dataviz.bpjs-kesehatan.go.id/#/signin', '', '', '', '', 'Tidak diketahui', '', 'Anita.S.Sos', '198305042010012005', 'Analis pembayaran jaminan kesehatan', '081364028956', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB43.pdf', 'resources/data_aplikasi/Dashboard_BPJS.jpg', '', '', '', '', 0, 0, 'Tambahkan deskripsi', 31, '2023-03-17 12:15:01', 31, '2026-08-20 09:12:14', 11, '2025-03-10 14:34:58'),
(260, 111, '2', 'SISTEM INFORMASI GIZI TERPADU', 'Kemenkes', '', 2, '2018', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'sigiziterpadu.kemkes.go.id', '', '', 'e-kohort', '', 'Tidak diketahui', '', 'Renta Paulina Sijabat', '19797901062006042009', 'analis gizi', '081372727364', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB44.pdf', 'resources/data_aplikasi/GIZI.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-17 12:30:10', 31, '2026-08-20 09:22:53', NULL, NULL),
(261, 111, '2', 'SISTEM INFORMASI HIV AIDS', 'Kemenkes', '', 2, '2012', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'SIHA.KEMKES.GO.ID', '', '', '', '', 'Tidak diketahui', '', 'DWI KARTIKA NINGRUM', '71212159', 'honorer', '082384933840', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB45.pdf', 'resources/data_aplikasi/SIHA.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-17 12:34:55', 127, '2026-08-20 09:12:56', NULL, NULL),
(262, 111, '2', 'SISTEM INFORMASI HEPATITIS', 'Kemenkes', '', 2, '2023', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 3, NULL, 'SIHEPI.KEMKES.GO.ID', '', '', '', '', 'Tidak diketahui', '', 'DWI KARTIKA NINGRUM', '71212159', 'Honorer', '082384933840', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB46.pdf', 'resources/data_aplikasi/SIHEPI.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-17 12:38:56', 31, '2026-08-20 09:23:04', NULL, NULL),
(263, 111, '2', 'E-KOHORT', 'Kemenkes', '', 4, '2021', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'ekohort.kemkes.go.id', '', '', 'Si Gizi terpadu', '', 'Tidak diketahui', '', 'Selfi Suryana, S.ST', '198109112009022005', 'Analis kesehatan ibu dan anak', '081386676781', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB47.pdf', 'resources/data_aplikasi/Apa-itu-Aplikasi-e-Kohort.jpg', '', '', '', '', 0, 0, 'https://ekohort.kemkes.go.id/', 31, '2023-03-17 12:45:13', 31, '2026-08-20 09:12:34', 11, '2025-03-10 14:44:19'),
(264, 111, '2', 'MPDN', 'Kemenkes', '', 2, '2021', 'Desktop,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'mpdn.go.id', '', '', '', '', 'Tidak diketahui', '', 'Selfi Suryana, S.ST', '198109112009022005', 'Analis kesehatan ibu dan anak', '081386676781', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB48.pdf', 'resources/data_aplikasi/MPDN.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-17 12:53:12', 31, '2026-08-20 09:16:19', NULL, NULL),
(265, 111, '2', 'Komdat Kesmas', 'Kemenkes', '', 4, '2021', 'Desktop,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'komdatkesmas.go.id', '', '', '', '', 'Tidak diketahui', '', 'Selfi Suryana, S.ST', '198109112009022005', 'Analis kesehatan ibu dan anak', '081386676781', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB49.pdf', 'resources/data_aplikasi/KOMDAT_KESMAS.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-17 12:57:00', 31, '2026-08-20 09:15:20', NULL, NULL),
(266, 111, '2', 'ASPAK', 'Kemenkes', '', 4, '2018', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'aspak.kemkes.go.id', '', '', '', '', 'Tidak diketahui', '', 'Fitrilia Quartika', '198706022010012016', 'analis dokumen perizinan', '082133621987', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB52.pdf', 'resources/data_aplikasi/ASPAK2.jpg', '', '', '', '', 0, 0, '', 31, '2023-03-17 13:02:33', 31, '2026-08-20 09:12:08', 11, '2025-03-10 14:30:20'),
(267, 111, '2', 'Registrasi Fasyankes', 'Kemenkes', '', 1, '2020', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'registrasifasyankes.kemkes.go.id', '', '', '', '', 'Tidak diketahui', '', 'Fitrilia Quartika', '198706022010012016', 'analis dokumen perizinan', '082133621987', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB51.pdf', 'resources/data_aplikasi/REGISTRASI_FASYANKES.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-17 13:06:11', 31, '2026-08-20 09:19:01', NULL, NULL),
(268, 111, '2', 'ESISMAL', 'Kemenkes', '', 2, '2023', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'sismal.kemkes.go.id', '', '', 'Satu Data Indonesia', '', 'Tidak diketahui', '', 'Mohd Abd Rahman', '197611032006041010', 'entomolog kesehatan', '0812700003546', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB53.pdf', 'resources/data_aplikasi/eSISMAL.jpg', '', '', '', '', 0, 0, 'Tambahkan deskripsi Aplikasi', 31, '2023-03-17 13:12:40', 31, '2026-08-20 09:14:31', 11, '2025-03-10 15:29:56'),
(269, 111, '2', 'New SIGA', 'BKKBN', '', 4, '2021', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 3, NULL, 'newsiga.bkkbn.go.id', '', '', '', '', 'Tidak diketahui', '', 'dr.Yulferi', '197203242006041003', 'Kabid Pengendalian Penduduk dan Keluarga Berencana', '081378300029', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB54.pdf', 'resources/data_aplikasi/SIGA.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-17 13:15:56', 31, '2026-08-20 09:17:06', NULL, NULL),
(270, 111, '2', 'Portal PK21', 'BKKBN', '', 4, '2021', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 4, NULL, 'portalpk21.bkkbn.go.id', '', '', '', '', 'Tidak diketahui', '', 'dr.Yulferi', '197203242006041003', 'Kabid Pengendalian Penduduk dan Keluarga Berencana', '081364309329', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB55.pdf', 'resources/data_aplikasi/Portal_PK_2021.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-17 13:19:44', 31, '2026-08-20 09:18:49', NULL, NULL),
(271, 111, '2', 'Pemutakhiran Data Keluarga 22', 'BKKBN', '', 4, '2022', 'Website,', 'Tidak tahu', 10, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 7, NULL, 'pemutakhiranpk22-pdn.bkkbn.go.id', '', '', '', '', 'Tidak diketahui', '', 'dr.Yulferi', '197203242006041003', 'Kabid Pengendalian Penduduk dan Keluarga Berencana', '081378300029', 'resources/data_aplikasi/SPT_PIC_APLIKASI_DKP2KB56.pdf', 'resources/data_aplikasi/pemutakhiran_Pk_2022.jpg', '', '', '', '', 0, 0, NULL, 31, '2023-03-17 13:23:08', 31, '2026-08-20 09:18:35', NULL, NULL),
(272, 158, '2', 'Aplikasi Keluarga Sehat', 'Kementerian Kesehatan', 'Aplikasi pendataan keluarga sehat', 2, '2017', 'Website,Android,iOS,', 'php.js', 1, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'Kepri-keluargasehat.kemkes.go.id/', 'Tidak Tahu', '', '', '', 'Kementerian Kesehatan', '', 'Raja Hirma Riauputri', '199802132022022001', 'Tenaga promkes', '081219992747', 'resources/data_aplikasi/PIS-PK.pdf', 'resources/data_aplikasi/images.jpg', '', '', NULL, '', 1, 0, 'Website tidak aktif', 39, '2023-03-17 14:37:07', NULL, NULL, 11, '2025-03-10 14:26:34'),
(273, 158, '2', 'SITB', 'Kementerian Kesehatan', 'Aplikasi pendataan program TB', 2, '2019', 'Website,Android,iOS,', 'php.js', 1, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 2, NULL, 'http://sumatera.sitb.id', '', '', '', '', 'Kementerian Kesehatan', '', 'Fahmulisman', '199002182015031001', 'Perawat mahir', '081275956469', 'resources/data_aplikasi/SITB_dan_ESISMAL.pdf', 'resources/data_aplikasi/Capture_2.PNG', '', '', '', '', 0, 0, NULL, 39, '2023-03-17 14:44:17', 39, '2026-08-20 22:34:40', NULL, NULL),
(274, 158, '2', 'ESISMAL', 'Kementerian Kesehatan', 'Aplikasi program Malaria', 2, '2019', 'Website,', 'php.js', 1, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'https://sismal.kemkes.go.id/', '', '', '', '', 'Kementerian Kesehatan', '', 'Fahmulisman', '199002182015031001', 'Perawat mahir', '081275956469', 'resources/data_aplikasi/SITB_dan_ESISMAL1.pdf', 'resources/data_aplikasi/Capture_3.PNG', '', '', '', '', 0, 0, 'Tambahkan deskripsi Aplikasi', 39, '2023-03-17 14:48:22', 39, '2026-08-20 22:36:45', 11, '2025-03-10 15:30:06'),
(275, 158, '2', 'Asik_Sehat Indonesiaku', 'Kementerian Kesehatan', 'Aplikasi penginputan data dari beberapa program, yaitu imunisasi, IVA, PTM', 2, '2019', 'Website,', 'php.js', 1, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'https://sehatindonesiaku.kemkes.go.id', 'Tidak Tahu', '', '', '', 'Kementerian Kesehatan', '', 'Novi Wulandini', '198811212015032002', 'Perawat mahir', '082174570981', 'resources/data_aplikasi/ASIK.pdf', 'resources/data_aplikasi/Capture1.PNG', '', '', NULL, '', 1, 0, '', 39, '2023-03-17 14:56:08', NULL, NULL, 11, '2025-03-10 14:29:39'),
(276, 158, '2', 'SIGA', 'BKKBN', 'Aplikasi program KB', 2, '2022', 'Website,', 'php.js', 1, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'https://newsiga.bkkbn.go.id/', '', '', '', '', 'BKKBN', '', 'Berty Prima Lydia', '19920717201503202', 'Bidan Mahir', '082387479955', 'resources/data_aplikasi/siga.pdf', 'resources/data_aplikasi/Capture5.PNG', '', '', '', '', 0, 0, NULL, 39, '2023-03-17 15:02:14', 39, '2026-08-20 22:35:58', NULL, NULL),
(277, 118, '1', 'Data Kepemudaan Kota Tanjungpinang', 'Dispora Kota Tanjungpinang', 'Aplikasi yang Menghubungkan Layanan Kepemudaan dan Olahraga dari OPD Dinas Pemuda dan Olahraga Kota Tanjungpinang kepada Pengguna (User) melalui Layanan Daring (Online) berbasis Aplikasi Mobile bagi masyarakat Kota Tanjungpinang yang memiliki keterbatasan ruang dan waktu dalam pengurusan/ pengajuan layanan yang terdapat pada Aplikasi Dakkota', 1, '2021', 'Website,Android,', 'PHP, JS', 1, NULL, 2, 'di atas 100 pengguna', 1, NULL, 'www.dakkota.org', 'Ada', 'REST API', '-', '-', 'Dispora Kota Tanjungpinang', 'Undang-undang Nomor 40 Tahun 2009 tentang Kepemudaan jo Perpres Nomor 43 Tahun 2022 tentang penyelenggaraan pelayanan kepemudaan jo Peraturan Daerah Kota Tanjungpinang Nomor 9 Tahun 2021 tentang Pembangunan Kepemudaan.', 'NOVI PERDANA WARI, S.STP', '19831108 200212 2 00', 'Kabid Pemuda', '+62 812-7006-070', 'resources/data_aplikasi/28.pdf', 'resources/data_aplikasi/logo-dakkota.png', 'Terdiri dari Admin Utama dan Operator Pendukung', 'Menjadi Aplikasi Utama dan dapat Terintegrasi dengan Aplikasi baik Internal maupun Lintas OPD', NULL, '', 1, 0, 'cek 12 maret 2026', 29, '2023-05-05 10:42:46', 29, '2023-05-05 10:53:25', 11, '2026-03-12 11:30:07'),
(278, 117, '1', 'Website Dinas Pertanian Pangan dan Perikanan Kota Tanjungpinang', 'Bintan Berlian Madani', 'Website dibuat dalam rangka penyampaian informasi publik terkait Pertanian, Ketahanan Pangan dan Perikanan di Kota Tanjungpinang', 1, '2023', 'Website,', 'Javascript dan PHP', 1, NULL, 2, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'https://dispertanianperikanan.tanjungpinangkota.go.id', '', 'REST API', '-', '-', 'Bintan Berlian Madani', 'Peraturan Wali Kota Tanjungpinang Nomor 52 Tahun 2021 tentang Pemanfaatan Teknologi Informasi dan Komunikasi.', 'H. ARLIUS, S.Sos', '196807221991031007', 'Sekretaris', '0813644470379', 'resources/data_aplikasi/SPT_PIC_Web.pdf', 'resources/data_aplikasi/LOGO_TPI_JEPAGE.jpg', 'Terdiri dari Admin Utama 1 (satu) dan Admin Pendukung 4 (empat)', 'Website Dinas Pertanian, Pangan dan Perikanan di Kota Tanjungpinang sebagai sarana penyampaian informasi publik dan data terkait Pertanian, Peternakan, Ketahanan Pangan dan Perikanan di Kota Tanjungpinang yang mudah diakses oleh seluruh masyarakat.', '', '-', 0, 0, 'Domain/subdomain tidak bisa di akses', 98, '2023-08-31 09:49:55', 196, '2026-06-23 11:50:44', 115, '2025-03-06 14:38:40'),
(279, 106, '1', 'esptpd', 'Soft Point Sistem (Nana Sukmana Angga)', 'Surat Pemberitahuan Pajak Daerah, yang selanjutnya disingkat SPTPD, adalah surat yang oleh Wajib Pajak digunakan untuk melaporkan penghitungan dan/atau pembayaran Pajak, objek Pajak dan/atau bukan objek Pajak, dan/atau harta dan kewajiban sesuai dengan ketentuan peraturan perundang-undangan perpajakan Daerah', 1, '2023', 'Website,Android,', 'pascl dan jafa scryt', 2, NULL, 1, 'di atas 100 pengguna', 3, NULL, 'esptpd.tanjungpinangkota.go.id', 'Ada', '', 'Incomepoint (Aplikasi Pajak Daerah selain PBB dan BPHTB)', 'Badan Pengelolaan Pajak dan Retribusi Daerah', 'Wajib Pajak', '1. Undang-Undang No. 1 Tahun 2022 Tentang Hubungan Keuangan Antara Pemerintah Pusat  dan Pemerintah Daerah\r\n2. Peraturan Pemerintah No. 35 Tahun 2023 Tentang Ketentuan Umum Pajak Daerah dan Retribusi Daerah', 'Muhammad Rivai', '198308292008011008', 'Kasubbid Pengolahan Data dan Informasi', '082284999933', 'resources/data_aplikasi/PIC_ESPTPD_2023.pdf', 'resources/data_aplikasi/LOGO_APLIKASI_ESPTPD.jpeg', 'Admin Utama', 'Aplikasi Pembayaran Pajak Daerah', NULL, 'Pelayana Pemerintah untuk Masyarakat', 1, 1, NULL, 69, '2023-11-17 11:00:07', 69, '2023-11-17 11:02:04', 11, '2024-10-02 07:43:59'),
(280, 125, '1', 'Dashboard Kolaborasi Penanganan Stunting', 'Diskominfo', 'Dashboard Penyediaan Informasi Balita Stunting di Kota Tanjungpinang', 1, '2023', 'Website,', 'PHP', 1, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'stunting.tanjungpinangkota.go.id', 'Tidak Ada', '', '', 'Diskominfo; Dinas Kesehatan', 'Diskominfo Kota Tanjungpinang', 'PERATURAN MENTERI KESEHATAN REPUBLIK INDONESIA\r\nNOMOR 2 TAHUN 2020 TENTANG STANDAR ANTROPOMETRI ANAK', 'Muhammad Taufik Hidayat, ST', '198602162008031001', 'Pranata Komputer Ahli Muda', '085272220227', 'resources/data_aplikasi/Doc11.pdf', 'resources/data_aplikasi/logo-tpi1.png', 'Admin Utama dapat mengakses keseluruhan sistem; Admin Dinas Kesehatan mengatur user kader posyandu; Kader Posyandu untuk melakukan penginputan data', '', NULL, '', 1, 1, 'SPT Belum ada', 11, '2024-01-17 14:50:04', 11, '2024-01-17 14:59:20', 11, '2025-03-10 08:38:17'),
(281, 125, '1', 'SINERGI', 'Diskominfo Kota Tanjungpinang', 'Sistem Informasi Manajemen Kinerja Pegawai', 4, '2023', 'Website,', 'PHP', 1, NULL, 3, 'di atas 100 pengguna', 1, NULL, 'sinergi.tanjungpinangkota.go.id', 'Ada', 'API', 'SIAP', 'Diskominfo;BKPSDM', 'Diskominfo Kota Tanjungpinang', '', 'Muhammad Taufik Hidayat, ST', '198602162008031001', 'Pranata Komputer Ahli Muda', '085272220227', 'resources/data_aplikasi/Doc12.pdf', 'resources/data_aplikasi/Artboard_10.png', '', '', NULL, '', 1, 1, 'File SPT Belum ada', 11, '2024-01-17 15:10:03', NULL, NULL, 11, '2025-03-10 09:39:02'),
(282, 125, '1', 'Website Diskominfo Kota Tanjungpinang', 'Diskominfo Kota Tanjungpinang', 'Portal Layanan Informasi Dinas Komunikasi dan Informatika Kota Tanjungpinang', 2, '2023', 'Website,', 'Javascript/Vue', 9, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'diskominfo.tanjungpinangkota.go.id', 'Ada', 'API', 'ICMS Tanjungpinang', '', 'Diskominfo Kota Tanjungpinang', '', 'Muhammad Taufik Hidayat, ST', '198602162008031001', 'Pranata Komputer Ahli Muda', '085272220227', 'resources/data_aplikasi/Doc13.pdf', 'resources/data_aplikasi/logo-tpi2.png', '', '', NULL, '', 1, 1, 'File SPT Belum ada', 11, '2024-01-17 15:49:53', NULL, NULL, 11, '2025-03-10 09:31:48');
INSERT INTO `data_aplikasi_2026` (`id_aplikasi`, `id_opd`, `asal_aplikasi`, `nama_aplikasi`, `penyedia_aplikasi`, `deskripsi_aplikasi`, `id_jenis_layanan`, `tahun`, `basis_aplikasi`, `bahasa_pemrograman`, `id_dbms`, `dbms_lainnya`, `id_lokasi_hosting`, `jumlah_pengguna`, `id_frekuensi_penggunaan`, `frekuensi_penggunaan_lainnya`, `nama_domain`, `ketersediaan_integrasi`, `metode_integrasi`, `aplikasi_terintegrasi`, `opd_terintegrasi`, `pengembang_aplikasi`, `regulasi`, `pic_aplikasi`, `nip_pic`, `jabatan_pic`, `no_telp`, `file_spt`, `file_logo`, `level_privileges`, `rencana_aplikasi`, `proses_bisnis`, `keterangan`, `status`, `is_active`, `catatan`, `created_by`, `created_on`, `changed_by`, `changed_on`, `approved_by`, `approved_on`) VALUES
(283, 126, '1', 'Website Dinas Perpustakaan dan Kearsipan Kota Tanjungpinang', 'MDA/DPK', 'aplikasi berbasis web yang memberikan informasi kegiatan yang ada di Perpustakaan dan Kearsipan', 1, '2021', 'Website,', '-', 9, NULL, 2, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'https://pustakaarsip.tanjungpinangkota.go.id/', '', '', '-', 'Diskominfo', 'MDA/DPK', 'PP Nomor 95 Tentanf Sistem Pemerinrtahan Berbasis Elektronik', 'IBNU ROJI', '197807032006041017', 'KASUBAG UMUM', '081218888189', 'resources/data_aplikasi/show.pdf', 'resources/data_aplikasi/Lambang_Kota_Tanjungpinang1.png', '', '', '', '', 0, 1, 'dilakukan pemindahan IP ke 103.78.121.47 melalui surat nomor M/003/02/5.17.01/2026 tanggal 2 Februar', 103, '2024-03-26 15:48:12', 192, '2026-06-19 07:42:21', 11, '2026-03-12 11:35:01'),
(284, 124, '1', 'Sistem Informasi Monitoring Evaluasi Dan Pelaporan', '-', 'Untuk Informasi Monitoring Evaluasi Dan Pelaporan', 3, '2023', 'Website,', 'indonesia', 9, NULL, 2, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'https://monevdpupr.com/auth', '', '-', '-', '-', '-', '-', 'Leo Hady Sucipto', '199608082022021001', 'Staff Program', '082283106107', 'resources/data_aplikasi/SPT_234.pdf', 'resources/data_aplikasi/Untitled2.png', '-', '-', '', '-', 0, 0, 'Informasi SPT PIC tidak valid\r\ncek 12 maret 2026', 108, '2024-03-28 10:28:00', 205, '2026-08-19 08:54:20', 11, '2026-03-12 11:34:20'),
(285, 119, '2', 'Mal Pelayanan Publik Digital (MPPD)', 'Kemenpan RB', 'Sistem Informasi yang dikembangkan oleh Kemenpan untuk mempermudah proses layanan perizinan khususnya sektor kesehatan (izin nakes), layanan kependudukan', 1, '2023', 'Website,Android,iOS,', 'Tidak diketahui', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'https://admin.mppdigital.go.id/', '', '', 'Identitas Kependudukan Digital', 'Kemendagri', 'Kemenpan RB', '', 'H. M. Lukman, SE', '19750114 200312 1 00', 'Koordinator Penyelenggaraan Pelayanan Perizinan dan Non Perizinan A', '085272206633', 'resources/data_aplikasi/TIM_PENGELOLA_MPP_MPP_DIGITAL_KOTA_TPI_(1)_compressed_compressed-images-0-merged-compressed.pdf', 'resources/data_aplikasi/MPP.jpg', '', '', '', '', 0, 0, NULL, 128, '2025-02-18 08:14:14', 170, '2026-08-21 09:00:52', NULL, NULL),
(286, 119, '2', 'National Single Windows Investment (NSWI)', 'BKPM/Kementerian Investasi dan Hilirisasi', 'Portal web untuk mengakses informasi dan pelayanan fasilitasi data realisasi investasi di Indonesia', 2, '2017', 'Website,', '-', 2, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 4, NULL, 'nswi.bkpm.go.id', '', '', 'Sistem Pelayanan Informasi dan Perizinan Investasi Secara Elektronik (SPIPISE)', '-', 'BKPM/Kementerian Investasi', 'Perka BKPM N0.4 Tahun 2021', '-', '-', '-', '-', 'resources/data_aplikasi/SPT.pdf', 'resources/data_aplikasi/BKPM-Indonesia-Investment-Coordinating-Board-Onlin-SPIPISE-NSWi-LKPM-Indonesia.jpg', '', '', '', '', 0, 0, NULL, 130, '2025-02-18 09:53:59', 170, '2026-08-21 09:01:02', NULL, NULL),
(287, 109, '2', 'PILAR SIMRS', 'PT. Pilar Data Esensia', 'Sistem Informasi Manajemen Rumah Sakit', 2, '2022', 'Desktop,', 'Delphi', 2, NULL, 1, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'pilar.blangkon.net', 'Ada', 'REST API', 'Terintegrasi dengan BPJS Kesehatan, Satu Sehat Kementerian Kesehatan RI.', 'Kementerian Kesehatan RI\r\nBPJS Kesehatan', 'PT. Pilar Data Esensia', 'PP No. 46 Tahun 2014 tentang Sistem Informasi Kesehatan\r\nPermenkes No. 24 Tahun 2022 tentang Rekam Medis', 'Sari Dewi, ST, MT', '197809262010012007', 'Analis Pengembangan Sistem Operasi Medis', '081364649466', 'resources/data_aplikasi/SK_DIREKTUR_NOMOR_45_TAHUN_2025_-_UNIT_PENGELOLA_IT_compressed.pdf', 'resources/data_aplikasi/SIMRS_PILAR.jpg', 'Admin Utama\r\nUser/Client', '', 'Manajemen Pendataan dan Pelayanan di RS', '-', 0, 1, NULL, 138, '2025-03-05 13:48:38', NULL, NULL, NULL, NULL),
(288, 109, '1', 'Pilar-Elektronik Rekam Medis (P-ERM)', 'PT. Pilar Data Esensia', 'Sistem Informasi terkait Rekam Medis dan Informasi Kesehatan', 2, '2024', 'Desktop,', 'Delphi', 2, NULL, 1, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'pilar.blangkon.net', 'Ada', 'REST API', 'Terintegrasi dengan Pilar SIMRS', 'RSUD Kota Tanjungpinang', 'PT. Pilar Data Esensia', 'Permenkes No. 24 Tahun 2022 tentang Rekam Medis', 'Sari Dewi, ST, MT', '197809262010012007', 'Analis Pengembangan Sistem Operasi Medis', '081364649466', 'resources/data_aplikasi/SK_DIREKTUR_NOMOR_45_TAHUN_2025_-_UNIT_PENGELOLA_IT_compressed1.pdf', 'resources/data_aplikasi/P-ERM.jpg', 'Admin\r\nUser/Client', '-', 'Perekaman dan Pencatatan Status Medis Pasien di RSUD', '-', 1, 1, '', 138, '2025-03-05 13:53:18', NULL, NULL, 11, '2025-03-10 09:46:43'),
(289, 118, '1', 'Sistem Informasi Gerak Jalan Proklamasi', 'Dinas Komunikasi dan Informatika Kota Tanjungpinang', 'Sistem informasi untuk pendaftaran dan penilaian Lomba Gerak Jalan Proklamasi Tahun 2024', 1, '2024', 'Website,', 'HTML, PHP', 1, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 7, NULL, 'https://gerakjalan.tanjungpinangkota.go.id', 'Tidak Ada', '', '', '', 'Dinas Komunikasi dan Informatika Kota Tanjungpinang', 'Perpres 95 Tahun 2018, Perwako 8 Tahun 2022', 'Berima, S.IP, MM', '197711102006041022', 'Pelatih Olahraga Ahli Muda', '081266097649', 'resources/data_aplikasi/Contoh_SPT1.pdf', 'resources/data_aplikasi/Screen_Shot_2025-03-06_at_12_15_47.png', 'Admin Utama untuk melakukan pengaturan aplikasi (tahun, kategori lomba, dll), Juri (Nilai & Waktu) untuk melakukan penilaian,', 'Pengembangan mobile app', 'Pembudayaan Olahraga', '', 1, 1, 'SPT Belum ada', 142, '2025-03-06 12:19:08', 142, '2025-03-06 12:19:23', 11, '2025-03-06 12:37:37'),
(290, 101, '1', 'e monev  PEemerintah Kota TanjungPinang', 'BAGIAN PEMBANGUNAN', 'Aplikasi E-Monev Kota Tanjungpinang merupakan sistem informasi berbasis elektronik yang digunakan untuk memantau dan mengevaluasi realisasi fisik dan keuangan pelaksanaan program dan kegiatan pembangunan daerah. Aplikasi ini menyajikan data progres pelaksanaan secara terpadu, akurat, dan periodik, sehingga memudahkan pemerintah daerah dalam melakukan pengendalian, evaluasi, serta pengambilan keputusan. Melalui E-Monev, transparansi dan akuntabilitas pengelolaan anggaran serta capaian kinerja pembangunan di Kota Tanjungpinang dapat ditingkatkan secara efektif.', 3, '2022', 'Website,', 'PHP', 1, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 3, NULL, 'https://monev.tanjungpinangkota.go.id/', 'Tidak Ada', 'DLL', '', '', 'BAGIAN ADMINISTRASI PEMBANGUNAN', '', 'rino haryanto', '198302232010011003', 'analis Kebijakan ahli muda', '085250500500', 'resources/data_aplikasi/tim_penghubung.jpeg', 'resources/data_aplikasi/monev1.jpeg', 'admin utama memiliki hak akses sepenuhnya dan seterusnya', 'apalikasi menjadi tolak ukur perkembangan pola perimbangan antar target dan realisasi', 'Peningkatan efektifitas sistem pemerintah kota tanjungpinang', 'oke', 1, 1, '', 145, '2026-03-11 11:11:10', NULL, NULL, 11, '2026-03-11 11:20:39'),
(291, 101, '1', 'Sistem Informasi Pembangunan', 'BAGIAN PEMBANGUNAN', 'Sistem Informasi Pembangunan merupakan sebuah sistem aplikasi berbasis website yang dirancang untuk mendukung pengelolaan, pendataan, dan penyajian informasi pembangunan daerah secara terintegrasi di Kota Tanjungpinang. Sistem ini berfungsi sebagai media pengumpulan dan pengolahan data yang berkaitan dengan pemanfaatan lahan serta infrastruktur strategis, guna mendukung perencanaan, pengawasan, dan pengambilan kebijakan pembangunan yang tepat sasaran.\r\n\r\nRuang lingkup utama sistem ini meliputi data pemakaian lahan Prasarana, Sarana, dan Utilitas (PSU) yang digunakan untuk kegiatan ekonomis, seperti usaha perdagangan, jasa, dan kegiatan produktif lainnya. Data tersebut mencakup informasi lokasi, luas lahan, status pemanfaatan, peruntukan, serta kesesuaian penggunaan lahan dengan ketentuan peraturan perundang-undangan yang berlaku.\r\n\r\nSelain itu, sistem ini juga memuat data tower telekomunikasi di Kota Tanjungpinang, yang meliputi informasi kepemilikan, lokasi koordinat, status perizinan, fungsi tower, serta kondisi eksisting di lapangan. Data tower disajikan secara terstruktur untuk mendukung pengawasan, penertiban, dan pengendalian pembangunan infrastruktur telekomunikasi di wilayah kota.\r\n\r\nMelalui penerapan sistem berbasis website, Sistem Informasi Pembangunan memungkinkan akses data yang cepat, akurat, dan transparan bagi perangkat daerah terkait. Sistem ini diharapkan dapat meningkatkan efektivitas koordinasi antar instansi, mendukung pengambilan keputusan berbasis data, serta mewujudkan tata kelola pembangunan yang tertib, akuntabel, dan berkelanjutan di Kota Tanjungpinang.', 4, '2024', 'Website,', 'PHP', 1, NULL, 3, 'di atas 100 pengguna', 1, NULL, 'https://sip.tanjungpinangkota.go.id/', 'Tidak Ada', 'DLL', '', '', 'BAGIAN ADMINISTRASI PEMBANGUNAN', '', 'FERI ISMANA', '198203292006041012', 'analis Kebijakan ahli muda', '085250500500', 'resources/data_aplikasi/WhatsApp_Image_2026-03-02_at_12_58_141.jpeg', 'resources/data_aplikasi/WhatsApp_Image_2026-03-02_at_12_53_271.jpeg', 'admin utama mempunya akses ke semua data dan sistem, 2 Orang, dst', 'aplikasi ini memrupakan gerbang dasar yang nantinya akan di gunakan sebagai bahan pertimbanagan kebijakan terkait pengenaan pajak dan restri busi sebagai salah satu pendukung optimalisasi PAD kota Tanjungpinang', 'Peningkatan Efektifitas peningkatan sistem pemerintahan kota tanjungpinang', 'oke', 1, 1, '', 145, '2026-03-11 11:17:56', NULL, NULL, 11, '2026-03-11 11:21:05'),
(292, 125, '1', 'Satu Data Tanjungpinang', 'Dinas Komunikasi dan Informatika', 'mengintegrasikan data sektoral lintas OPD, menampilkan data statistik secara interaktif, serta menyediakan mekanisme pengelolaan dan publikasi data secara terpusat.', 1, '2025', 'Website,', 'Php', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'satudata.tanjungpinangkota.go.id', 'Ada', 'REST API', 'Opendata', '', 'CV. Danz', '3.	Peraturan Presiden Nomor 39 Tahun 2019 tentang Satu Data Indonesia.\r\n4.	Peraturan Menteri Komunikasi dan Informatika Republik Indonesia Nomor 8 Tahun 2020 tentang Pedoman Teknis Penyelenggaraan Satu Data Indonesia di Daerah.\r\n5.	Peraturan Wali Kota Tanjungpinang tentang Penyelenggaraan Satu Data Daerah (apabila telah ditetapkan).', 'Misnanten', '198004152009022005', 'Analis Kebijakan', '081364386678', 'resources/data_aplikasi/TPI_13_02_CFM_01_drawio.pdf', 'resources/data_aplikasi/logo_tpi.png', 'Admin utama memiliki akses untuk menambahkan data, Admin OPD memiliki akses untuk menambahkan data per OPD, pengguna aplikasi terdaftar untuk menggunakan rest API', 'akan diintegrasikan dengan aplikasi lain sebagai SPLPD', 'Penyelenggaraan Statistik Sektoral Pemerintah Daerah', '', 1, 1, '', 11, '2026-03-12 12:08:31', NULL, NULL, 11, '2026-03-12 12:57:28'),
(293, 125, '1', 'E-SKM', 'Diskominfo Tanjungpinang', 'Survey Kepuasan Masyarakat', 1, '2025', 'Website,', 'PHP, VueJS', 1, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 3, NULL, 'https://skm.tanjungpinangkota.go.id', 'Ada', 'REST API', '', 'Diskominfo,  Sekretariat Daerah', 'Diskominfo Tanjungpinang', 'Permenpan No. 14 Tahun 2017', 'Saiful Najib', '199411252022021001', 'Pranata Komputer Ahli Pertama', '081270709880', 'resources/data_aplikasi/Lambang_Kota_Tanjungpinang2.png', 'resources/data_aplikasi/Lambang_Kota_Tanjungpinang3.png', '', '', 'Penyelenggaraan Urusan Pemerintahan Umum', '', 1, 1, '', 115, '2026-03-12 12:09:05', NULL, NULL, 11, '2026-03-12 12:57:13'),
(294, 125, '1', 'SIDEKRA', 'Diskominfo Tanjungpinang', 'Sistem Informasi Database Kerajinan', 1, '2025', 'Website,', 'PHP', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 2, NULL, 'sidekra.tanjungpinangkota.go.id', 'Ada', 'REST API', '', '', 'Diskominfo Tanjungpinang', '', 'Saiful Najib', '199411252022021001', 'Pranata Komputer Ahli Pertama', '081270709880', 'resources/data_aplikasi/Lambang_Kota_Tanjungpinang4.png', 'resources/data_aplikasi/Lambang_Kota_Tanjungpinang5.png', '', '', '-', '', 1, 1, '', 115, '2026-03-12 12:15:31', NULL, NULL, 11, '2026-03-12 12:57:20'),
(295, 125, '1', 'Drive Tanjungpinang', 'Dinas Kominfo', 'Penyimpanan File dan Berbagi Pakai File untuk Tanjungpinang', 3, '2020', 'Website,', '-', 10, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'drive.tanjungpinangkota.go.id', '', '', '', '', 'Dinas Kominfo', '', 'Aprinaldi', '198804102015031001', 'PENATA KELOLA SISTEM DAN TEKNOLOGI INFORMASI', '085228199298', 'resources/data_aplikasi/Doc3.pdf', 'resources/data_aplikasi/logo_tpi1.png', '', '', '', '', 0, 1, '', 11, '2026-03-12 13:05:17', 11, '2026-06-18 08:35:50', 11, '2026-03-12 13:23:34'),
(296, 107, '1', 'Website Portal BPKAD Kota Tanjungpinang', 'Diskominfo Tanjungpinang', '', 1, '2022', 'Website,', 'vue js', 1, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 4, NULL, 'bpkad.tanjungpinangkota.go.id', '', '', 'SIAP, ICMS', '', 'Diskominfo Tanjungpinang', '', 'Azwar, S.Sos', '197311102008011020', 'Pengadministrasi Perkantoran', '081268886729', 'resources/data_aplikasi/114_-_ST_SHARING_KNOWLEDGE_BERSAMA_PIC.pdf', 'resources/data_aplikasi/Screenshot_2026-08-19_094843.png', 'Admin utama memiliki akses untuk menginput dan mengakses website dalam hal update kegiatan kantor', 'Website ini bertujuan memberikan informasi kepada publik terkait kegiatan yang dilakukan oleh BPKAD Tanjungpinang', '', '', 0, 1, NULL, 202, '2026-08-19 10:00:12', NULL, NULL, NULL, NULL),
(297, 120, '2', 'AK 1', 'CV. MITRA GEMILANG', '', 1, '2019', 'Website,', 'PHP', 1, NULL, 3, 'di atas 100 pengguna', 1, NULL, 'https://disnakerkopum.tanjungpinangkota.go.id', '', '', '', 'Disnaker', 'ZULKIFLI', '', 'EKA DESRIMIANTI EFFENDI', '199012162025212055', 'PENATA LAYANAN OPERASIOAL', '085171161213', 'resources/data_aplikasi/SURAT_PERINTAH_DIKA_BARU.pdf', 'resources/data_aplikasi/Screenshot_2026-08-19_102150.png', '', '', '', '', 1, 1, '', 204, '2026-08-19 10:29:01', NULL, NULL, 11, '2026-10-05 09:21:09'),
(298, 114, '2', 'https://dishub.tanjungpinangkota.go.id', 'CV. Mutiara Alam', 'Sebagai kanal transparansi kebijakan, penyebaran informasi layanan perhubungan, serta dokumentasi kinerja dinas.', 1, '2023', 'Website,', 'PHP', 1, NULL, 2, 'di atas 25 sampai dengan 100 pengguna', 3, NULL, 'https://dishub.tanjungpinangkota.go.id', '', 'semua integrasi menggunakan protokol REST API dengan format JSON', 'Tidak terintegrasi dengan Aplikasi apapun,hanya terintegrasi dengan portal Pemko Tanjungpinang,serta portal Pemprov Kepulauan Riau', 'Dishub Kota Tanjungpinang', 'CV. Mutiara Alam', 'Undang-Undang No. 22 Tahun 2009 tentang Lalu Lintas dan Angkutan Jalan (LLAJ): Ini adalah undang-undang sektoral utama yang mengatur hampir seluruh aspek operasional, mulai dari manajemen lalu lintas, persyaratan kelaikan kendaraan, hingga perizinan angkutan umum.\r\n· Undang-Undang No. 23 Tahun 2014 tentang Pemerintahan Daerah: UU ini mengatur pembagian urusan pemerintahan konkuren antara pusat, provinsi, dan kabupaten/kota, termasuk di bidang perhubungan, sehingga menjadi dasar kewenangan daerah.\r\n· Undang-Undang No. 17 Tahun 2008 tentang Pelayaran: Mengatur aspek transportasi laut, yang relevan mengingat Tanjungpinang adalah daerah kepulauan.\r\n· Peraturan Pemerintah (PP) dan Peraturan Menteri (Permen): Sebagai aturan pelaksana dari UU, misalnya PP No. 18 Tahun 2016 tentang Perangkat Daerah dan Permenhub No. 47 Tahun 2023 tentang Penyelenggaraan Angkutan Orang dengan Kendaraan Bermotor Umum Tidak Dalam Trayek.', 'Haris Biantoro', '198706012025211071', 'Pengadministrasi Perkantoran', '087897947780', 'resources/data_aplikasi/SURAT_TUGAS_HARIS_BIANTORO.pdf', 'resources/data_aplikasi/271997.png', 'Admin memiliki akses ke semua fitur', 'Belum ada aplikasi lanjutan yang hendak dikembangkan,dan akan di-update jika ada', '', 'Portal Informasi Publik', 0, 1, NULL, 203, '2026-08-19 12:22:17', NULL, NULL, NULL, NULL),
(299, 101, '1', 'Monev PBJ', 'Bagian Pengadaan Barang dan Jasa', 'Aplikasi Monitoring dan evaluasi Pengadaan Barang dan Jasa', 2, '2025', 'Website,', 'PHP', 3, NULL, 1, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'monevpbj.tanjungpinangkota.go.id', '', '', 'SPSE, SiRUP, Katalog Electronic', 'LKPP', 'Bagian Pengadaan Barang dan Jasa', 'Perpres No 21 Tahun 2025', 'Sulaiman', '197805162006041019', 'Pengadministrasian LPSE', '082389593388', 'resources/data_aplikasi/spt_admin_PIC_SULAIMAN-TTE1.pdf', 'resources/data_aplikasi/Screenshot_2026-08-19_at_2_50_36 PM-dikompresi.jpg', 'Admin Utama, Sub Admin, User', 'Aplikasi Monitoring pengadaan bisa sebagai informasi tentang berapa jumlah tender dan lainnya serta bisa menjadi sumber ubntuk menghitung berapa jumlah anggaran pengadaan di Tanjungpinang', '', '', 0, 1, NULL, 201, '2026-08-19 14:56:37', NULL, NULL, NULL, NULL),
(300, 101, '2', 'SPSE', 'LKPP', 'Aplikasi Sistem Pengadaan Barang dan Jasa Secara Elektronik', 1, '2011', 'Website,', 'PHP', 3, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'https://spse.inaproc.id/tanjungpinangkota/', '', '', 'Sikap, OSS,', '', 'LKPP', 'Perpres 21 Tahun 2025', 'Sulaiman', '197805162006041019', 'Pengadministrasian LPSE', '082389593388', 'resources/data_aplikasi/spt_admin_PIC_SULAIMAN-TTE2.pdf', 'resources/data_aplikasi/Screenshot_2026-08-19_at_3_01.jpg', 'Admin PPE, ADMIN Agency', '', '', '', 0, 1, NULL, 201, '2026-08-19 15:03:15', NULL, NULL, NULL, NULL),
(301, 153, '2', 'Website UPTD Puskesmas Sei Jang', 'Avicom', 'Homepage perkenalan dan berbagi informasi tentang Puskesmas Sei Jang', 1, '2017', 'Website,Desktop,', 'php', 1, NULL, 2, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'puskesmasseijang.tanjungpinangkota.go.id', '', 'API', 'Tidak ada', 'UPTD Puskesmas Sei Jang', 'Avicom', 'Perpres Nomor 95 Tahun 2018 tentang Sistem Pemerintahan Berbasis Elektronik', 'Helmatussa\'diyah, A.Md.Keb', '19960120 201902 2 00', 'Bidan Terampil', '+62 812-7600-8807', 'resources/data_aplikasi/SPT1.pdf', 'resources/data_aplikasi/Screenshot_2026-08-20_092828.png', 'Admin', 'Pengembangan website sebagai media informasi dan pelayanan publik UPTD Puskesmas Sei Jang yang menyediakan informasi kesehatan, informasi pelayanan, edukasi kesehatan, serta akses layanan dan pengaduan masyarakat secara online.', '', 'Website resmi UPTD Puskesmas Sei Jang yang digunakan untuk menyampaikan informasi mengenai profil, pelayanan kesehatan, program/kegiatan, edukasi kesehatan, berita, serta informasi dan layanan bagi masyarakat.', 0, 1, NULL, 34, '2026-08-20 09:28:15', 34, '2026-08-20 10:25:43', NULL, NULL),
(302, 111, '1', 'Website DKP2KB Kota Tanjungpinang', 'Avicom', 'Berisi profil DKP2KB Kota Tanjungpinang', 1, '2018', 'Website,', '-', 2, NULL, 2, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'DKP2KB.tanjungpinangkota.go.id', '', '-', '-', '-', 'Avicom', '-', 'R. Leila Mutia, SKM', '197608052003122009', 'Perencana ahli muda', '081364309329', 'resources/data_aplikasi/SRIKANDI_-_SURAT_DINAS_Undangan_Penyusunan_Metadata.pdf', 'resources/data_aplikasi/2765.jpg', '', '', '', '', 0, 1, NULL, 31, '2026-08-20 09:57:36', 31, '2026-08-20 10:18:48', NULL, NULL),
(303, 140, '1', 'Website Profile', 'Diskominfo', 'Website Profile Kelurahan Kampung Bulang', 1, '2022', 'Website,', 'PHP', 9, NULL, 3, 'di atas 100 pengguna', 1, NULL, 'kampungbulang.tanjungpinangkota.go.id/', '', 'API', 'Belum Terintegrasi', 'Kelurahan Kampung Bulang', 'Diskominfo', '', 'Agustian Ahmadi', '198608282025211013', 'Pengadministrasi Perkantoran', '087773565270', 'resources/data_aplikasi/178719525015414891537559048080971.jpg', 'resources/data_aplikasi/Screenshot_20260820-100803.png', 'Admin Utama', 'Pusat informasi di wilayah Kelurahan Kampung Bulang', '', '', 0, 1, NULL, 193, '2026-08-20 10:09:30', 193, '2026-08-20 10:21:05', NULL, NULL),
(304, 138, '1', 'administrasi cuti', 'diskominfo', 'sudah tidak bisa diakses', 2, '2022', 'Website,', 'PHP', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 8, NULL, 'cuti.melayukotapiring.tanjungpinangkota.go.id', '', '', '', '', 'Hartono', '', 'Hartono', '198410082006041007', 'Sekretaris Kelurahan', '085264271688', 'resources/data_aplikasi/DOC-20260818-WA0009.pdf', 'resources/data_aplikasi/188697.png', '', '', '', 'tidak bisa di akses', 0, 0, NULL, 186, '2026-08-20 10:14:04', 186, '2026-08-20 10:34:38', NULL, NULL),
(305, 150, '1', 'Kelurahan kampung baru kecamatan tanjungpinang barat', 'Diskominfo kota Tanjungpinang', 'Sebagai informasi untuk masyarakat kelurahan kampung baru', 1, '2023', 'Website,', 'up,js,php', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'https://kampungbarukel.tanjungpinangkota.go.id/', '', 'API', '-', 'Diskominfo', 'Diskominfo kota Tanjungpinang', '', 'Sutrisno', '198601152025211007', 'Staf', '085274973300', 'resources/data_aplikasi/Screenshot_2026-08-22-04-40-20-720_com_mi_globalbrowser.jpg', 'resources/data_aplikasi/1000191387.jpg', '', 'Mempermudah memberikan informasi kepada masyarakat', '', 'Informasi', 0, 1, NULL, 230, '2026-08-20 10:16:08', 230, '2026-08-22 04:42:12', NULL, NULL),
(306, 138, '1', 'Pengurusan administrasi', 'diskominfo', '', 1, '2022', 'Website,', 'PHP', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'cuti.melayukotapiring.tanjungpinangkota.go.id', '', '', '', '', 'Hartono', '', 'Hartono', '198410082006041007', 'Sekretaris Kelurahan', '085264271688', 'resources/data_aplikasi/DOC-20260818-WA00091.pdf', 'resources/data_aplikasi/1886971.png', '', '', '', 'tidak bisa di akses', 0, 0, NULL, 186, '2026-08-20 10:17:50', 186, '2026-08-20 10:35:06', NULL, NULL),
(307, 138, '1', 'Pemetaan wilayah', 'diskominfo', '', 2, '2022', 'Website,', 'PHP', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'pemetaan.melayukotapiring.tanjungpinangkota.go.id', '', '', '', '', 'Hartono', '', 'Hartono', '198410082006041007', 'Sekretaris Kelurahan', '085264271688', 'resources/data_aplikasi/DOC-20260818-WA00092.pdf', 'resources/data_aplikasi/1886972.png', '', '', '', 'tidak bisa di akses', 0, 0, NULL, 186, '2026-08-20 10:19:56', 186, '2026-08-20 10:34:52', NULL, NULL),
(308, 154, '2', 'WEBSITE PROFILE PUKSESMAS BATU 10', 'Avicom', 'HOMEPAGE PERKENALAN DAN BERBAGI INFORMASI TENTANG PUSKESMAS BATU 10', 1, '2018', 'Website,', 'PHP', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'https://puskesmasbatu10.tanjungpinangkota.go.id/', '', 'API,', '', '', 'Avicom', '', 'dr. Budi Ariwibowo', '199104112025041001', 'dokter umum', '----', 'resources/data_aplikasi/Screenshot_(5).png', 'resources/data_aplikasi/Screenshot_2023-11-29_081428.png', '', '', '', '', 0, 1, NULL, 225, '2026-08-20 10:21:22', 225, '2026-08-20 10:26:19', NULL, NULL),
(309, 155, '1', 'Web profil', 'Avicom', 'Web UPTD Puskesmas Kampung Bugis', 1, '2019', 'Website,', 'Php.', 1, NULL, 2, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'Puskesmaskampungbugis.tanjungpinangkota.go.id', '', '', '', '', 'Avicom', '', 'Dwi Herawaty', '198512042011012004', 'Admin OPD dan Pembimbing Kes. Kerja', '081328374484', 'resources/data_aplikasi/ST_Hera.pdf', 'resources/data_aplikasi/Untitled-1.jpg', '', '', '', '', 0, 1, NULL, 33, '2026-08-20 10:24:24', 33, '2026-08-23 17:05:02', NULL, NULL),
(310, 151, '2', 'Website Profile Kelurahan Kemboja', 'Diskominfo Tanjungpinang', 'Aplikasi berbasis informasi portal Kelurahan Kemboja', 1, '2024', 'Website,', 'PHP', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'https://www.tanjungpinangkota.go.id/data/unitkerja/kel-kemboja#', '', 'Siap Tanjungpinang', 'Siap Tanjungpinang', 'Diskominfo', 'Diskominfo Tanjungpinang', '', 'ARI OKTAFIO', '2172010910000001', 'Operator Layanan Operasional', '081266003165', 'resources/data_aplikasi/Road_To_Tropical_Night_Run_2026_-_Google_Formulir.pdf', 'resources/data_aplikasi/IMG_1106.png', 'Admin Utama', 'Aplikasi berbasis masyarakat yang mengembangkan informasi seputar kelurahan kemboja', '', '-', 0, 1, NULL, 222, '2026-08-20 10:25:39', 222, '2026-08-20 10:26:48', NULL, NULL),
(311, 156, '2', 'Website Profil Puskesmas', 'Diskominfo', 'Profil Puskesmas', 1, '2016', 'Website,', 'Vue.js.php', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'Puskesmasmkp.tanjungpinangkota.go.id', '', 'API', 'Satu sehat', 'Diskominfo', 'Diskominfo', '', 'Mira Tania', '198506272010012004', 'Kepala Tata Usaha', '081277322666', 'resources/data_aplikasi/PEJABAT_ESELON_4_PEJABAT_FUNGSIONAL_SETARA.pdf', 'resources/data_aplikasi/1001952429.jpg', '', '', '', '', 0, 1, NULL, 36, '2026-08-20 10:25:49', 36, '2026-08-20 10:31:26', NULL, NULL),
(312, 157, '2', 'WEBSITE PROFILE PUSKESMAS MEKAR BARU', 'Diskominfo Tanjungpinang', 'HOMEPAGE PERKENALAN DAN BERBAGI INFORMASI TENTANG PUSKESMAS MEKAR BARU', 1, '2018', 'Website,', '.Php', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'https://puskesmasmekarbaru.tanjungpinangkota.go.id/index.php', '', 'Apl', '', '', 'Diskominfo Tanjungpinang', '', 'Eva Neilfina', '199301182024212004', 'Promosi kesehatan dan Ilmu Perilaku', '085765026270', 'resources/data_aplikasi/Surat_CKG_anak_sekolah_2026.pdf', 'resources/data_aplikasi/1000995104.jpg', '', '', '', '', 0, 1, NULL, 227, '2026-08-20 10:26:12', 227, '2026-08-20 10:32:24', NULL, NULL),
(313, 133, '2', 'kec. tpibarat@tanjungpinang.go.id', 'Diskominfo Kota Tanjungpinang', 'Sebagai Media Informasi untuk Masyarakat', 1, '2023', 'Website,', 'Up, JF, PHP', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'kec.tpibarat@tanjungpinangkota.go.id', '', 'Koordinasi', '-', 'Diskominfo', 'Diskominfo Kota Tanjungpinang', '-', 'SUHENDRI', '197707012008011013', 'Staf', '082326971777', 'resources/data_aplikasi/SERTIFIKAT-Suhendri_(2).pdf', 'resources/data_aplikasi/IMG-20260326-WA0001.jpg', '', 'Mempermudah Masyarakat Mendapatkan Informasi', '', '-', 0, 1, NULL, 231, '2026-08-20 10:26:27', NULL, NULL, NULL, NULL),
(314, 137, '2', 'WEBSITE PROFIL KELURAHAN PENYENGAT', 'DISKOMINFO KOTA TANJUNGPINANG', 'WEBSITE RESMI KELURAHAN PENYENGAT KECAMATAN TANJUNGPINANG KOTA , KOTA TANJUNGPINANG', 1, '2026', 'Website,', 'PHP', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'https://penyengat.tanjungpinangkota.go.id/', '', '', '', '', 'DISKOMINFO KOTA TANJUNGPINANG', '', 'MUHAMMAD ARIANSYAH, S.Sos', '199208282025211010', 'staf', '082284710116', 'resources/data_aplikasi/Lambang_Kota_Tanjungpinang6.png', 'resources/data_aplikasi/Lambang_Kota_Tanjungpinang7.png', '', '', '', '', 0, 1, NULL, 234, '2026-08-20 10:28:41', NULL, NULL, NULL, NULL),
(315, 149, '2', 'Website profile Kelurahan', 'Diskominfo', 'Home page perkenalan dan berbagi informasi di internal kelurahan bukit cermin', 1, '2024', 'Website,', 'PHP', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 2, NULL, 'https://bukitcerminkel.tanjungpinangkota.go.id/', '', 'APL', '', '', 'Diskominfo', '', 'asrisandy', '197902182009021003', 'pengolah data dan informasi', '085272222515', 'resources/data_aplikasi/Surat_Tugas_Asrisandy.pdf', 'resources/data_aplikasi/gambar_web_bucer.png', '', '', '', '', 0, 1, NULL, 223, '2026-08-20 10:29:06', NULL, NULL, NULL, NULL),
(316, 135, '2', 'website profile Kelurahan Senggarang', 'Diskominfo Kota Tanjungpinang', 'Website Kelurahan Senggarang', 1, '2026', 'Website,', 'PHP', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'Senggarangkel.tanjungpinangkota.go.id', '', '', '', '', 'Diskominfo Kota Tanjungpinang', '', 'Ronny Saputra, S.Sos', '197105202007011029', 'Analis Teknik Kebijakan', '081274975006', 'resources/data_aplikasi/41.jpeg', 'resources/data_aplikasi/pexels-pixabay-147411.jpg', '', '', '', '', 0, 1, NULL, 232, '2026-08-20 10:29:10', 232, '2026-08-20 10:35:08', NULL, NULL),
(317, 140, '1', 'Simkel', 'Diskominfo', 'simkel.kampungbulang.tanjungpinangkota.go.id', 1, '2022', 'Website,', 'PHP', 10, NULL, 3, 'di atas 100 pengguna', 1, NULL, 'simkel.kampungbulang.tanjungpinangkota.go.id', '', 'API', 'Belum', 'Belum', 'Diskominfo', '', 'Agustian Ahmadi', '198608282025211013', 'Pengadministrasi Perkantoran', '087773565270', 'resources/data_aplikasi/Screenshot_20260820-1008031.png', 'resources/data_aplikasi/Screenshot_20260820-1008032.png', '', '', '', '', 0, 1, NULL, 193, '2026-08-20 10:30:51', NULL, NULL, NULL, NULL),
(318, 141, '2', 'proklim.batuixtanjungpinangkota.go.id', '-', '-', 1, '2020', 'Website,', 'Php', 2, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, '-', '', '-', '', '', '-', '', 'Yasmadi', '-', '-', '-', 'resources/data_aplikasi/IMG_20260820_1024511.jpg', 'resources/data_aplikasi/1001011503.jpg', '', '', '', '', 0, 1, NULL, 229, '2026-08-20 10:37:25', NULL, NULL, NULL, NULL),
(319, 131, '2', 'Website Profil Kecamatan Tanjungpinang Timur', 'Diskominfo Tanjungpinang', 'Homepage perkenalan dan berbagi informasi tentang kecamatan tanjungpinang timur', 1, '2026', 'Website,', 'PHP', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'https://tpitimurkec.tanjungpinangkota.go.id/', '', 'APL', '', '', 'Diskominfo Tanjungpinang', '', 'AFRIANI,S.E.', '198010012003122009', 'Plt. Kasubbag Umum dan Kepegawaian', '082170797650', 'resources/data_aplikasi/SPT_PIC_WEBSITE_PROFIL_preview.pdf', 'resources/data_aplikasi/rr.png', '', '', '', '', 0, 1, NULL, 226, '2026-08-20 14:47:36', 226, '2026-08-28 14:47:39', NULL, NULL),
(320, 113, '1', 'DINAS KEBUDAYAAN DAN PARIWISATA KOTA TANJUNGPINANG', 'Pihak Ketiga', 'Aplikasi berbasis Website', 1, '2023', 'Website,', 'Android', 10, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'disbudpar.tanjungpinangkota.go.id', '', '', '', 'Disbudpar', 'Pihak Ketiga', '', 'Aditya Ramadhinata', '199801252024211007', 'PRANATA KOMPUTER AHLI PERTAMA', '082285223436', 'resources/data_aplikasi/pelaksanaan_gotong_royong.pdf', 'resources/data_aplikasi/56234.jpg', '', '', '', '', 0, 0, NULL, 154, '2026-08-21 09:01:25', 154, '2026-08-21 09:03:08', NULL, NULL),
(321, 102, '1', 'WEBSITE PROFIL DPRD KOTA TANJUNGPINANGF', 'Sekretariat DPRD', 'Website resmi DPRD Kota Tanjungpinang', 1, '2023', 'Website,', 'PHP', 1, NULL, 1, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'dprd.tanjungpinangkota.go.id', '', '', '', '', 'Sekretariat DPRD', '', 'Dani Ramdani', '-', 'Tenaga Ahli', '081277111113', 'resources/data_aplikasi/SK_TENAGA_AHLI_KOMUNIKASI_PUBLIKASI_DAN_DOKUMENTASI.pdf', 'resources/data_aplikasi/Screenshot_2026-08-28_100114.png', '', '', '', '', 0, 1, NULL, 177, '2026-08-21 09:25:00', 177, '2026-08-28 10:03:50', NULL, NULL),
(322, 128, '2', 'WEBSITE PROFILE SATPOL PP KOTA TANJUNGPINANG', 'SatpolPP', 'Website resmi Satuan Polisi Pamong Praja Kota Tanjungpinang', 1, '2023', 'Website,', 'PHP', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'satpolpp.tanjungpinangkota.go.id', '', '', '', '', 'SatpolPP', '', 'Muflih Syukron, S.Kom', '198802072019021004', 'Penelaah Teknis Kebijakan', '082173709445', 'resources/data_aplikasi/12.png', 'resources/data_aplikasi/2.png', '', '', '', '', 0, 1, NULL, 238, '2026-08-21 09:32:24', 238, '2026-08-21 09:32:40', NULL, NULL),
(323, 102, '1', 'MITRAWAN', 'Sekretariat DPRD', 'Aplikasi internal Sekretariat DPRD', 2, '2023', 'Website,Android,', 'PHP', 2, NULL, 1, 'di atas 100 pengguna', 1, NULL, 'mitra-wan.tanjungpinangkota.go.id', '', '', '', '', 'Sekretariat DPRD', '', 'AGUNG TRI SAPUTRO, S.Sos', '19920923 202521 1 06', 'Tim Teknis', '082172574949', 'resources/data_aplikasi/SK_TIM_MITRAWAN_2025.pdf', 'resources/data_aplikasi/Screenshot_2026-08-28_081001.png', '', '', '', '', 0, 1, NULL, 177, '2026-08-28 08:22:28', NULL, NULL, NULL, NULL),
(324, 113, '2', 'Website Museum Sultan Sulaiman Badrul Alamsyah', 'Pihak Ketiga', 'Website di gunakan sebagai company profile museum dan juga digunakan sebagai wadah untuk menampung data koleksi yang nantinya url di generate menjadi qrcode, sehingga pengunjung museum cukup mengscan qrcode untuk mengetahui informasi dari koleksi tersebut', 1, '2024', 'Website,', 'wordpress', 1, NULL, 3, 'di atas 100 pengguna', 1, NULL, 'museum.tanjungpinangkota.go.id', '', '', '', '', 'Pihak Ketiga', '', 'Shendy Afriyatno Soehendrawan', '199704132024211006', 'Pranata Komputer Terampil', '081268230354', 'resources/data_aplikasi/3.PNG', 'resources/data_aplikasi/cap.PNG', 'user hanya admin utama sebagai kontrol penuh terhadap aplikasi', 'website sebagai wadah untuk menampung data koleksi yang nantinya url di generate menjadi qrcode, sehingga pengunjung museum cukup mengscan qrcode untuk mengetahui informasi dari koleksi tersebut', '', '', 0, 1, NULL, 199, '2026-08-28 08:52:26', 199, '2026-10-06 11:03:57', NULL, NULL),
(325, 104, '1', 'KESEJAHTERAAN SOSIAL', 'Team panjul.co.id', 'Penerbitan dan pelayanan informasi mengenai sumberya manusia dan sumberdaya alam', 1, '2018', 'Website,', 'HTML', 2, NULL, 3, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'https://kesos.tanjungpinangkota.go.id', '', '', '', 'Dinsos Kecamatan dan Kelurahan', 'Team panjul.co.id', '', 'EFENDI', '198102072010011003', 'Pengadministrasi Perkantoran', '08527415992', 'resources/data_aplikasi/SK_TKPKD_2019-2021.pdf', 'resources/data_aplikasi/Screenshot_(996).png', 'Admin utama', 'Melakukan Pendataan terkait Kesejahteraan Sosial di Kota Tanjungpinang', '', 'Website sudah tidak digunakan lagi', 0, 0, NULL, 155, '2026-08-28 14:28:33', 155, '2026-08-28 14:57:16', NULL, NULL),
(326, 106, '1', 'Sistem Informasi Pelayanan PBB', 'CV. Dias Klapertama', '', 1, '2025', 'Website,', 'PHP', 3, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'https://rukunpajak.tanjungpinangkota.go.id/', '', 'API', 'Payment Online, transaksi keuangan BANK BTN dan BRKs', '', 'CV. Rajawali Biru Sukses', '', 'Mohammad Farly Rizki', '198803022015031002', 'Pengelola Data Informasi', '081275038222', 'resources/data_aplikasi/SPPBJ.pdf', 'resources/data_aplikasi/rk.png', '', 'Aplikasi 1 pintu untuk pelayanan perpajakan daerah', '', '', 0, 1, NULL, 54, '2026-08-31 08:55:44', NULL, NULL, NULL, NULL),
(327, 106, '1', 'Website BPPRD', 'CV. AFA Kreatif Media', 'Website BPPRD Kota Tanjungpinang merupakan portal layanan digital yang dikembangkan dan dikelola oleh Badan Pengelolaan Pajak dan Retribusi Daerah Kota Tanjungpinang sebagai media penyampaian informasi sekaligus sarana pelayanan perpajakan daerah secara elektronik kepada masyarakat. Website ini menjadi gerbang utama (single entry point) bagi masyarakat, Wajib Pajak, maupun pemangku kepentingan dalam mengakses berbagai informasi dan layanan perpajakan daerah secara mudah, cepat, dan terintegrasi', 1, '2024', 'Website,', 'PHP', 1, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'https://bpprd.tanjungpinangkota.go.id/', '', 'API', 'Pembayaran Payment Online', '', 'CV. Dias Klapertama', '', 'Mohammad Farly Rizki', '198803022015031002', 'Pengelola Data Informasi', '081275038222', 'resources/data_aplikasi/SPPBJ3.pdf', 'resources/data_aplikasi/rk1.png', '', '', '', '', 0, 1, NULL, 54, '2026-08-31 09:06:41', NULL, NULL, NULL, NULL),
(328, 106, '1', 'Pelayanan PBB Online', 'CV. Dias Klapertama', 'Aplikasi Pelayanan Mobile PBB merupakan layanan administrasi Pajak Bumi dan Bangunan Perdesaan dan Perkotaan (PBB-P2) berbasis smartphone yang dikembangkan oleh Badan Pengelolaan Pajak dan Retribusi Daerah (BPPRD) Kota Tanjungpinang sebagai bagian dari Sistem Informasi Pelayanan PBB (SIP-PBB). Aplikasi ini dirancang untuk memudahkan masyarakat dalam mengajukan berbagai pelayanan administrasi PBB-P2 secara daring tanpa harus datang langsung ke kantor BPPRD.', 1, '2026', 'Website,', 'PHP', 3, NULL, 4, 'di atas 100 pengguna', 1, NULL, 'https://rukunpajak.tanjungpinangkota.go.id/', '', 'API', '', '', 'CV. Rajawali Biru Sukses', '', 'Mohammad Farly Rizki', '198803022015031002', 'Pengelola Data Informasi', '081275038222', 'resources/data_aplikasi/Screenshot_2026-06-24_100842.png', 'resources/data_aplikasi/Screenshot_2026-07-01_142559.png', '', '', '', '', 0, 1, NULL, 54, '2026-08-31 09:14:34', NULL, NULL, NULL, NULL),
(329, 106, '1', 'Pantau Pajak', 'CV. Rajawali Biru Sukses', 'Aplikasi Pantau Pajak merupakan aplikasi berbasis web yang dikembangkan oleh Badan Pengelolaan Pajak dan Retribusi Daerah (BPPRD) Kota Tanjungpinang sebagai media monitoring dan visualisasi realisasi penerimaan pajak daerah secara terpadu. Aplikasi ini berfungsi sebagai dashboard eksekutif yang menyajikan informasi penerimaan daerah dalam bentuk grafik, indikator capaian target, tabel, dan statistik sehingga memudahkan proses monitoring serta evaluasi kinerja penerimaan pajak daerah', 3, '2025', 'Website,', 'PHP', 3, NULL, 4, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'https://pantaupajak.tanjungpinangkota.go.id/', '', 'API', '', '', 'CV. Rajawali Biru Sukses', '', 'Mohammad Farly Rizki', '198803022015031002', 'Pengelola Data Informasi', '081275038222', 'resources/data_aplikasi/Dokumentasi_Aplikasi.pdf', 'resources/data_aplikasi/Screenshot_2026-06-09_112306.png', '', '', '', '', 0, 1, NULL, 54, '2026-08-31 09:19:56', NULL, NULL, NULL, NULL),
(330, 106, '1', 'Aplikasi Sosialisasi dan Pelayanan', 'CV. Rajawali Biru Sukses', 'Aplikasi Sosialisasi dan Pelayanan merupakan sistem informasi yang digunakan untuk mendukung kegiatan penyampaian Surat Pemberitahuan Pajak Terutang Pajak Bumi dan Bangunan (SPPT PBB-P2) kepada masyarakat melalui kelurahan. Aplikasi ini menjadi sarana pencatatan sekaligus bukti digital penyerahan SPPT PBB-P2, sehingga proses distribusi SPPT kepada Wajib Pajak dapat terdokumentasi, dipantau, dan dipertanggungjawabkan dengan lebih baik.', 3, '2025', 'Website,', 'PHP', 3, NULL, 4, 'di atas 25 sampai dengan 100 pengguna', 1, NULL, 'https://rukunpajak.tanjungpinangkota.go.id/', '', 'API', 'Terintegrasi dengan aplikasi PBB', 'Seluruh Kelurahan di Tanjungpinang', 'CV. Rajawali Biru Sukses', '', 'Mohammad Farly Rizki', '198803022015031002', 'Pengelola Data Informasi', '081275038222', 'resources/data_aplikasi/Screenshot_2026-06-21_154351.png', 'resources/data_aplikasi/Screenshot_2026-07-20_104919.png', '', '', '', '', 0, 1, NULL, 54, '2026-08-31 09:32:12', NULL, NULL, NULL, NULL),
(331, 109, '1', 'website RSUD Kota Tanjungpinang', 'RSUD Kota Tanjungpinang', 'Website berisi informasi pelayanan RSUD Kota Tanjungpinang', 1, '2017', 'Website,', 'php', 1, NULL, 2, 'di atas 100 pengguna', 1, NULL, 'rsud.tanjungpinangkota.go.id', '', '', '', '', 'Tim IT RSUD Kota Tanjungpinang', 'Perpres No. 95 Tahun 2018 tentang Sistem Pemerintahan Berbasis Elektronik (SPBE)', 'Sari Dewi, S.T, M.T', '197809262010012007', 'Penata Layanan Operasional', '081364649466', 'resources/data_aplikasi/SK_Diterktur_Nomor_45_Tahun_2025-unit_IT.pdf', 'resources/data_aplikasi/logo_website.png', '', '', '', '', 0, 1, NULL, 136, '2026-08-31 09:51:30', NULL, NULL, NULL, NULL),
(332, 124, '2', 'Dinas Pekerjaan Umum dan Penataan Ruang Kota Tanjungpinang', 'Diskominfo Kota Tanjungpinang', 'Profil Dinas Pekerjaan Umum dan Penataan Ruang Kota Tanjungpinang', 1, '2026', 'Website,', '-', 10, NULL, 3, 'di atas 100 pengguna', 1, NULL, 'https://dpupr.tanjungpinangkota.go.id/', '', '-', '-', '-', 'Diskominfo Kota Tanjungpinang', '-', 'Leo Hady Sucipto', '199608082022021001', 'Penelaah Teknis Kebijakan', '082283106107', 'resources/data_aplikasi/20260831121258SURAT_TUGAS_ADMIN_WEBSITE_PUPR.pdf', 'resources/data_aplikasi/0b16680b35eae6f6c02417c47b5224c0.png', '-', 'Profil Dinas Pekerjaan Umum dan Penataan Ruang Kota Tanjungpinang', '', '-', 0, 1, NULL, 206, '2026-09-01 08:36:54', NULL, NULL, NULL, NULL),
(333, 121, '1', 'Siniaga', 'Softpoint System', 'Sebuah dashboard yang menampilkan data lengkap Industri Kecil Menengah di Kota Tanjungpinang yang telah mengisi Form data di Dataniaga', 2, '2023', 'Desktop,', '0', 2, NULL, 2, 'di atas 100 pengguna', 1, NULL, 'siniaga.disperdagin.tanjungpinangkota.go.id', '', '', '', '', 'Softpoint System', '', 'Dedi Kurniawan, S.T', '198906232023211014', 'Penyuluh Perindag', '081270087505', 'resources/data_aplikasi/surat_tugas_admin_aplikasi_siniaga_an_DEDI_KURNIAWAN.pdf', 'resources/data_aplikasi/Screenshot_(141).png', '', '', '', '', 0, 1, NULL, 200, '2026-09-07 10:55:44', NULL, NULL, NULL, NULL),
(334, 121, '1', 'Dataniaga', 'Softpoint System', 'Sebuah platform berbasis android dalam menyediakan form pengisian data Industri kecil menengah yang ada di Kota Tanjungpinang', 1, '2023', 'Desktop,', 'Delphi', 2, NULL, 2, 'di atas 100 pengguna', 1, NULL, 'dataniaga.tanjungpinangkota.go.id', '', '', '', '', 'Softpoint System', '', 'Molisha, S.Kom', '197911202003122010', 'Penelaah teknis kebijakan', '081277173899', 'resources/data_aplikasi/surat_tugas_admin_aplikasi_data_niaga_an_MOLISHA.pdf', 'resources/data_aplikasi/Screenshot_(142).png', '', '', '', '', 0, 1, NULL, 200, '2026-09-07 11:03:44', NULL, NULL, NULL, NULL),
(335, 105, '2', 'SIAP TANJUNGPINANG', 'BKPSDM Kota Tanjungpinang', 'platform digital berbasis web dan mobile yang digunakan oleh Pemerintah Kota Tanjungpinang untuk mencatat dan mengelola kehadiran Aparatur Sipil Negara (ASN) serta pegawai non-ASN secara daring.', 2, '2021', 'Website,Android,iOS,', 'PHP, Dart (Flutter) (atau Kotlin / Java / JavaScript)', 1, NULL, 3, 'di atas 100 pengguna', 1, NULL, 'siap.tanjungpinangkota.go.id', '', 'RESTful API (atau Web API)', 'Terintegrasi dengan SIMPEG Kota Tanjungpinang, Aplikasi E-Kinerja, dan Sistem Perhitungan TPP.', 'Seluruh OPD di Lingkungan Pemerintah Kota Tanjungpinang (Diskominfo, BKPSDM, BPKAD, Inspektorat, Seluruh Dinas/Badan/Kecamatan/Kelurahan).', 'BKPSDM Kota Tanjungpinang', 'Peraturan Walikota Tanjungpinang Nomor 56 Tahun 2021 tentang Perubahan atas Perwako No 73 Tahun 2020 tentang Pemberian Tambahan Penghasilan Pegawai Aparatur Sipil Negara di Lingkungan Pemko Tanjungpinang; Perpres No. 95 Tahun 2018 tentang SPBE.', 'Yenda Kurniawan, S.IP', '198612142007011001', 'Penelaah Teknis Kebijakan', '08127537474', 'resources/data_aplikasi/SP_Administrator_Pengelola_Aplikasi1.pdf', 'resources/data_aplikasi/Logo_Apk_SIAP_TANJUNGPINANG.png', 'Admin Utama', 'Pengembangan integrasi presensi berbasis pengenalan wajah biometrik terkini (Face Recognition), integrasi langsung modul Izin/Cuti dengan Tanda Tangan Elektronik (TTE) tersertifikasi BSRE, serta pelaporan otomatis ke dashboard Satu Data Tanjungpinang.', '', 'Aplikasi aktif digunakan setiap hari kerja oleh seluruh ASN dan tenaga harian lepas/honorer di lingkungan Pemerintah Kota Tanjungpinang sebagai dasar rekapitulasi disiplin dan pembayaran Tambahan Penghasilan Pegawai (TPP).', 0, 0, NULL, 159, '2026-09-25 09:51:57', NULL, NULL, NULL, NULL),
(336, 145, '1', 'sisakti', 'Diskominfo', '', 1, '2025', 'Website,', 'javascript', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'sisakti.tanjungayunartikel.tanjungpinangkota.go.id', '', '', '', '', 'Diskominfo', '', 'Sri Utoyo, S.E.', '198907282025211011', 'Penata Layanan Operasional', '085765244318', 'resources/data_aplikasi/sinergi_september_2_2.jpeg', 'resources/data_aplikasi/sinergi_september_2_1.jpeg', '', '', '', '', 0, 1, NULL, 187, '2026-10-06 09:52:11', NULL, NULL, NULL, NULL),
(337, 145, '2', 'website profile kelurahan Tanjung Ayun Sakti', 'Diskominfo', '', 1, '2025', 'Website,', 'javascript', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 3, NULL, 'tanjungayunartikel.tanjungpinangkota.go.id', '', '', '', '', 'Diskominfo', '', 'Sri Utoyo, S.E.', '198907282025211011', 'Penata Layanan Operasional', '085765244318', 'resources/data_aplikasi/sinergi_september_2_21.jpeg', 'resources/data_aplikasi/sinergi_september_2_22.jpeg', '', '', '', '', 0, 1, NULL, 187, '2026-10-06 09:54:54', NULL, NULL, NULL, NULL),
(338, 115, '1', 'Website Dinas Sosial', 'Diskominfo', 'Website profil dinas sosial', 1, '2022', 'Website,', '-', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 4, NULL, 'dinsos.tanjungpinangkota.go.id', '', '', '', '', 'Diskominfo', '', 'AYI MURZADI', '197703172024211001', 'Pranata Komputer Terampil', '082286610033', 'resources/data_aplikasi/20261007110301spt_ayi_sebagai_admin_website_dinsos.pdf', 'resources/data_aplikasi/Lambang_Kota_Tanjungpinang8.png', '', '', '', '', 0, 1, NULL, 122, '2026-10-07 09:28:10', 122, '2026-10-07 11:57:28', NULL, NULL),
(339, 106, '1', 'Gurindampay', 'PT.Softpoint', 'GURINDAM PAY (Gerakan Unggul Real Time Integrasi Data dan Monitoring Pajak) merupakan aplikasi digital Pemerintah Kota Tanjungpinang yang dirancang untuk mengintegrasikan pembayaran elektronik, pencatatan transaksi usaha, dan pengawasan pajak daerah secara real time. Aplikasi ini mendukung monitoring omzet dan penerimaan pajak, analisis kepatuhan wajib pajak, serta optimalisasi Pendapatan Asli Daerah (PAD).', 1, '2026', 'Website,', 'Delphi (Object Pascal)', 2, NULL, 1, 'di atas 100 pengguna', 1, NULL, 'https://incomepoint.tanjungpinangkota.go.id/gurpay/', '', 'API', 'Incomepoint dan Perbankan', 'Wajib Pajak', 'Softpoint', '', 'Mohammad Farly Rizki', '198803022015031002', 'Pengelola Data Informasi', '081275038222', 'resources/data_aplikasi/CONCEPT_PAPER.pdf', 'resources/data_aplikasi/Gurindampay.png', 'Admin Utama, Pengawas Sistem, dan user untuk monitoring', 'Implementasi GURINDAM PAY untuk mengintegrasikan transaksi pembayaran elektronik dengan pencatatan dan pengawasan pajak daerah secara real time. Tahap awal difokuskan pada PBJT Makanan dan/atau Minuman, dengan dashboard monitoring transaksi, omzet, penerimaan pajak, dan kepatuhan wajib pajak, serta rencana perluasan bertahap ke sektor pajak daerah lainnya.', '', 'Aplikasi dikelola oleh BPPRD Kota Tanjungpinang dengan dukungan vendor pengembang serta koordinasi dengan DISKOMINFO dan mitra perbankan. Aplikasi mendukung digitalisasi pengawasan pajak daerah dan optimalisasi PAD. Spesifikasi teknis serta mekanisme integrasi pembayaran dan penyetoran pajak dikonfirmasi bersama vendor dan mitra terkait.', 0, 1, NULL, 54, '2026-10-07 10:13:51', NULL, NULL, NULL, NULL),
(340, 110, '1', 'Website Dinas Kependudukan dan Pencatatan Sipil', 'Disdukcapil Kota Tanjungpinang', 'Website Dinas Kependudukan dan Pencatatan Sipil', 1, '2022', 'Website,', 'php', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 1, NULL, 'disdukcapil.tanjungpinangkota.go.id', '', '', '', '', 'Disdukcapil Kota Tanjungpinang', '', 'Moh. Ismail Wisuda', '199312212023211011', 'Arsiparis Ahli Pertama', '082283869473', 'resources/data_aplikasi/contoh.pdf', 'resources/data_aplikasi/pemko_tpi_logo.png', 'admin, operator', '', '', '', 0, 1, NULL, 182, '2026-10-07 11:49:10', NULL, NULL, NULL, NULL),
(341, 110, '1', 'Tuah Gurindam', 'DINAS KOMINFO DAN INFORMATIKA KOTA TANJUNGPINANG', 'Layanan Terintegrasi Berbasis Teknologi Informasi dalam Perubahan Data Administrasi Kependudukan Sidang di luar gedung Pengadilan Negeri Tanjungpinang', 1, '2026', 'Website,', 'php', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 2, NULL, 'layanan.disdukcapil.tanjungpinangkota.go.id', '', '', 'E-Court', 'Pengadilan Negeri Tanjungpinang Kelas 1A', 'DINAS KOMINFO DAN INFORMATIKA KOTA TANJUNGPINANG', '', 'DAHLIANA', '197012061990032004', 'Penelaah Teknis Kebijakan', '082391421735', 'resources/data_aplikasi/contoh1.pdf', 'resources/data_aplikasi/pemko_tpi_logo1.png', 'Admin, Petugas Disduk, Petuga Pengadilan', '', '', '', 0, 1, NULL, 182, '2026-10-07 12:00:08', NULL, NULL, NULL, NULL),
(342, 108, '1', 'Website Bakesbangpol Kota Tanjungpinang', 'Diskominfo Kota Tanjungpinang', 'Website  ini Berisikan Informasi Publik di Lingkungan Bakesbangpol Kota Tanjungpinang.', 1, '2026', 'Website,', 'php', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 4, NULL, 'bakesbangpol.tanjungpinangkota.go.id/', '', '', '', '', 'Diskominfo Kota Tanjungpinang', '', 'Raja Nooraini Harianti, S.H.', '199611132025212010', 'Penata Layanan Operasional', '082310680106', 'resources/data_aplikasi/1.pdf', 'resources/data_aplikasi/pemko_tanjungpinang.jpg', '', '', '', '', 0, 1, NULL, 161, '2026-10-09 09:24:48', 161, '2026-10-09 09:27:41', NULL, NULL),
(343, 134, '1', 'Website Profil Kelurahan Kampung Bugis', 'Diskominfo Kota Tanjungpinang', 'website berisikan informasi publik di lingkungan kelurahan kampung bugis', 1, '2022', 'Website,', 'php', 1, NULL, 3, 'di bawah dan sama dengan 25 pengguna', 4, NULL, 'kampungbugiskel.tanjungpinangkota.go.id/', '', '', '', '', 'Diskominfo Kota Tanjungpinang', '', 'Fitrianingsih', '198008122007012013', 'Pengadministrasi perkantoran', '082391406386', 'resources/data_aplikasi/Draft_SPT1.pdf', 'resources/data_aplikasi/GKV132_Kota_Tanjung_Pinang-logobase_net.png', '', '', '', '', 0, 1, NULL, 172, '2026-10-09 09:58:05', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `formasi_jabatan`
--

CREATE TABLE `formasi_jabatan` (
  `id_formasi_jabatan` int(11) NOT NULL,
  `id_seleksi` int(11) NOT NULL,
  `id_opd` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `changed_by` int(11) NOT NULL,
  `changed_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `groups`
--

CREATE TABLE `groups` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `group_description` varchar(255) NOT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `level` tinyint(4) NOT NULL,
  `ismobile` tinyint(4) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `changed_by` int(11) NOT NULL,
  `changed_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `groups`
--

INSERT INTO `groups` (`group_id`, `group_name`, `group_description`, `role_name`, `level`, `ismobile`, `created_by`, `created_on`, `changed_by`, `changed_on`) VALUES
(1, 'Admin', 'Memiliki hak akses penuh', 'admin', 1, 0, 1, '0000-00-00 00:00:00', 1, '2020-05-15 23:19:17'),
(2, 'Admin Desk', 'Admin Desk', 'Admin Desk', 0, 0, 1, '2020-10-06 14:54:43', 0, '0000-00-00 00:00:00'),
(3, 'Admin OPD', '-', 'Admin OPD', 0, 1, 1, '2022-11-02 21:31:02', 0, '0000-00-00 00:00:00'),
(4, 'Admin Stasan', '', 'Admin Stasan', 0, 0, 1, '2023-03-10 13:37:25', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guides`
--

CREATE TABLE `guides` (
  `guide_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('y','n') NOT NULL DEFAULT 'y',
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `changed_on` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data untuk tabel `guides`
--

INSERT INTO `guides` (`guide_id`, `name`, `description`, `status`, `created_by`, `created_on`, `changed_by`, `changed_on`) VALUES
(1025, 'Test', '<p>Testttt</p>', 'y', 1, '2020-05-29 09:07:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `guides_groups`
--

CREATE TABLE `guides_groups` (
  `user_guide_id` int(11) NOT NULL,
  `guide_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data untuk tabel `guides_groups`
--

INSERT INTO `guides_groups` (`user_guide_id`, `guide_id`, `group_id`) VALUES
(119, 1025, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategorisasi_se`
--

CREATE TABLE `kategorisasi_se` (
  `id` int(11) NOT NULL,
  `id_aplikasi` int(11) NOT NULL,
  `id_opd` int(11) NOT NULL,
  `nama_aplikasi` varchar(200) NOT NULL,
  `tahun` year(4) NOT NULL,
  `nilai_investasi` int(11) NOT NULL,
  `total_anggaran_operasional` int(11) NOT NULL,
  `wajib_patuh` int(11) NOT NULL,
  `teknik_kriptografi_khusus` int(11) NOT NULL,
  `jumlah_pengguna` int(11) NOT NULL,
  `data_pribadi` int(11) NOT NULL,
  `klasifikasi_rahasia` int(11) NOT NULL,
  `kekritisan_proses` int(11) NOT NULL,
  `dampak_gagal` int(11) NOT NULL,
  `potensi_kerugian` int(11) NOT NULL,
  `nilai_kse` int(11) NOT NULL,
  `kategorisasi` enum('RENDAH','TINGGI','STRATEGIS','') NOT NULL,
  `keterangan` text DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `catatan` varchar(100) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `changed_on` datetime DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `approved_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data untuk tabel `kategorisasi_se`
--

INSERT INTO `kategorisasi_se` (`id`, `id_aplikasi`, `id_opd`, `nama_aplikasi`, `tahun`, `nilai_investasi`, `total_anggaran_operasional`, `wajib_patuh`, `teknik_kriptografi_khusus`, `jumlah_pengguna`, `data_pribadi`, `klasifikasi_rahasia`, `kekritisan_proses`, `dampak_gagal`, `potensi_kerugian`, `nilai_kse`, `kategorisasi`, `keterangan`, `status`, `is_active`, `catatan`, `created_by`, `created_on`, `changed_by`, `changed_on`, `approved_by`, `approved_on`) VALUES
(21, 198, 103, 'Kopi Tarik', '2019', 1, 1, 2, 1, 1, 1, 2, 1, 1, 1, 12, 'RENDAH', '-', 0, 1, NULL, 194, '2026-06-22 10:02:48', NULL, NULL, NULL, NULL),
(22, 199, 103, 'SIKADU', '2022', 1, 1, 2, 1, 2, 2, 2, 1, 1, 1, 14, 'RENDAH', '-', 0, 1, NULL, 194, '2026-06-22 10:10:41', NULL, NULL, NULL, NULL),
(23, 13, 103, 'Sistem Akuntabilitas Kinerja Instansi Pemerintahan', '2018', 1, 1, 2, 1, 2, 1, 2, 1, 1, 1, 13, 'RENDAH', '-', 0, 1, NULL, 194, '2026-06-22 10:12:35', NULL, NULL, NULL, NULL),
(27, 284, 124, 'Sistem Informasi Monitoring Evaluasi Dan Pelaporan', '2026', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 10, 'RENDAH', '', 0, 1, NULL, 206, '2026-08-19 09:43:49', NULL, NULL, NULL, NULL),
(28, 6, 112, 'Website Portal OPD', '2026', 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 11, 'RENDAH', '', 0, 1, NULL, 116, '2026-08-19 09:51:07', NULL, NULL, NULL, NULL),
(29, 46, 121, 'Website Dinas Perdagangan dan Perindustrian Kota Tanjungpinang', '2026', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 10, 'RENDAH', '', 0, 1, NULL, 200, '2026-08-19 09:53:30', 135, '2026-09-07 11:34:29', NULL, NULL),
(30, 296, 107, 'Website Portal BPKAD Kota Tanjungpinang', '2026', 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 11, 'RENDAH', '', 0, 1, NULL, 202, '2026-08-19 10:03:17', NULL, NULL, NULL, NULL),
(31, 283, 126, 'Website Dinas Perpustakaan dan Kearsipan Kota Tanjungpinang', '2026', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 10, 'RENDAH', '', 0, 1, NULL, 215, '2026-08-19 10:12:59', NULL, NULL, NULL, NULL),
(32, 27, 122, 'Website Portal DLH', '2026', 1, 1, 2, 2, 1, 1, 1, 1, 2, 1, 13, 'RENDAH', '', 0, 1, NULL, 218, '2026-08-19 10:33:55', NULL, NULL, NULL, NULL),
(33, 298, 114, 'https://dishub.tanjungpinangkota.go.id', '2026', 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 11, 'RENDAH', '', 0, 1, NULL, 203, '2026-08-19 12:24:40', NULL, NULL, NULL, NULL),
(34, 297, 120, 'AK 1', '2026', 1, 1, 2, 2, 5, 2, 2, 5, 2, 1, 23, 'TINGGI', '', 0, 1, NULL, 204, '2026-08-19 13:07:31', NULL, NULL, NULL, NULL),
(35, 16, 111, 'E-Puskesmas', '2026', 1, 1, 2, 2, 1, 2, 1, 1, 1, 1, 13, 'RENDAH', '', 0, 1, NULL, 31, '2026-08-20 10:02:05', 31, '2026-08-20 10:43:34', NULL, NULL),
(36, 302, 111, 'Website DKP2KB Kota Tanjungpinang', '2026', 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 12, 'RENDAH', '', 0, 1, NULL, 31, '2026-08-20 10:02:51', 31, '2026-08-20 10:47:55', NULL, NULL),
(37, 194, 138, 'Website Kelurahan', '2026', 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 11, 'RENDAH', '', 0, 1, NULL, 186, '2026-08-20 10:39:14', NULL, NULL, NULL, NULL),
(38, 304, 138, 'administrasi cuti', '2026', 1, 1, 2, 1, 1, 2, 1, 1, 1, 1, 12, 'RENDAH', '', 0, 1, NULL, 186, '2026-08-20 10:39:53', 186, '2026-08-20 10:43:19', NULL, NULL),
(39, 306, 138, 'Pengurusan administrasi', '2026', 1, 1, 2, 1, 1, 2, 2, 1, 1, 1, 13, 'RENDAH', '', 0, 1, NULL, 186, '2026-08-20 10:41:21', NULL, NULL, NULL, NULL),
(40, 307, 138, 'Pemetaan wilayah', '2026', 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 11, 'RENDAH', '', 0, 1, NULL, 186, '2026-08-20 10:42:54', NULL, NULL, NULL, NULL),
(41, 308, 154, 'WEBSITE PROFILE PUKSESMAS BATU 10', '2026', 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 12, 'RENDAH', '', 0, 1, NULL, 225, '2026-08-20 10:45:51', NULL, NULL, NULL, NULL),
(42, 303, 140, 'Website Profile', '2026', 1, 1, 1, 1, 1, 2, 2, 1, 1, 1, 12, 'RENDAH', '', 0, 1, NULL, 193, '2026-08-20 10:45:52', NULL, NULL, NULL, NULL),
(43, 312, 157, 'WEBSITE PROFILE PUSKESMAS MEKAR BARU', '2026', 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 12, 'RENDAH', '', 0, 1, NULL, 227, '2026-08-20 10:45:54', NULL, NULL, NULL, NULL),
(44, 315, 149, 'Website profile Kelurahan', '2026', 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 12, 'RENDAH', 'website kelurahan dibuat dari dinas kominfo, sesuai dengan perkembangan teknologi dan bersifat terbuka terhadap masyarakat diperlukan informasi yang berguna dan terbuka sehingga adanya website ini', 0, 1, NULL, 223, '2026-08-20 10:45:56', 223, '2026-08-20 10:50:53', NULL, NULL),
(45, 309, 155, 'Web profil', '2026', 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 12, 'RENDAH', '-', 0, 1, NULL, 33, '2026-08-20 10:45:57', NULL, NULL, NULL, NULL),
(46, 301, 153, 'Website UPTD Puskesmas Sei Jang', '2026', 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 12, 'RENDAH', '', 0, 1, NULL, 34, '2026-08-20 10:46:06', NULL, NULL, NULL, NULL),
(47, 124, 152, 'Website UPT Puskesmas Tanjungpinang', '2026', 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 12, 'RENDAH', '', 0, 1, NULL, 68, '2026-08-20 10:46:08', NULL, NULL, NULL, NULL),
(48, 316, 135, 'website profile Kelurahan Senggarang', '2026', 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 12, 'RENDAH', 'Informasi umum pelayanan publik Kelurahan Senggarang', 0, 1, NULL, 232, '2026-08-20 10:46:19', 147, '2026-10-08 11:45:33', NULL, NULL),
(49, 241, 158, 'Website Puskesmas Tanjung Unggat', '2026', 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 12, 'RENDAH', '', 0, 1, NULL, 39, '2026-08-20 10:46:52', NULL, NULL, NULL, NULL),
(50, 94, 136, 'Website Kelurahan Tanjungpinang Kota', '2026', 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 12, 'RENDAH', 'KAK dari desa/kelurahan CANTIK (Cinta Statistik)', 0, 1, NULL, 221, '2026-08-20 10:46:54', 221, '2026-08-20 10:51:55', NULL, NULL),
(51, 305, 150, 'Kelurahan kampung baru kecamatan tanjungpinang barat', '2026', 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 12, 'RENDAH', 'KAK BERDASARKAN DARI PIHAK KELURAHAN DAN DISKOMINFO KOTA TANJUNGPINANG', 0, 1, NULL, 230, '2026-08-20 10:46:55', NULL, NULL, NULL, NULL),
(52, 317, 140, 'Simkel', '2026', 1, 1, 2, 1, 1, 2, 2, 1, 1, 1, 13, 'RENDAH', '', 0, 1, NULL, 193, '2026-08-20 10:48:01', NULL, NULL, NULL, NULL),
(53, 310, 151, 'Website Profile Kelurahan Kemboja', '2026', 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 12, 'RENDAH', 'Portal Web yang berbasis sistem informasi masyarakat berdasarkan peraturan Walikota untuk memudahkan masyarakat dalam mengakses profil dan informasi umum.', 0, 1, NULL, 222, '2026-08-20 10:48:15', NULL, NULL, NULL, NULL),
(54, 314, 137, 'WEBSITE PROFIL KELURAHAN PENYENGAT', '2026', 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 12, 'RENDAH', 'website ini dibuat untuk publikasi data Kelurahan Penyengat Untuk Umum dan salah satu indikator dalam pembinaan Kelurahan Cinta Statistik Oleh Badan Pusat Statistik Kota Tanjungpinang', 0, 1, NULL, 234, '2026-08-20 10:48:35', NULL, NULL, NULL, NULL),
(55, 311, 156, 'Website Profil Puskesmas', '2026', 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 12, 'RENDAH', 'Permenkes no 19 tahun 2024 tentang Puskesmas', 0, 1, NULL, 36, '2026-08-20 10:50:09', NULL, NULL, NULL, NULL),
(56, 313, 133, 'kec. tpibarat@tanjungpinang.go.id', '2026', 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 12, 'RENDAH', 'Semoga Aplikasi ini segera Terealisasi', 0, 1, NULL, 231, '2026-08-20 10:50:39', NULL, NULL, NULL, NULL),
(57, 318, 141, 'proklim.batuixtanjungpinangkota.go.id', '2026', 1, 1, 1, 1, 1, 1, 1, 5, 2, 1, 15, 'RENDAH', 'Diskominfo', 0, 1, NULL, 229, '2026-08-20 10:53:23', 147, '2026-09-25 10:13:53', NULL, NULL),
(58, 299, 101, 'Monev PBJ', '2026', 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 12, 'RENDAH', '', 0, 1, NULL, 201, '2026-08-20 11:21:10', NULL, NULL, NULL, NULL),
(59, 300, 101, 'SPSE', '2026', 1, 2, 2, 5, 5, 2, 5, 5, 2, 2, 31, 'TINGGI', '', 0, 1, NULL, 201, '2026-08-20 11:22:09', NULL, NULL, NULL, NULL),
(60, 88, 129, 'SIAPI', '2026', 1, 1, 1, 2, 1, 5, 5, 5, 2, 2, 25, 'TINGGI', '', 0, 1, NULL, 57, '2026-08-21 09:39:15', 57, '2026-08-21 09:43:03', NULL, NULL),
(61, 321, 102, 'WEBSITE PROFIL DPRD KOTA TANJUNGPINANGF', '2026', 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 12, 'RENDAH', '', 0, 1, NULL, 177, '2026-08-21 09:51:08', NULL, NULL, NULL, NULL),
(62, 14, 116, 'Website Portal DP3APM', '2026', 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 12, 'RENDAH', '', 0, 1, NULL, 157, '2026-08-21 09:51:37', 157, '2026-08-21 09:53:48', NULL, NULL),
(64, 20, 105, 'SIMPEG', '2026', 1, 1, 2, 1, 1, 5, 2, 5, 1, 1, 20, 'TINGGI', '', 0, 1, NULL, 239, '2026-08-21 09:57:05', NULL, NULL, NULL, NULL),
(65, 237, 105, 'OSS BKPSDM Tanjungpinang', '2026', 1, 1, 1, 1, 1, 2, 2, 1, 1, 1, 12, 'RENDAH', '', 0, 1, NULL, 237, '2026-08-26 14:32:45', 237, '2026-08-26 14:33:17', NULL, NULL),
(66, 323, 102, 'MITRAWAN', '2026', 1, 1, 2, 2, 1, 2, 2, 1, 1, 1, 14, 'RENDAH', '', 0, 1, NULL, 177, '2026-08-28 08:24:08', NULL, NULL, NULL, NULL),
(68, 319, 131, 'Website Profil Kecamatan Tanjungpinang Timur', '2026', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 10, 'RENDAH', '', 0, 1, NULL, 176, '2026-08-28 15:04:05', NULL, NULL, NULL, NULL),
(69, 287, 109, 'PILAR SIMRS', '2026', 1, 1, 2, 2, 5, 5, 5, 5, 1, 2, 29, 'TINGGI', '', 0, 1, NULL, 136, '2026-08-31 09:56:17', NULL, NULL, NULL, NULL),
(70, 331, 109, 'website RSUD Kota Tanjungpinang', '2026', 1, 1, 2, 2, 1, 2, 1, 1, 1, 1, 13, 'RENDAH', '', 0, 1, NULL, 136, '2026-08-31 09:58:21', NULL, NULL, NULL, NULL),
(71, 332, 124, 'Dinas Pekerjaan Umum dan Penataan Ruang Kota Tanjungpinang', '2026', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 10, 'RENDAH', '-', 0, 1, NULL, 206, '2026-09-01 08:42:50', 147, '2026-09-21 10:53:09', NULL, NULL),
(72, 7, 119, 'Website DPMPTSP dan MPP', '2026', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 10, 'RENDAH', '', 0, 1, NULL, 170, '2026-09-01 14:17:25', NULL, NULL, NULL, NULL),
(73, 18, 119, 'Website MPP', '2026', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 10, 'RENDAH', '', 0, 1, NULL, 170, '2026-09-01 14:18:27', NULL, NULL, NULL, NULL),
(75, 5, 112, 'Sistem Penerimaan Murid Baru (SPMB) Kota Tanjungpinang', '2026', 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 11, 'RENDAH', '', 0, 1, NULL, 116, '2026-10-05 12:31:24', NULL, NULL, NULL, NULL),
(76, 57, 105, 'Website BKPSDM Kota Tanjungpinang', '2026', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 10, 'RENDAH', '', 0, 1, NULL, 35, '2026-10-05 14:32:05', NULL, NULL, NULL, NULL),
(77, 333, 121, 'Siniaga', '2026', 1, 1, 1, 1, 2, 2, 2, 1, 1, 1, 13, 'RENDAH', '', 0, 1, NULL, 200, '2026-10-06 09:16:33', NULL, NULL, NULL, NULL),
(78, 334, 121, 'Dataniaga', '2026', 1, 1, 1, 1, 2, 2, 2, 1, 1, 1, 13, 'RENDAH', '', 0, 1, NULL, 200, '2026-10-06 09:18:42', NULL, NULL, NULL, NULL),
(79, 336, 145, 'sisakti', '2026', 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 12, 'RENDAH', '', 0, 1, NULL, 187, '2026-10-06 09:56:20', NULL, NULL, NULL, NULL),
(80, 337, 145, 'website profile kelurahan Tanjung Ayun Sakti', '2026', 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 12, 'RENDAH', '', 0, 1, NULL, 187, '2026-10-06 09:57:14', NULL, NULL, NULL, NULL),
(81, 324, 113, 'Website Museum Sultan Sulaiman Badrul Alamsyah', '2026', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 10, 'RENDAH', '-', 0, 1, NULL, 199, '2026-10-06 11:06:23', NULL, NULL, NULL, NULL),
(82, 322, 128, 'WEBSITE PROFILE SATPOL PP KOTA TANJUNGPINANG', '2026', 1, 1, 2, 2, 1, 2, 2, 1, 1, 1, 14, 'RENDAH', '', 0, 1, NULL, 238, '2026-10-06 11:40:27', NULL, NULL, NULL, NULL),
(83, 338, 115, 'Website Dinas Sosial', '2026', 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 12, 'RENDAH', '', 0, 1, NULL, 122, '2026-10-07 09:30:45', NULL, NULL, NULL, NULL),
(84, 8, 106, 'e-BPHTB', '2026', 1, 1, 2, 1, 1, 5, 2, 5, 1, 2, 21, 'TINGGI', 'Aplikasi e-BPHTB mendukung pelayanan dan administrasi Bea Perolehan Hak atas Tanah dan Bangunan pada BPPRD Kota Tanjungpinang. Sistem mengelola data identitas wajib pajak, objek tanah dan bangunan, serta data perpajakan yang aksesnya dibatasi sesuai kewenangan pengguna. Gangguan atau kegagalan sistem dapat menghambat pelayanan BPHTB, menunda proses administrasi dan penerimaan pajak daerah, serta berpotensi menimbulkan kerugian finansial apabila terjadi kehilangan, kebocoran, atau perubahan data tanpa kewenangan.', 0, 1, NULL, 54, '2026-10-07 10:17:23', NULL, NULL, NULL, NULL),
(85, 9, 106, 'KSWP', '2026', 1, 1, 2, 2, 1, 2, 2, 1, 1, 1, 14, 'RENDAH', 'KSWP (Konfirmasi Status Wajib Pajak) merupakan Sistem Elektronik yang digunakan untuk melakukan konfirmasi status kepatuhan Wajib Pajak melalui integrasi data perpajakan daerah. Sistem mendukung pertukaran dan verifikasi data melalui layanan berbasis web/API dengan sistem terkait. Data yang dikelola meliputi informasi identitas dan status perpajakan Wajib Pajak orang pribadi maupun badan. Sistem digunakan dalam lingkup Pemerintah Kota Tanjungpinang dan dikelola oleh BAPENDA Kota Tanjungpinang.', 0, 1, NULL, 54, '2026-10-07 10:26:13', NULL, NULL, NULL, NULL),
(86, 10, 106, 'INCOMEPOINT', '2026', 1, 1, 2, 2, 2, 2, 2, 5, 1, 2, 20, 'TINGGI', 'IncomePoint (SIMAPADA) merupakan Sistem Elektronik utama yang digunakan BAPENDA Kota Tanjungpinang dalam pengelolaan administrasi pajak daerah berbasis self assessment. Sistem mencakup pengelolaan data Wajib Pajak dan objek pajak, pelaporan SPTPD, perhitungan dan penetapan kewajiban pajak, pembayaran, pembukuan, penagihan serta penyusunan laporan penerimaan pajak daerah. IncomePoint juga terintegrasi dengan layanan e-SPTPD/e-Billing sehingga menjadi salah satu sistem utama dalam mendukung pelayanan dan pengelolaan penerimaan pajak daerah Kota Tanjungpinang.', 0, 1, NULL, 54, '2026-10-07 10:27:18', NULL, NULL, NULL, NULL),
(87, 279, 106, 'esptpd', '2026', 1, 1, 2, 2, 2, 2, 2, 5, 1, 2, 20, 'TINGGI', 'e-SPTPD merupakan Sistem Elektronik yang digunakan oleh Wajib Pajak untuk melakukan pelaporan pajak daerah secara elektronik serta pembuatan kode billing pembayaran. Sistem ini mendukung proses pelaporan pajak berbasis self assessment, mulai dari pengisian dan penyampaian SPTPD hingga penerbitan billing pembayaran. e-SPTPD terintegrasi dengan sistem pengelolaan pajak daerah BAPENDA Kota Tanjungpinang sehingga data pelaporan dan pembayaran Wajib Pajak dapat dikelola secara terintegrasi, sekaligus memberikan kemudahan pelayanan pajak secara daring tanpa harus datang langsung ke kantor BAPENDA.', 0, 1, NULL, 54, '2026-10-07 10:29:05', NULL, NULL, NULL, NULL),
(88, 326, 106, 'Sistem Informasi Pelayanan PBB', '2026', 1, 1, 1, 2, 2, 2, 2, 5, 1, 2, 19, 'TINGGI', 'SIP-PBB (Sistem Informasi Pelayanan Pajak Bumi dan Bangunan) merupakan Sistem Elektronik utama yang digunakan BAPENDA Kota Tanjungpinang dalam pengelolaan Pajak Bumi dan Bangunan Perdesaan dan Perkotaan (PBB-P2). Sistem mencakup pengelolaan data objek dan subjek pajak, pemetaan, penilaian, penetapan massal, penerbitan SPPT, pelayanan administrasi PBB-P2, monitoring pembayaran serta pelaporan. SIP-PBB juga terintegrasi dengan sistem pembayaran secara elektronik sehingga menjadi basis data utama dalam mendukung pelayanan, pengelolaan, dan monitoring penerimaan PBB-P2 di Kota Tanjungpinang.', 0, 1, NULL, 54, '2026-10-07 10:30:32', NULL, NULL, NULL, NULL),
(89, 327, 106, 'Website BPPRD', '2026', 1, 1, 2, 2, 2, 2, 2, 2, 1, 2, 17, 'TINGGI', 'Website BAPENDA Kota Tanjungpinang merupakan Sistem Elektronik yang berfungsi sebagai portal informasi dan pelayanan perpajakan daerah bagi masyarakat. Website menyediakan informasi perpajakan, akses ke berbagai layanan pajak daerah, pengecekan informasi PBB-P2, simulasi pajak, serta fasilitas Payment Online yang terintegrasi dengan sistem pembayaran elektronik. Melalui layanan tersebut, Wajib Pajak dapat memperoleh informasi kewajiban pajak dan melakukan pembayaran pajak daerah secara daring. Sistem ini menjadi salah satu kanal pelayanan digital BAPENDA Kota Tanjungpinang dalam memberikan kemudahan akses informasi dan pembayaran pajak kepada masyarakat.', 0, 1, NULL, 54, '2026-10-07 10:31:50', 67, '2026-10-08 11:50:37', NULL, NULL),
(90, 328, 106, 'Pelayanan PBB Online', '2026', 1, 1, 2, 2, 1, 2, 2, 1, 1, 1, 14, 'RENDAH', 'Pelayanan PBB Online merupakan Sistem Elektronik yang digunakan untuk memberikan layanan administrasi Pajak Bumi dan Bangunan Perdesaan dan Perkotaan (PBB-P2) kepada masyarakat secara daring. Melalui sistem ini, Wajib Pajak dapat mengajukan berbagai jenis pelayanan PBB-P2 dengan mengisi formulir dan melengkapi dokumen persyaratan secara online tanpa harus datang langsung ke kantor BAPENDA Kota Tanjungpinang. Permohonan yang diajukan selanjutnya diproses oleh petugas dan terintegrasi dengan SIP-PBB sebagai sistem utama pengelolaan PBB-P2, sehingga pelayanan dapat dilakukan secara lebih mudah, cepat, dan terdokumentasi.', 0, 1, NULL, 54, '2026-10-07 10:32:47', NULL, NULL, NULL, NULL),
(91, 329, 106, 'Pantau Pajak', '2026', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 10, 'RENDAH', 'Pantau Pajak merupakan Sistem Elektronik yang digunakan BAPENDA Kota Tanjungpinang untuk melakukan monitoring penerimaan pajak daerah secara terpusat. Sistem menyajikan informasi realisasi penerimaan, target pajak, persentase capaian, serta statistik penerimaan dalam bentuk dashboard, grafik, dan tabel. Pantau Pajak mengintegrasikan data dari berbagai sistem perpajakan daerah sehingga perkembangan penerimaan dapat dipantau secara cepat dan digunakan sebagai bahan evaluasi serta pengambilan keputusan dalam pengelolaan pendapatan daerah.', 0, 1, NULL, 54, '2026-10-07 10:33:27', NULL, NULL, NULL, NULL),
(92, 330, 106, 'Aplikasi Sosialisasi dan Pelayanan', '2026', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 10, 'RENDAH', 'SOPAN merupakan Sistem Elektronik yang digunakan BAPENDA Kota Tanjungpinang untuk mendukung monitoring pendistribusian SPPT PBB-P2 sekaligus pemutakhiran dan validasi data objek serta subjek pajak di lapangan. Sistem mencatat hasil penyampaian SPPT kepada masyarakat, kondisi objek pajak, dokumentasi foto lapangan dan titik koordinat (geotagging), serta menampung informasi, kendala, kritik dan saran dari masyarakat. Data yang dihimpun melalui SOPAN digunakan sebagai bahan evaluasi pendistribusian SPPT, peningkatan kualitas basis data PBB-P2, serta mendukung peningkatan pelayanan dan pengelolaan PBB-P2 di Kota Tanjungpinang.', 0, 1, NULL, 54, '2026-10-07 10:34:11', NULL, NULL, NULL, NULL),
(93, 339, 106, 'Gurindampay', '2026', 1, 1, 2, 2, 1, 1, 1, 2, 1, 2, 14, 'RENDAH', 'GURINDAM PAY (Gerakan Unggul Real Time Integrasi Data dan Monitoring Pajak) merupakan Sistem Elektronik yang digunakan untuk mendukung pembayaran, pemungutan, monitoring dan pengawasan pajak daerah secara real time. Sistem mengintegrasikan transaksi pembayaran elektronik seperti QRIS dengan sistem pengelolaan pajak daerah sehingga data transaksi usaha Wajib Pajak dapat tercatat dan dimonitor secara lebih cepat, akurat dan terukur. GURINDAM PAY dilengkapi dengan dashboard monitoring, analisis kepatuhan dan profil risiko Wajib Pajak sebagai dasar pengawasan, pemeriksaan dan penagihan pajak daerah, serta mendukung peningkatan kepatuhan Wajib Pajak dan optimalisasi Pendapatan Asli Daerah Kota Tanjungpinang.', 0, 1, NULL, 54, '2026-10-07 10:36:29', NULL, NULL, NULL, NULL),
(94, 340, 110, 'Website Dinas Kependudukan dan Pencatatan Sipil', '2026', 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 12, 'RENDAH', '', 0, 1, NULL, 182, '2026-10-07 12:02:18', NULL, NULL, NULL, NULL),
(95, 341, 110, 'Tuah Gurindam', '2026', 1, 1, 2, 2, 1, 5, 2, 2, 1, 1, 18, 'TINGGI', '-', 0, 1, NULL, 182, '2026-10-07 12:05:00', 182, '2026-10-07 12:05:50', NULL, NULL),
(96, 342, 108, 'Website Bakesbangpol Kota Tanjungpinang', '2026', 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 12, 'RENDAH', '', 0, 1, NULL, 161, '2026-10-09 09:26:34', NULL, NULL, NULL, NULL),
(97, 343, 134, 'Website Profil Kelurahan Kampung Bugis', '2026', 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 11, 'RENDAH', '', 0, 1, NULL, 172, '2026-10-09 09:59:00', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan_kampanye`
--

CREATE TABLE `laporan_kampanye` (
  `id_kampanye` int(11) NOT NULL,
  `id_paslon` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `tempat_kegiatan` text NOT NULL,
  `uraian_kegiatan` text NOT NULL,
  `jumlah_peserta` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `changed_by` int(11) NOT NULL,
  `changed_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `laporan_kampanye`
--

INSERT INTO `laporan_kampanye` (`id_kampanye`, `id_paslon`, `tanggal`, `jam_mulai`, `jam_selesai`, `tempat_kegiatan`, `uraian_kegiatan`, `jumlah_peserta`, `keterangan`, `created_by`, `created_on`, `changed_by`, `changed_on`) VALUES
(1, 2, '2020-10-22', '09:00:00', '12:00:00', 'gedung daerahq', '<p>dadasdadd</p>', 500, '123123123qqqq 98098 098098 98098', 1, '2020-10-09 18:17:38', 1, '2020-10-12 23:58:21'),
(2, 1, '2020-10-22', '07:00:00', '07:00:00', 'Gedung Daerah', '<h3 style=\"margin: 15px 0px; padding: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard Lorem Ipsum passage, used since the 1500s</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>', 1000, 'Acara Berjalan Lancar Tanpa Kendala', 1, '2020-10-12 22:52:43', 1, '2020-10-12 22:53:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan_kampanye_dokumentasi`
--

CREATE TABLE `laporan_kampanye_dokumentasi` (
  `id_dokumentasi_kampanye` int(11) NOT NULL,
  `id_kampanye` int(11) NOT NULL,
  `file_foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `laporan_kampanye_dokumentasi`
--

INSERT INTO `laporan_kampanye_dokumentasi` (`id_dokumentasi_kampanye`, `id_kampanye`, `file_foto`) VALUES
(2, 1, 'resources/data_kampanye/dery_ultraman.jpg'),
(3, 2, 'resources/data_kampanye/1811_header-leadership-2560x14402.png'),
(4, 2, 'resources/data_kampanye/dery_ultraman.jpg'),
(5, 2, 'resources/data_kampanye/dery_ultraman.jpg'),
(6, 2, 'resources/data_kampanye/dery_ultraman.jpg'),
(7, 2, 'resources/data_kampanye/dery_ultraman.jpg'),
(8, 2, 'resources/data_kampanye/1811_header-leadership-2560x14402.png'),
(9, 2, 'resources/data_kampanye/dery_ultraman.jpg'),
(10, 1, 'resources/data_kampanye/ada-sepenggal-san-fransisco-di-jembatan-barelang.jpg'),
(11, 1, 'resources/data_kampanye/LOGO_PROV1.jpg'),
(12, 1, 'resources/data_kampanye/backgorudn_forsesdasi.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan_kampanye_tokoh_politik`
--

CREATE TABLE `laporan_kampanye_tokoh_politik` (
  `id_topol_kampanye` int(11) NOT NULL,
  `id_kampanye` int(11) NOT NULL,
  `id_topol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `laporan_kampanye_tokoh_politik`
--

INSERT INTO `laporan_kampanye_tokoh_politik` (`id_topol_kampanye`, `id_kampanye`, `id_topol`) VALUES
(8, 1, 2),
(9, 1, 3),
(10, 1, 5),
(11, 2, 1),
(12, 2, 4),
(13, 2, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan_pelanggaran`
--

CREATE TABLE `laporan_pelanggaran` (
  `id_laporan_pelanggaran` int(11) NOT NULL,
  `id_paslon` int(11) NOT NULL,
  `id_pelanggaran` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `kronologis` text NOT NULL,
  `tindakan_bawaslu` text NOT NULL,
  `keterangan` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `changed_by` int(11) NOT NULL,
  `changed_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_daerah`
--

CREATE TABLE `master_daerah` (
  `id_daerah` varchar(15) NOT NULL DEFAULT '',
  `nama_daerah` varchar(255) DEFAULT NULL,
  `kepala` varchar(255) DEFAULT NULL,
  `wakil` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `master_daerah`
--

INSERT INTO `master_daerah` (`id_daerah`, `nama_daerah`, `kepala`, `wakil`) VALUES
('21', 'Provinsi Kepulauan Riau', 'Gubernur', 'Wakil Gubernur'),
('2101', 'Kab. Karimun', 'Bupati', 'Wakil Bupati'),
('2102', 'Kab. Bintan', 'Bupati', 'Wakil Bupati'),
('2103', 'Kab. Natuna', 'Bupati', 'Wakil Bupati'),
('2104', 'Kab. Lingga', 'Bupati', 'Wakil Bupati'),
('2105', 'Kab. Kepulauan Anambas', 'Bupati', 'Wakil Bupati'),
('2171', 'Kota Batam', 'Walikota', 'Wakil Walikota'),
('2172', 'Kota Tanjung Pinang', 'Walikota', 'Wakil Walikota');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_dbms`
--

CREATE TABLE `master_dbms` (
  `id_dbms` int(11) NOT NULL,
  `dbms` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data untuk tabel `master_dbms`
--

INSERT INTO `master_dbms` (`id_dbms`, `dbms`, `status`) VALUES
(1, 'MySQL/MariaDB', 1),
(2, 'SQL Server', 1),
(3, 'PostgreSQL', 1),
(4, 'SQLite', 1),
(5, 'MongoDB', 1),
(6, 'Oracle DB', 1),
(7, 'Redis', 1),
(8, 'Microsoft Access', 1),
(9, 'Lainnya', 1),
(10, 'Tidak Diketahui', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_frekuensi_penggunaan`
--

CREATE TABLE `master_frekuensi_penggunaan` (
  `id_frekuensi_penggunaan` int(11) NOT NULL,
  `frekuensi_penggunaan` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data untuk tabel `master_frekuensi_penggunaan`
--

INSERT INTO `master_frekuensi_penggunaan` (`id_frekuensi_penggunaan`, `frekuensi_penggunaan`, `status`) VALUES
(1, 'Harian', 1),
(2, 'Mingguan', 1),
(3, 'Bulanan', 1),
(4, 'Triwulan', 1),
(5, '4 Bulanan', 1),
(6, 'Semester', 1),
(7, 'Tahunan', 1),
(8, 'Lainnya', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_jenis_layanan`
--

CREATE TABLE `master_jenis_layanan` (
  `id_jenis_layanan` int(11) NOT NULL,
  `jenis_layanan` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data untuk tabel `master_jenis_layanan`
--

INSERT INTO `master_jenis_layanan` (`id_jenis_layanan`, `jenis_layanan`, `status`) VALUES
(1, 'Pelayanan Publik', 1),
(2, 'Pelayanan Internal Unit Kerja Terkait', 1),
(3, 'Pelayanan Internal Pemerintah Kota Tanjungpinang', 1),
(4, 'Pelayanan Antar OPD / Unit Kerja', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_jenis_nilai`
--

CREATE TABLE `master_jenis_nilai` (
  `id_jenis_nilai` int(11) NOT NULL,
  `nama_jenis_nilai` varchar(100) NOT NULL,
  `bobot` float NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `keterangan` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `changed_by` int(11) NOT NULL,
  `changed_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `master_jenis_nilai`
--

INSERT INTO `master_jenis_nilai` (`id_jenis_nilai`, `nama_jenis_nilai`, `bobot`, `is_active`, `keterangan`, `created_by`, `created_on`, `changed_by`, `changed_on`) VALUES
(0, 'Wawancara / Presentasi', 35, 1, '', 1, '2022-04-28 15:04:30', 1, '2022-04-28 15:04:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_kategori_pelanggaran`
--

CREATE TABLE `master_kategori_pelanggaran` (
  `id_kategori_pelanggaran` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `master_kategori_pelanggaran`
--

INSERT INTO `master_kategori_pelanggaran` (`id_kategori_pelanggaran`, `nama_kategori`) VALUES
(1, 'Pelanggaran Protokol Kesehatan '),
(2, 'Pelanggaran Administrasi dalam Kampanye'),
(3, 'Tindak Pidana Pilkada dalam Pelaksanaan Kampanye');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_lokasi_hosting`
--

CREATE TABLE `master_lokasi_hosting` (
  `id_lokasi_hosting` int(11) NOT NULL,
  `lokasi_hosting` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data untuk tabel `master_lokasi_hosting`
--

INSERT INTO `master_lokasi_hosting` (`id_lokasi_hosting`, `lokasi_hosting`, `status`) VALUES
(1, 'Server Sendiri', 1),
(2, 'Server Pihak Ke-3', 1),
(3, 'Data Center Diskominfo Kota Tanjungpinang', 1),
(4, 'Server Instansi Penyedia Aplikasi / Sistem Informasi', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_opd`
--

CREATE TABLE `master_opd` (
  `id_opd` varchar(15) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `changed_by` int(11) NOT NULL,
  `changed_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `master_opd`
--

INSERT INTO `master_opd` (`id_opd`, `nama`, `status`, `created_by`, `created_on`, `changed_by`, `changed_on`) VALUES
('101', 'SEKRETARIAT DAERAH', 1, 1, '2020-10-26 13:21:46', 11683, '2022-06-11 14:49:28'),
('102', 'SEKRETARIAT DPRD', 1, 1, '2020-10-26 13:21:46', 11683, '2022-06-11 14:49:31'),
('103', 'INSPEKTORAT DAERAH', 1, 1, '2020-10-26 13:21:46', 11683, '2022-07-21 10:22:10'),
('104', 'BADAN PERENCANAAN PEMBANGUNAN, PENELITIAN DAN PENGEMBANGAN', 1, 1, '2020-10-26 13:21:46', 11683, '2022-06-11 14:49:40'),
('105', 'BADAN KEPEGAWAIAN DAN PENGEMBANGAN SUMBER DAYA MANUSIA', 1, 1, '2020-10-26 13:21:46', 11683, '2022-06-11 14:49:35'),
('106', 'BADAN PENGELOLAAN PAJAK DAN RETRIBUSI DAERAH', 1, 1, '2020-10-26 13:21:46', 11683, '2022-07-21 10:23:51'),
('107', 'BADAN PENGELOLAAN KEUANGAN DAN ASET DAERAH', 1, 1, '2020-10-26 13:21:46', 11683, '2022-07-21 10:23:55'),
('108', 'BADAN KESATUAN BANGSA DAN POLITIK', 1, 1, '2020-10-26 13:21:46', 11683, '2022-07-06 08:10:55'),
('109', 'RUMAH SAKIT UMUM DAERAH', 0, 11683, '2022-06-03 14:16:11', 0, '0000-00-00 00:00:00'),
('110', 'DINAS KEPENDUDUKAN DAN PENCATATAN SIPIL', 1, 1, '2020-10-26 13:21:46', 11683, '2022-07-21 10:24:14'),
('111', 'DINAS KESEHATAN, PENGENDALIAN PENDUDUK DAN KELUARGA BERENCANA', 0, 1, '2020-10-26 13:21:46', 11683, '2022-06-03 14:17:07'),
('112', 'DINAS PENDIDIKAN', 1, 1, '2020-10-26 13:21:46', 11683, '2022-07-21 10:24:30'),
('113', 'DINAS KEBUDAYAAN DAN PARIWISATA', 1, 1, '2020-10-26 13:21:46', 11683, '2022-07-21 10:24:38'),
('114', 'DINAS PERHUBUNGAN', 1, 1, '2020-10-26 13:21:46', 11683, '2022-07-21 10:24:45'),
('115', 'DINAS SOSIAL', 1, 1, '2020-10-26 13:21:46', 11683, '2022-07-21 10:24:51'),
('116', 'DINAS PEMBERDAYAAN PEREMPUAN, PERLINDUNGAN ANAK DAN PEMBERDAYAAN MASYARAKAT', 1, 1, '2020-10-26 13:21:46', 11683, '2022-07-21 10:24:57'),
('117', 'DINAS PERTANIAN, PANGAN DAN PERIKANAN', 1, 1, '2020-10-26 13:21:46', 11683, '2022-07-21 10:25:02'),
('118', 'DINAS KEPEMUDAAN DAN OLAHRAGA', 1, 1, '2020-10-26 13:21:46', 11683, '2022-07-06 08:11:38'),
('119', 'DINAS PENANAMAN MODAL DAN PELAYANAN TERPADU SATU PINTU', 1, 1, '2020-10-26 13:21:46', 11683, '2022-07-06 08:10:48'),
('120', 'DINAS TENAGA KERJA, KOPERASI DAN USAHA MIKRO', 1, 1, '2020-10-26 13:21:46', 11683, '2022-07-06 08:12:04'),
('121', 'DINAS PERDAGANGAN DAN PERINDUSTRIAN', 1, 1, '2020-10-26 13:21:46', 11683, '2022-07-21 10:26:42'),
('122', 'DINAS LINGKUNGAN HIDUP', 0, 1, '2020-10-26 13:21:46', 11683, '2022-06-03 14:14:13'),
('123', 'DINAS PERUMAHAN RAKYAT, KAWASAN PERMUKIMAN DAN PERTAMANAN', 0, 1, '2020-10-26 13:21:46', 11683, '2022-06-03 14:19:26'),
('124', 'DINAS PEKERJAAN UMUM DAN PENATAAN RUANG', 1, 1, '2020-10-26 13:21:46', 11683, '2022-07-21 10:25:46'),
('125', 'DINAS KOMUNIKASI DAN INFORMATIKA', 1, 1, '2020-10-26 13:21:46', 11683, '2022-06-11 14:50:08'),
('126', 'DINAS PERPUSTAKAAN DAN KEARSIPAN', 1, 1, '2020-10-26 13:21:46', 11683, '2022-07-21 10:27:02'),
('127', 'BADAN PENANGGULANGAN BENCANA DAERAH', 0, 1, '2020-10-26 13:21:46', 11683, '2022-06-03 14:20:10'),
('128', 'SATUAN POLISI PAMONG PRAJA', 1, 1, '2020-10-26 13:21:46', 11683, '2022-11-02 15:28:40'),
('129', 'DINAS PEMADAM KEBAKARAN DAN PENYELAMATAN', 0, 1, '2020-10-26 13:21:46', 11683, '2022-06-03 14:20:36'),
('130', 'KECAMATAN TANJUNGPINANG KOTA', 1, 1, '2020-10-26 13:21:46', 11683, '2022-07-06 08:10:19'),
('131', 'KECAMATAN TANJUNGPINANG TIMUR', 1, 1, '2020-10-26 13:21:46', 11683, '2022-07-06 08:10:27'),
('132', 'KECAMATAN BUKIT BESTARI', 1, 1, '2020-10-26 13:21:46', 11683, '2022-07-06 08:11:08'),
('133', 'KECAMATAN TANJUNGPINANG BARAT', 1, 1, '2020-10-26 13:21:46', 11683, '2022-06-11 14:50:00'),
('134', 'KELURAHAN KAMPUNG BUGIS', 1, 11683, '2022-06-03 14:12:39', 11683, '2022-07-06 08:43:45'),
('135', 'KELURAHAN SENGGARANG', 1, 11683, '2022-06-03 14:13:28', 11683, '2022-07-06 08:12:35'),
('136', 'KELURAHAN TANJUNGPINANG KOTA', 1, 11683, '2022-06-03 14:14:03', 11683, '2022-07-21 10:22:58'),
('137', 'KELURAHAN PENYENGAT', 1, 11683, '2022-06-03 14:14:19', 11683, '2022-07-06 08:11:53'),
('138', 'KELURAHAN MELAYU KOTA PIRING', 1, 11683, '2022-06-03 14:14:40', 11683, '2022-07-21 10:23:03'),
('139', 'KELURAHAN AIR RAJA', 1, 11683, '2022-06-03 14:14:57', 11683, '2022-07-21 10:23:07'),
('140', 'KELURAHAN KAMPUNG BULANG', 1, 11683, '2022-06-03 14:15:43', 11683, '2022-07-21 10:23:11'),
('141', 'KELURAHAN BATU IX', 1, 11683, '2022-06-03 14:15:59', 11683, '2022-07-06 08:11:27'),
('142', 'KELURAHAN PINANG KENCANA', 1, 11683, '2022-06-03 14:16:14', 11706, '2022-06-17 14:37:27'),
('143', 'KELURAHAN TANJUNGPINANG TIMUR', 1, 11683, '2022-06-03 14:16:35', 11683, '2022-07-21 10:22:31'),
('144', 'KELURAHAN TANJUNG UNGGAT', 1, 11683, '2022-06-03 14:16:49', 11683, '2022-07-21 10:23:16'),
('145', 'KELURAHAN TANJUNG AYUN SAKTI', 1, 11683, '2022-06-03 14:17:22', 11683, '2022-07-21 10:22:40'),
('146', 'KELURAHAN SEI JANG', 1, 11683, '2022-06-03 14:17:42', 11683, '2022-07-21 10:23:21'),
('147', 'KELURAHAN DOMPAK', 1, 11683, '2022-06-03 14:18:24', 11683, '2022-07-21 10:23:26'),
('148', 'KELURAHAN TANJUNGPINANG BARAT', 1, 11683, '2022-06-03 14:18:42', 11683, '2022-07-21 10:23:30'),
('149', 'KELURAHAN BUKIT CERMIN', 1, 11683, '2022-06-03 14:18:58', 11683, '2022-07-21 10:23:35'),
('150', 'KELURAHAN KAMPUNG BARU', 1, 11683, '2022-06-03 14:19:13', 11683, '2022-07-21 10:23:39'),
('151', 'KELURAHAN KEMBOJA', 1, 11683, '2022-06-03 14:19:27', 11683, '2022-07-21 10:23:44'),
('152', 'UPTD PUSKESMAS TANJUNGPINANG', 0, 11683, '2022-06-03 14:20:42', 0, '0000-00-00 00:00:00'),
('153', 'UPTD PUSKESMAS SEI JANG', 0, 11683, '2022-06-03 14:21:08', 0, '0000-00-00 00:00:00'),
('154', 'UPTD PUSKESMAS BATU 10', 0, 11683, '2022-06-03 14:21:20', 0, '0000-00-00 00:00:00'),
('155', 'UPTD PUSKESMAS KAMPUNG BUGIS', 0, 11683, '2022-06-03 14:21:36', 0, '0000-00-00 00:00:00'),
('156', 'UPTD PUSKESMAS MELAYU KOTA PIRING', 0, 11683, '2022-06-03 14:21:54', 0, '0000-00-00 00:00:00'),
('157', 'UPTD PUSKESMAS MEKAR BARU', 0, 11683, '2022-06-03 14:22:35', 0, '0000-00-00 00:00:00'),
('158', 'UPTD PUSKESMAS TANJUNG UNGGAT', 0, 11683, '2022-06-03 14:22:51', 0, '0000-00-00 00:00:00'),
('159', 'UPTD BALAI PENGELOLAAN FARMASI DAN ALAT KESEHATAN', 0, 11683, '2022-06-03 14:23:44', 0, '0000-00-00 00:00:00'),
('160', 'UPTD BALAI LABORATORIUM KESEHATAN DAERAH', 0, 11683, '2022-06-03 14:24:13', 0, '0000-00-00 00:00:00'),
('161', 'SANGGAR KEGIATAN BELAJAR', 0, 11683, '2022-06-03 14:24:43', 0, '0000-00-00 00:00:00'),
('162', 'UPT DINAS METROLOGI LEGAL', 0, 11683, '2022-06-03 14:25:04', 0, '0000-00-00 00:00:00'),
('163', 'UPT TEMPAT PEMPROSESAN AKHIR SAMPAH', 0, 11683, '2022-06-03 14:25:43', 0, '0000-00-00 00:00:00'),
('164', 'UPT DINAS SISTEM PENGOLAHAN AIR MINUM', 1, 11683, '2022-06-03 14:26:12', 11706, '2022-07-28 09:06:19'),
('165', 'UPTD PERLINDUNGAN PEREMPUAN DAN ANAK', 1, 11683, '2022-06-03 14:26:44', 11706, '2022-07-28 15:41:45'),
('166', 'UPT DINAS MUSEUM DAERAH', 0, 11683, '2022-06-03 14:27:03', 0, '0000-00-00 00:00:00'),
('167', 'UPT DAERAH PERPARKIRAN', 0, 11683, '2022-06-03 14:27:17', 0, '0000-00-00 00:00:00'),
('168', 'BADAN NARKOTIKA NASIONAL KOTA TANJUNGPINANG', 0, 11683, '2022-06-03 14:27:39', 0, '0000-00-00 00:00:00'),
('169', 'SEKRETARIAT KOMISI PEMILIHAN UMUM KOTA TANJUNGPINANG', 0, 11683, '2022-06-03 14:28:02', 0, '0000-00-00 00:00:00'),
('98000000', 'BADAN NARKOTIKA NASIONAL KOTA TANJUNGPINANG', 0, 1, '2020-10-26 13:21:46', 2, '2022-05-18 15:20:37'),
('99000000', 'SEKRETARIAT KOMISI PEMILIHAN UMUM KOTA TANJUNGPINANG', 0, 1, '2020-10-26 13:21:46', 2, '2022-05-18 15:20:58'),
('999', 'Dinas / Badan', 1, 11683, '2022-07-01 09:31:25', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_opd_old`
--

CREATE TABLE `master_opd_old` (
  `id_opd` varchar(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nama_pendamping` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `changed_by` int(11) NOT NULL,
  `changed_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `master_opd_old`
--

INSERT INTO `master_opd_old` (`id_opd`, `nama`, `nama_pendamping`, `created_by`, `created_on`, `changed_by`, `changed_on`) VALUES
('1', 'PEMERINTAH KOTA TANJUNGPINANG', '', 1, '2018-12-12 09:00:37', 1, '2019-07-30 14:36:21'),
('101', 'SEKRETARIAT DAERAH', 'SEKDA', 1, '2018-08-31 04:55:19', 1, '2019-07-30 15:22:50'),
('102', 'SEKRETARIAT DEWAN PERWAKILAN RAKYAT DAERAH', 'SEKWAN', 1, '2018-08-31 04:55:31', 0, '2018-10-10 10:10:10'),
('103', 'INSPEKTORAT DAERAH', 'INSPEKTUR', 1, '2018-08-31 04:55:47', 0, '2018-10-10 10:10:10'),
('104', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', 'KEPALA BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', 1, '2018-08-31 04:56:05', 0, '2018-10-10 10:10:10'),
('105', 'BADAN PENGELOLAAN KEUANGAN DAN ASET DAERAH', 'KEPALA BADAN PENGELOLAAN KEUANGAN DAN ASET DAERAH', 1, '2018-08-31 04:56:16', 0, '2018-10-10 10:10:10'),
('106', 'BADAN PENGELOLAAN PAJAK DAN RETRIBUSI DAERAH', 'KEPALA BADAN PENGELOLAAN PAJAK DAN RETRIBUSI DAERAH', 1, '2018-08-31 04:56:25', 0, '2018-10-10 10:10:10'),
('107', 'BADAN KEPEGAWAIAN DAN PENGEMBANGAN SUMBER DAYA MANUSIA', 'KEPALA BADAN KEPEGAWAIAN DAN PENGEMBANGAN SUMBER DAYA MANUSIA', 1, '2018-08-31 04:57:19', 0, '2018-10-10 10:10:10'),
('108', 'BADAN KESATUAN BANGSA DAN POLITIK', 'KEPALA BADAN KESATUAN BANGSA DAN POLITIK', 1, '2018-08-31 04:57:29', 0, '2018-10-10 10:10:10'),
('109', 'BADAN PENANGGULANGAN BENCANA DAERAH', 'KEPALA BADAN PENANGGULANGAN BENCANA DAERAH', 1, '2018-08-31 04:57:41', 0, '2018-10-10 10:10:10'),
('110', 'DINAS PENDIDIKAN', 'KEPALA DINAS PENDIDIKAN', 1, '2018-08-31 04:57:50', 0, '2018-10-10 10:10:10'),
('111', 'DINAS KESEHATAN', 'KEPALA DINAS KESEHATAN', 1, '2018-08-31 04:58:04', 0, '2018-10-10 10:10:10'),
('112', 'DINAS PEKERJAAN UMUM, PENATAAN RUANG DAN PERTANAHAN', 'KEPALA DINAS PEKERJAAN UMUM, PENATAAN RUANG DAN PERTANAHAN', 1, '2018-08-31 04:58:17', 0, '2018-10-10 10:10:10'),
('113', 'DINAS PERUMAHAN DAN KAWASAN PERMUKIMAN', 'KEPALA DINAS PERUMAHAN DAN KAWASAN PERMUKIMAN', 1, '2018-08-31 04:58:25', 0, '2018-10-10 10:10:10'),
('114', 'DINAS SOSIAL', 'KEPALA DINAS SOSIAL', 1, '2018-08-31 04:58:34', 0, '2018-10-10 10:10:10'),
('115', 'DINAS PEMBERDAYAAN PEREMPUAN, PERLINDUNGAN ANAK, PENGENDALIAN PENDUDUK DAN KB', 'KEPALA DINAS PEMBERDAYAAN PEREMPUAN, PERLINDUNGAN ANAK, PENGENDALIAN PENDUDUK DAN KB', 1, '2018-08-31 04:58:41', 0, '2018-10-10 10:10:10'),
('116', 'DINAS TENAGA KERJA DAN TRANSMIGRASI', 'KEPALA DINAS TENAGA KERJA DAN TRANSMIGRASI', 1, '2018-08-31 04:58:49', 0, '2018-10-10 10:10:10'),
('117', 'DINAS PEMBERDAYAAN MASYARAKAT DESA, KEPENDUDUKAN DAN PENCATATAN SIPIL', 'KEPALA DINAS PEMBERDAYAAN MASYARAKAT DESA, KEPENDUDUKAN DAN PENCATATAN SIPIL', 1, '2018-08-31 04:58:57', 0, '2018-10-10 10:10:10'),
('118', 'DINAS PERHUBUNGAN', 'KEPALA DINAS PERHUBUNGAN', 1, '2018-08-31 04:59:05', 0, '2018-10-10 10:10:10'),
('119', 'DINAS LINGKUNGAN HIDUP DAN KEHUTANAN', 'KEPALA DINAS LINGKUNGAN HIDUP DAN KEHUTANAN', 1, '2018-08-31 04:59:13', 0, '2018-10-10 10:10:10'),
('120', 'DINAS KOMUNIKASI DAN INFORMATIKA', 'KEPALA DINAS KOMUNIKASI DAN INFORMATIKA', 1, '2018-08-31 04:59:20', 0, '2018-10-10 10:10:10'),
('121', 'DINAS KOPERASI, USAHA KECIL DAN MENENGAH', 'KEPALA DINAS KOPERASI, USAHA KECIL DAN MENENGAH', 1, '2018-08-31 04:59:28', 0, '2018-10-10 10:10:10'),
('122', 'DINAS PERINDUSTRIAN DAN PERDAGANGAN', 'KEPALA DINAS PERINDUSTRIAN DAN PERDAGANGAN', 1, '2018-08-31 04:59:39', 1, '2019-01-10 08:38:13'),
('123', 'DINAS PENANAMAN MODAL DAN PELAYANAN TERPADU SATU PINTU', 'KEPALA DINAS PENANAMAN MODAL DAN PELAYANAN TERPADU SATU PINTU', 1, '2018-08-31 04:59:50', 0, '2018-10-10 10:10:10'),
('124', 'DINAS KEPEMUDAAN DAN OLAH RAGA', 'KEPALA DINAS KEPEMUDAAN DAN OLAH RAGA', 1, '2018-08-31 04:59:58', 0, '2018-10-10 10:10:10'),
('125', 'DINAS PERPUSTAKAAN DAN KEARSIPAN', 'KEPALA DINAS PERPUSTAKAAN DAN KEARSIPAN', 1, '2018-08-31 05:00:05', 0, '2018-10-10 10:10:10'),
('126', 'DINAS KELAUTAN DAN PERIKANAN', 'KEPALA DINAS KELAUTAN DAN PERIKANAN', 1, '2018-08-31 05:00:13', 0, '2018-10-10 10:10:10'),
('127', 'DINAS PARIWISATA', 'KEPALA DINAS PARIWISATA', 1, '2018-08-31 05:00:21', 0, '2018-10-10 10:10:10'),
('128', 'DINAS KEBUDAYAAN', 'KEPALA DINAS KEBUDAYAAN', 1, '2018-08-31 05:00:30', 0, '2018-10-10 10:10:10'),
('129', 'DINAS KETAHANAN PANGAN, PERTANIAN DAN KESEHATAN HEWAN', 'KEPALA DINAS KETAHANAN PANGAN, PERTANIAN DAN KESEHATAN HEWAN', 1, '2018-08-31 05:00:39', 0, '2018-10-10 10:10:10'),
('130', 'DINAS ENERGI DAN SUMBER DAYA MINERAL', 'KEPALA DINAS ENERGI DAN SUMBER DAYA MINERAL', 1, '2018-08-31 05:00:47', 0, '2018-10-10 10:10:10'),
('131', 'SATUAN POLISI PAMONG PRAJA DAN PENANGGULANGAN KEBAKARAN', 'KEPALA SATUAN POLISI PAMONG PRAJA DAN PENANGGULANGAN KEBAKARAN', 1, '2018-08-31 05:00:55', 0, '2018-10-10 10:10:10'),
('132', 'RUMAH SAKIT UMUM DAERAH PROVINSI KEPULAUAN RIAU TANJUNGPINANG', 'DIREKTUR RUMAH SAKIT UMUM DAERAH PROVINSI KEPULAUAN RIAU TANJUNGPINANG', 1, '2018-08-31 05:01:05', 0, '2018-10-10 10:10:10'),
('133', 'RUMAH SAKIT UMUM DAERAH PROVINSI KEPULAUAN RIAU TANJUNG UBAN', 'DIREKTUR RUMAH SAKIT UMUM DAERAH PROVINSI KEPULAUAN RIAU TANJUNG UBAN', 1, '2018-08-31 05:01:14', 0, '2018-10-10 10:10:10'),
('134', 'SEKRETARIAT WALIKOTA', 'KEPALA SEKRETARIAT WALIKOTA', 1, '2018-08-31 05:30:05', 0, '2018-10-10 10:10:10'),
('135', 'SEKRETARIAT WAKIL WALIKOTA', 'KEPALA SEKRETARIAT WAKIL WALIKOTA', 1, '2018-08-31 05:30:15', 0, '2018-10-10 10:10:10'),
('136', 'BIRO ADMINISTRASI PEREKONOMIAN', 'KEPALA BIRO ADMINISTRASI PEREKONOMIAN', 1, '2018-08-31 05:30:23', 0, '2018-10-10 10:10:10'),
('137', 'BIRO KESEJAHTERAAN RAKYAT', 'KEPALA BIRO KESEJAHTERAAN RAKYAT', 1, '2018-08-31 05:30:32', 0, '2018-10-10 10:10:10'),
('138', 'BIRO UMUM', 'KEPALA BIRO UMUM', 1, '2018-08-31 05:30:43', 0, '2018-10-10 10:10:10'),
('139', 'BIRO HUKUM', 'KEPALA BIRO HUKUM', 1, '2018-08-31 05:30:51', 0, '2018-10-10 10:10:10'),
('140', 'BIRO PEMERINTAHAN DAN PERBATASAN', 'KEPALA BIRO PEMERINTAHAN DAN PERBATASAN', 1, '2018-08-31 05:30:58', 0, '2018-10-10 10:10:10'),
('141', 'BIRO ADMINISTRASI PEMBANGUNAN', 'KEPALA BIRO ADMINISTRASI PEMBANGUNAN', 1, '2018-08-31 05:31:05', 0, '2018-10-10 10:10:10'),
('142', 'BIRO PENGADAAN BARANG / JASA', 'KEPALA BIRO PENGADAAN BARANG / JASA', 1, '2018-08-31 05:31:12', 0, '2018-10-10 10:10:10'),
('143', 'BIRO ORGANISASI DAN KORPRI', 'KEPALA BIRO ORGANISASI DAN KORPRI', 1, '2018-08-31 05:31:18', 0, '2018-10-10 10:10:10'),
('144', 'BIRO HUMAS, PROTOKOL DAN PENGHUBUNG', 'KEPALA BIRO HUMAS, PROTOKOL DAN PENGHUBUNG', 1, '2018-08-31 05:31:24', 0, '2018-10-10 10:10:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_pangkat`
--

CREATE TABLE `master_pangkat` (
  `id_pangkat` int(11) NOT NULL,
  `nama_pangkat` varchar(23) NOT NULL,
  `golongan_ruang` varchar(5) NOT NULL,
  `pajak` float NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `changed_by` int(11) NOT NULL,
  `changed_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `master_pangkat`
--

INSERT INTO `master_pangkat` (`id_pangkat`, `nama_pangkat`, `golongan_ruang`, `pajak`, `created_by`, `created_on`, `changed_by`, `changed_on`) VALUES
(11, 'Juru Muda', 'I/a', 0, 1, '2018-10-10 10:10:10', 0, '2018-10-10 10:10:10'),
(12, 'Juru Muda Tk. I', 'I/b', 0, 1, '2018-10-10 10:10:10', 0, '2018-10-10 10:10:10'),
(13, 'Juru', 'I/c', 0, 1, '2018-10-10 10:10:10', 0, '2018-10-10 10:10:10'),
(14, 'Juru Tk. I', 'I/d', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(21, 'Pengatur Muda', 'II/a', 0, 1, '2018-10-10 10:10:10', 0, '2018-10-10 10:10:10'),
(22, 'Pengatur Muda Tk. I', 'II/b', 0, 1, '2018-10-10 10:10:10', 0, '2018-10-10 10:10:10'),
(23, 'Pengatur', 'II/c', 0, 1, '2018-10-10 10:10:10', 0, '2018-10-10 10:10:10'),
(24, 'Pengatur Tk. I', 'II/d', 0, 1, '2018-10-10 10:10:10', 0, '2018-10-10 10:10:10'),
(31, 'Penata Muda', 'III/a', 5, 1, '2018-10-10 10:10:10', 0, '2018-10-10 10:10:10'),
(32, 'Penata Muda Tk. I', 'III/b', 5, 1, '2018-10-10 10:10:10', 0, '2018-10-10 10:10:10'),
(33, 'Penata', 'III/c', 5, 1, '2018-10-10 10:10:10', 0, '2018-10-10 10:10:10'),
(34, 'Penata Tk. I', 'III/d', 5, 1, '2018-10-10 10:10:10', 0, '2018-10-10 10:10:10'),
(41, 'Pembina', 'IV/a', 15, 1, '2018-10-10 10:10:10', 0, '2018-10-10 10:10:10'),
(42, 'Pembina Tk. I', 'IV/b', 15, 1, '2018-10-10 10:10:10', 0, '2018-10-10 10:10:10'),
(43, 'Pembina Utama Muda', 'IV/c', 15, 1, '2018-10-10 10:10:10', 0, '2018-10-10 10:10:10'),
(44, 'Pembina Utama Madya', 'IV/d', 15, 1, '2018-10-10 10:10:10', 0, '2018-10-10 10:10:10'),
(45, 'Pembina Utama', 'IV/e', 15, 1, '2018-10-10 10:10:10', 0, '2018-10-10 10:10:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_pansel`
--

CREATE TABLE `master_pansel` (
  `id_pansel` int(11) NOT NULL,
  `jenis_identitas` enum('NIP','NIK','NIDN') NOT NULL,
  `nama_pansel` varchar(200) NOT NULL,
  `nomor_identitas` varchar(50) NOT NULL,
  `no_telp` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `asal` varchar(200) NOT NULL,
  `file` text NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `changed_by` int(11) NOT NULL,
  `changed_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `master_pansel`
--

INSERT INTO `master_pansel` (`id_pansel`, `jenis_identitas`, `nama_pansel`, `nomor_identitas`, `no_telp`, `email`, `alamat`, `asal`, `file`, `is_active`, `created_by`, `created_on`, `changed_by`, `changed_on`) VALUES
(1, 'NIP', 'saiful najib', '199411252022021001', '081270709880', 'saifulnajib17@gmail.com', 'Jl. Penyengat 1 No. 15 Perumnas Seijang', 'Pemko Tanjungpinang', 'resources/master_pansel/Dune_(2021).jpg', 1, 1, '2022-04-28 13:53:56', 0, '0000-00-00 00:00:00'),
(2, 'NIK', 'David Fherdinan', '217202434353', '0853231', 'david@gmail.com', 'Jl. Senggarang', 'Pemko Batam', 'resources/master_pansel/ada-sepenggal-san-fransisco-di-jembatan-barelang.jpg', 1, 1, '2022-04-28 13:55:11', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_partai_politik`
--

CREATE TABLE `master_partai_politik` (
  `id_parpol` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `changed_by` int(11) NOT NULL,
  `changed_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `master_partai_politik`
--

INSERT INTO `master_partai_politik` (`id_parpol`, `nama`, `logo`, `created_by`, `created_on`, `changed_by`, `changed_on`) VALUES
(1, 'PDI Perjuangan', 'resources/image/Logo_PDI-P.png', 0, '0000-00-00 00:00:00', 1, '2020-10-06 11:11:08'),
(2, 'Gerindra', 'resources/image/Logo_Gerindra.png', 0, '0000-00-00 00:00:00', 1, '2020-10-06 11:10:42'),
(3, 'Golkar', 'resources/image/Logo_Golkar.png', 0, '0000-00-00 00:00:00', 1, '2020-10-06 11:10:49'),
(4, 'Nasdem', 'resources/image/Logo_Nasdem.jpg', 0, '0000-00-00 00:00:00', 1, '2020-10-06 11:11:00'),
(5, 'Demokrat', 'resources/image/Logo_Demokrat3.png', 0, '0000-00-00 00:00:00', 1, '2020-10-06 11:10:31'),
(6, 'PKS', 'resources/image/Logo_PKS.jpg', 0, '0000-00-00 00:00:00', 1, '2020-10-06 11:11:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_pegawai`
--

CREATE TABLE `master_pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nip` varchar(18) NOT NULL,
  `nama_pegawai` varchar(200) NOT NULL,
  `id_pangkat` int(11) NOT NULL,
  `id_opd` int(11) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `no_telp` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `file` text NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `changed_by` int(11) NOT NULL,
  `changed_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `master_pegawai`
--

INSERT INTO `master_pegawai` (`id_pegawai`, `nip`, `nama_pegawai`, `id_pangkat`, `id_opd`, `jabatan`, `tempat_lahir`, `tgl_lahir`, `no_telp`, `email`, `alamat`, `file`, `is_active`, `created_by`, `created_on`, `changed_by`, `changed_on`) VALUES
(1, '199411252022021001', 'Saiful Najib, S.Kom', 31, 120, 'Pranata Komputer', 'Solo', '1994-11-25', '081270709880', 'saifulnajib17@gmail.com', 'Jl. Penyengat 1 No. 15 Perumnas Seijang', 'resources/master_pegawai/PAS_FOTO_SAIFUL_NAJIB.jpg', 1, 1, '2022-04-28 00:00:00', 1, '2022-04-28 14:40:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_pelanggaran`
--

CREATE TABLE `master_pelanggaran` (
  `id_pelanggaran` int(11) NOT NULL,
  `id_kategori_pelanggaran` int(11) NOT NULL,
  `nama_pelanggaran` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `master_pelanggaran`
--

INSERT INTO `master_pelanggaran` (`id_pelanggaran`, `id_kategori_pelanggaran`, `nama_pelanggaran`) VALUES
(1, 1, 'Melaksanakan rapat umum'),
(2, 1, 'Melaksanakan kegiatan kebudayaan berupa pentas seni, panen raya, dan/atau konser musik'),
(3, 1, 'Melaksanakan kegiatan olahraga berupa gerak jalan santai, dan/atau sepeda santai'),
(4, 1, 'Melaksanakan perlombaan'),
(5, 1, 'Melaksanakan kegiatan sosial berupa bazar dan/ataudonor darah'),
(6, 1, 'Melaksanakan peringatan hari ulang tahun Partai Politik'),
(7, 1, 'Jumlah peserta yang hadir secara keseluruhan lebih dari 50 (lima puluh) orang dan tidak memperhitungkan jaga jarakpaling kurang 1 (satu) meter antar peserta Kampanye'),
(8, 1, 'Peserta yang hadir tidak menggunakan masker'),
(9, 1, 'Tidak menyediakan fasilitas cuci tangan dengan air mengalir dan sabun, dan/atau cairan antiseptik berbasis alkohol (handsanitizer)'),
(10, 2, 'Netralitas ASN'),
(11, 2, 'Penggunaan fasilitas negara'),
(12, 2, 'Penggunaan anggaran dan program pemerintah dalam kampanye'),
(13, 2, 'Melibatkan anak dibawah umur dalam kampanye'),
(14, 2, 'Melaksanakan iring-iringan/konvoi dan sejenisnya dalam pelaksanaan kampanye'),
(15, 2, 'Kampanye diluar jadwal yang telah ditetapkan'),
(16, 2, 'Alat peraga kampanye dan bahan kampanye tidak sesuai dengan ketentuan'),
(17, 3, 'Tindak pidana Pilkada dalam Pelaksanaan Kampanye');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_pertanyaan`
--

CREATE TABLE `master_pertanyaan` (
  `id_pertanyaan` int(11) NOT NULL,
  `id_jenis_nilai` text NOT NULL,
  `tipe` enum('parent','child') NOT NULL,
  `id_parent_pertanyaan` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `is_active` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `changed_by` int(11) NOT NULL,
  `changed_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_pilkada`
--

CREATE TABLE `master_pilkada` (
  `id_pilkada` int(11) NOT NULL,
  `tgl_pilkada` date NOT NULL,
  `tgl_awal_kampanye` date NOT NULL,
  `tgl_akhir_kampanye` date NOT NULL,
  `periode_awal` date NOT NULL,
  `periode_akhir` date NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `master_pilkada`
--

INSERT INTO `master_pilkada` (`id_pilkada`, `tgl_pilkada`, `tgl_awal_kampanye`, `tgl_akhir_kampanye`, `periode_awal`, `periode_akhir`, `keterangan`) VALUES
(1, '2020-12-09', '2020-09-01', '2020-11-30', '2020-06-01', '2020-12-31', 'Pilkada Serentak Kepulauan Riau 2020');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_seleksi`
--

CREATE TABLE `master_seleksi` (
  `id_master_seleksi` int(11) NOT NULL,
  `judul_seleksi` text NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `file` text NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `changed_by` int(11) NOT NULL,
  `changed_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `master_seleksi`
--

INSERT INTO `master_seleksi` (`id_master_seleksi`, `judul_seleksi`, `tgl_mulai`, `tgl_selesai`, `file`, `is_active`, `created_by`, `created_on`, `changed_by`, `changed_on`) VALUES
(1, 'Seleksi JPT Tahun 2022', '2022-04-02', '2022-04-29', 'resources/seleksi_jpt/Laporan_Golongan.pdf', 1, 1, '2022-04-27 10:11:47', 1, '2022-04-27 12:10:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_tokoh_politik`
--

CREATE TABLE `master_tokoh_politik` (
  `id_topol` int(11) NOT NULL,
  `id_daerah` int(11) NOT NULL,
  `id_parpol` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `changed_by` int(11) NOT NULL,
  `changed_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `master_tokoh_politik`
--

INSERT INTO `master_tokoh_politik` (`id_topol`, `id_daerah`, `id_parpol`, `nama`, `alamat`, `notelp`, `foto`, `created_by`, `created_on`, `changed_by`, `changed_on`) VALUES
(1, 2171, 1, 'DR. H. Muhammad Soerya Respationo, SH., MH', '123', '123', '', 0, '0000-00-00 00:00:00', 1, '2020-10-08 19:23:54'),
(2, 2171, 2, 'Iman Sutiawan, SE., MM', '-', '2', '', 0, '0000-00-00 00:00:00', 1, '2020-10-08 19:21:49'),
(3, 2102, 3, 'Ansar', 'Jl. D.I Panjaitan km. 8212', '0771-4444444', 'resources/master_topol/dery_ultraman1.jpg', 0, '0000-00-00 00:00:00', 1, '2020-10-06 14:20:28'),
(4, 2171, 4, 'Marlin', '', '', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(5, 2101, 0, 'Isdianto', '123', '123', '', 0, '0000-00-00 00:00:00', 1, '2020-10-06 14:26:51'),
(6, 2171, 6, 'Suryani', '', '', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `modules`
--

CREATE TABLE `modules` (
  `module_id` int(11) NOT NULL,
  `module_name` varchar(255) NOT NULL,
  `module_parent_id` int(11) NOT NULL,
  `module_link` varchar(255) NOT NULL,
  `module_icon` varchar(30) NOT NULL,
  `module_order` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `changed_by` int(11) NOT NULL,
  `changed_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `modules`
--

INSERT INTO `modules` (`module_id`, `module_name`, `module_parent_id`, `module_link`, `module_icon`, `module_order`, `created_by`, `created_on`, `changed_by`, `changed_on`) VALUES
(1, 'Admin', 0, 'javascript:;', 'ti-settings', 1, 1, '2018-08-14 11:18:03', 1, '2020-05-15 23:52:29'),
(2, 'Pemakai Aplikasi', 1, 'users', '', 1, 1, '2018-08-14 11:18:03', 1, '2019-12-02 18:03:37'),
(3, 'Grup Pemakai', 1, 'groups', '', 2, 1, '2018-08-14 15:20:18', 1, '2019-12-02 18:03:39'),
(4, 'Daftar Modul', 1, 'module', '', 3, 1, '2018-08-14 15:21:20', 1, '2020-05-15 23:52:35'),
(5, 'Atur Modul', 1, 'settingmodule', '', 4, 1, '2018-08-14 15:21:49', 1, '2020-05-15 23:52:33'),
(6, 'Konfigurasi Aplikasi', 1, 'settingapp', '', 5, 1, '2018-08-14 15:23:11', 1, '2019-12-02 18:03:49'),
(7, 'Panduan Aplikasi', 1, 'guides', '', 7, 1, '2018-08-14 15:23:24', 1, '2019-12-02 18:03:56'),
(8, 'Aktivitas Pemakai', 1, 'activity', '', 8, 1, '2018-08-30 06:51:33', 1, '2020-05-15 23:52:31'),
(14, 'Konfigurasi Pemilik', 1, 'settingcompany', '', 6, 1, '2019-01-03 09:36:39', 1, '2019-12-02 18:03:52'),
(28, 'Perpesanan', 1, 'javascript:;', '', 9, 1, '2019-03-10 02:24:39', 1, '2019-12-02 18:04:04'),
(29, 'Template Email', 28, 'template_email', '', 1, 1, '2019-03-10 02:25:58', 1, '2019-12-02 18:04:19'),
(30, 'Template SMS', 28, 'template_sms', '', 2, 1, '2019-03-10 02:26:16', 1, '2019-12-02 18:04:22'),
(31, 'Email Gateway', 28, 'email_gateway', '', 3, 1, '2019-03-10 02:26:31', 1, '2019-12-02 18:04:25'),
(32, 'SMS Gateway', 28, 'sms_gateway', '', 4, 1, '2019-03-10 02:26:50', 1, '2019-12-02 18:04:28'),
(54, 'Pemakai Online', 1, 'users_online', '', 10, 1, '2019-05-23 23:46:41', 1, '2019-12-02 18:04:07'),
(55, 'Master', 0, 'javascript:;', 'ti-server', 3, 1, '2020-10-06 10:29:24', 0, '0000-00-00 00:00:00'),
(57, 'Data Kampanye', 0, 'data_kampanye_admin', 'ti-notepad', 4, 1, '2020-10-06 10:52:32', 1, '2020-10-12 22:53:57'),
(61, 'Pilkada', 0, 'pilkada', 'ti-calendar', 3, 1, '2020-10-06 14:48:36', 0, '0000-00-00 00:00:00'),
(62, 'Data Pelanggaran', 0, 'data_pelanggaran', 'ion ion-ios-alert', 5, 1, '2020-10-06 15:44:52', 0, '0000-00-00 00:00:00'),
(63, 'Data Kampanye Daerah', 0, 'data_kampanye', 'mdi mdi-folder-heart-outline', 9, 1, '2020-10-12 23:57:26', 0, '0000-00-00 00:00:00'),
(64, 'Seleksi JPT', 55, 'master_seleksi_jpt', '', 1, 1, '2022-04-27 09:33:09', 0, '0000-00-00 00:00:00'),
(65, 'Pansel', 55, 'master_pansel', '', 2, 1, '2022-04-28 12:04:20', 1, '2022-04-28 12:04:47'),
(66, 'Pegawai', 55, 'master_pegawai', '', 3, 1, '2022-04-28 14:04:42', 0, '0000-00-00 00:00:00'),
(67, 'Jenis Penilaian', 55, 'master_jenis_nilai', '', 4, 1, '2022-04-28 14:46:50', 0, '0000-00-00 00:00:00'),
(68, 'Data Aplikasi', 0, 'data_aplikasi', 'fas fa-chart-bar', 3, 1, '2022-11-03 15:23:14', 0, '0000-00-00 00:00:00'),
(69, 'Validasi Aplikasi', 0, 'validasi_aplikasi', 'ti-check', 5, 1, '2022-11-05 22:44:03', 0, '0000-00-00 00:00:00'),
(70, 'Kategorisasi Sistem Elektronik', 0, 'kategorisasi_se', 'ti-alert', 6, 11, '2026-04-29 08:15:05', 0, '0000-00-00 00:00:00'),
(72, 'Validasi Kategorisasi SE', 0, 'validasi_kategorisasi_se', '', 7, 11, '2026-08-18 17:40:27', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth`
--

CREATE TABLE `oauth` (
  `oauth_id` int(11) NOT NULL,
  `oauth_uid` varchar(255) DEFAULT NULL,
  `oauth_name` varchar(255) DEFAULT NULL,
  `oauth_email` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `picture_url` varbinary(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `changed_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `paslon`
--

CREATE TABLE `paslon` (
  `id_paslon` int(11) NOT NULL,
  `id_pilkada` int(11) NOT NULL,
  `id_daerah` varchar(15) NOT NULL,
  `no_urut` int(11) NOT NULL,
  `id_topol_kepala` int(11) NOT NULL,
  `id_topol_wakil` int(11) NOT NULL,
  `foto_paslon` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `changed_by` int(11) NOT NULL,
  `changed_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `paslon`
--

INSERT INTO `paslon` (`id_paslon`, `id_pilkada`, `id_daerah`, `no_urut`, `id_topol_kepala`, `id_topol_wakil`, `foto_paslon`, `created_by`, `created_on`, `changed_by`, `changed_on`) VALUES
(1, 1, '21', 1, 1, 2, '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2, 1, '21', 2, 5, 6, '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3, 1, '21', 3, 3, 4, '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_recovery`
--

CREATE TABLE `password_recovery` (
  `password_recovery_id` int(11) NOT NULL,
  `tokenemail` varchar(100) DEFAULT NULL,
  `tokensms` varchar(10) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `timesemail` int(11) DEFAULT NULL,
  `timessms` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilai`
--

CREATE TABLE `penilai` (
  `id_penilai` int(11) NOT NULL,
  `id_seleksi` int(11) NOT NULL,
  `id_pansel` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `changed_by` int(11) NOT NULL,
  `changed_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peserta`
--

CREATE TABLE `peserta` (
  `id_peserta` int(11) NOT NULL,
  `nip` varchar(18) NOT NULL,
  `id_seleksi` int(11) NOT NULL,
  `id_formasi_jabatan` int(11) NOT NULL,
  `nilai_rekam_jejak` float NOT NULL,
  `nilai_makalah` float NOT NULL,
  `nilai_assesment` float NOT NULL,
  `wawancara` float NOT NULL,
  `status` varchar(50) NOT NULL,
  `keterangan` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `changed_by` int(11) NOT NULL,
  `changed_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `send_mail`
--

CREATE TABLE `send_mail` (
  `send_mail_id` int(11) NOT NULL,
  `sendingtime` datetime DEFAULT NULL,
  `deliverytime` datetime DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `destination` varchar(250) DEFAULT NULL,
  `attachment` varchar(250) DEFAULT NULL,
  `status` enum('y','n') DEFAULT 'n',
  `created_by` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `send_notifikasi`
--

CREATE TABLE `send_notifikasi` (
  `send_notifikasi_id` int(11) NOT NULL,
  `inserttime` datetime DEFAULT NULL,
  `readtime` datetime DEFAULT NULL,
  `fromuser` int(11) DEFAULT NULL,
  `touser` int(11) DEFAULT NULL,
  `notifikasi` text DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `send_sms`
--

CREATE TABLE `send_sms` (
  `send_sms_id` int(11) NOT NULL,
  `sendingtime` datetime DEFAULT NULL,
  `deliverytime` datetime DEFAULT NULL,
  `message` text DEFAULT NULL,
  `destination` varchar(50) DEFAULT NULL,
  `status` enum('y','n') DEFAULT 'n',
  `smsgatewaymeid` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `template_mail`
--

CREATE TABLE `template_mail` (
  `template_mail_id` smallint(6) NOT NULL,
  `nama` varchar(250) DEFAULT NULL,
  `pesan` text DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `changed_on` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data untuk tabel `template_mail`
--

INSERT INTO `template_mail` (`template_mail_id`, `nama`, `pesan`, `keterangan`, `created_by`, `created_on`, `changed_by`, `changed_on`) VALUES
(1, 'Ubah katasandi akun', '<p><span style=\"font-family:\'Google Sans\',sans-serif\"><span style=\"font-size:14px\"><strong>Halo [nama_penerima],</strong><br><br>Kami telah menerima permintaan untuk mengubah katasandi anda di [nama_aplikasi] [nama_instansi]. Klik tautan di bawah ini untuk mengubahnya (atau copy dan paste URL di bawah ini ke browser): </span><br>\r\n<span style=\"font-size:14px\">[link_ganti]</span><br>\r\n<br>\r\n<span style=\"font-size:12px\"><i>	\r\nTautan ini akan membawa anda ke halaman aman untuk mengubah katasandi anda.</i></span></span><i>Jika Anda tidak memintanya, silahkan abaikan email ini</i></p><p>\r\n&nbsp;</p>\r\n\r\n<p><span style=\"font-family:\'Google Sans\',sans-serif\"><span style=\"font-size:14px\">Terimakasih,<br>\r\n</span></span></p><p><span style=\"font-family:\'Google Sans\',sans-serif\"><span style=\"font-size:14px\"><br>\r\nAdministrator [nama_aplikasi] [nama_instansi]</span></span></p>', NULL, NULL, NULL, 1, '2019-05-24 00:19:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `template_notifikasi`
--

CREATE TABLE `template_notifikasi` (
  `template_notifikasi_id` int(11) NOT NULL,
  `nama` varchar(250) DEFAULT NULL,
  `notifikasi` text DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `changed_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `template_sms`
--

CREATE TABLE `template_sms` (
  `template_sms_id` smallint(6) NOT NULL,
  `nama` varchar(250) DEFAULT NULL,
  `pesan` text DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `changed_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `template_sms`
--

INSERT INTO `template_sms` (`template_sms_id`, `nama`, `pesan`, `keterangan`, `created_by`, `created_on`, `changed_by`, `changed_on`) VALUES
(1, 'Ubah katasandi akun', 'JANGAN KASIH KODE INI KE SIAPA PUN (TERMASUK [nama_instansi]). KODE VERIFIKASI untuk GANTI KATASANDI akun [nama_aplikasi] [nama_instansi] : [kode_token]', NULL, NULL, NULL, 1, '2019-05-24 00:21:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `last_login` datetime NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `phone` varchar(20) NOT NULL,
  `image_profile` varchar(255) DEFAULT NULL,
  `extend_image` enum('y','n') DEFAULT NULL,
  `layout_admin` varchar(255) DEFAULT 'layout_admin_vertical',
  `id_opd` int(11) DEFAULT NULL,
  `id_daerah` varchar(15) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `changed_by` int(11) NOT NULL,
  `changed_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `name`, `password`, `email`, `last_login`, `active`, `phone`, `image_profile`, `extend_image`, `layout_admin`, `id_opd`, `id_daerah`, `created_by`, `created_on`, `changed_by`, `changed_on`) VALUES
(1, '199411252022021001', 'Administrator', '7f63a28d8d7482a2c2957319d63afbcdbd7315a4c2b1a6a2c17c0085c4685f6771a08feed2e8f43f2b106cbc017023e98e78d771bb05dfac7344f7d37041e492+JbLPSBUQzLGRchkwM/IL+vBKXcuknOz2jbLubbghLw=', 'info@mail.com', '0000-00-00 00:00:00', 1, '081234567890', '', 'n', 'layout_admin_vertical', NULL, '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2, 'adminkepri', 'Admin Desk Pemprov Kepri', 'a771ec858a15273435e011b3878d5d9fa23c3056bdd99385409f8e007fb7559c84554a37e393f6e2307653424d8508f25b695ad2ff9c57d86bfbe4d8e36b4fb7jjuBiDxbuDMQvbqJ0hFkWz4PtfCNK3JVayWSAsXqYoM=', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', NULL, '21', 1, '2020-10-06 14:55:10', 1, '2020-10-06 14:55:27'),
(3, 'adminkominfo', 'Admin Diskominfo', 'eddd3e692c0fde802c8d4e33c738dc9016b83d9b698060c726a29c428fd7ab2e595a84d7809d751098b53269cb063955f778dda3d1a0a487aa21f87f703f044d+hHzDl+SIBE1RBHFQJh8qwebLExTq+F3bX307TQl1MM=', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_horizontal', 125, '', 1, '2022-11-03 15:35:26', 1, '2022-11-03 15:38:10'),
(5, '199507292022021001', 'RAKHMAD KAFYANDI, ST', '489687385a3565b1e4d008da816d3721954d4786ef2dacb6c959a0be149e9b69537dbf72670b0f64eead4a933a3dfcf3601604098309a5e3b235ab32058c0998Wy67HSOLBoz0vE9yYFx1NOYfapHMLKnwHTogMseytCTw6wVn+aHtSeLvg8bWCPgj', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 125, NULL, 1, '2022-11-11 08:36:11', 1, '2024-11-07 10:08:09'),
(6, '71212166', 'YUDHISTIRA ANDI NUGRAHA, S.Pd.I', '28c29473efb02e4d9a63675bf16b095c684f860741239836820aefe601d6ca0d89b14cc927d7553dc14cc1e254ab141f2a362029447dc484194cd3d45fbaa1d4s5T9MgPbvEhgw2hJ/qPV6jGHkZmaxPajWzvjuRhiU+k=', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 115, NULL, 1, '2022-11-11 10:57:24', 0, '0000-00-00 00:00:00'),
(7, '199003292022021001', 'RANDI RAHMANDA, A.Md', 'ec8ae59e261042e4d34d41e7d686c13b3df065f39bd97c1f0fb7b7cd2a46561996670418541be295035fb148cc5222903a1723595523e0f7fd3a62cb9ea802eedvMgXnZEQNMeCzf2ZrFAhOu/u/jlKcvhlwlnASSfe6VmUn4BXU4cKGqjqWXTY5uQ', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 125, NULL, 1, '2022-11-11 14:58:37', 1, '2023-01-04 10:16:48'),
(8, '12345678', 'Rendi', '6fb07ad151d66428ae1d8fefb2e1edb8c92911c6e1813cacfdeb71b5cf8d0c5d778a73e6da8d915162cc6083152c6f2198d3e03c95188d0965e3a23faa54db69dPbF9Fq9jFgdD6Aa7vLhfomN0NCkXvxI529emH6CLFM=', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 125, NULL, 1, '2022-11-17 20:54:34', 1, '2025-02-13 14:17:39'),
(9, '197510082010012008', 'FITRIATIN, A.Md', 'ff2f3c22eb8f64ca43f2fabc201826316e5aa0125681ab7caf07b9ef351334fb659aa8b5ea549a4939ae3c7e71e8b5ab3a2a44aa7a0759bf295ac1942adc9dd78jfIvnbYXe26sVNQuT+rILijR9d0Bea6spPbT/nCQvuwsGS/xrl2Tzdt6LF45DWl', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 131, NULL, 1, '2022-11-18 08:45:57', 0, '0000-00-00 00:00:00'),
(10, '196606101997021005', 'Drs. H. TAMRIN DAHLAN, M.Si', '2b20996dec9bcf6ff7350174d1c504fbaa4bf7999ef2d72346eac577d110ca646e3964d9f808efad2671880e8938716545d20056bd43a0d1b172d14c890816bb3iuUCpbDsDK7y+Vl7+R1bVsSUSdk5vrRUve+5m4Emi7+Xd2z5yBjfO6zzXvv94BE', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 105, NULL, 1, '2022-11-25 09:29:27', 0, '0000-00-00 00:00:00'),
(11, '198602162008031001', 'MUHAMMAD TAUFIK HIDAYAT, ST', 'adcede18652092a6f1791d3a0d52c248bb972595ff4dcac682d4caed250a8fd849d4c6c6ef7dc6233e6a931c50729d859161904b8b691a57431a762f89efd5bctCtKvLu4GXE4onk8jiGIihRSCO6xRa43y6MHPoYVImBioaE79/JoWXFLWsl8K5u7', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 125, NULL, 1, '2023-01-08 22:29:22', 1, '2023-01-18 11:08:34'),
(12, '198605272006021001', 'FERY ANDANA, S.STP', '1f21b90ca81d478073e2d197b07e2e17a3d144bd1dab46243489db28e8e5367354ea2ae219d2b8f65ed5292e1399881b55a2d20f3d70d7633007b07e50d1b5f3OZnjVgMiXNoB6K16jKkKA0eJdWlY9xbud24vL2ZrVbkVW7hTEj+VHNNqfUpq3fGG', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 128, NULL, 1, '2023-01-12 09:44:27', 0, '0000-00-00 00:00:00'),
(13, '198409242006041008', 'DONI SURYADI, S.A.P.', '3248e06e4d9173381e506e619d5dcea43b65b7093bdbc37dce1b2fdb60bee07042b38e848805bb4993931dfdbfd76d7b21732a38685b4cd9e615b3f33af5a258ZtuIdCjfzHnDsUfAkS9j2WzDPO08B7mo57rZJlnl5WQYIy5+qeYr7/AW510emsyc', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 103, NULL, 1, '2023-01-12 11:10:04', 0, '0000-00-00 00:00:00'),
(14, '198804102015031001', 'APRINALDI, S.Kom', 'd2a5ab84ab06cd644fc01cf3565b0aa5f0d0254f1a73351bcfbcb89dd5fd222ccc536e94de7d1c624aa2a125397da2e394bc580c33963256204011618dd267efEM3orfTcCFc8CD4v+6V1e5yoFv1RkW33HCghNcTm/OBJRZEQGhkuWoP+I78I30Rg', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 125, NULL, 1, '2023-01-17 08:13:22', 1, '2024-03-22 09:57:17'),
(15, '71212115', 'MUHAMMAD IKRAR, S.Sos', '0f19328792ee6e546cd2de3c5cd18b4b9d5001c1c51dab237afd0fe24c921ecf610ad7d0d0912a541aec15f76c2daea0560d62b19cae2be8fa26c1f3f0e0f771sY4dGOWKC/6g3hkmNBgof6y6FIIlk5UH5fd44jLlQoM=', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 112, NULL, 1, '2023-01-25 09:33:49', 0, '0000-00-00 00:00:00'),
(16, '197509062005021006', 'SURIANSYAH, SE', '34d30381ff8ea840203a38abcf14893a1c570519918fa1abd5d4c1035210c2b42e1a5e23aa6e517a1ac54dd3bc593692e90834bd2347c58393ccfaa374a67155GtEGctzp5b1SBn3Q/3H4Mu+eAqZBWUuGcS8tsjc1zKiRfe/9ProbuWH8NfzvWfgs', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 112, NULL, 1, '2023-02-10 13:11:26', 0, '0000-00-00 00:00:00'),
(17, '198002122008041002', 'M. ENDY FEBRI, S.E., M.H', 'afd12845aec8c51f7b7ff74180e0b67a184fa253e23c43ea87518b9ff47e9beffc2f69b5cddcf7c8e9905163da982aeb3538dc051b9838bd569f28b710a39ac524LbgubMHgYZMqC21Mf1zR4Uzsr1Qk/V3eO9HNShFQNohLB231u19nKLEBC2gjsK', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 121, NULL, 1, '2023-02-15 12:00:06', 0, '0000-00-00 00:00:00'),
(18, '199407062022021001', 'DAVID FHERDINAN SAMSON SIHITE, S.Kom', 'd3d0706fcfee97d0032eadab9e488ab96bc64ad79da968d49027ffd6d35dd962b84c58c92d35ea5cc5d3b2cf9aced305fed0fc7d26fa803bd4ec826f1fd75d25RL1LdGcQs8goFFxFR1OlrZDFlGCTJGyTI7ZfhcMxaIy0N1P3dV8ft/1LmIMNtk7Y', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 125, NULL, 1, '2023-02-20 13:23:02', 1, '2023-05-31 08:35:34'),
(19, '61212063', 'DEDI KURNIAWAN, ST', 'da5461adb1136eed5e5757a799e559fc08a04e5e78541dbdf3d2a79934514d9848350c24f763978b82e764f25652285912262543329702082f5b1ad3840d0abeYveFWek+ztLd5+DiDTDgCFCW8dOiBmeSKqYgzhWZLFQ=', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 121, NULL, 1, '2023-02-27 11:49:26', 0, '0000-00-00 00:00:00'),
(20, '340017', 'SATRIA', '6d0b6effe23af2b722934295ca307ab27a929c2cbfa6d301ef5a36f5c23cebb21d89a860965268f5d550d8c314dbacd3b2fb6edb949b8e0f85b3226e20a1a2bf8C+eU1TC1c/aj+SUDx52N0yLCgAv/tDGwG90sn8AUYs=', 'acik_chat@yahoo.com', '0000-00-00 00:00:00', 1, '085809068070', 'resources/profile/satriaalbad_11119749.jpg', 'n', 'layout_admin_horizontal', 134, NULL, 1, '2023-02-28 09:58:22', 0, '0000-00-00 00:00:00'),
(21, '340018', 'AMZAH', 'dbd71f85771e87efd33bbdbed0faa518c1749d0dcdc48c19d5b513cdc6cf75844b72b6584670579985f0dc216dd0b868aaf4a95f5032e89019d0036b9f81ae0fvtYUoOnBMlnS13bVCXOho/nMsolvn06JMOxApbH7JhU=', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_horizontal', 134, NULL, 1, '2023-02-28 10:03:06', 0, '0000-00-00 00:00:00'),
(22, '199607162020121002', 'SULTAN MUHAMMAD ILHAM, A.Md', '0b3ecea2eb5a7517c3269501410083a1b269f6b144e80b2ddb7744bf5367cc5927bf7b1474ebee539ca65fc1a212114a865dc6c5107158a706f948cb82a477ff2JzytCu12kHa0n6Nk7jFhxLQD0tvKpxsEqKs7FR+PawJqrUqzpo6h+yyzC09nPMX', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 142, NULL, 1, '2023-02-28 10:10:42', 0, '0000-00-00 00:00:00'),
(23, '198104052006042017', 'RIA DESPITA Y, SH', '99ce610c112b7590c0505c285ce002c5976d0c8934dbbdb44ca045fdbbd01fed49a6731fd3150211bbea215578d1bf97829167a52d6dcbebfd403fe551cb81e4VXcubCBAyCj07n9cHQSk2qmnaqgdm1Dh9kO/ZhLCI9+7mXJY1TLsCPFWBShtRqzf', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 108, NULL, 1, '2023-02-28 12:12:25', 0, '0000-00-00 00:00:00'),
(24, '30903109', 'ROLY', 'bed41f6938de392203aa8203764806260c098e3813c6e77b3ad7b341f6a2b180cff723d2ffb88e5807f3d0a39372addb179479007e41059881f9c27c0ebe7bedwmJiIU0N52gdc0iIVztR6nIB1hJTs21D5NNteMkWRC8=', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 119, NULL, 1, '2023-02-28 14:26:30', 0, '0000-00-00 00:00:00'),
(25, '196801222008011005', 'MOHAMAD ISHAK, SE', 'e23c0110e0b5d1b9fb55321082dfeb4aeaf58325c8165c5812b67e0a48066ed0e7789c844f3c7db27529c148268f745bb237b64b0eec839903ee4ac971743991GRbIJR0qoQI+2Z0NrYXjPyj2/QtpZn9T3OOVidIUj2Vrvr7xIbG51ID0sOxqmeyj', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 124, NULL, 1, '2023-02-28 15:32:11', 0, '0000-00-00 00:00:00'),
(26, '198209102006042023', 'DEWI ANGGRAENI, S.A.P.', 'e247ff64beb4aa55d804796f6714bb5d4b8a70333b9fdfbce4515bb0d03956faf3ffe7f2bfec645874359e0e33dc60afcdb05335b315b8a63822e663f9f91b96AnGvuqO08/s446xub6+VAZG7t+0rMj8fl4WrzBWfOdH7zCsfmKeolA0XfXVgQrjd', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 124, NULL, 1, '2023-02-28 15:37:22', 0, '0000-00-00 00:00:00'),
(27, '197311232003121004', 'FITRI SETIADI, ST', '4dd42d7a40461fa78d939030be8aa17a01c351acf2fb1e1f239314405d376ee7a20e5c09b0ddfdd6b8618f50b59a0da274ef595b766f6548e461c9e53c766cd6O58Gxm3fpLG8TRraEEiY3iEC6wotBEMKVPbXy99IZrbX/hUSYQkijOJEdK2JP53c', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 124, NULL, 1, '2023-02-28 15:37:49', 0, '0000-00-00 00:00:00'),
(28, '198804242015032001', 'HAPPY YANA ARIFIN, SH', 'f052fd3a481b8ba624bfacb251d822b95cb5e04cd0e7f02f9f4a45379a930a3075654fbef2e8fce22b3f9180efb6ec93540790f0793570e4b6d3774a15e0e04cf0MP4q0dFlpjlt+wYTO6EFJS05pZIm/Tpqgj9W862sLBpLbD1TmfI9JfO5i6Vk29', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 105, NULL, 1, '2023-02-28 15:38:03', 0, '0000-00-00 00:00:00'),
(29, '198711072022021001', 'HARRY NOVIAR JAMIL, S.I.P', '6e12dd8ca04b1475fa20ca451cc2554be358eb87b3f8850287300d6915c9dc6201336adcc6ef079340c170a41be0b8a183899b016218688485788e7a86297d4fUoCMgqbOX2SqjxUHGueI8KEuFnyBODI950eGreMngFgfPm0onsTF/oX7d8qyYimY', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_horizontal', 118, NULL, 1, '2023-03-02 19:00:57', 0, '0000-00-00 00:00:00'),
(30, '196604052006041010', 'EFRIZAL, S.Kom', 'c21d08d4eb20b2748b153359934f35e305adf87392b5b6378fe19676f205efcdd0e21f4583ec3ed8ed521d6c85f9c4b0d602d1d154a8c754e6bbce62a12ff70fne3v+K3EsFqIGiJs2TtmQ/fD+bTgsRv3yARxKXTr6di+9Ac1hpeqLjMRXX3IRUr6', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 108, NULL, 1, '2023-03-03 08:47:20', 0, '0000-00-00 00:00:00'),
(31, '199005042015032003', 'FITRI MUCHDIARTI, ST', '61f96f91bf9d3319577a47a2148f96589ba11a5e7fd5abd2662eb25757f36e776baa7fe04786982afa6be57a6bebeb05d52604e3e08ea97f0c8b3ff50ffe1f9d4dVBkRDqoD5L/zVkflCfCGyHomRyweW1hcf8E+xMx8aKTDHa1Kq58mybrwTeZIXf', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 111, NULL, 1, '2023-03-03 09:10:36', 0, '0000-00-00 00:00:00'),
(32, '198203082005022005', 'MARIATI', '018905210a35f7ee634357d2ef4414ae34ddaae72411d6a1225231c4e3114aa48bf1b239b439fcbeb3e63f4bf06a847b1950c50d24e408402fd23de01ff41b0aaQxBsYe80yG5VbOFzUIm0TGGx/7tKKYqkn7zqXjv01YlEU4go2sKJzXvzJAoVgU6', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 131, NULL, 1, '2023-03-03 09:13:46', 0, '0000-00-00 00:00:00'),
(33, '198512042011012004', 'Dwi Herawaty, SKM', '7989a49ff0c78ec4396dc8233dab3ad25701a3babaa667334a317f4522e5d7cea9a2eb7e4a9d277ea1705af9c2d3459570d338f28ddf2c3185a9e6bd84222feeFuP7KltnrobsnQ/xbqZzz4yK3WLPTwGC9K8xhnscZ731pRoDkcF4ENj/aVyuABwh', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 155, NULL, 1, '2023-03-03 09:41:22', 0, '0000-00-00 00:00:00'),
(34, '199601202019022008', 'HELMATUSSA\'DIYAH', '0c72d9ab2573a251f67c2263e78476ee5ebcc87820edd4748f5fc1ac7355805b7ef1a882fd8d777ac7e2a00810788e1dd457d2608e3549e92be73fbc18e79f91PXCcD7KpNjuxb8UsRk0mKwQ+QxvpqqAsiGbR+tnSGzZ7nWRCP4utXAujHGZft96f', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 153, NULL, 1, '2023-03-03 10:50:19', 0, '0000-00-00 00:00:00'),
(35, '199003192022021001', 'MUHAMMAD ABDUH, A.Md', 'fd26510c38b6d52a0b338c12196753c19329a52aec2d565c3dd1febfea2ebcf0a6689b44d4189091b5050077316a35d305b8c902494e9efbbb6c4c32a155e3a667KtEoSOn2qy2ZKexgSH/olT1ThlI2iINFOiYFeB/ibTUrregxYrmg0g9mB1lgyA', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 105, NULL, 1, '2023-03-03 10:54:54', 0, '0000-00-00 00:00:00'),
(36, '198506272010012004', 'Mira Tania, S.Kep', 'afffbf201c7d6f7c6f5516bccc1a9b939a8429948e919e6d02c8adf89d994fe75adfb96c73c523a09070517da993b0b4d59d30c9849e1c0c46a6597e5491e86c1WlDto/ej9OcZHhPVE4B8z8zTZjeFs8jYKRzPBljvWKaUT9JBOQniJOAiM/UGtCn', 'vienz272@gmail.com', '0000-00-00 00:00:00', 1, '081277322666', NULL, NULL, 'layout_admin_vertical', 156, NULL, 1, '2023-03-03 11:06:33', 0, '0000-00-00 00:00:00'),
(37, '290305', 'ALIF ADITYA WARDANA', 'bb113420c94a7c95545211dd88092b97c32284794981e38d8e6946c5d7c51ad84d194fbd27f5255779ab866193115af1a8fbc3602f512b23c139eebc8e7a05eduH5V9nuH/PcqKIRU0Jtiv/n3quBBhvnJLjo1rylKdkU=', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 143, NULL, 1, '2023-03-06 08:36:30', 0, '0000-00-00 00:00:00'),
(38, '61212025', 'TOMI SEPTIANDI, A.Md', 'edd554c3e51a284f30f306816ef326f46199b5abb02eae63de0deb4b74fe37482c0e0a002fb51028707c63020552c5b332956dd42437f3dd40ba9e83f04cea7dEHlWb+d8fvAQmyS1lEJzo+B17Vn9j78GBBB0rPrRZUY=', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 154, NULL, 1, '2023-03-06 09:27:18', 0, '0000-00-00 00:00:00'),
(39, '199309042015031001', 'HARI SAPRIYANTO, A.Md.K.L', 'c4a42134ed39fea2b32784363fdf7a0b911a076a72f778575f0163c3da3fdffb3ca41f824c484ebd03a519494ea7419efb101cea48ac5d8b98bd52bb36570d56L9/2GLCLWuWp7Kvzj9KKyIJLqgq6QyBa2YypYLSO+uGgJId04wOF88NACVJ/yzEm', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 158, NULL, 1, '2023-03-06 11:12:06', 0, '0000-00-00 00:00:00'),
(40, '198605062015031003', 'Gotti Martein A Batubara,AMK', '80001aee760ab5f8d68d98e680f6d3a3c496d0da3947fbbf8857f140133428622ed0c7489073f098e3f7a09df6996121d5a204ea06de86b8787cefbb1e9998b3ZfhyAzAVhxDWOfRu4vudHBkn0cnu22/nKVmvxo1WKOhyD4rN/7unTdZHy4N4ndNo', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 155, NULL, 1, '2023-03-06 11:24:16', 0, '0000-00-00 00:00:00'),
(41, '197202082006041015', 'SUROSO', '8dcf2609feee7f0bba33685927aed6cf99a921f0751f0b0cd6fd3e69a65d3a800c9d90a71576579f3f5f6c4696a150a8fb7ba832fedb566f87610766511320ebk7EpbCSv/CHxaUzHsUJxHNGbBHPJZ2CdbzAVU9Jpn12KssQkSRiuHfxpxJC7FYe8', 'surososasa@gmail.com', '0000-00-00 00:00:00', 1, '081364139403', NULL, NULL, 'layout_admin_vertical', 103, NULL, 1, '2023-03-06 11:59:35', 0, '0000-00-00 00:00:00'),
(42, '198603312011012004', 'Evita Widiyati, AMG', 'c4ee02987c0191bf6bf4e3ac686334af117a13ce8f4e63e101a997d359340cfdc08c71c3a6292d4c68c0cc517b656b773e7846478156064fe6317b27709df9b0v3fC7AgTk2rG1almWumm0qigxiT7kfEarxHL/YBpZr5vi7UIkST0ij4hZsoj5mDe', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 155, NULL, 1, '2023-03-06 12:08:28', 0, '0000-00-00 00:00:00'),
(43, '197412031998032003', 'Ermila Devi Zahra, S.Kep', '17bac26fd1a673e57222b38adc17365556d5cdf5e152ced806c39178e2559693faeacfe59e3ac0c0210d6ae94bc5b2d34e520d80bb5c29db69bd177b30fe90e1ex+DOJdtbDsfVerzekSLRskTe34ngUJQuJYweNnvHbL2qYtb4C6CnSonh7emODkh', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 155, NULL, 1, '2023-03-06 12:13:09', 0, '0000-00-00 00:00:00'),
(44, '198403092006041006', 'Fajar Riyadi S, A. Md.Kep', '69053eb5c4b4c838affaa9300380cc44f2c5c5abd12d5f4a7b5617527856af2c4b8ea2462e48adec116d9b32da7f51d29755f9beacbf52d12962cd50051dab85JaFmI0cyCyDr+ceHdn085tcc1x6mkLAq4aIAAuLCBXuSYYrIG7gR2NKx/xaxEyMM', 'fsaputro183@gmail.com', '0000-00-00 00:00:00', 1, '082283465776', NULL, NULL, 'layout_admin_vertical', 155, NULL, 1, '2023-03-06 13:30:04', 0, '0000-00-00 00:00:00'),
(45, '198310262006042012', 'SISKA, S.IP', 'f9931b33b5e37f938b88d1d88f89639f19d2835d4d03c8bdeb5016c313b567a4171c9bd2167fd8426494eb57ac06e34e2fa06f1e448e0c150c6a9881c767a796EKHjHUKAeXdtn2mRMkWKSx947sYPXszYJb3s+xt9iXp7Vqp6PPKz/Y6DleCXzawr', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 115, NULL, 1, '2023-03-06 14:44:25', 0, '0000-00-00 00:00:00'),
(46, '198504112015031002', 'Sunyoto Wahyu Utomo,AMK', '4df913cb4cb4d6190ec41d7f6b0e30a8287d3869029866b8231d5d71a6c501ec039fbe2b0f0f26a16d7401db8758106200afe11a5a15a32e868766159572e103Eeonye++JosTZohupHhD8zSPV8P1L5GjhG8ucY1H7x9cljVdjonudMG0mNOwi8Np', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 155, NULL, 1, '2023-03-06 16:00:31', 0, '0000-00-00 00:00:00'),
(47, '199212132016091001', 'IRFAN AFFANDI, S.STP', '849f598fbe01047765a2c397abf347922eb810d572f4c706dac832d5509bc5aae9b96b632b8c95aed368f9f6c3fe35589993308d2ef7954a98d6eb5d680c601bO/I5QD6C0IzRBpAH07C97MBWsndFhUM/0I/IDqn/0BU1fPqBKLMgnR6g60Vk+DGx', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 146, NULL, 1, '2023-03-07 08:55:03', 0, '0000-00-00 00:00:00'),
(48, '198311142009022006', 'Ika Mulyani, AMK', 'd76992c23a106a03ecc1c85b7f4877a37374fbf38f2dd749fd890ca583e40abfb0a927cb94246f99d3370bc9da3d04f9a883b017ffecb93ca66c06ece1ea0bd29RHLDAQuqBEeeE19OL++NBPQHieasS0y2RE9lprjEAuscFFiOzjtvWLZ2Uw5Bes0', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 155, NULL, 1, '2023-03-07 13:27:47', 0, '0000-00-00 00:00:00'),
(49, '360018', 'ANDI NURSAEDAH YUNITA', 'c914610263fa08aa9f8cf2f6593ff6c9ffa9c700d9118861616ed982ecacb33149aaa670c6d964aac7ca0d36fccb4f04d3eb7ead56775946811396efdf60096fV/fM4trg09YOe5nLcXV8Kz4LzWpAlnCZDk+fSs8mHdg=', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 136, NULL, 1, '2023-03-07 14:08:22', 0, '0000-00-00 00:00:00'),
(50, '199212302014041001', 'ADI SETYA, A.Md. KL', 'f1d091df716b5334b16c2a645dc314189e06da241e8afd7176cc4072b1a64a778c3943616ffdd0bf9554e4bd2d41767cb0dff35ab8e83868d4e3b5fea0938c23JUhlxDVa1mu3sdg4LT9tOQNDU9uzTvhp283RPtLW3U0NJ2dKWr07K3pVdt1KclJz', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 122, NULL, 1, '2023-03-07 15:26:37', 0, '0000-00-00 00:00:00'),
(51, '71910037', 'JONI ASMAN, S.Kom', '8726b75b30fb6f08dc05a54e5457c1dd88b5b07bd44ebc84c23e72371c127343451a00157adba5e8c3a1e28ad771f68bb9cfe7eee80c0a1aacf78c249bee23cd0d5kWOgetCd4qUnYCnNUd+/SunRBq3lNGofr/CET/WU=', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 121, NULL, 1, '2023-03-07 16:09:00', 0, '0000-00-00 00:00:00'),
(52, '197910102007011020', 'RICKI SUDOMO, S.H., M.H.', '9af540b57d0fd4e941547c56672990955da5d4b3b4f83eb853357f2260d895a9ee8188d55d50daaceab6be224cbcf9facb4d97909195cc3bfa63773e114e9076n+wqHH/WSX7UQclCc/5YTG5ljCqbnJ1pL+asqiwv2fyyuL9hz/gDdmPy+BZ30ugE', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 121, NULL, 1, '2023-03-07 16:09:56', 0, '0000-00-00 00:00:00'),
(53, '198306272009021006', 'WAN AHMAD NUZUL KURNIA, ST', '5ee4142dd3df894f5092dcecee98c98ef359fdcba988dd30cde59fd1e10bdc1f3ccf0f212c6c953c9fd65efbdcf8a056bd7d3a9736f2f3001e43f8d4609c554db2kMe9Sd5F4ZBgNTH+G0Tbc9dWfRtk14khpYufbbcZguaNxf036BcdIPDJgVYAty', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 124, NULL, 1, '2023-03-08 09:42:48', 0, '0000-00-00 00:00:00'),
(54, '198803022015031002', 'MOHAMMAD FARLY RIZKI, A.Md', '18580ad6e91503e68b5c156cb7df89dd6142fc2f174a2da1f8822b6545540524cc6ca9e2171f6008445251bedbb87475abbe6370a647d8ace4d18d76f425b0d3ErQaPcfLqWIV4SVP5kTd4FvM9kS0A9TrQHSh5nSHmk+LO9/MH35nclMwaiNKWKrn', '', '0000-00-00 00:00:00', 1, '081275038222', NULL, NULL, 'layout_admin_vertical', 106, NULL, 1, '2023-03-08 10:52:41', 1, '2026-08-31 08:43:21'),
(55, '199102012015032001', 'Farida Sri Rahayu,AMK', 'c018693fabfff0fd098c00259ad9b2877108d222daa9e0d3dad275d841ab3f983fb6c389795c55f5359870200aa684e8a37347cfcbd9318d1b181c5d480a6a6eChF+sERLt59SSek2kE0ssMen4m8ci8xaFX/y6Yjq7Ef/8WP3yH/BHc4QlBqG/k5X', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 155, NULL, 1, '2023-03-08 15:16:15', 0, '0000-00-00 00:00:00'),
(56, '197606112009022001', 'Rosniwati, SKM', '79b96e708b7980e11b0582a73d4449c44f1fdff2ba8e7c976fd41b7de0a6029b77b88817ece08f9cb05d950f5c2ff210e6c772d9711c1f0e3d120ab426fd1f1d+REphuHO3vkh5Jwy7ZcU6Yg8avvl4VMSCqNMMP79Xb9Tq8JHV7lMvNcdTrxuUq/z', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 155, NULL, 1, '2023-03-08 15:30:02', 0, '0000-00-00 00:00:00'),
(57, '197701292006041005', 'FIRDAUS', '89f3f745c45591e962cf51f5ec2b964a8954c9dc47393d906bd2add07bf947147c6e7eee8d5d5fbc5b096a24341b79b3562ab1a3c86f89dee315c85f8075f73eNNMpT0kQ7mRRoWZZXZiGDlmymh3lW+Gd9/2FQrrRBSB0nGe9VQguXEeDr6cXd8at', 'eifil.efhe@gmail.com', '0000-00-00 00:00:00', 1, '08126887687', 'resources/profile/asd_.jpg', 'n', 'layout_admin_vertical', 129, NULL, 1, '2023-03-09 10:06:05', 0, '0000-00-00 00:00:00'),
(58, '198709222006041003', 'M.BURKANEDI, S.Sos', 'a1a7f6e5d38aa2b89df6c067c03b4b631acdd4b8d40b3e7cb5c8b320040354d17a7bfb8ae4302c633f15d19c91163be475bf4fb9df0c69488750fe62a3652709o785HuB3rHaIvixjs1VTu0mS54reiS5fqrYC34t2T8a7QNVEb6g1GQkrgtYGcShP', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 129, NULL, 1, '2023-03-09 10:13:55', 0, '0000-00-00 00:00:00'),
(59, '199109212015032004', 'Ayu Jery Yani Saputri. AMK', 'e51eea51e5d5b7783143f44032b5349a9ca0b3a90d97c8e64daa3104aea134475750b30a137110faee0e4a8da015ffae88ff3363a9a3261634ce717027a83be45GUcOSBvw0GE7dGIt1VkdUrvB9kS4ZnIm8BYpWWMqN4sewjPxRqvT+A2FUfP9QKN', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 156, NULL, 1, '2023-03-09 10:51:44', 0, '0000-00-00 00:00:00'),
(60, '197705212014062005', 'IKA MEIYANA JUWITAWATI, S.E', 'c27b62ace8ca4a905a6e32a4a95dc8bbaf211277f7270bdedcc9d83e69b82e3021493d81c31d10e5856c79dcf4fcbd9dffa1dba7482a682a72b5308eadc1e826K85IG06alMR5rqcfiMtsX6dq3c+ccVqPy0oxLlCIXww+wUK9LtO9Etp5ir3QYwPh', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 152, NULL, 1, '2023-03-09 12:42:48', 0, '0000-00-00 00:00:00'),
(61, '198410082006041007', 'HARTONO, S.T', 'cc5ce304ba2e9280eba4582c4dade36422d93bc67ad0f4b1351427d4a574bed12f58677a0e7f6344f09f302354830438902c7fabc48d194476932a5b57a04e2137CWOvKo62Cxm4IQ/ZFdb5hEJ78l5vDFTMqtfblN697YDZ70XZvWEdCmWMmgKHg8', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 138, NULL, 1, '2023-03-09 20:25:48', 0, '0000-00-00 00:00:00'),
(62, '198510072015032003', 'Yustina Susilowati,Amd', '6c8d511cfa327855d6965359cc84799a87b80a83c5a2759acc0bb262d373a6c8ccd0ca13957f3dcf5ae93e03da34ede1e8a6e1204c8bf83539fe861617d5796aT0jZUmnopZQsX8XUAC0cs6L7yPLsmxuvkh+0VXqMhY1POnp6fnqqPaQwuWHnkk+1', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 155, NULL, 1, '2023-03-10 08:21:31', 0, '0000-00-00 00:00:00'),
(63, '60056', 'FERY ADITIA', 'af0e0cf93757c46c680a9918661c15b7cf98ab196e4a0a4b0ee15f5ce1562c55922b09ade82be20322d92cfa2f4c453560b5866859f9065815b269354ad223cdj69yH68iph4fpg5aZcvzJyqbHWh9uy4wVOMgGr4mUEc=', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 106, NULL, 1, '2023-03-10 09:35:11', 0, '0000-00-00 00:00:00'),
(64, '199001232015032001', 'Rika Jayanti, S.Farm, Apt', 'cef1ae588f87275cc4a2fb39aea8253c435d46d26db8cb99304b8f7cb390d11f0cb59d222fae78aa9908cc7170f8ed8871c6c529efddbdbdac46d6d4cfd622b0ucs4oPoFDA2QbGEkQAWaQ3gHdKkfr2FE2TXi7fNNItQifODMGqGTJZmbm+SRvJc0', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 155, NULL, 1, '2023-03-10 10:44:19', 0, '0000-00-00 00:00:00'),
(65, '198202242010012006', 'ROZALITA, S. Kep., Ners', 'd89c3f3856262b2dbed1d7d11036d1337b9a9c6dcbc305420b5fc318566942e763db0e3859d81e4db87d6351492d3e28f8424690625fe3a0ba2674954cafa31djTw6MKLxE1YlVoHUm1xpb1zQIRwQNlsgLaeeO7qSoCSXtOifyfZnoQ3WkzHgThBM', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 157, NULL, 1, '2023-03-10 12:06:14', 0, '0000-00-00 00:00:00'),
(66, '198112272006042011', 'Efika A. md. Kep', '96ee34dfe1645106a25d6e9b0ef1319d33a1db2e9b702ddc04c9d5ab4b969716c56ab8bc8a7e06036e583c2e4133cef995ae558461543a7a9c71fad8b1c361d1oUFJTAf1jkFDYoS+eGjyXD+RKpKxlL09ufLSZMdDHd4xuXqkUgv2ApLXlLdONdq9', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 155, NULL, 1, '2023-03-10 12:49:54', 0, '0000-00-00 00:00:00'),
(67, '199511132022021002', 'MUHAMAD NOPIRMANSYAH, S.T.', '7fd8a0955275f551cafffec7ad6b5f84c3bd830297fbd600016d1359b2f0892d5e3b138c98e9ac69d4edad7643e1520cee76f29e32a3f149a6fab5f53d64b161dqR9xKmsxOuDtGtuKiXb9x2RqUdyqBHhMDGMj8XXe0ZLzcNzh04ef+EwX6NCiGQY', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 125, NULL, 1, '2023-03-10 13:36:23', 11, '2026-06-10 14:09:24'),
(68, '199405052019022007', 'RIKA SUSINTA, A.Md.Keb', '700731f161ab79300b6c546143e0b7ef32796c01350bc2046a40df6195d613cdeb986280a865f0e97d19dfccafcf83af21fd457b3f8fa6e1e51982b144903f67byEaUK8eC0nBy3W1KN6410dzqQn1xlg/tqUDcGIQAkx6vZ6n+spseJ8CEytNnySq', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 152, NULL, 1, '2023-03-10 14:58:09', 0, '0000-00-00 00:00:00'),
(69, '198308292008011008', 'MUHAMMAD RIVAI,S.Sos', '7c2e8e89f49c23f0b0e2f634118dce1c3aaffac7fcd2192266e05d9016447a215c3ff936f71806c9f2737e6bc7677ab47d28b65e9eff6de5f7b8060a529c55aa3XDGZE4MSSMEWXMGwglJkJxwrrAmaQKPix2cO1DNZmslNuJMUEiDK7yEOi0xx0bY', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 106, NULL, 1, '2023-03-13 09:18:41', 0, '0000-00-00 00:00:00'),
(70, '198712192006041002', 'ERWANDA PRATAMA SABRI, S.Pi', 'a0b9c368bd2688945fc47e21cb0a36300962a9fac18938a3e8b2c1478271f8fb6028c271f79a77c8fd15ec031f33e6d09c44beb86682ce5d6d2e6499d390d86eivxRmPQE24HxOXYOBAw1HPy7ppqDpDtLYGIMbpohYomnfkW+xIfYrTMNR60SeLBL', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 114, NULL, 1, '2023-03-13 09:54:02', 0, '0000-00-00 00:00:00'),
(71, '196911032008012014', 'AIDA FARIDA, S.Sos', 'c1c9bdfa7791fcc030a1c362cd067f25729b47e77e653248e5db921ee5a0d293076d9908d0133775c28f5e7201f65f7f03cab38a3ff90f5a918d3422ef600bc4ni7i0A6Ufii1GyPGlIa9eRO2W08dGWxOgG6szOCPHHe3atzdqd09fjyAgAzYSyDD', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 114, NULL, 1, '2023-03-13 09:54:36', 0, '0000-00-00 00:00:00'),
(72, '198410152010011016', 'ISHAK, S.Sos', '20c37880a95b74b012b456aff8b09f4a51f9e340e776298f5fb86b5bae45aec561ebd688407541477b3f70dd12c26c060f506a822fceb5d407fce02e93700c9eLbpvoSG8mP9nRSDXuPNZIiAhSmQwatF8sL8DOic1gQggX4936DbpLGz3aoy6ENhz', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 110, NULL, 1, '2023-03-13 10:37:23', 0, '0000-00-00 00:00:00'),
(73, '198811092010012002', 'NOVIATUN BARROTUT TAQIYAH, AMK', 'e7dcb6e2f9ac9125554df222b3c617cb4829611b9cedd749d7c3a37885fba1441b939a1f66d082e6581ff175809c768508d66f3c24432acd8c0c9b0a65af5f8fCb9lhIdUgmWJ9ZXBkAVL3ly+/tHAYntVMzJ/1DEsaty6ccLyO1qTungZWJe+IAId', 'noviatun091188@gmail.com', '0000-00-00 00:00:00', 1, '081371950980', NULL, NULL, 'layout_admin_vertical', 157, NULL, 1, '2023-03-13 15:38:39', 0, '0000-00-00 00:00:00'),
(74, '198410212014042001', 'windharabil@gmail.com', '95af5c7a1508800ce9ccbf76db9fc3065bde535cd912f64453d10efa2ea27b055a30ba17dbbb905ea1ae05a2046ff87ef46397c6bbd8012219a749e296fc5539EZvP/e6gs9Nb5U8BzeDWdlINfIrZyIHE8YMWCeVG+MDOtwJ+UZMiuGvC70kIyGa5', 'windharabil@gmail.com', '0000-00-00 00:00:00', 1, 'windharabil@gmail.co', NULL, NULL, 'layout_admin_vertical', 157, NULL, 1, '2023-03-13 15:40:40', 0, '0000-00-00 00:00:00'),
(75, '199107142015032001', 'ZAHROTUL AZIZA, AMK', '152d3992a569e5185acdf762f0174a04ac8146ea46a092179fdc59a6dedf75b2f65740821b51f7f11fa4da7500e9d1048ab310f637b919f02ad0890e9473c61crimmbCGrOtzrXajgIwWXY6orqIS5a+4tN76MXO0Hd0hjK1scqgDCDZXkb/RbLS8l', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 157, NULL, 1, '2023-03-13 15:41:45', 0, '0000-00-00 00:00:00'),
(76, '198406172009042003', 'dr. FITRIA KEMALASARI', 'e06d68e3de91b86bfaecbcfb6237abfbd752cd8cf299e4f2f0c22fa9599214ea55da694f7a7cd3b7ac768e33bfcf98b40073fde681cabbf4590a1adbeb30a833YKoT8opSi0D0I2Z0+LovnVTV4D2dE1llNI3yZqUy7Z/f1Q7ZGgOPJMOai8lLhq02', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 157, NULL, 1, '2023-03-13 15:42:37', 0, '0000-00-00 00:00:00'),
(77, '198512272010012004', 'MAULIDA SYLVAVIANI NURULLOH, A.Md.Gizi', '6b88a848c4d5bb383d5a2302c508bfa8a7dcf489abf543c274e3315adb30e0ebdd9dd040c6fa97cc8ec11734bb678c97100828f2f6d4e07e69e3494db88455ca7hUrfHvDp1YI3F+CiY8p9noWNOaWqi4tUigqTR2CTd0PaA+ETo0SD7VKHF9m0zV6', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 157, NULL, 1, '2023-03-13 15:44:37', 0, '0000-00-00 00:00:00'),
(78, '197603271996032002', 'YUNIARSIH, AMK', '47333e121b2ed6e785bd7629996598c01e61c5cf51b910e3fddde4338951b17f3dfc5186c2da7baf001cb7cb35f93fbb14abb3e85d691a70a72ac311abd53b2f7O3edo3Tbqqrmx8WgJ3KZBUJKn1i/umJUEskaDhdqMF+at74vNLi+a/q7Eoitkpm', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 157, NULL, 1, '2023-03-13 15:54:26', 0, '0000-00-00 00:00:00'),
(79, '198409022015032001', 'NENI SEPTIANI, AMK', 'd08aea3bc896f62ab079a2ab2e9a29d539c2ed9c9a4eb7aefa6f990d3180f1f7f6a979ca9fa6847ca7edce2356563ac43f756ada367f8ed409127eec942d0e0fKCxtEkBPX09q3E/9S9eLPXzkX6y71Ac/zdspAKGYwLuMC8cj1TyyxsxpzaE+3j/i', 'neniseptiani312@gmail.com', '0000-00-00 00:00:00', 1, '08117008851', NULL, NULL, 'layout_admin_vertical', 157, NULL, 1, '2023-03-13 15:54:55', 0, '0000-00-00 00:00:00'),
(80, '198106292006042006', 'RINA FRIYULI, S.Kep', 'd522f9282e80ca228dae1b01b6f236ea4ec434ce600f7aa240b740d8e48fb0a7b5e4927104c991101585d116d88636a064ed78665831fda80659f2ff97ea1764SfdwDfQUQCvXHiVpxZsvYHRJWT8OABVd3SQNzV9ae3WsA2g19yLPzaBCqXM4zWwj', 'rinafriyuli@yahoo.co.id', '0000-00-00 00:00:00', 1, '081277272620', 'resources/profile/FOTO_RINA_FRIYULI.jpeg', 'n', 'layout_admin_vertical', 157, NULL, 1, '2023-03-13 15:58:25', 0, '0000-00-00 00:00:00'),
(81, '198712032010012004', 'ANDI NURCAHAYA, S.KL', '63f4e2e143f6be602c3a4b2549c784a62d0db06b8d625fb4e37c4b630655aef61d2071263da31427acb80c4f5ba6567fa10052fc7a23b26b27b1181e4b45bd0dhygFPfDpFWw0NW5e686uObDNLnFFM5j6+NuPYnhU6ou/vpkeaHikmiCi9C/dI6Y0', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 157, NULL, 1, '2023-03-13 16:41:17', 0, '0000-00-00 00:00:00'),
(82, '199602172022022002', 'apt. FARADIBA FASIHA, S.Farm', '9d029f019326dc96166f9a4a892e7600a485cf2b619c2d6ab40119bf63e9d3c8c67d3afd2e6095838b4ef74178bc6cf4d4cca7129dbc9ce81886153abeca96805b/01NApfXT6REGcFid7oD/IbLKilZfKnIbilQ2epueOzFFjvQ4V/ymO1rGP4Nz1', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 157, NULL, 1, '2023-03-13 16:58:57', 0, '0000-00-00 00:00:00'),
(83, '197104211991012002', 'R. SRI RAHAYU KARTINI, A.Md.Keb', 'facff763bf61c48950b12447fbd7b5d80d9b508a749ad79a65a6a42898d9e4282615c53fa594fa6174b6263f545dfa9ce7cd48a7b2dc637e5fbe72d7d9f7505dtcKYW3ZTij7BpJiX6GjdT1d2lFaX1NDT8lssFIAi/XDwXGo1k9N0XUPnn95UUBMI', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 157, NULL, 1, '2023-03-14 08:13:07', 0, '0000-00-00 00:00:00'),
(84, '1230063', 'MUHAMMAD ISRIYANDI', '68b1fe3f32f78c8b00a421717b824794694dd5ced5b915e15f799c5e6c15e17cc00622668a7d94a6834cd71487f590cec8310897e3418ed9f3bd860a4fcf5643QqK0ziR9N69MjmnrUMzfsttVq8G5xd8Nm3ggTKxh2cI=', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 123, NULL, 1, '2023-03-14 09:18:18', 0, '0000-00-00 00:00:00'),
(85, '198603242010012010', 'RINA MUSTIKA, A.Md.Keb.', '2840fc3a9de4c1a62479ae8e1360dfff639236d614f74405d514dd04f685fc9009ce15d5ed2a63175cba741b6ffdfac7d67d5a9fca4bbddd502130aaff51003f7gCZAoWxqV3bgZuh9h9dhacoutFWwFDq+nEAciVCMutBgiSuoP8aRmR8xfJZJ5+U', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 157, NULL, 1, '2023-03-14 11:43:17', 0, '0000-00-00 00:00:00'),
(86, '198205202005022005', 'DWI CAHYANI MISRININGSIH, S.KKK', '458ec565a4db74717a2fe17ed1dc94e3a86662c35099f792e9f12f9549630a7087afaa83b6b8b5d7890a209b8dcbfd9dbacb52a2bee66938cbda290fa5de9011fA0oqfZ0tfaAJ+zjFNvkDfxxn66eEUTboU3GwzJewRqqenJUW72NzV2dP1AbjAfx', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 157, NULL, 1, '2023-03-14 11:51:44', 0, '0000-00-00 00:00:00'),
(87, '197804302000122003', 'AL ATIKA, AMK', 'c73834d0132f8a68efab817c7dbaf32895598916a942e5ae1da89b8fe5443d7d26213054a8ca536e5806172712506029a17687f2c19ff7043a8db5fee42f1138muLOup8unkhguJ599N+THs18s6h+bELjsGU/W9aK0vu/XDQ/YhS0jel1fanKSkcD', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 157, NULL, 1, '2023-03-14 12:39:17', 0, '0000-00-00 00:00:00'),
(88, '198202042006041010', 'DANI IMADUDDIN, SKM', 'f59b3af18fba6e900d411e28c1cc317393725705fdccfd863b2a02b71a50fb79f647bb7d7d3e4976f3e8f0935eabe8245f562951c6a408e43ea1c04b402ca557CMOQu4iDFR634mMEWF0WD2mn3adxOveCybXgj/eEoU4n71FTgQ2mivKX+4Sl3L5v', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 157, NULL, 1, '2023-03-14 13:40:09', 0, '0000-00-00 00:00:00'),
(89, '199003142015032002', 'MOZA MUSMIRETNY, A.Md.Keb', '585a6c85a864d5ad147c3546b6332e310f5f059ebbe0d1b049f6c69674bc2f31cb4401575834602c67e8ec774af51ea260b05fcb2b8de2327d4e91a917d8eb0e3DfDwOfGHL4ni9KtFuUmsbpVUzy9GDpEJ3FNNtZMcLouvNJ9nT3F5qyN3sZn8HbM', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 157, NULL, 1, '2023-03-14 14:45:47', 0, '0000-00-00 00:00:00'),
(90, '198308162003122004', 'VERA NOVITA, S.Sos', '4bfff3559b8621c6c6b02e54f9f09a49844b919840dc51483689f5212abc3c332c176a63eda7ee13caf6eedb172f8a74d3642af5b15404809c7d18baabe676d3j4WqQz3WA/TzMj6m6p9wFkQU97XWYFYFNoOzk5H9zGmbewCglun/a813gl7DNEyO', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 132, NULL, 1, '2023-03-14 14:57:06', 0, '0000-00-00 00:00:00'),
(91, '197908182003122009', 'MARINI, S.Kep., Ners', '209bb4c079c026ab3d8d2b3859b1ceda4e64255ab1ddc9731427925868b7519413a9201c401e632e4f403c05b39f137e35c869793214aadecdb88b9b0290482afbBAkVbkyRlg2ijpiWThRyG6h2EbfNPPlE26oAnC5e09V9/UF+Nm2IEJPGp0H//k', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 157, NULL, 1, '2023-03-14 15:17:04', 0, '0000-00-00 00:00:00'),
(92, '198706272010012004', 'MYSA ISTI WAHYUNI, S.KL', '4778703b4fc844b1ebdaffd16682135e97b356baa3e18595f4c080673b9cd7ac40bcedfd11198d182fc1ce0339e52ca41db3035fd8848e1b9321bc17d68626faLT8OMzyHWUCq9EejSFPXLmZ2vrxS56Nv/Mk95u+JbCm10HDCx86I6alC3DE/LC69', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 157, NULL, 1, '2023-03-14 16:17:08', 0, '0000-00-00 00:00:00'),
(93, '197510042005022004', 'Henny Marlinda, S.KKK', 'ade23c6ad6f5228c4442388c3638d4feeddeacd4de3fd6b739a7655fb58011b1d404d3976e4feaf4c169ae4c829cba0fbb2e1e0c777e6e761acf86b141114d27rOxo02Zpep4YcctBeHD5tJwZVOz56WEL/cumdxoc8Zu1ZwKwKfmVZXHHRDtIjJGB', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 156, NULL, 1, '2023-03-15 08:42:09', 0, '0000-00-00 00:00:00'),
(94, '198503282010012006', 'RIRIN MARIANA, S.Sos', '1c1a2dd68d0898dfdb7d270d146d9c986b94c014a9eac61d9498f67b376f5d7c0551be0c13bad1ca13d219324bce78855e933a8ec14714ab4b552f42e1965affhOXf09whC4c5l5Y8yDejV3qyWpHJoXJvwgviF+DxnGLUmkAgP1SC9RsJLuesBVLo', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 113, NULL, 1, '2023-03-15 10:14:46', 0, '0000-00-00 00:00:00'),
(95, '198410032015032003', 'NURMALASARI, S.Psi', '669bd4907ee3cdcc89f41b055ee92c4d068f324a1dca1ef9742c9648e9471f7037f05c48b8493c8b1fe39885d913dae62e56530dcbdb27e14dace9f1fe51f695UA6ubLoTALZyWUmdW6ezkzxla/NchS5dCQUF/YcxfVvEzW3Vc5RbaDVlzIk/4hxg', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 105, NULL, 1, '2023-03-15 15:27:15', 0, '0000-00-00 00:00:00'),
(96, '31212403', 'ISKANDAR, SE', '1f374649cca88c7451cd3d28726c285db4e3c76bf6d83869e52fd39a64062532a7afafd4b6499f1d6850d7e263aa011497ff46de97a6c03f658d6a038211d64dngHHoorjasPfTG9obEbpsqoTtUlptPhFga3W8FtPYkQ=', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 135, NULL, 1, '2023-04-11 08:15:01', 0, '0000-00-00 00:00:00'),
(97, '198607042022021001', 'JUNAIDI, S.Si', 'fcb7a6e1b420616a0f3424e1406a67eda60f19156dc54d22df2a4ad777e116de31689e61aebc4d7c51634961d0dc584f2db0eea67f6bd96177056de07adbcf00ClhwTi/GGP8flBtV7A9kWAb6ZJc+MSzq0eju4MOBSqvlCWbu9Dh/Tt6GbSLC35nt', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 125, NULL, 1, '2023-06-19 11:26:55', 1, '2026-08-19 08:48:34'),
(98, '198111062006041017', 'SUWANDI, S.AP', '55e3541c408eb9228cebad4a2a68ba719920e5ad573768bdc57f14ff930a8c88efd66e0a50780695384ed52404d9b215cfce4db3f49e576aa8b26eb4ea524de4CMRRSUct7LOvOtDgtwm+6IODZppzJo65UGq/bNuueBEUMGbtfbjJivbYW6F+8Yp0', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 117, NULL, 1, '2023-06-21 11:21:20', 0, '0000-00-00 00:00:00'),
(99, '1220112', 'NOFRI HENGKI PUTRA', '63c6a033d034f103c4205287cee6408dfc5ddc94bbc5315508868eda6e02f800ec44fde7bf83a46b9f3e91f007c866087af4312e92c31d7dd46774307177f2aa+pcSoI1hjnbNvvC8boX+2Hm7KwPaiEKGSD48WxCjVu4=', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 122, NULL, 1, '2023-09-04 12:36:50', 0, '0000-00-00 00:00:00'),
(100, '197902022007011018', 'YUDI KURNIAWAN, S.AP', '77491bc98621a33dbd702cdd2434d951633e5cb198043f67334d135a30b949fb5ce5bcdcb16298750ecbbb9aff4355488361f35006b6843c533e890d8b256b56RBScj7RuP/ubffB0bSZuhIgKI3J5QIGEb/jCoUvB00byz0/E3X3qKiyc4+lJBnZd', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 122, NULL, 1, '2023-09-04 12:51:14', 0, '0000-00-00 00:00:00'),
(101, '197911182006042004', 'RIRIN NOVIANA, S.SI., M.M', 'ec7c3d8707705a43d7195a8aa35bbce07bf5a8c04ce38508e8e3a114a3ddaf53d84c559e1b0e907ab8e6e7981087720bf1b78f64f21d056ddb0575fa750308efbEELiaFKyDt839cPX2XfhoQmjoyF3+o9CZTCJ+NBdccGHX0qazTCfTw4KIR6smQ9', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 125, NULL, 1, '2024-01-25 09:23:36', 0, '0000-00-00 00:00:00'),
(102, '198908172020122003', 'MUTIA FITRI MARLINA, A.Md', '02c9c4778a679eb251a9639da84a62f855238067458abe71e2f99acf02b13fc6d6c6c112319b213596d0671a82c83971881b6859a44cb75354dbf96db7b885d7SR9ii3yfM5Dti1IcYDvcFhwUCFNhOVtIDOOi+YVNUbtpCKE57MlKmc1QLOkkU7Gm', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 138, NULL, 1, '2024-03-26 14:06:27', 0, '0000-00-00 00:00:00'),
(103, '260054', 'ADI PRASETYO, S.E', '69735b374a6656f5451d6b0772770b232197db22687f2b37a4b6e43125b65bd2ab18ac1e5b1ada137c729490bc90a74f41605da9666f876d626f2db75fe688a0lGzoLQEZB5p2kDfFa01GTQ0IAubjhDx5Nh26RjGZSYg=', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 126, NULL, 1, '2024-03-26 15:19:05', 0, '0000-00-00 00:00:00'),
(104, '197506122006041011', 'JHON AROVACH, SE', '4961dfcf53b3cbba8dae2a03f288f4041b677238d6ea87ef9dfbadf2971b806ef98fa44534eb8944c8c15d7ad046acf273728c4af35a8952f92e8cad74bfa250vaxj3YjPwKW7ylxu6C76Z6NqyoTdCcobf55zyIzImVHkAUWZb0/COy0/pe7aHu38', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 129, NULL, 1, '2024-03-27 08:39:38', 0, '0000-00-00 00:00:00'),
(105, '198907182023212046', 'DIANA NINGSIH, S.AP', 'a661b1b98545137c33cf2ee432bcfe66ec5cc8500b84ed8ca6843488dbc85e9913595af0f473dcbd23631fcf60ff3122ec3c2039ca9021ec2d22912ac45a95b0KrHfNDIx/zY8ND8zZpv987nkjxriCJOIaGv9SF/Jy6Yy42E1gSzadtKVjbDkOFeS', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 129, NULL, 1, '2024-03-27 08:42:38', 0, '0000-00-00 00:00:00'),
(106, '198403042011011003', 'AL IMRON, SST. Par', 'b588f24df326ce464e92a32078d3bc375d0d20a41b297bb2973bbfbd1fc19eece7639c2ce36da470820eb2494e390d804afc433e2fac3d6859b70e361ce71f2cqC/cJYlBWRrZ6RHi8uHJdMgQM8WGff0bcNzQNqMyJiezUUkhIkuxsBsr5dYlDp88', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 142, NULL, 1, '2024-03-27 10:27:37', 0, '0000-00-00 00:00:00'),
(107, '30059', 'Silvia Erika Candra, S.Kom', 'dd9d9916d4f4c03e25c1f198c1bed26e5a39a9e1fa182151abbcb7037698312af0c1619b96e749c857aeea410afcd8d87c6d4a99fe991f310db07b17b7b27fdfMAUBLT8Zh7bcywgMwNjRuMRCR4hcTXk0oMW1ziJdORg=', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 103, NULL, 1, '2024-03-28 08:36:33', 0, '0000-00-00 00:00:00'),
(108, '198609162010012017', 'SINTIA DEWI, ST', 'fabe8be325954f05ad8cb053a8844d32d59ef80e01a1500ed5091f987e2c7595e2809212ea8c5bef76328ed0d5bdafe00c1eca1c0a57d71a5e1d6002eca59825qT7WW2p5ICq9ASIZh95EhcdnB6W9oxKaO5TDNOgwl81z6Nwb7EtQp8X8Ot/2V99F', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 124, NULL, 1, '2024-03-28 10:07:34', 0, '0000-00-00 00:00:00'),
(109, '170090', 'SAMSUL SYAHPUTRA MANURUNG', 'a0fbdbb7aa843f6da8e62667a07bdf28306d09eb84118cfc96be4cd98fe771923fbbe8c85a8a8f19832ad5b5532c048878c6393c9c11afdaa50c3516608a85c2dFybe0AhzEiZ6RiIzdc+6lSeFBOEYXSFUQCA3SSDkNM=', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 117, NULL, 1, '2024-03-28 15:02:04', 0, '0000-00-00 00:00:00'),
(110, '197610102010012001', 'RIKA FITRIANI, S.E', '7b1fe528a9273bf5597988fbfa1175b4292826243001f02d9a40552b21d88c86673205547556d0a4b6c00d94bdac7778bda7cf6c1f3367150b84c674d15f56589asBaZt+ciIlrQZSMoGHwsWT4Ytu/l9li4kexFrXKa1Q5QOqLaFb/ejrNnE7ArLQ', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 119, NULL, 1, '2024-04-02 10:02:46', 0, '0000-00-00 00:00:00'),
(111, '197704132007011016', 'SYAPRIL, S. Sos', 'bd627f0df89fd0356e3cf872a3a878c20a9984814f2ff4dffdd22f4f2700af1a600dfc79588e77f0c1fbbf8a6f974b894370a956197866ad2ce15d1f958d05eeCJdEQ1o/+NFIjXBqw1ImYewGsxxhTVlPaSXPjbW2QtdRz9MGiM9Lo/x1gyIen9iP', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 119, NULL, 1, '2024-04-02 10:10:19', 0, '0000-00-00 00:00:00'),
(112, '197811202006041012', 'MOUZAR AGUSTAMAR, ST, M.Si', '7dbf88c525322b7e975e9616c4b6d2fed62bd31744c28a58deb9d241ed746c2b97c6f0401f57b64a10cc6d65afdaeb390b34696ed24e145622c01ef6076db297DhiGJifT7/idFZz9vy6JYkHWphziCXnHhiyqow321RtQoGw8IHBIyIizsIj6yQC6', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 105, NULL, 1, '2024-04-02 13:52:39', 0, '0000-00-00 00:00:00'),
(113, '198007042003122011', 'MARTINI, S.Sos', '77e1c72a16812988e861c56de0f889151475d49a548a162a1ba5c7758d49c64b7fa7cb478a36a86a79afe973cbf0b66e4685c1a6b4942463304b7a0d31d9bf537IjVhx35ixHCE9RkeCPeFs+gIfpOlFWLwMWJo7hVEqGzea6nAvRYwugz4nJ3HiLc', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 118, NULL, 1, '2024-04-22 12:48:48', 0, '0000-00-00 00:00:00'),
(114, '197808192006041009', 'RANOL, S.IP', '2dfcea4d8838515cef309a691704003c97a2416d95b3077447677eb8559cff0c0d45444056c451617e26e854b404c5902d290baf993f7ffb0403718a1eb52063wSe8qrPUDHtrAe4zwRPyCoxfkDehBlO31imx38JnHSr/mIRqVvQwJ2oP+nlhaMLm', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 123, NULL, 1, '2024-05-21 11:13:59', 0, '0000-00-00 00:00:00'),
(115, '199502152024212004', 'EKA SUSANTI, S.Kom.', '7f7747ffe531479688ed336179f4e3ab2dd6da101033789d55f871d63116c59e81b84e66834187470e51367de16b01e15a0cd0f72aa50228a7a79a7ca4d54355Z6q5rwv7G5isxCjV5AhFRqPS0pz9Fc3yWmgQtJUKtWFczwx2KrnbyApun9ln1RTq', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 125, NULL, 1, '2024-07-26 11:43:27', 11, '2024-07-26 11:43:57'),
(116, '197807262010011007', 'YULIARDI', '006bfb883af645ea3875344e54baf0a2c9b479bdc9ed215b2061da0be0480d0b2ee31f0b5f5bc44d811d8ae5bbdaebfa9f97279adcd872bfe1934e85e6382d0f7Zq94l03TT2ty9jA2KW6tmjsZF1n12eqBWAJ7eQM5G5TD+BsjKkfzUBYRv3IWWts', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 112, NULL, 1, '2024-09-11 13:30:34', 0, '0000-00-00 00:00:00'),
(117, '198311082002122001', 'NOVI PERDANA WARI, SSTP', '5103840e389d80d5a86893018a52e56af309c3f88e832c4b89cb91907352aee218c5977a047131ac5a7fb4cd86cdb7916284460bd26560ee3b7ceafd06befcf9NeWPB8AD4sow3sQmFyC+PANQp+kJM439KZAUIHxZzzvo913iBzB2+TU09a3w2HHa', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 112, NULL, 1, '2024-09-11 13:32:05', 0, '0000-00-00 00:00:00'),
(118, '197908142010012006', 'SARTIKA DEWI SASNITA, S.Kom, M.AP', 'cbb93e29b174cf8b862abdb60907e6edd74e5d7c2eb68bf55956617fc045dd7e9f12235ce5f68f365651ac5b81309cf41b5252cdf9f6720e6cd808025c107cc3rewTV+3B4TEB1GiKkCBZ3TMQj9jFi9cBJQ3KrmCLrBtmbfVINm+TClqiTejLvKPJ', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 104, NULL, 1, '2024-11-12 14:35:37', 0, '0000-00-00 00:00:00'),
(119, '199101162015032003', 'RILA RAMLI YETRI, S.Akun', 'cf0a1aeef329b6e99fc7536a9293d076e1fe66530f5d5c4c14475b88256ae0e085ba52ac7c0c2c5a2c9228d40591fd043e7a0744ace195880d871309e62f1c6eUarwDaq2ZmiQUffX595nPWQ8OUEsRtpyuJROG2EZTlNHDEax/shS9ieJqT7JRW7l', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 145, NULL, 1, '2025-02-13 14:06:23', 0, '0000-00-00 00:00:00'),
(120, '198611222009022005', 'NOLA NOVIANTI, S.Kep, M.M', 'b2feda476857b7110ce28ee2058d677feacd59888914fe0f5729c70ad1566313492e74bdc9714a2a1eed11b9531ec10b87eeecf7304b5765184ca9333ebb4eebHlvVd4KXjTI+VuWNS1Q/eFvVSeAOxrh43lsjX79P9W3ehjQ5VNbkdvvIVgZqojoB', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 158, NULL, 1, '2025-02-13 15:47:36', 0, '0000-00-00 00:00:00'),
(121, '60075', 'DIMAS RIDHO SURYANANDA', 'b3d0e329c5d0b4e00af92d464bbdddf3cf99d0dc583d3fa1194dc696b3e265a2ca5c765e8fcb7c993a227bfa22476b57ebce2fbdcb5d73eace35b65f361836b77MpWBbrWe+EhLFNsJRBLg9EX6H52M++9VQiyKvhybRo=', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 106, NULL, 1, '2025-02-14 07:54:18', 0, '0000-00-00 00:00:00'),
(122, '197703172024211001', 'AYI MURZADI, A.Md', 'f4243e4b3acf56b8eec3452d7c796468fc98761e5917933ff2a3b0c3355de5483ede807c1065db2f449cd89608df430c228a3bf72a028d5689fbad0beca2ed6fHbeFghHW5R1xs95W8uEaFSYOQqJYSDqjcoc8Cp9uSposRuWlnGu2G+r+NeGIJkbJ', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 115, NULL, 1, '2025-02-14 10:36:47', 0, '0000-00-00 00:00:00'),
(123, '197806092009021003', 'SULISTIYONO, SE', '056d7cdd1344e1377591e92d5ef3d2ab744f89a08e0db12500e811e78363bf02f4692bc0cd526208da710c04e4bd33c6895c9296e6cf2e0b26fa93ea6f2d2d56sGi1x3bBGw7jO2hcyL1jCOLMZU14uPk8lcXKC1P8oVislQr1B2vt/EDJEIANYtBZ', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 114, NULL, 1, '2025-02-14 13:37:14', 0, '0000-00-00 00:00:00'),
(124, '196805132000032002', 'Dr. MEITYA YULIANTY, S.S, MT', '2f86ce18fbeaf01244df1e93826f5b3b69070e99392b5f47aa5d433128b9ab4bff39c813e10f2cba09f2ae331d4543cbd8175b9cf2190e32cb3bb1d4822975c07FNmi/dgUoUIMQi1M3IXZlaakxGGj3ZvMPvxCyXEPj/Ode9bNrXxKKBiiGwkoKS/', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 126, NULL, 1, '2025-02-14 14:55:20', 0, '0000-00-00 00:00:00'),
(125, '198705182009022005', 'MEGAWATI RAMADHANI FAUZI, S.Tr.Keb', '5baae0b4040ec7d70c246e19900797d6b5d9a28783d295d61e45eeb6643d0793f942edfd1a9e82342e5c677b4118ae030ae8a7de1edde7da87a16a6ec8f8e32eAWTyQSlCksVUsQuNfKanZciMaUryMqyTI6pBbgw1Pk1Vh4aj7LW1Pi1L7xhpTqW6', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 158, NULL, 1, '2025-02-17 08:52:29', 0, '0000-00-00 00:00:00'),
(126, '197608052003122009', 'R. LEILA MUTIA, S.K.M', '52720ea830c9de1050af49dd3aba6ef0d71e142de7c03b2fbd6e1c4a033b08fb6ef510dd73ec381fd8f00940c78c5f2236d7ee05c5e0d6d60741226f5a22bb74A58mn5OnPSLwZR8dXHjG2w8UGPs6tnpXwrCkmHIsJv87AvinwsLz3TYZ8Mni31G6', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 111, NULL, 1, '2025-02-17 10:44:54', 0, '0000-00-00 00:00:00'),
(127, '198210232015032002', 'KRISTINA OCTAVIA SIHOMBING, A.Md', '9bdbd7feecf41e1288ba1578752f24ce7f7dff9f7f6f74baebd1577a1c15f396804c0260687af768774a38fb195ea8aaecc2aacd2c1cbf0815de7e1669b7d9d85sHhlIdje4KI2RTYVKgzCfYKFmQ0l2aMQIk54YJdKgSKuDAqV17m59BjZKFlzCEq', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 111, NULL, 1, '2025-02-17 10:45:36', 0, '0000-00-00 00:00:00'),
(128, '198904162015031001', 'ANDIKA DWI PUTRA, ST', '929f7600caae5ea765dfe8f542f907bad3775bc4f360bf24b7ca6d23246ef48966664fd1977bdba1b6fd0308c71549289f929cc47f095221aa9ee8ba9614ac06pUD5JxMXdkBAbe8Pfkw6muoTGM3+5SLK09Aj5BZkC6VNtgwIo+geQ2hLm/Ugl4tk', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 119, NULL, 1, '2025-02-18 07:36:33', 0, '0000-00-00 00:00:00'),
(129, '197903182007012020', 'SRI WIDYA NINGSIH SOEHARMAN, S.E', '17a7fcbd706eb8a1059e4d0bf7fcc87b7a1e93936a20ffe74be54c2ef1ba4768d92fd1dfce05dfcdf5d80ad9f47aa4fb8c1a40899c52e1c192a832e85c8ffd38Jpz6N9Mt8WjBh70PvDd8x3pHd21hgpFtBsO/g02I+KsY6y6lL1d/UWRJS+ZFOkEW', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 104, NULL, 1, '2025-02-18 07:53:10', 0, '0000-00-00 00:00:00'),
(130, '197503202006041007', 'IMAM SUDARYANTO, SP', '12109638ec554e3e7e15b6b186c749d28437bededa42f234bd6c99707120a9f80af60f22e1805a9a79f7b674b452a77e4137714fdbde5dbe8fd123b95fb4e045dQxNdEgZ4aRpBDa+eAaIKpCP6LkuwQmtj/9R1Qy9goxOrgagXU2ovfCuYYqVA8aR', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 119, NULL, 1, '2025-02-18 09:16:51', 0, '0000-00-00 00:00:00'),
(131, '31604595', 'FEBRIYANTI RAHMI PUTRI, SE', '1f6589042f4c3334d75c8c652d7b36b9d6f57b374f7a5471808c01089869366b519e770ce3c56ed9d176eab6b09d0e375b7a3e405a522ec73848d62c11c79e85cdsMVFJbvOIrY+AjRfJ4orPuampK0XNSWggKMOlCVJM=', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 119, NULL, 1, '2025-02-18 09:41:44', 0, '0000-00-00 00:00:00'),
(132, '199612072024211004', 'ERWIN, ST', 'bdd6289f38549457167323d357e141167f75ac6a861c543ce701fc0c188c1dd96c04443414f666316b0ab91c82aa3587fe85074671ddefc4480689907ca08778AHbPuXvXIxF+sMUgwg5VMvRCC+QQ+3eH/pkCMMRkW0K1+UnLXLGXUn59OjwnK+G/', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 124, NULL, 1, '2025-02-18 12:29:46', 0, '0000-00-00 00:00:00');
INSERT INTO `users` (`user_id`, `user_name`, `name`, `password`, `email`, `last_login`, `active`, `phone`, `image_profile`, `extend_image`, `layout_admin`, `id_opd`, `id_daerah`, `created_by`, `created_on`, `changed_by`, `changed_on`) VALUES
(133, '199902212024212013', 'SARAH FEBRIYANTI PUTRI, S.M', 'fb850119de269a8ff1dd205423c74cb4d7c80ced094f05cee1f1e602fd39df18862732719fc61e3f2a754251a9c34cb122140740b4cabdbd42115902c36cff54gnzj30itOPCyyMcO8P88tYE6Mh8N+p0eXuVH9flC9U+fdjq9yBtoxSL39k+6v1YM', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 120, NULL, 1, '2025-02-19 14:36:26', 0, '0000-00-00 00:00:00'),
(134, '197609082006041014', 'BOY PUSPLA, S.E', '98decc507b3b2914da7861a7cb403183bc1c7d12e193649c1e3d6ec27a9bf1849ade8d77cff8970857783da56b89edf3dc81c344b49e7e606870874d4c6f4bb99NULV1XdHI8uVuQS3pgrhueRs5Z86U1DkBd5d0kWhcrPIr9Lc28WI/umAIyWD5Oq', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 116, NULL, 1, '2025-02-20 07:34:14', 0, '0000-00-00 00:00:00'),
(135, '198508302023211013', 'REZKY DWI SAPUTRA, A.Md', '3bc20147ebeb0d6f036a7d7451f83af4241bd8a5ffc6e799be6b14ef75cf1d06d9eac77b023c36e8eb0372a00ca07b496687d6e6f3c1a96d9cb7687198d1a8aaeAbWN4OqQbxOxRu0gY9QdQQ1nJcbl4yaRuDIqZ54CP3/WOTzM8bHUQBJBiCdQROl', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 121, NULL, 1, '2025-02-21 09:29:21', 0, '0000-00-00 00:00:00'),
(136, '197809262010012007', 'SARI DEWI, S.T', '281e1fd3e9939be247d4f2927ecd88813a728d1c6c5ea23fdd3d41b9993ae626724a198885463ad7e830054c06ffffacd1ffe6350e23583a82c70e1134f00b5b9zyiHoBMksN5/FzN9+oCCxq6nl2tB8W7ngMfMG1ngLEMEvQdZ6tBS8tNgRVhjhiL', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 109, NULL, 1, '2025-03-04 10:14:20', 0, '0000-00-00 00:00:00'),
(137, '197611082006042023', 'DEWI ARDHIANI', 'a5b62cb84abba0bb06eb7124bfadafc244bc0300f7006acfd4beae9bf3b49a6c4f51e166383c5f22e185dd66533a3eace39eeff6279a0d8da6328f965ae216e6fxGQ8d8LTie3pZ77w8oZLZk/MG0AA0vqzqyAEKMe8CTRExbR6/zNX/+nxWQsZutV', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 109, NULL, 1, '2025-03-05 10:24:30', 0, '0000-00-00 00:00:00'),
(138, '199803152024211003', 'ESA FADJRI HUDA, S.T', '6e71f06a551a539c7203e44b6f41e7084c921e1ab11777a0e60642c5d767ea1ed662511101c507fd2ff8b18aab8e343edaccd0b53ac1b31d885bd5492194efe0sJn8M1FvveI09vZ4Q31Lv3UoEUXxfE4+rz20J81FYJfczvpmrnhheLU3sKqkWF20', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 109, NULL, 1, '2025-03-05 13:30:54', 0, '0000-00-00 00:00:00'),
(139, '198004192009021002', 'SULAIMAN, S.Kom', '885699abdefcb0ac0c4ba38c115aa788d094d58c91a72c6a0988625e43a47d4701b79b8c2524220b64fe61a49fbd4f6246c18b8a4439ddb188d0ffed810b3b96b3qC8WRWtiUOqsH4EymFEA3lD2Hl7PSUKW9vQu9faxnL+/JpwYef26uL8xRs8JfU', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 107, NULL, 1, '2025-03-06 10:36:17', 0, '0000-00-00 00:00:00'),
(140, '198305172006042014', 'MARLINDA, AMK', '30b9e3f8e6ba8a15e9aee02b2ea48b988b30ed98554799de87696669d42e2941a33501c70bc40977b00504eaf8911a4b4db3d8a0cce2abbdfd800c5255f4561bOXnfu0hBHUkKCLSw2MgOric0aPCIW/80hF8t+iunHwxep2dRuGHZe+vDgN2Og/h9', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 154, NULL, 1, '2025-03-06 10:52:44', 0, '0000-00-00 00:00:00'),
(141, '197811092006042021', 'LIA ADHAYATNI, SH, M.H', '3284708ea70ff8cea59fb032a8d44872ddd30fe99f8c3fce41c03de745243327b90a8d04be11bfb64ff568bccee4fdbf4c2c4bf885879f61170cec87ef43fef5J9jw49bhAJjTKMz+6c1imLoFps0ODdpX7xnbWt5W72AIaQMfwC+GokHk0sGHG4Wl', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 101, NULL, 1, '2025-03-06 11:16:30', 0, '0000-00-00 00:00:00'),
(142, '196808301992031009', 'RULI FRIADY, S.Sos, M.Si', '6f2d7b4669c559fad061555904c1eba2cc41864f23f6198d95ad85bf16f1ab76240875f6ff5ee1f7b2d90657a3d1cdad2391b296026d803fa577df9bab856610Su40Cood91vqxElTqSXA/qFWDTpaRuejiL/v0ALNN3pVn76NekDtjN5+mqqEivty', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 118, NULL, 1, '2025-03-06 11:56:41', 0, '0000-00-00 00:00:00'),
(143, '198311232006042013', 'NOVI RAWATI, A.Md.Kep', '190401afad452f9b14f8d3e4c3a8ab4ed77ac7facc1315a4e2e1a5be25c9ae4e71d89907c84d833fa9ec8b6063f221fe079816677e4248a804f644c39d839730wsX9FMefvu6mBDWwnO2qmVzwuzd7WDxw2HItAMt3V6PM6reG+g5cd/UYey6avY0H', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 109, NULL, 1, '2025-03-06 15:23:04', 0, '0000-00-00 00:00:00'),
(144, '1', 'Andri Rizal, S.E, M.M', '9bd72b71311c4f08805e9a4ef0027305f921c508abcf0512b7b32dbe91646b119251c42ca0b2663584d005e56cdc49a7bc9596e2b985357a477c3b3717e4adc5Dgttl28uWDhvbo6UQ04KJVe9Tc3gUX5+f41Cev7bZ94=', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 999, NULL, 1, '2025-11-21 01:39:48', 0, '0000-00-00 00:00:00'),
(145, '198302232010011003', 'RINO HARYANTO, S.E.', '82e1e2cdaffa5f528646d5efdb31a9a6119c56ad96a8ef1a3abe9705da1a8e16925a0e2342fc2d4e64967f0dc66a7e099d33ca04c4c992706a0dcc20b77e6269+VbYIxsfEbujUMWgKoRk3oieOvpsewsy029vW8AmszRC298HSwTWCWHXyMRpbdbR', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 101, NULL, 1, '2026-01-23 14:53:35', 0, '0000-00-00 00:00:00'),
(146, '199611262025212007', 'SYURYA NASRAH', '4ad8ad763c64c199addaa7448e8cc4298181a2fc5d1adb6b2bec1abbda4947999db809c7abe66e299f65c7a8b3d00d527dffb4162b455f6ed705fa71a33adad14g8aHLY9e0fEgA77HkrPp0Z97eIosQJT7LJ18Dzejo7zjSLO5gIL/uLHfBNlXPcW', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 101, NULL, 1, '2026-01-28 11:12:41', 0, '0000-00-00 00:00:00'),
(147, '199801072024212026', 'Anggun Setiawan, S.Sos.', 'fde5c5eb1c04d1025eaa442de21e848f852401d7a13363f7c4147a6db0b4edc6c102a30cc7dbfadbf851460e3f35ac3c1fd8805f68649633a808a8837f623b24A2cOiQidve8+iH76QvtOnUO/FJwa9VMZm/vBcVUOQRc=', 'anghunsetiawan@gmail.com', '0000-00-00 00:00:00', 1, '085766006342', NULL, NULL, 'layout_admin_vertical', 125, NULL, 1, '2026-02-03 10:25:32', 0, '0000-00-00 00:00:00'),
(148, '197807032006041017', 'IBNU ROJI, S.I.Kom', '93c510861be9533e01fc2be036f85807743dc87a4d64e026177197aa5da9771806599fc7059ead2b2f582f3157a643b7d999a899315bff32d54e9c99bc9916cdT7zeaVNYeQHL9Nyp75mwuTRmkpVE2Sdsynhbn+3I4TH2zmvt+c9TTTMV4WREIZlJ', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 126, NULL, 1, '2026-02-11 08:31:23', 0, '0000-00-00 00:00:00'),
(149, '199305112016092001', 'BALQIS RIZKY ANANDA, S.STP', '5b533cb1e5638f1ab120a65c85b907e2fc7f6ff5c49407a9410748820dcddafad24f6bd8e96859b893a1445f616f0cf45c2ad8f5c5e7ea43821b9f073ed83b2f+oIFsTHQaoPzHieTruFwOVTzWMKeC6PHIVmEm3k6A4mSmj4/gKDWwNRe+lN3ewf9', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 106, NULL, 1, '2026-03-12 12:51:58', 0, '0000-00-00 00:00:00'),
(150, '001', 'Lis Darmansyah, SH', 'd2daed68389899e7d3499d093159c8abaa5995d0a3971de87e192bc4270eb2935af0d3f639787a109370d49749c3ee9eda5081f6c71d45eab9f9001bbe87388aJewdrc2aXHgFKkqWkavump7axbXl3hxXf2QX8xd14y4=', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 1, NULL, 1, '2026-03-12 13:18:01', 0, '0000-00-00 00:00:00'),
(151, '198207162007011007', 'PURWANTO, S.IP', 'ce32e0b7ae8dd77f74aa13eb7a05c7dc6f35e790d2451c42db50860928d4372343fc7f13c8c989bbaee16a6c27b4dcc341cdfe9c20f781b4a7ce4239723ae43dUnyGvRX9dHYxNRnhGo4SZ+awJhBuBR2jka5+VHnwYsvXUmlLZoU39BaI8IlxHdjP', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 109, NULL, 1, '2026-04-18 20:40:04', 0, '0000-00-00 00:00:00'),
(152, '199404292022022001', 'ERWITA HANDRIANI, S.Si', '4142309dcb07bf7c8cc105c3fc0a5a13191e17437c5d48c29d9094c29587c1cf26fb96d830ae96765c70a59f123b4d495dc5cce036695124d8dba104d054d42evMXgcwWOOXmp81fCrAg8CPnDG6asAZReqcgCRxlzsKmL+7wYHbXEt761s7MF30wR', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 125, NULL, 1, '2026-06-10 13:44:04', 0, '0000-00-00 00:00:00'),
(153, '199606052024211017', 'PRIMA NUSANTARA, S.Kom', 'f7217c04e90f79bd1c9b10656c296c7dcb2ecc6b22794cc384ab009d89337341ddca94ded2d5b35da1935f9a5c84e6e25bf654a96fb3432af7513a9403f8e521lAvC7TEeZmYGsEW4mHUwDSbC8sbKZR97vOy8WKVUwKdsYkikjfqif7ZIC1+3Ldko', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 115, NULL, 1, '2026-06-11 10:01:43', 0, '0000-00-00 00:00:00'),
(154, '199801252024211007', 'ADITYA RAMADHINATA', 'e417876cfc984db03829fd82bfbdef1e2452e35f1406b84c111b03bd644eabb91efa0cf4f17ea1e96126e50af205f9e0a945f9ede79c4abd150f432b503ac579E7vB3f3eMmccUIpEBwJ9j0YCRYWqXH0fONx+MdMCPyAvU5swH8es8Qbw8GMYcR5D', 'dhinataramadhan@gmail.com', '0000-00-00 00:00:00', 1, 'dhinataramadhan@gmai', NULL, NULL, 'layout_admin_horizontal', 113, NULL, 1, '2026-06-11 10:02:24', 0, '0000-00-00 00:00:00'),
(155, '199301122025211017', 'DEDY PRIYANTO', '338f5757862830980dd5b0ca8831df561934cd76d6f660d188a3f7716a5751e43186072e90a63a0eebb16c945133e831ec2d91d92cfec1985a41bf1503a01ce30NqmAAwCL70UKi4eKxPBA6lIEQBzEEMQAF2LLf1vs/X7Afy3f2a4dcn8JDNeDmch', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 104, NULL, 1, '2026-06-11 10:02:41', 0, '0000-00-00 00:00:00'),
(156, '198706162025211008', 'MUS MULYADI, S.Sos', 'd94dfcdffe3144e589d771041c37e7695824a0773dc833a1fc2022c9155c93475a5c27a0515a252faf10c55a721c318c76dbefd0630a19255a58bf28e4d29fa6Tp/CODfq3whVAyCwv3FbZMGdl97AXW49SX+ODTp9sJVaidoPLER2faU+aBi49Z88', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 115, NULL, 1, '2026-06-11 10:02:52', 0, '0000-00-00 00:00:00'),
(157, '198712232025211013', 'ROSIDEN, S.PI', 'c3aac3a35428c23fd2dac53147ad8ba0299a82328d28383071f4f1ed1820178ae7663839db207ec84c0747f6e7959c2537e3d2ab1652e29f3d6ea934f4b91870Zq6gp37KwSQ9W7uaEpesOfSeX75Q5IP64UzQ1/9gaUDRrZoqjM+kc9m69xnzCx8m', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 116, NULL, 1, '2026-06-11 10:02:54', 0, '0000-00-00 00:00:00'),
(158, '198008122007012013', 'FITRIANINGSIH', 'd5779d536d9dabfd21047914c237dae4bffe9436513bd40059d1c129f755f8474cf0010a1365bdef269329fb5874455d39cbc651c9d538e0a5c51c093a2f3c3dMkO1VuzcKDuVdp9YJuJ8T6nMM10BlcyJ7tX/+Qp4EyGMsw8H64cGMteIG25Pv9fH', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 134, NULL, 1, '2026-06-11 10:03:19', 0, '0000-00-00 00:00:00'),
(159, '199002282023211027', 'FEBRIYADI, S.Sos', '91ea93f5093ec948f722438e1dab9720424b7336933554df830f6a724b0ecdd1c55d90a5ecdf05640b39da073ef7ce09e950659f1c2c9435f7401a32df8f9ff83y9q0K5py327QK9ly4m0vHIGG06Lfy9JcK7hNFyOWdtU4OXWrg+tcewhWoG6qPwt', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 105, NULL, 1, '2026-06-11 10:03:22', 0, '0000-00-00 00:00:00'),
(160, '197908192006041018', 'LEO GUNAWAN, S.Sos', 'f663bf0d601ac3078e12f64c897d813581362291ad533d1127ca598635a8fb72f82cd0583df5e3463c9375e5e63960bb62870f6eaeb4cdd349f0bb3d70ecdf66Uzc/1XAqBQzTthcyBbvbwWQ/R2mifbP8IZlaqxWEguvWgFpcxRgPFd94GedqQTv4', '', '0000-00-00 00:00:00', 1, '', 'resources/profile/tio_php.jpg', 'n', 'layout_admin_vertical', 132, NULL, 1, '2026-06-11 10:03:51', 0, '0000-00-00 00:00:00'),
(161, '199611132025212010', 'RAJA NOORAINI HARIANTI, S.H.', '110e906640189f7282948715da844c18fff32e6476df112e75d38db905991cb498301f61fb8e013894a2a82cd84cab0f0d838be0ab7fe06440f94329258c2895F0YUjLkK+GZuUaRP0QfC2Yt30AL3VX84RxPXkFuxF6SCijpfZZa0xBoe3o2F9WAx', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 108, NULL, 1, '2026-06-11 10:03:55', 0, '0000-00-00 00:00:00'),
(162, '200004252025211004', 'MOHAMAD HAMMAM PARDIANSYAH', 'fb56130573ea820b7952fb363f3a5c11d52a7c03525743d61b4c5f1f8a6560b40ab05ea6dd6163159a679fcb9f017530563b58d49650584b842f395b6182343bWXZDtLsXpMLFELZKsBdZ2DFkY4COV3IdwUFYZxVwyjaHspzPgi2u+Odp0QVJJ99h', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 114, NULL, 1, '2026-06-11 10:03:58', 0, '0000-00-00 00:00:00'),
(163, '199611192025211015', 'RIZKY MULYA PRATAMA, S.Kom', 'cf4775fe5167c3f9c5cc0dfc840cba0261bf5657f7353e45f6445a26edba21aae9873246d18f61a22e1a05be4fd4dddf0e8cc8ce1754432c3ca54789d6e8c915Gy4bKvKR49rz5sx7TQTMgw5uze8AxDeYuqg2sOzycefLzPseiLCSSRf8d1NYS/nY', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 112, NULL, 1, '2026-06-11 10:04:00', 0, '0000-00-00 00:00:00'),
(164, '198908312025211013', 'RODHIAN DONOVAN', 'c756e56589aa5b262b3a464ea8ccc360196814a7be160e6e4100798e8d443a113d4701b3452269346b5ae51724b93acdfcaea3f33d64ce769273990d2d4e210beM8Qq4VqsyyDX6TAW4pIteprK9Yki5m1wqgTS3nyB3oqXn0YLUCcOe9v7lBL177m', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 116, NULL, 1, '2026-06-11 10:04:07', 0, '0000-00-00 00:00:00'),
(165, '198807122025211088', 'GUNTUR DWI HANDOYO, S.IP', '8f10cdec5607e20cfa07166f0fd80652587eadf61bff003c0d4ed1ffa6942357ba453ed4934b97a377c8c13506941a00dd38ee9a4885319406e3617a2d2bbad5CIQ998fgBkH3gx6xQHbEuuTFRnKax0dsSlJTIxF6WiBFNjOp8a93qSpDA1z6JC0C', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 114, NULL, 1, '2026-06-11 10:04:09', 0, '0000-00-00 00:00:00'),
(166, '200101102025212031', 'Silvia Erika Candra, S.Kom', '296af604f67ce62c385f958e6e8d94a179c3b2b2954c54b51ce3f704b7c0e11aa49e09402d56696fb713901e466b88dc9bc64a54d5d99ebb05dcbef9e9f770b4vBH6onwtP0uHKfZe52aC0MKjZWIPMpgwNr+J31YFyzSHCHhkmKLI/dQVj/No2FMP', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 103, NULL, 1, '2026-06-11 10:04:16', 0, '0000-00-00 00:00:00'),
(167, '198606182025212006', 'ANDHINI FITRIANA', '8286e382ba23445f055f40b0a4e668a54d9e7927daaba23ccc16d361ee6c07c31591e1507335091716c6a753f0a231e57f571f838e352e1d778c110ca4ef5d60wNJ5zlQf7LjUDmnf7V4WQpT/JfCvZNUm7aLkSZwq/+u/URjY4dkyQDCpHwdYBm3Z', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 119, NULL, 1, '2026-06-11 10:04:24', 0, '0000-00-00 00:00:00'),
(168, '197905152006041026', 'SAID FATAHULLAH, S.Sos', 'b9297befd1e693282af4649397a2696bfdcb1a40599d9f74d9d8b2508dcc5c8f815b3863c6b05189ef6f14f405910cdf8adc0d838237cb32d7b05852427b64f2pvctS5gtfAbhAqMGUn5J1Rx2xcWBwY++lHDXkdp9c2aD0qPO+SpDiT2T7n7tV/+f', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 121, NULL, 1, '2026-06-11 10:04:33', 0, '0000-00-00 00:00:00'),
(169, '198506032009022004', 'Suchi Prihatin, S.ST', '7f9cd9c62df56e6c2bfdd990370dd806703f8ce1b8fd7170b0557edf44a60c0bd6b6132439ab6c21c8818a9ae27633da7610454dfb6f1cbc10b37551fd898063Wnh0gBE2UiZ3AuouLEH1fC8O//ITi0jFCurRVl4SyTmk9bBEGUdtvzY0GMYeYum/', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 111, NULL, 1, '2026-06-11 10:04:34', 0, '0000-00-00 00:00:00'),
(170, '198504282024212011', 'NENENG APRIYANTI, S.H', '872574d5ab86bb621e492a379b1ea63918ce29443646a874bf688c71666bd775951ef5504cbac9293dd1bd6da298d8330e0e447817296490aa2cf2dd182d7ae5Ub2o6I9Wpqk1xAqOUaznPpL2dwof6tWkUCPjXKzjIYT6FmGkr7fBMpH4zE/oESta', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 119, NULL, 1, '2026-06-11 10:04:38', 0, '0000-00-00 00:00:00'),
(171, '198512122010011016', 'J. KUSUMA BHAKTI, S.E', 'b25e8a3ddb117bcd254dcf1a15572b567d917594272eb68dddc9cf706bef8b8fe3cbfcf1993c21ba46e1907cbe12b2c11abf5de42b12c79d414f3071269e84235kevY5/dqQ+134pkp1vMpSD1FV6QgznDCyZ1x5Ooz+1fDw5YFLMJJzGasjjhbilj', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 102, NULL, 1, '2026-06-11 10:04:39', 0, '0000-00-00 00:00:00'),
(172, '198208032025212012', 'DELY YURIKA', 'e6243017d2aa6ac3a141821407813fc6ab934b256fe8bdb344fcf7f372145af7a08202c7c2f23b8b4ce9ca6a91f70704fef868f15507a20941d01e31b9554f02Pr6wP4Pmb6TF81Hjl8VLnPgptx1Dl4wbrNv9XimE8t/EDbH9veqEi1imo4wkuLCq', 'deliyurika@gmail.com', '0000-00-00 00:00:00', 1, '083184946002', NULL, NULL, 'layout_admin_vertical', 134, NULL, 1, '2026-06-11 10:04:42', 0, '0000-00-00 00:00:00'),
(173, '197702172006041018', 'RAJA MUHAMAD RUSLAN, ST, MT', '105b6fc01662121abd25c54cadfbdfe785c9af241cfcd0a37c9ede03de4926850248d1256cbe386cdd394b461adf39cfe037715510b8842fd2faa217af83dcf2TGna+QoJ1sasdKpWOvtsgjTn9E6tL4YK9y6QS6q04QWyyMxCSE/1UBrd4Ugdt2dS', '', '0000-00-00 00:00:00', 1, '081991685913', NULL, NULL, 'layout_admin_vertical', 130, NULL, 1, '2026-06-11 10:04:44', 0, '0000-00-00 00:00:00'),
(174, '198503272010012002', 'EMILIA, SE', 'ca57a738086784566f67edf9bc86439196cd9f49db7ddfad85b4b56f0fec9bd07eb742a2eae323afae4c3e45a7fb4522ff6b7097ea98ece07ec0c820685f45c6p7966ue5KeYPXvxtPZqPvj6ZouFVrHtTJ3Nx+337+M8KyTOcvIUEIRrgeS54fHaP', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 101, NULL, 1, '2026-06-11 10:04:52', 0, '0000-00-00 00:00:00'),
(175, '198302242001121003', 'BOBY WIRA SATRIA, SSTP, M.Si', '36eb20e290d3572042d23c5a7fddad0cb3bc7dd69cb6a360536304ea6e842b2d043afac42efe2f1483a24611757fb14254b9866ba21e2ba4c90cbe88551bd3f21/Fnba4X8XJ5WwaNYv0SkFoWQggwsFTk+R9TEtuqzXRi912SVKL9wcwOFDBE4PtV', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 114, NULL, 1, '2026-06-11 10:04:52', 0, '0000-00-00 00:00:00'),
(176, '198010012003122009', 'AFRIANI, S.E.', 'a23adac471a49e03bcb9bcb30b2120661401ed8daaefedf016f68e514b28bf815ffadadf2055847057724a10c87e186540b9d4902c2545b3f1b67b35f691703fEKJ/zb6fuLmmYB/ONXNgfAwhPPqt/PIpiCHb9hvmro4jPu/iM5+wqaIwidh8xFiB', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 131, NULL, 1, '2026-06-11 10:04:57', 0, '0000-00-00 00:00:00'),
(177, '198801182025211005', 'ASRIL HIDAYAT', '625d74d895e4547ad1d36109e0151e811b7cd5a4fbbe8ed147258ec496a9c087ba08ffae9651de7338b2c7a9f4fbb004927db6eb3760964f8dd2a60ec8ec5ade6CdQ8yqAujcYPLFQ0gc1knYebhQQHsKhNkCbwiJtd+WgwnG5RPSrHUceUeNqIHlm', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 102, NULL, 1, '2026-06-11 10:05:06', 0, '0000-00-00 00:00:00'),
(178, '199508072025211129', 'ALDRIANSAH, S.I.P.', '1944276e93426f3b90408c1580ec8394b748b800b2aabfc6653d5bf6ef8c970eecfc13852ecd237991638e9f54440be62448f14403423432fc0ef668631c1438kCDVi7CBrJCg6NkOTMy7Z22H1x35LcL8WVj1Puz6PXexqxaAT9aZWBo27RI9qZOz', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 149, NULL, 1, '2026-06-11 10:05:11', 0, '0000-00-00 00:00:00'),
(179, '197608042005022006', 'SRI WAHYU NINGSIH', '9e836595dd2a69ca4132ae22213036febbfe7d83995cc24a75e872e4ff993e6a46a03353329b240ec7a3493e29b09cb5cc4724ec2f3bec5b99545c855da87404q/YAn3jzRdJqiDbQVGxoWZ4wvCBR2lM7vc4PIdElQ6nRSC2ssCeHlwUzbPoHtGyd', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 125, NULL, 1, '2026-06-11 10:05:14', 0, '0000-00-00 00:00:00'),
(180, '197205061996022001', 'RINA JUNAIDA, SKM', 'b0466740d3bd2921d9a8c07c096335ebedb8cdf5a2e84b6c7df7d4f8b074c46c7d012ca5e3f64fced462b08a8108f7a0ec5f56a69f87608eeceba872621c707fPd/JkWgv511i/Qwi0RfGENTy6p40hSmojSDMfkrIaNT8tCPVo6Js2XLrISOXvH6z', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 109, NULL, 1, '2026-06-11 10:05:46', 0, '0000-00-00 00:00:00'),
(181, '199708052025211004', 'IRVAN DHARMA SANJAYA, S.IP.', '045a64b347a028f8d618ddfa027e33872f33682c7d992e9554ae0785eb0eb8637badb780a088efa247b4cc7ab893dcab7ee95ea64e068c99e1b154fb2a277bd0FSt70duQEuXDS8QJy7Dz+DReQCrZsgh1Q1//UoYQAL58LU3enB5evFAz50Mf2y2s', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 143, NULL, 1, '2026-06-11 10:06:23', 0, '0000-00-00 00:00:00'),
(182, '199312212023211011', 'Moh. Ismail Wisuda, S. Sos', 'aee8db7fcdfa66ab87cc1c9510ad661727e227f554cdf06d94055f34567c8324f447f6716688726102e7c9f46f6c1682d9fac2bcfcea5faa4124a3c2416cb398M18GW0qUzBSkv+bSfaeQ1KPQIIbpbfIiKHTfsoIorJ67LlmcFfPg87OhgrMGIfSp', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 110, NULL, 1, '2026-06-11 10:06:27', 0, '0000-00-00 00:00:00'),
(183, '198808262025211048', 'RANDY AGUSTA', 'a7295f4f353c64f7e6a0650bc88b6d66a34b4e57973e16dc8aef604fa8b1635172f4d774c6e0f2a213a2cab4167576460f2de18028c614115cebf372c17f3399eqPdGJlbX/XuCPN0KVBXeHAv08YJ4Qx1/fvyCUDD1pwg6dxquCdQAxvZFWx6AWdV', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 104, NULL, 1, '2026-06-11 10:06:36', 0, '0000-00-00 00:00:00'),
(184, '198301252006042015', 'IMELDA KALPATARU, SE', '05cf56048f873914873d77f541d65eda67a3307d1fd6ba455f54db3c739ba3a7ed1c2ee5193afabd934dc87e47418a1a3674974ffaeb61e34ef0682d51b20e05yqPvOdbW/JpMAnsy7zaMN/BPV306NNwtbJJdpkSKZxR21JcgcLf9Lxl+q3TzQCZ+', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 127, NULL, 1, '2026-06-11 10:07:01', 0, '0000-00-00 00:00:00'),
(185, '198510282010012004', 'KURNIA ANGGRAINI, S.Sos', '62a935dccf4cf90eda04d9959c6d075151d8ce19a375098ade9f24c11637424686fa1f8d4e9bf0024e9d0a8860c3e282ef77d52df3b44e5e19fe16cc2de1f7c9PkIQSlAKGNqa9vgDk6Sm9Bzb9HCd36zuIj6OPZVI96JDKL1GD43pXucgW1VAWbOx', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 101, NULL, 1, '2026-06-11 10:07:04', 0, '0000-00-00 00:00:00'),
(186, '198907182020121004', 'ARI PURNAWANDI, A.Md', 'ffae5a118f5a36eb6b42058f55ed3ca644f6c4eddc673e1c5933baa6aa6b59a34cfd6e4184197e37bc028f87ec7c51d0b5bc6935e820456bd5edcbb4e3ed1430WLTblBi0039jGk97r/uwEcDWo94zpioGriW7SPhYkf17jQ9hhIv7s7pTDJXZoNn4', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 138, NULL, 1, '2026-06-11 10:07:42', 0, '0000-00-00 00:00:00'),
(187, '198907282025211011', 'SRI UTOYO, S.E.', '937ce6190683e8977315ee075a03368c926c8d23a49d10f12db99f4087b1166213ac14fb9c4b013a48580ad89e5416907ca4a4bb9bdb206132cea94e932a14caenhg8RhGV7LCNPojtZxZp8zq4UhJE6OyYvBiNup33wIQmz68FDsXj4Jp5FuctJx8', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 145, NULL, 1, '2026-06-11 10:08:41', 0, '0000-00-00 00:00:00'),
(188, '198704072022021001', 'APITRIANANDO, A.Md', '5b80b8684e3e6225ddf0ba07699542d59cbe45e2eff0cde3ae2685efea03403a89129747fb3c1df145388c3825f220319a449d94ca298a9ac4490f1347db0a34bFMZv6fgFDtuaDYtvM3+pKdCN9Ogsg9P/tKYMaPjhaJ2nj3ZcS5wUu8FuECar9qI', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 122, NULL, 1, '2026-06-11 10:25:42', 0, '0000-00-00 00:00:00'),
(189, '197801302024211002', 'ARIS KURNIAWAN', 'b7abc80efcb64d7950c78e31f3638c9eac3bfe420e615e2779f22259d6d208253eeca858011b78568800006f0865a560b64584103a4e30bdf4c9bee5371b2d419edfNqFM4J/xzhaz8BWA3tYzBRMHLu9xhibHpNZf52DX00zPf7OF+1sqGun4pE3S', '', '0000-00-00 00:00:00', 1, '', 'resources/profile/hehe.jpg', 'n', 'layout_admin_vertical', 132, NULL, 1, '2026-06-11 11:03:44', 0, '0000-00-00 00:00:00'),
(190, '198311202025211002', 'OKTAFIA BUDIYANTO, S.IP', '263674e1fac5b8a0f0ae27212caa7b093b6e0d0e04e31b05641ecbddced5d1e5b67c1453b73831af4e02dbab216487f5d8d96fe793a053757cbcab0082d7fea6XBnJAO6GJYoJkchHZr6kRsUwx3AQxoz2YVUg+6vekEVlAUf2qIz5dmq32gtojXcl', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 144, NULL, 1, '2026-06-11 15:08:26', 0, '0000-00-00 00:00:00'),
(191, '198812282025212004', 'IRA KUSMAWATI', 'd9368ea234ff08ba5c112c1b62c4049136bb68fee6c6214e9f3975282130f072fdb797c91476b27b885ddafcd823ff469593e5961813e91d523a6ce5856ced8atn/Z+rXLtwYF8+jCFTptdJ6AVCM6YhvMhlDeZ+HEtLWFLQSYfvCBwprt0L4qSiIp', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_horizontal', 149, NULL, 1, '2026-06-18 14:11:57', 0, '0000-00-00 00:00:00'),
(192, '197401082006041005', 'SUGIARTO, S.H.,M.H.', 'f0e63ee7d4134f04a5201c8e01c681347c4f1a6c389be1d44b0ebe5ab30c602507fa86e1e11686658b6432f73d643f9c64f8d9e60b5d02a004f176b82cdac9666ESbGHb9FtA8DnJ9XrKMFoT2S24K/czPuen98a+icgphqC2eV7urBZBUTX58kSu/', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 126, NULL, 1, '2026-06-19 07:38:14', 0, '0000-00-00 00:00:00'),
(193, '198608282025211013', 'AGUSTIAN AHMADI', '0d69ac66556f677878afc2a1919ef20ca81fbacc7ee7f123e251cd35f8e15103c3070831227837cde4b140e340bed0d02d05da3b9a272abcb69d4c5eea4b71cbrWRjgqthHaCvkPb6QTIjVff0oiCn6c19mnL0pdNmeKITvWF1RTBXYXa33bCcReXr', 'agustianahmadi@gmail.com', '0000-00-00 00:00:00', 1, '', 'resources/profile/94182.JPG', 'n', 'layout_admin_horizontal', 140, NULL, 1, '2026-06-19 10:57:44', 0, '0000-00-00 00:00:00'),
(194, '198402292025211034', 'Pared', '8c004605e86403eabc486ea556311a5f8474b0dc7f1ed5db4f3d5ae93030532b6748a9cc384beb667862f083c65d203ec938bccba59d64ec1187bc7b2ab208f5s6NNDE+T4+x/yAzJMi14dMqK+9vOXNEn0gFJvtiqTpbnMUiAX/7Owx4xmX9rSx33', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 103, NULL, 1, '2026-06-22 09:02:01', 0, '0000-00-00 00:00:00'),
(195, '198302022007012004', 'DIAN FRANSISCA, SH, M.H.', '6bd15a03874ceb8c9b5a607a7c9e4a48902f73a3e30198daffe4fdde834c041fab2d4e1850967fdd5cf9b41f99f9e3b1b13535dd9a2b911017a9cfb338c38e10bFHQFtlxnmaJQkshTt0h9FJTIfmZWwbH0X8yiRdSHWt3lpiih2N8eQ+ooU4hwoFq', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 117, NULL, 1, '2026-06-23 11:44:39', 0, '0000-00-00 00:00:00'),
(196, '196910162000031005', 'ROBERT LUKMAN, S.Pi', '65e3d1c5d4a7789b127a6d466fbcee6206f1a078fa6cb8d6c7adacd5d401530311c681945dd9faf53b05bcd4588d4f6a475898693eeb6b65026c1db16edbc8a7hNPvD1GyZ3yBjpEqQubTD90L0bxTU2ou8NXhZg6Tca+uYKBPZPeD447i7Ik7J1mJ', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 117, NULL, 1, '2026-06-23 11:45:41', 0, '0000-00-00 00:00:00'),
(197, '197110242010011003', 'YUSRIZAL, S.Kom, M.Kom', '1a4cca3cb0e222a26625e50bc57752f993c4ecbef94ef8b0d016071dcf20d54e4d4b59f64d4e24c08198a20a4d894e4ac2247e9c745103c599a038da4352e744jF0a1a0rJ8rvGbtyoJU9I5RqDi+rn2fXfqdiiOUAxRsIS/DAkhFj0OjgHC3peKjA', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 110, NULL, 1, '2026-06-30 08:31:00', 0, '0000-00-00 00:00:00'),
(198, '197701272006042005', 'BULAN PURNAMA BATUBARA, S.Kep, Ners', 'c9ecddbd8f4d9465e4c0f5664d443cd74b4c4ec38fb263671707a1eddf41ed3d00da908bb036de07e20b54c53095ae5bd98777bb25286004e53746f25d6e00f4RvdgXx6RjGisp7sQX2Ce3M1UZnkk/idysgdrXTyT+HdD0DijdwW5bGN7/z14SZWS', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 109, NULL, 1, '2026-07-30 14:23:49', 0, '0000-00-00 00:00:00'),
(199, '199704132024211006', 'Shendy Afriyatno Soehendrawan', '86c75493ed77122eee0a23583ac15f235f6af8580e9301d6772ec8cd1944c6c8aac1419be8d0fea72be0a7ac854782792e1b476d9b24be3a176f2c2e4cfc031dC+Kz5Od84vEJRFhTz8thDthq5QcRwOPFTcTXJaxaLXv5KaSkqt3rJDtN62e0VpDU', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 113, NULL, 1, '2026-08-06 15:27:13', 0, '0000-00-00 00:00:00'),
(200, '198906232023211014', 'DEDI KURNIAWAN, ST', 'ef0045737f9870c434802bf2948d58ced1791fcabc067d4164c36eb6a5c4ce1198450a52053c30800ba321ec2b02e35f08316fdad51929431113428230646e25Zkb+olzZSgpLqNyhzXDsnZDI9e0Nve2bt3iypBOxTUOdiyeOPyWR7Bma+DPFeIfa', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 121, NULL, 1, '2026-08-19 08:48:16', 0, '0000-00-00 00:00:00'),
(201, '197805162006041019', 'SULAIMAN, S.I.P.', 'dabf3d9cd60b95d0790a8c9a25d33b39227b69a164aae34217387f34a8b5892c2cd83d5977b26b88a9b1a791f2625db40e240756b4d844738c8d6e00c238f1faUISh5uKHDFSw7ItQxmH7WKt5CWVGzTgFKiNLs0VWYaUtLDmwmjUGkE6PaibfDOte', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 101, NULL, 1, '2026-08-19 08:48:37', 0, '0000-00-00 00:00:00'),
(202, '197311102008011020', 'AZWAR, S.Sos', '2bcc6523c77ed924cc9d2ea1a0f6837e9e5f2aa545aafff4407fd3bb851c08405919265d10427a45402c5abab759fe43a4ab906235af9eb79df0fcb8dcc5e016MqfI5iTFaW3ChNrb4m4gtyxnOt63kFbXqkW8HVMR/iEE5bPDzXyBdsGDhfJZkBEf', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 107, NULL, 1, '2026-08-19 08:49:15', 0, '0000-00-00 00:00:00'),
(203, '198706012025211071', 'HARIS BIANTORO', 'ca3125e2ef9f02afd38a4ceacdf6d7dfbd64959ce5772e1645d5b5236b2c67397cd0549811288f9e58b88a48e10bf9bf8efc8f25e7ee4281952b3751106ae5fdjHqWkIN3CfPtCNB/OTVduPfEkBfsdN7Yv2tjhXAi1Jm+tJzMNB+IALfkLuQATqT2', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 114, NULL, 1, '2026-08-19 08:49:57', 0, '0000-00-00 00:00:00'),
(204, '199610062025211080', 'MUHAMMAD FARUQ AL SYARA', '1b9b15e71b5c19cfc7ea1ad6f14cebbc9fb178d0c65ddd24c243ea02046d667216bbf34fcf49a947bc05a52b86935289e86eb626be88eb57152d6b968c47c2b0uyaJKXHrvw8KseJNzhInY42w2VOc0vTgryJtXG+bNCIWMZES8bd7iRmcT+jCzcMw', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 120, NULL, 1, '2026-08-19 08:50:12', 0, '0000-00-00 00:00:00'),
(205, '198505092023211014', 'SAID MUCHLIS, ST', 'bc7b3a9bf607a8bf382f2f84b80a3265818218a71365d1f8415758d44276591da35b54cd1b3bda86eb445b145bd3d8de91b9c7c7c38c209f5210b42fd589a63bWvWH5KJZyfgk7noPJZVX1PJ9uriWh7iPozlx4Ykd6MYMW0ouDS44pANb95/vvrU5', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 124, NULL, 1, '2026-08-19 08:51:09', 0, '0000-00-00 00:00:00'),
(206, '199608082022021001', 'LEO HADY SUCIPTO, S.E', '86c4bd59326d7a04e2f5d54ea8f41f82b75553c19feae524db957c98467db7372ec7244b149774ddc9b9b1e64d6b6983831fa26ee732c9becd7560de8c6d05a0e4M7DFJJGAxxtTiciSim2WyFoms851OnJDPwwlK6qrgTmK4Yjz/ePtS+0IqsdvpH', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 124, NULL, 1, '2026-08-19 08:51:20', 0, '0000-00-00 00:00:00'),
(207, '198702202010011002', 'DEVIT LAGODO NAIBAHO, ST', 'd55aef32c7b10d6e168e815797c5a4e5cb74a9d7326f37e69243340be8989de38b7a5bf36151c0f80ff7c5b15524b8e995b1ae0a100504fe16c29c3859e1d81dKt5XWpQ+ORDCRJMVEeL284HD6dWo2pag0grMqUeA3Dk1qNORqpMYJv06HSDSgqVT', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 127, NULL, 1, '2026-08-19 08:52:13', 0, '0000-00-00 00:00:00'),
(208, '198811152010011001', 'HAZIM UMAM, ST', 'b9311bdd99e2b19211d109f772110a32c72850e4776ec7835683f9f337c0d4ad1f4053d2d455068c3a1bfc501e7275e219647c56a346b562ff2af31c3f91e1aaVhFyxsTnLpG+IEVIA/BGQrTqvFwfl2ihpbvmp34RtKSEWZTI0YMZ57QT1z2orFmQ', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 101, NULL, 1, '2026-08-19 09:02:08', 0, '0000-00-00 00:00:00'),
(209, '198104292007012014', 'HANITA AFRIANI', '6d31f8eaac9d9d5f22b7876d09778beea64e57781ea6dacc13659645b083bedf1c37f18894ec4c907a1fa45a97be4d40ed8d5b00b75e921170dc2aefa8f42d90dmW/FqwmSv/M4WL7GqQiwpvXocgPJdW87YWABKJp7oMnKbYdTiaG2O/5Idk7OO6+', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 124, NULL, 1, '2026-08-19 09:04:31', 0, '0000-00-00 00:00:00'),
(210, '199503152025212007', 'ENDAH  RIYANTI, S.IP', 'e7f1e0a33e685004b960e9c928fc7bef57df1c169a0b7813e0313ecf66fd6ad4869428f45ce5a44cb7e2835cf8fac3e0de38c865605e10e0573766253790199dz5+AIN+UV9X9wzghNdchvP6FZf0dH0E057G4EzCs4O8X70oiB+WdzkSC51TcJNGz', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 101, NULL, 1, '2026-08-19 09:04:46', 0, '0000-00-00 00:00:00'),
(211, '199110062025211117', 'DEDY USMAN', 'a718179d41b99edb8158d40fe7c38601f7166612532b0920b2fe6de2084bfd9dd676cee0114af08d605614763d7256951e636382b37b966e82ebc41ee8b8a95d9euDLPwN/SJMDpSONCH+tA5xttI3J9F2YLEUedWmGVh05idb8/REkP81cXtZfDDM', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 101, NULL, 1, '2026-08-19 09:05:29', 0, '0000-00-00 00:00:00'),
(212, '198006122025211043', 'RINO IRWANO, SAP', '25af1804813270cd7f88bee3f5db7c3dfe4cff41ad1fc4471132af59ed157a134452cac4d49f42505109795d7bbadd07ff310ef4e84500ac74af7eea64b3bb4cE8o/NbhxHxyFf+2L6uZpA+DDUE2p7Kup2xEYMTw355bCbwNUdC4cDBLIAyjh8Ko4', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 124, NULL, 1, '2026-08-19 09:06:32', 0, '0000-00-00 00:00:00'),
(213, '199211092022021002', 'RIYAN HIDAYATULLAH, S.T', 'c5cc2eb45a015b461f9495dd37a115435b11a62d8831fa3e04476e48e8a6609e91b0709c5793005dfe72cfe9ee0a6ae4358fd3651e2112d13573bef96c769d2e17OFKU+pAhOv0mMmLdjb9cICFsy+dQPmyVErI/V6XHZYmnhayeXxv2s+sBVBoIhm', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 124, NULL, 1, '2026-08-19 09:07:10', 0, '0000-00-00 00:00:00'),
(214, '197507282025211005', 'RABAN TIRUNI, S.Kom', 'fc4284e4826e4f8e1ddfef1d1f611e0ba9a1b70bca8347367f550843abb03c3db7641746ff615217911b5973818ad356a87647f27ed22a64e5e5d852702e2ec8opdHnrjCs6GtRcVSKzU5KvWRFg4xlqmmlWvXprTID2OsJ+/iXG5A9GkPbYvK4aar', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 115, NULL, 1, '2026-08-19 09:23:22', 0, '0000-00-00 00:00:00'),
(215, '199303142025211009', 'ONI SISWANDA', 'c98d2d0b5c0633d78b1a76c3dd732d4b5949c420a6939c4bf08e717d45bd16805e2ceaa65a17f21f1268d665ce15dd9dfce7128f25652c8f261b4416c81584e8uNI9I3XqX2vPb7rfnOA9tvu3BQe9WQFBb6iSXTMH0beq1k0/Nr2BIsDGwFi98C4C', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 126, NULL, 1, '2026-08-19 09:45:38', 0, '0000-00-00 00:00:00'),
(216, '197709062009021001', 'AMZAR SURIZKY. P', '1153379199eb3bc4c61fafe79b748258ee7f9aaa262e1e4019c4e8d7229cc97da339ae7220af596c7b3fe77b7af633727053340a4627c24c4d792b8b55bb293eUTiEBO/6kitUyLnkVscRg8rGEJ9Vc8SoAmb8E1cRAcXlkjrRxevCtHCnsgAqg8R0', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 101, NULL, 1, '2026-08-19 09:49:40', 0, '0000-00-00 00:00:00'),
(217, '199811022022022002', 'SYOFIA FRIHERDINA, A.Md', '942de0352a37ee5d2eea48e0747122cd67ec239118e3b37129998090d2ea30317a723c94e4202350eefd15c4a743a6e7eda2c7645c14de4ea47d496951f6d823KYA2+5hOttQTfvuJyn26C7cGNXR/a7yCubYubdzNGc5OT+ZgP/hcN53lyZmsvuKG', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 124, NULL, 1, '2026-08-19 10:20:56', 0, '0000-00-00 00:00:00'),
(218, '198312312005021006', 'SUPRIADI', 'd3608f18e78d2c3cb65a9c4a3b9ee3c9959567dfdbdfd5da5431c87051d5ba2eb55c683e855e0af30416325a41fbaa18dc6e7defe288beb00cf09a7381ea8fcdJGGfryUmP8wtX6B3p1l/9b/GmBzQeFH9vyjJ2l8BmdKY6iJKBup9Yee7UyWoVoDz', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 122, NULL, 1, '2026-08-19 10:30:39', 0, '0000-00-00 00:00:00'),
(219, '199503272025212020', 'LENI MARLIZA', 'f733df71050d822a84f33838825e7648764d418179d42793a6d4e7e7a6bc164d5c82d2a5010de4707c75dbd74cf59f6494d20479502a58ef9a295883fb69d979lfqvLkBNzoStiHL/IO6gTEi56H8wo/gkBSnCpWEzdBvZCA345pds4vMbCZMvXUTP', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 118, NULL, 1, '2026-08-19 14:31:34', 0, '0000-00-00 00:00:00'),
(220, '198804302024211015', 'JONI ASMAN, S.Kom', 'ee837539f4fbc8a20beff45b553d3f4002695f2adf81aea05b52e7a5eaddadaa088339a84c972512ebda296e8fe4d99a47ff092386e257581479eccba28df9a3o7E4myfrQx1GBubCF/5LTIYGKHNgZ93hzzpBTzcnX5saq/EdssQie3j9yridmhGe', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 121, NULL, 1, '2026-08-20 08:34:56', 0, '0000-00-00 00:00:00'),
(221, '198609082025211010', 'CHARMA RISSENO', 'd35e0c43b83369bfb1dc2b95de01c0a109b434baecf48f5e4593b58b7a1a4ec763e1bd76e8459f06e72b7d14927aca040cb053998f4b8af88a3115ab60904533qiJg0mwksRHbajH2v9AQivfD22JkeT/wXmbksUy51DxpU7jLvr/x310nupu9CBIk', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 136, NULL, 1, '2026-08-20 08:44:22', 0, '0000-00-00 00:00:00'),
(222, '200010092025211035', 'ARI OKTAFIO', '384e5e774095795addac524997ee8a31e1886091e24ff02db838a014ea1668a7017277e5395c678a4608ff082aa2f5df159a44e39c11c19fda0ec5649068af23W55tlNhXTVRRmx/aBYYd+DxFV2XWjQrfZn535pfYVqA/TnQeA9a68zVndRbH6cAb', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 151, NULL, 1, '2026-08-20 08:46:38', 0, '0000-00-00 00:00:00'),
(223, '197902182009021003', 'ASRISANDY, A.Md.', 'e395311acea2082a983caef3dc6fc98924ba2eea79c2ae94ad6da38ff43d569ae46de289550d246084bcf7d43f0e06412102e7e27ba9257ad4bbc1d532d4bf64R7B+Y54HRSTA03OfO1wZm1/PjTV8EqY+RgV9/p3gifFFQLoSRV/K+533Lmo7lrw8', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 149, NULL, 1, '2026-08-20 08:46:50', 0, '0000-00-00 00:00:00'),
(224, '198003022008032001', 'ILMARYEFA, SKM', '967e49dab5b918dc09af020583ab25da196bc657d0cc933ee11f685a45a3afedd35230790d01d77f2a116f22c218c7a5bf4da217c10bbcb3deef8934bc5ebbd6vfH8lZd+aWGt0UgH+sTBrBl+EpA2gGXIcsdUF670KYXpRDzmBZn6+kEbc4PY39yt', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 154, NULL, 1, '2026-08-20 09:00:59', 0, '0000-00-00 00:00:00'),
(225, '199104112025041001', 'dr. BUDI ARIWIBOWO', '5977ff809c79efe84f2c5f39f0854d5987bbe6b7dfceffc8247a40f5d08619d67787c897fa48163550d392316a3eb3d5de20f287d1bf74b6fd3b0a335d02127dMZB1pY1gXiBVIir3sXuHFFBpDvXUghlJJ6knPUUq9ir4bFZCQd9aX2Gk/VGGQL0E', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 154, NULL, 1, '2026-08-20 09:01:25', 0, '0000-00-00 00:00:00'),
(226, '199510212025212007', 'DECA MUSTIKA, S.IP', '3ebfae1f34beabd779152cf349ae216598ae053f24d8c3592d1f8fb49a6995e49ca71d683216f7ca23f22302869089bf0632762d93d35ceae8125f990d40dabdScggZphRXekFWk5SkRaTpPexHbuVMG7vWRHF6Lq29eo+qOBwFqCMOooBADlhcEN5', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 131, NULL, 1, '2026-08-20 09:13:18', 0, '0000-00-00 00:00:00'),
(227, '199301182024212004', 'EVA NEILFINA BR. PANJAITAN, S.K.M', '9acc7c050626c2062669896e68909a18193d2324b47ff55ee15803ce7a4a579bcc133a083f7ac7b6bd2d102ec5f83bca78b28b51497426b3493d930f33aa65491CydVm7AvII1JVWcTfLBg0sGtrfiO1ASbu/J+pawjwfm5xTUtOICppGtYUMUL0k9', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 157, NULL, 1, '2026-08-20 09:16:07', 0, '0000-00-00 00:00:00'),
(228, '197305202006041022', 'GAPAR', '4e8a54a8c374ebbbc69b6e3717d8a94816048787cb83fafc52c6aaa991833e282df8c40ade92735f22dc3fe20510b4dfc692e7f9a3b6e70b2414af5e24a880c3WeKZImVX42TxjvvjtwdEpt6ogsvQzGGFWcIorNgt5gRGb8kRmvztgecb0nTib58k', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 131, NULL, 1, '2026-08-20 09:16:31', 0, '0000-00-00 00:00:00'),
(229, '198512022025212013', 'HERNI', '198ed679c1514aa330f3cf091852c477411d0da05807202536cf33b5aaf797a08e754a062dde427e42a40e42d2f235bada31cf0d28dfa772435663beb9d1f1078Diib/+qQfgLdKprDum9rP8MXofye8jabYgwewuqyQsz74eQKBxMfioy1tXfcGpk', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 141, NULL, 1, '2026-08-20 09:16:50', 0, '0000-00-00 00:00:00'),
(230, '198601152025211007', 'SUTRISNO', '460485e68b6234bd06d7fb6d1da7c31d19150dade14dbd2eb05d69fef820b95c8dcd409b07304fb99976b9999cec1124b54a8c4a6b36479a650a12cf7e3abfe1WjRYQSFQLdPDSNx88JH7mQSNVWEMhjv27PHEQUXvzyR7snB1Xb2V/+4t4ow7Bnyz', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 150, NULL, 1, '2026-08-20 09:18:29', 0, '0000-00-00 00:00:00'),
(231, '197707012008011013', 'SUHENDRI', '2d9d2d942dfe612201cc73ab65ba9392bb82c315fceec4517e8335c000cef0b225bd5fbe83b4921797f1748b9cadc114a6df2943fd6177b8cb1ac3bd506cbe53BvQCPrY/9R24y+wWOMpCICNe/35JRt1bHNS1fUO7Bo5YZbcYx1mzRhKeWhMzmdnu', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 133, NULL, 1, '2026-08-20 09:19:09', 0, '0000-00-00 00:00:00'),
(232, '197105202007011029', 'RONNY SAPUTRA, S.Sos', '5b83e9567a60a8b52c49dc66758ef47cb31fdac0b51d5aedc17a6e281555232b4b86174357dccb819326506f6c7e216c54157ba4b72c12c4bd52a0502ea796c3fR55SH00AqXqSS2GvEBWrX9sq5qov+HIQr46HjOGQpMqa928vgQ+2PIXsWFYExxl', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 135, NULL, 1, '2026-08-20 09:53:00', 0, '0000-00-00 00:00:00'),
(233, '2172021202670001', 'SYAINDRA RIYANTO', '20da87d760240800f73e93a4de66157b3554dc5da0a308c1faac229954ad128632a6455dacc7368b72e60d766f62d8de4f9f291be0ebef9e8c50963faf956c12iVAYg1evK8nTzUrpfScW0W4hzsQWiRhanFPJmnEk3qglqZC7oNC0NFPfyTg4P9nk', 'syaindra.rianto@gmail.com', '0000-00-00 00:00:00', 1, '0813 6705 6346', NULL, NULL, 'layout_admin_vertical', 142, NULL, 1, '2026-08-20 09:56:25', 0, '0000-00-00 00:00:00'),
(234, '199208282025211010', 'MUHAMMAD ARIANSYAH, S. Sos', '9a9cb12cb596ae39e1e57794a153ff9b123764ed8ac90d179c5112fa1b4495d40348de1bb305d52abcc9da0a38f50802d54178fbe96f21eab4ad8a7bb21318483tG4Ayl3DzZYvlO2iu/F83j1Owm8invhmT0Hl89KFGbncN29aD5CzpmyFLLgwONT', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 137, NULL, 1, '2026-08-20 10:20:57', 0, '0000-00-00 00:00:00'),
(235, '198702272025211009', 'AHMAD FAISAL, S.IP', '0854da5b90693a6c85a26e45aac65d1d5674306d691b86524ef41ccaf0091b20e6aa95df6beec104003be834fbf27b1a3bdf7b12b493f6ffbb4d97baaf20f3e7ujZyLI2lAb3rpebs82niA0Z/pWv9wOItSQJByWEQvXjE+iKExnyzXNhDDwafqJ7z', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 103, NULL, 1, '2026-08-21 08:46:39', 0, '0000-00-00 00:00:00'),
(236, '198605232015031002', 'MUHAMMAD HARIS, S.Sos', 'c52d7634a7d1cda5c90286d9418a93c0a5e359136bca086e69826179a2eed1e21f5f96015f23fbb1651840593006810d7d20f0fa1984073b711b62983095c72csaKeZp0y1WeX6FDM8MWYj8oSgekCblnJ+t2cqSZjDN84LLphovVyqx9fkrj2JNmi', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 102, NULL, 1, '2026-08-21 08:52:48', 0, '0000-00-00 00:00:00'),
(237, '198312042009021007', 'SYAFRIZAL, S.T', '7d82d0418cfef4fb0e543103266689b89fbb5c799dd9bdcbc99b598d4d936b5d9d60d8c61551887cf123d10dbc3dbd0baab7de49c5afc3a917f193e51fc343afVDBcKlhl86plIzmM6i2mQ+GhCC/OGP7xERJ8vxc2lg6ly7oKOgH8FIAKDjyDwIpZ', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 105, NULL, 1, '2026-08-21 09:21:30', 0, '0000-00-00 00:00:00'),
(238, '198802072019021004', 'MUFLIH SYUKRON, S.Kom', '0ed85e36bdba0a5cb9e7f8ce2b0d0e427e9f6210c8983b110fdd4b1890396b3af269e77a7a7f7e2974c5f2059138115ce2802adec7355edcf684599025b87069R5gZajm6UtWB/kTj3VPDlct+QdT9vae3JpQ/YV3joDGAjSG5+Vq1ASJHEchbmor8', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 128, NULL, 1, '2026-08-21 09:23:01', 0, '0000-00-00 00:00:00'),
(239, '197808062009022005', 'HALIPAH HAINI, S.Kom', 'f1327cbc084a6d92352db379bf9c58ec42e96246d17dafe3fce0885db40ac19c8bee6eed21f683b003992121fd3c3be55db0e19aee007f66de6ba1d90cc924c0Czp20nL+bX+Ttnyk9x0uYjCMVn2C1NRUY9YeR5LYKJo8QC+cF0clPaBLKIJRvvPM', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 105, NULL, 1, '2026-08-21 09:55:44', 0, '0000-00-00 00:00:00'),
(240, '197207211994031005', 'ABDUL KARIM, SST', '04de51e6f4130358de2a3dd01f324e4e4be677736979a41cb2393db1c9aaad590b6e3eb7d8e0b5bb328c90d48c7f34318de2a6334c35530c889f17fa9247bfd2XZ1zQ+xfuDuCOeKNj5CGO0XYmTtBKsIwZUgE83LEA6mT52RcQnqNKd3IDdk5GPoy', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 124, NULL, 1, '2026-10-07 10:19:20', 0, '0000-00-00 00:00:00'),
(241, '199406292022021001', 'BAGUS WAHYU PRASTYO, M.Or', '66e32f0e24d96e1cfc4a9f5c80c9dca790da94a8ac800fb5aed39a7ab686a82a8c7fc6fbc10d360d289386fffc2043b03118287d73318a32a098f9d748a8c1d70otrfBxX+5vM1XgJfTJWNYyuNlsvaPeao6PMOxBP8Xf7zGW6yyfnLsv24y3dRN0d', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 118, NULL, 1, '2026-10-09 10:01:23', 0, '0000-00-00 00:00:00'),
(242, '197609102006041012', 'HENDRO WIBOWO, S.AP', '0e481e5d1096b296f633b2effe2f1dbcb410aab672325ea71b13c481c1f6244ed9334a33c5e03f5a31268e2ca00cbd96adef0a408adfd723e45aae13524bcbd4oZgi9SEEA/VdRWScsaQ+8NTnio4o+RUKYclUOwHhtjgpdCclvZWhQRQooDe4/0HI', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 110, NULL, 1, '2026-10-19 12:40:39', 0, '0000-00-00 00:00:00'),
(243, '197512052008032002', 'DESSY DARYATI, ST', '865d3e460b88ce9c8ea16a595c431f5e89fb1f949af9f85dd00757210f32d18550837350a8974ce3a32c37ae05868aa71c16936409d1b2d7b93762819305e290T/Jk4QlDkhY8JSbLInn5Hz/l0TuGg3/5G3tMTD8NDBoa2pSPVeLeD0JqDWdCAPaq', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 124, NULL, 1, '2026-10-19 13:03:11', 0, '0000-00-00 00:00:00'),
(244, '199407062025212006', 'JULIANA MAHDARANTY, SE', 'f0881c69d426b92306c6a801a51a34f634e5beab85965b86dde38de29e4bc93c832d814dc4a47d0a75ed6cb4debd8e38f820d7e9218816f13bae3da4cddb1184nFebv1tuDOX45vFEhzkUVDcDoDqE+IAfyjiUJx2SR7/gVBx68KvuwmeEqUoytxER', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 132, NULL, 1, '2026-10-22 01:42:37', 0, '0000-00-00 00:00:00'),
(245, '198505222025212014', 'REFA DEWIYANA', '44d023d46e86a81fe90c1f0c0997ace2fe9f5022189b08768ae627427fa3e11612bc4199c818526f1acfb5514012ee710d474ad1f98871d4d6229f73c06616e4AFFUmrF6ZA2z1LFqun8LXqysfUs8O2HVws4IVBSwys7yw24K4lfav6jqGrWLfIQM', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 107, NULL, 1, '2026-10-22 01:48:09', 0, '0000-00-00 00:00:00'),
(246, '200008242025212003', 'IVO NILA TRIANA DEWI, S.E', 'c0380f2661d63e2080566ce49804799022122f356a41c57f53edfccbdb1afe7bea4b59c8f3af579f24b28643f13f0cc5a8df2e7f47749c586ed101f3b88d8247+xZhxG9XNfRJfadvAhakY65ClqRTDhQaJhZxALCrs4Kuqf1bVzjyiZp9FRWJ3OAS', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 133, NULL, 1, '2026-10-22 01:50:29', 0, '0000-00-00 00:00:00'),
(247, '199607152020122004', 'SRI FATHENIA QISTHI, S.Psi', 'cf14bfb3262f96dc748ef8f59891c80e83f7139f995dce9d75bdbba6b2b21a904f30b4a1a4b16f91338d1e4d0843f407eb22230dbcdce3a247c543cb8003e64dRloNanyjTdt+RCuhOGQ6OUQVCnVSqW6rlcZu6Hs+utksvMDRkUNrdwEXI0Ioksgu', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 111, NULL, 1, '2026-10-22 01:53:41', 0, '0000-00-00 00:00:00'),
(248, '197001131990091002', 'ACHMAD NUR FATAH, S.Sos., M.Si', 'fb50a7367d17c5e298c52326fa62602ddce7e347b3dfcc1d5b8402a047fae9567c874849a56799e19767e24f52f13d6eb0aac91d3f70861c207b76da334056cbfG60DSatApYjdv30K+rooUFCBAsgkOvKtB/ngxvQnSiqR0qZHPYLF2R5Y2URTq2w', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 105, NULL, 1, '2026-10-22 01:54:49', 0, '0000-00-00 00:00:00'),
(249, '199302032024212037', 'VALLEN INTAN DIKA PRATIWI, ST', 'a58a31f812dda83c7a1a34419f352bf968903ae6d805ab532a1f5587d6b741680599377ab7d3fd3ee622dbb6f52698912eeb60609e3be997bacb79c894156093wpbbzNxN7jXrYX4GU+d/RXTTGRAlZShe2DksqDMmf2oSWZhn+Gzn5LJFMeNXEweW', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 125, NULL, 1, '2026-10-22 02:09:38', 0, '0000-00-00 00:00:00'),
(250, '198708312010012004', 'NIDIA WIDIASTUTI SELAYAR, S.H, M.H', 'df0d813275f639c07fbb9fe5cb3842dad88e4767e0155517866e8568cb1f19596d937a3e7680f66ca80f1ece9e543087ad2bb7eeee9b1597aa423be131d080d0k9PpfND1kh29/RF+TUZpyem1DMWz9YHfVpOQXdRWHPmcvBeDXFV7YmN+S8N7Rvy1', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 101, NULL, 1, '2026-10-22 02:15:15', 0, '0000-00-00 00:00:00'),
(251, '197701152007012014', 'SUSANA, SE', 'f869bfcc7644ec93c6fab08253169c8ce462ff4a72f3f3958476ec7f82737917b6a9d5c3acf39b8d77e620cf4ac96064a02d74edcd211c696a38dc83cbbb68ccpUfMFDqK3uS27p5rtJkolQMYcrkpU0p6eK3JXRXJ9587gq/ZgbQE7MNBBtFAJbyA', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 128, NULL, 1, '2026-10-22 02:18:00', 0, '0000-00-00 00:00:00'),
(252, '197905292007011008', 'SIGIT RIYANTO, S.Sos', 'f9ed9b551dbec701fc9ee2c97ecf0e5ec47544d5227042d1b748411ec13fd9ed72e483780fabda540a54eaaac42729000a5fe8a2e2fc41f771b6994fb9954654Qz4+8EqajPnUbVoS0MeQ7mVWREcXN9Yp8x7KOmS0Qpzjr/h1z888QLJGJKwz1yfa', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 128, NULL, 1, '2026-10-22 02:19:24', 0, '0000-00-00 00:00:00'),
(253, '197903132006042024', 'AZRIYANA, S.IP', 'e98e9bbfd4d8b0082e65ccb78e26553051a0982aefba02fa0ee5c79184309853288407964852a32071a7bbafce52d757762dda0bab91ec3c8e00f015a2d34351x26Alew/OU8I6Mt9H1DSnTxxj9dS8iGW+v1Jg4NKJ+jE1eSjSER8KUurbqxVAf1c', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 107, NULL, 1, '2026-10-22 02:21:27', 0, '0000-00-00 00:00:00'),
(254, '198610092022022001', 'SHINTA OKTAVINA, A.Md', '2c5f0a651ecb1b2bfe62fb87fb207165fdded4b0351fb644a0371332ef9bab915bc6744646cbdeeb1e9bfa87f4d697cdccf5756b0fe33c5f5afef1c88b8cee3aejebYa7UGrAOl4Gdmiy3otalMa0unaSVzOJwl64eAOFDR0yXJOqTYuhiCfhf1yT2', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 129, NULL, 1, '2026-10-22 02:22:35', 0, '0000-00-00 00:00:00'),
(255, '197204072003121006', 'SAID ZAINAL ARIFIN, S.Mn., M.Si', '0c49d0c3f8b58c22b917193a4bfbaddfeb3c60a4fbdbd4ded98f8b16f08e30c5fab6af241e6151c418dd0c6dbecf113512bd39c1c978a391c85eba0a18cdb305UrrC+wyT6iHKT5Lbv8KY2dQHNwrcTdfv7syUYPc45Idq5C0nu6xko+8ZOz2t2Ncd', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 105, NULL, 1, '2026-10-22 02:25:38', 0, '0000-00-00 00:00:00'),
(256, '198012182000122001', 'AMALIA SUSANTI, S.STP', '6f332780bb48828f0d7557686d9b722bf37f6b6f3cb7e6d83618e750a2a4d2314e33674f8160c75d2b745ade8139edf10a0ca2a30854037b4c803a28bdc01a16sQ+XWfsj4Yor7oW/7K+aKzExspgapyQ5BXPry4gPSb2rl5zhATeCW7KgwlqZCvnd', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 105, NULL, 1, '2026-10-22 02:26:01', 0, '0000-00-00 00:00:00'),
(257, '198802142023211025', 'BAGUS PRIBADI, S.Sos', '2c975d03aab8cd90454b7b479460705e4f1df4e191cc5ef349de99c23954d31aca1041bcc97b535e5e3446dfa5365bf0b2aaa5cf6fd43ddee9215cb63d1eff48JHQkZoCyDcL6g8MPKKLYq7sMNgXFdPJ47tPIorxiL4/2bp3lm9KflZL+JzjGa9OP', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 105, NULL, 1, '2026-10-22 02:27:11', 0, '0000-00-00 00:00:00'),
(258, '197902262007012012', 'MONALISA, A.Md', '253d94710b14a7f32cdb068e50ebab2d32d1d9d0d3a0443dbdb4d12edee8abe12803d22afbd93a882fc29a797a6cbd3d97446de14d33eedc97edb5a5fe73c7738xfVtlWh9jL5iGs5yBaWutAtTbojG3fuDtY/hZXQRdoskxEeZOwMjRs3wnjOcmOu', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 105, NULL, 1, '2026-10-22 02:30:14', 0, '0000-00-00 00:00:00'),
(259, '197201212003122006', 'LILIAN ARDAYANI, S.Sos', '1b9309751d0cdf6cf6cb61a82005c921e34eeb80abe50b85fc024c5ceaa9dfa2d4b238bf6e567b47d3ab1ba40783ca329ee1deeaa4cab576e4f502872aefe5a7mnULR4Se1PZ9i8mPmYFbrneC4wFuEM4KjkgjVYy8oV1wwjqHnu6yolcRXGgBPpBG', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 119, NULL, 1, '2026-10-22 15:02:43', 0, '0000-00-00 00:00:00'),
(260, '198002272007011014', 'ICHSAN PRAMATYA, S.Sos', '4fd11c1eda172eaf3a6a92f1896288c4300a3808a79e4fc48141edad204648a4f96d6374ba3681088022cc92aaa497385f93e687758716194f8f7dfded95122eAuGLBt+RO+XyYXMICR5nLWnTkzxT8yXdwkrz6kNdadrzK2wfyyStR11702+fdasK', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'layout_admin_vertical', 140, NULL, 1, '2026-10-23 09:24:32', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_groups`
--

CREATE TABLE `users_groups` (
  `user_group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `users_groups`
--

INSERT INTO `users_groups` (`user_group_id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(3, 2, 2),
(5, 3, 3),
(8, 6, 3),
(11, 9, 3),
(12, 10, 3),
(13, 7, 1),
(15, 12, 3),
(16, 13, 3),
(20, 11, 1),
(21, 11, 3),
(22, 15, 3),
(23, 16, 3),
(24, 17, 3),
(26, 19, 3),
(27, 20, 3),
(28, 21, 3),
(29, 22, 3),
(30, 23, 3),
(31, 24, 3),
(32, 25, 3),
(33, 26, 3),
(34, 27, 3),
(35, 28, 3),
(37, 29, 3),
(38, 30, 3),
(39, 31, 3),
(40, 32, 3),
(41, 33, 3),
(42, 34, 3),
(43, 35, 3),
(44, 36, 3),
(45, 37, 3),
(46, 38, 3),
(47, 39, 3),
(48, 40, 3),
(49, 41, 3),
(50, 42, 3),
(51, 43, 3),
(52, 44, 3),
(53, 45, 3),
(54, 46, 3),
(55, 47, 3),
(56, 48, 3),
(57, 49, 3),
(58, 50, 3),
(59, 51, 3),
(60, 52, 3),
(61, 53, 3),
(63, 55, 3),
(64, 56, 3),
(65, 57, 3),
(66, 58, 3),
(67, 59, 3),
(68, 60, 3),
(69, 61, 3),
(70, 62, 3),
(71, 63, 3),
(72, 64, 3),
(73, 65, 3),
(74, 66, 3),
(77, 68, 3),
(78, 69, 3),
(79, 70, 3),
(80, 71, 3),
(81, 72, 3),
(82, 73, 3),
(83, 74, 3),
(84, 75, 3),
(85, 76, 3),
(86, 77, 3),
(87, 78, 3),
(88, 79, 3),
(89, 80, 3),
(90, 81, 3),
(91, 82, 3),
(92, 83, 3),
(93, 84, 3),
(94, 85, 3),
(95, 86, 3),
(96, 87, 3),
(97, 88, 3),
(98, 89, 3),
(99, 90, 3),
(100, 91, 3),
(101, 92, 3),
(102, 93, 3),
(103, 94, 3),
(104, 95, 3),
(105, 96, 3),
(106, 18, 1),
(108, 98, 3),
(109, 99, 3),
(110, 100, 3),
(111, 101, 3),
(112, 14, 3),
(113, 102, 3),
(114, 103, 3),
(115, 104, 3),
(116, 105, 3),
(117, 106, 3),
(118, 107, 3),
(119, 108, 3),
(120, 109, 3),
(121, 110, 3),
(122, 111, 3),
(123, 112, 3),
(124, 113, 3),
(125, 114, 3),
(127, 115, 1),
(128, 115, 3),
(129, 116, 3),
(130, 117, 3),
(131, 5, 1),
(132, 118, 3),
(133, 119, 3),
(134, 8, 1),
(135, 120, 3),
(136, 121, 3),
(137, 122, 3),
(138, 123, 3),
(139, 124, 3),
(140, 125, 3),
(141, 126, 3),
(142, 127, 3),
(143, 128, 3),
(144, 129, 3),
(145, 130, 3),
(146, 131, 3),
(147, 132, 3),
(148, 133, 3),
(149, 134, 3),
(150, 135, 3),
(151, 136, 3),
(152, 137, 3),
(153, 138, 3),
(154, 139, 3),
(155, 140, 3),
(156, 141, 3),
(157, 142, 3),
(158, 143, 3),
(159, 144, 3),
(160, 145, 3),
(161, 146, 3),
(162, 147, 4),
(164, 148, 3),
(165, 149, 3),
(166, 150, 3),
(167, 151, 3),
(168, 152, 3),
(169, 67, 3),
(170, 67, 4),
(171, 153, 3),
(172, 154, 3),
(173, 155, 3),
(174, 156, 3),
(175, 157, 3),
(176, 158, 3),
(177, 159, 3),
(178, 160, 3),
(179, 161, 3),
(180, 162, 3),
(181, 163, 3),
(182, 164, 3),
(183, 165, 3),
(184, 166, 3),
(185, 167, 3),
(186, 168, 3),
(187, 169, 3),
(188, 170, 3),
(189, 171, 3),
(190, 172, 3),
(191, 173, 3),
(192, 174, 3),
(193, 175, 3),
(194, 176, 3),
(195, 177, 3),
(196, 178, 3),
(197, 179, 3),
(198, 180, 3),
(199, 181, 3),
(200, 182, 3),
(201, 183, 3),
(202, 184, 3),
(203, 185, 3),
(204, 186, 3),
(205, 187, 3),
(206, 188, 3),
(207, 189, 3),
(208, 190, 3),
(209, 191, 3),
(210, 192, 3),
(211, 193, 3),
(212, 194, 3),
(213, 195, 3),
(214, 196, 3),
(215, 197, 3),
(216, 198, 3),
(217, 199, 3),
(218, 200, 3),
(219, 97, 3),
(220, 201, 3),
(221, 202, 3),
(222, 203, 3),
(223, 204, 3),
(224, 205, 3),
(225, 206, 3),
(226, 207, 3),
(227, 208, 3),
(228, 209, 3),
(229, 210, 3),
(230, 211, 3),
(231, 212, 3),
(232, 213, 3),
(233, 214, 3),
(234, 215, 3),
(235, 216, 3),
(236, 217, 3),
(237, 218, 3),
(238, 219, 3),
(239, 220, 3),
(240, 221, 3),
(241, 222, 3),
(242, 223, 3),
(243, 224, 3),
(244, 225, 3),
(245, 226, 3),
(246, 227, 3),
(247, 228, 3),
(248, 229, 3),
(249, 230, 3),
(250, 231, 3),
(251, 232, 3),
(252, 233, 3),
(253, 234, 3),
(254, 235, 3),
(255, 236, 3),
(256, 237, 3),
(257, 238, 3),
(258, 239, 3),
(259, 54, 3),
(260, 240, 3),
(261, 241, 3),
(262, 242, 3),
(263, 243, 3),
(264, 244, 3),
(265, 245, 3),
(266, 246, 3),
(267, 247, 3),
(268, 248, 3),
(269, 249, 3),
(270, 250, 3),
(271, 251, 3),
(272, 252, 3),
(273, 253, 3),
(274, 254, 3),
(275, 255, 3),
(276, 256, 3),
(277, 257, 3),
(278, 258, 3),
(279, 259, 3),
(280, 260, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_log`
--

CREATE TABLE `users_log` (
  `user_log_id` int(11) NOT NULL,
  `activity` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `users_log`
--

INSERT INTO `users_log` (`user_log_id`, `activity`, `created_by`, `created_on`) VALUES
(1, 'menambah data panduan (Test)', 1, '2020-05-29 09:07:47'),
(2, 'memperbaharui data config site (Desk Pilkada)', 1, '2020-10-06 10:17:15'),
(3, 'memperbaharui data config site (Desk Pilkada)', 1, '2020-10-06 10:17:39'),
(4, 'memperbaharui data config site (Desk Pilkada)', 1, '2020-10-06 10:17:59'),
(5, 'menambah data modul (Master)', 1, '2020-10-06 10:29:24'),
(6, 'menambah data modul (Tokoh Politik)', 1, '2020-10-06 10:30:03'),
(7, 'memperbaharui data acl (read)', 1, '2020-10-06 10:30:12'),
(8, 'memperbaharui data acl (read)', 1, '2020-10-06 10:30:14'),
(9, 'memperbaharui data acl (create)', 1, '2020-10-06 10:30:14'),
(10, 'memperbaharui data acl (update)', 1, '2020-10-06 10:30:15'),
(11, 'memperbaharui data acl (delete)', 1, '2020-10-06 10:30:16'),
(12, 'memperbaharui data modul (Tokoh Politik)', 1, '2020-10-06 10:44:54'),
(13, 'menambah data modul (Data Kampanye)', 1, '2020-10-06 10:52:32'),
(14, 'memperbaharui data acl (read)', 1, '2020-10-06 10:52:38'),
(15, 'memperbaharui data acl (create)', 1, '2020-10-06 10:52:39'),
(16, 'memperbaharui data acl (update)', 1, '2020-10-06 10:52:40'),
(17, 'memperbaharui data acl (delete)', 1, '2020-10-06 10:52:41'),
(18, 'menambah data modul (Master)', 1, '2020-10-06 11:02:44'),
(19, 'menghapus modul dengan user id 58', 1, '2020-10-06 11:03:22'),
(20, 'menambah data modul (Partai Politik)', 1, '2020-10-06 11:04:14'),
(21, 'memperbaharui data acl (read)', 1, '2020-10-06 11:04:22'),
(22, 'memperbaharui data acl (create)', 1, '2020-10-06 11:04:23'),
(23, 'memperbaharui data acl (update)', 1, '2020-10-06 11:04:24'),
(24, 'memperbaharui data acl (delete)', 1, '2020-10-06 11:04:25'),
(25, 'memperbaharui data partai politik (Demokrat)', 1, '2020-10-06 11:10:31'),
(26, 'memperbaharui data partai politik (Gerindra)', 1, '2020-10-06 11:10:42'),
(27, 'memperbaharui data partai politik (Golkar)', 1, '2020-10-06 11:10:49'),
(28, 'memperbaharui data partai politik (Nasdem)', 1, '2020-10-06 11:11:00'),
(29, 'memperbaharui data partai politik (PDI Perjuangan)', 1, '2020-10-06 11:11:08'),
(30, 'memperbaharui data partai politik (PKS)', 1, '2020-10-06 11:11:26'),
(31, 'menambah data tokoh politik (ZULHENDRI)', 1, '2020-10-06 11:23:41'),
(32, 'memperbaharui data tokoh politik (Ansar)', 1, '2020-10-06 14:08:49'),
(33, 'memperbaharui data tokoh politik (Ansar1)', 1, '2020-10-06 14:09:08'),
(34, 'memperbaharui data tokoh politik (Ansar1)', 1, '2020-10-06 14:09:15'),
(35, 'menghapus data tokoh politik dengan nama ZULHENDRI', 1, '2020-10-06 14:12:02'),
(36, 'memperbaharui data tokoh politik (Ansar)', 1, '2020-10-06 14:20:28'),
(37, 'memperbaharui data tokoh politik (Isdianto)', 1, '2020-10-06 14:23:28'),
(38, 'memperbaharui data tokoh politik (Isdianto)', 1, '2020-10-06 14:25:42'),
(39, 'memperbaharui data tokoh politik (Isdianto)', 1, '2020-10-06 14:26:42'),
(40, 'memperbaharui data tokoh politik (Isdianto)', 1, '2020-10-06 14:26:46'),
(41, 'memperbaharui data tokoh politik (Isdianto)', 1, '2020-10-06 14:26:51'),
(42, 'menambah data modul (Pasangan Calon)', 1, '2020-10-06 14:39:58'),
(43, 'memperbaharui data acl (read)', 1, '2020-10-06 14:40:06'),
(44, 'memperbaharui data acl (create)', 1, '2020-10-06 14:40:07'),
(45, 'memperbaharui data acl (update)', 1, '2020-10-06 14:40:08'),
(46, 'memperbaharui data acl (delete)', 1, '2020-10-06 14:40:09'),
(47, 'menambah data modul (Pilkada)', 1, '2020-10-06 14:48:36'),
(48, 'memperbaharui data acl (read)', 1, '2020-10-06 14:48:49'),
(49, 'memperbaharui data acl (create)', 1, '2020-10-06 14:49:11'),
(50, 'memperbaharui data acl (update)', 1, '2020-10-06 14:49:12'),
(51, 'memperbaharui data acl (delete)', 1, '2020-10-06 14:49:13'),
(52, 'memperbaharui data pilkada (Pilkada Serentak Pemerintah Provinsi Kepulauan Riau)', 1, '2020-10-06 14:51:55'),
(53, 'memperbaharui data pilkada (Pilkada Serentak Pemerintah Provinsi Kepulauan Riau)', 1, '2020-10-06 14:52:02'),
(54, 'memperbaharui data pilkada (Pilkada Serentak Kepulauan Riau)', 1, '2020-10-06 14:52:40'),
(55, 'menambah data group (Admin Desk)', 1, '2020-10-06 14:54:43'),
(56, 'menambah data user (deskkepri)', 1, '2020-10-06 14:55:10'),
(57, 'memperbaharui data user (adminkepri)', 1, '2020-10-06 14:55:27'),
(58, 'menambah data modul (Data Pelanggaran)', 1, '2020-10-06 15:44:52'),
(59, 'memperbaharui data acl (read)', 1, '2020-10-06 15:44:58'),
(60, 'memperbaharui data acl (create)', 1, '2020-10-06 15:44:58'),
(61, 'memperbaharui data acl (update)', 1, '2020-10-06 15:44:59'),
(62, 'memperbaharui data acl (delete)', 1, '2020-10-06 15:45:00'),
(63, 'memperbaharui data acl (read)', 1, '2020-10-06 15:45:01'),
(64, 'memperbaharui data acl (create)', 1, '2020-10-06 15:45:02'),
(65, 'memperbaharui data acl (update)', 1, '2020-10-06 15:45:11'),
(66, 'memperbaharui data acl (delete)', 1, '2020-10-06 15:45:12'),
(67, 'menambah data paslon (4)', 1, '2020-10-06 15:52:36'),
(68, 'menambah data paslon (5)', 1, '2020-10-06 16:00:17'),
(69, 'menambah data paslon (6)', 1, '2020-10-06 16:02:15'),
(70, 'menambah data paslon (7)', 1, '2020-10-06 16:03:18'),
(71, 'menghapus data paslon dengan id 7', 1, '2020-10-06 16:04:34'),
(72, 'menghapus data paslon dengan id 6', 1, '2020-10-06 16:04:36'),
(73, 'menghapus data paslon dengan id 4', 1, '2020-10-06 16:05:06'),
(74, 'menghapus data paslon dengan id 5', 1, '2020-10-06 16:05:09'),
(75, 'menambah data paslon (8)', 1, '2020-10-06 16:05:30'),
(76, 'memperbaharui data paslon dengan id (8)', 1, '2020-10-06 16:07:08'),
(77, 'memperbaharui data paslon dengan id (8)', 1, '2020-10-06 16:07:14'),
(78, 'menghapus data paslon dengan id 8', 1, '2020-10-06 16:07:19'),
(79, 'menambah data paslon (9)', 1, '2020-10-06 16:12:34'),
(80, 'menghapus data paslon dengan id 9', 1, '2020-10-06 16:12:50'),
(81, 'memperbaharui data tokoh politik (H. Muhammad Soeryo Respationo)', 1, '2020-10-08 19:11:42'),
(82, 'memperbaharui data tokoh politik (DRH. Muhammad Soerya Respationo, SH., MH)', 1, '2020-10-08 19:21:08'),
(83, 'memperbaharui data tokoh politik (Iman Sutiawan, SE., MM1)', 1, '2020-10-08 19:21:30'),
(84, 'memperbaharui data tokoh politik (Iman Sutiawan, SE., MM)', 1, '2020-10-08 19:21:49'),
(85, 'memperbaharui data tokoh politik (DR. H. Muhammad Soerya Respationo, SH., MH)', 1, '2020-10-08 19:23:54'),
(86, 'menambah data kampanye (1)', 1, '2020-10-09 10:37:36'),
(87, 'menambah data kampanye (2)', 1, '2020-10-09 10:38:56'),
(88, 'menambah data kampanye (3)', 1, '2020-10-09 10:48:29'),
(89, 'menambah data kampanye (4)', 1, '2020-10-09 10:48:47'),
(90, 'menambah data kampanye (5)', 1, '2020-10-09 10:50:57'),
(91, 'menambah data kampanye (6)', 1, '2020-10-09 10:51:17'),
(92, 'menambah data kampanye (7)', 1, '2020-10-09 10:58:28'),
(93, 'menambah data kampanye (8)', 1, '2020-10-09 10:59:50'),
(94, 'menambah data kampanye (9)', 1, '2020-10-09 11:02:12'),
(95, 'menambah data kampanye (10)', 1, '2020-10-09 11:04:56'),
(96, 'menambah data kampanye (11)', 1, '2020-10-09 11:06:23'),
(97, 'menambah data kampanye (12)', 1, '2020-10-09 11:31:53'),
(98, 'menghapus data kampanye dengan id kampanye 12', 1, '2020-10-09 13:59:33'),
(99, 'menambah data kampanye (1)', 1, '2020-10-09 18:17:38'),
(100, 'memperbaharui data kampanye ()', 1, '2020-10-09 18:17:50'),
(101, 'memperbaharui data kampanye ()', 1, '2020-10-09 18:18:04'),
(102, 'memperbaharui data kampanye id (1)', 1, '2020-10-09 18:21:14'),
(103, 'memperbaharui data kampanye id (1)', 1, '2020-10-09 18:22:13'),
(104, 'memperbaharui data kampanye id (1)', 1, '2020-10-09 18:22:43'),
(105, 'memperbaharui data kampanye id (1)', 1, '2020-10-09 18:29:01'),
(106, 'memperbaharui data kampanye id (1)', 1, '2020-10-09 18:29:11'),
(107, 'memperbaharui data kampanye id (1)', 1, '2020-10-09 18:29:29'),
(108, 'memperbaharui data kampanye id (1)', 1, '2020-10-09 18:29:43'),
(109, 'memperbaharui data kampanye id (1)', 1, '2020-10-09 18:38:51'),
(110, 'memperbaharui data kampanye id (1)', 1, '2020-10-09 18:39:30'),
(111, 'memperbaharui data kampanye id (1)', 1, '2020-10-09 18:41:01'),
(112, 'memperbaharui data kampanye id (1)', 1, '2020-10-09 18:41:10'),
(113, 'memperbaharui data kampanye id (1)', 1, '2020-10-09 18:49:09'),
(114, 'memperbaharui data kampanye id (1)', 1, '2020-10-10 16:20:54'),
(115, 'memperbaharui data kampanye id (1)', 1, '2020-10-10 16:21:15'),
(116, 'memperbaharui data kampanye id (1)', 1, '2020-10-10 16:30:03'),
(117, 'memperbaharui data kampanye id (1)', 1, '2020-10-10 16:30:22'),
(118, 'memperbaharui data kampanye id (1)', 1, '2020-10-10 16:32:09'),
(119, 'memperbaharui data kampanye id (1)', 1, '2020-10-10 16:35:03'),
(120, 'memperbaharui data kampanye id (1)', 1, '2020-10-11 00:47:56'),
(121, 'memperbaharui data kampanye id (1)', 1, '2020-10-11 00:48:41'),
(122, 'memperbaharui data kampanye id (1)', 1, '2020-10-11 00:48:53'),
(123, 'memperbaharui data kampanye id (1)', 1, '2020-10-11 00:49:20'),
(124, 'memperbaharui data kampanye id (1)', 1, '2020-10-11 00:49:29'),
(125, 'memperbaharui data kampanye id (1)', 1, '2020-10-11 01:00:31'),
(126, 'memperbaharui data kampanye id (1)', 1, '2020-10-11 01:00:36'),
(127, 'memperbaharui data kampanye id (1)', 1, '2020-10-11 01:14:08'),
(128, 'memperbaharui data kampanye id (1)', 1, '2020-10-11 01:14:52'),
(129, 'memperbaharui data modul (Data Kampanye)', 1, '2020-10-12 21:27:13'),
(130, 'memperbaharui data acl (delete)', 1, '2020-10-12 21:28:44'),
(131, 'memperbaharui data acl (update)', 1, '2020-10-12 21:28:45'),
(132, 'memperbaharui data acl (create)', 1, '2020-10-12 21:28:46'),
(133, 'memperbaharui data modul (Data Kampanye)', 1, '2020-10-12 22:48:28'),
(134, 'memperbaharui data acl (create)', 1, '2020-10-12 22:48:48'),
(135, 'memperbaharui data acl (update)', 1, '2020-10-12 22:48:48'),
(136, 'memperbaharui data acl (delete)', 1, '2020-10-12 22:48:49'),
(137, 'menambah data kampanye (2)', 1, '2020-10-12 22:52:43'),
(138, 'memperbaharui data kampanye id (2)', 1, '2020-10-12 22:53:01'),
(139, 'memperbaharui data acl (create)', 1, '2020-10-12 22:53:36'),
(140, 'memperbaharui data acl (update)', 1, '2020-10-12 22:53:37'),
(141, 'memperbaharui data acl (delete)', 1, '2020-10-12 22:53:38'),
(142, 'memperbaharui data modul (Data Kampanye)', 1, '2020-10-12 22:53:57'),
(143, 'menambah data modul (Data Kampanye Daerah)', 1, '2020-10-12 23:57:26'),
(144, 'memperbaharui data acl (read)', 1, '2020-10-12 23:57:34'),
(145, 'memperbaharui data acl (create)', 1, '2020-10-12 23:57:34'),
(146, 'memperbaharui data acl (update)', 1, '2020-10-12 23:57:35'),
(147, 'memperbaharui data acl (delete)', 1, '2020-10-12 23:57:36'),
(148, 'memperbaharui data kampanye id (1)', 1, '2020-10-12 23:58:21'),
(149, 'memperbaharui data config site (Desk Pilkada)', 1, '2020-10-13 21:18:17'),
(150, 'memperbaharui data config site (Penilaian Seleksi JPT)', 1, '2022-04-27 08:51:24'),
(151, 'memperbaharui data config site (Penilaian Seleksi JPT)', 1, '2022-04-27 08:51:52'),
(152, 'memperbaharui data config company (tukangketik.Dev)', 1, '2022-04-27 08:52:37'),
(153, 'memperbaharui data config site (Penilaian Seleksi JPT)', 1, '2022-04-27 08:53:51'),
(154, 'memperbaharui data config site (Penilaian Seleksi JPT)', 1, '2022-04-27 08:54:32'),
(155, 'memperbaharui data config site (Penilaian JPT)', 1, '2022-04-27 08:54:44'),
(156, 'memperbaharui data config site (Penilaian JPT)', 1, '2022-04-27 08:56:10'),
(157, 'memperbaharui data config site (Penilaian JPT)', 1, '2022-04-27 09:09:50'),
(158, 'menambah data modul (Seleksi JPT)', 1, '2022-04-27 09:33:09'),
(159, 'memperbaharui data acl (read)', 1, '2022-04-27 09:33:21'),
(160, 'memperbaharui data acl (create)', 1, '2022-04-27 09:33:22'),
(161, 'memperbaharui data acl (update)', 1, '2022-04-27 09:33:23'),
(162, 'memperbaharui data acl (delete)', 1, '2022-04-27 09:33:24'),
(163, 'menambah data master seleksi jpt (seleksis jpt tahun 2022)', 1, '2022-04-27 10:11:47'),
(164, 'memperbaharui data master seleksi jpt (seleksis jpt tahun 2022)', 1, '2022-04-27 12:08:53'),
(165, 'memperbaharui data master seleksi jpt (seleksis jpt tahun 2022)', 1, '2022-04-27 12:09:10'),
(166, 'memperbaharui data master seleksi jpt (seleksis jpt tahun 2022)', 1, '2022-04-27 12:09:25'),
(167, 'memperbaharui data master seleksi jpt (seleksis jpt tahun 2022)', 1, '2022-04-27 12:09:45'),
(168, 'memperbaharui data master seleksi jpt (Seleksi JPT Tahun 2022)', 1, '2022-04-27 12:10:03'),
(169, 'menambah data modul (Pansel)', 1, '2022-04-28 12:04:20'),
(170, 'memperbaharui data modul (Pansel)', 1, '2022-04-28 12:04:47'),
(171, 'memperbaharui data acl (read)', 1, '2022-04-28 12:04:55'),
(172, 'memperbaharui data acl (create)', 1, '2022-04-28 12:04:56'),
(173, 'memperbaharui data acl (update)', 1, '2022-04-28 12:04:57'),
(174, 'memperbaharui data acl (delete)', 1, '2022-04-28 12:04:58'),
(175, 'menambah data master pansel (David)', 1, '2022-04-28 13:39:04'),
(176, 'memperbaharui data master pansel (David)', 1, '2022-04-28 13:39:19'),
(177, 'memperbaharui data master pansel (David)', 1, '2022-04-28 13:39:33'),
(178, 'memperbaharui data master pansel (David)', 1, '2022-04-28 13:40:38'),
(179, 'memperbaharui data master pansel (David)', 1, '2022-04-28 13:40:41'),
(180, 'menghapus data master pansel dengan nama David', 1, '2022-04-28 13:41:33'),
(181, 'memperbaharui data config site (Penilaian JPT)', 1, '2022-04-28 13:47:32'),
(182, 'menambah data master pansel (saiful najib)', 1, '2022-04-28 13:53:56'),
(183, 'menambah data master pansel (David Fherdinan)', 1, '2022-04-28 13:55:11'),
(184, 'menambah data modul (Pegawai)', 1, '2022-04-28 14:04:42'),
(185, 'memperbaharui data acl (read)', 1, '2022-04-28 14:04:50'),
(186, 'memperbaharui data acl (create)', 1, '2022-04-28 14:04:50'),
(187, 'memperbaharui data acl (update)', 1, '2022-04-28 14:04:51'),
(188, 'memperbaharui data acl (delete)', 1, '2022-04-28 14:04:52'),
(189, 'menambah data master pegawai (asdad)', 1, '2022-04-28 14:39:17'),
(190, 'memperbaharui data master pegawai (Tes)', 1, '2022-04-28 14:39:55'),
(191, 'menghapus data master pegawai dengan nama Tes', 1, '2022-04-28 14:40:10'),
(192, 'memperbaharui data master pegawai (Saiful Najib, S.Kom)', 1, '2022-04-28 14:40:24'),
(193, 'menghapus modul dengan user id 59', 1, '2022-04-28 14:41:33'),
(194, 'menghapus modul dengan user id 60', 1, '2022-04-28 14:41:36'),
(195, 'menghapus modul dengan user id 56', 1, '2022-04-28 14:41:43'),
(196, 'menambah data modul (Jenis Penilaian)', 1, '2022-04-28 14:46:50'),
(197, 'memperbaharui data acl (read)', 1, '2022-04-28 14:47:03'),
(198, 'memperbaharui data acl (create)', 1, '2022-04-28 14:47:04'),
(199, 'memperbaharui data acl (update)', 1, '2022-04-28 14:47:05'),
(200, 'memperbaharui data acl (delete)', 1, '2022-04-28 14:47:05'),
(201, 'menambah data master jenis penilaian (Wawancara / Presentasi)', 1, '2022-04-28 15:04:30'),
(202, 'memperbaharui data master jenis nilai (Wawancara / Presentasi)', 1, '2022-04-28 15:04:37'),
(203, 'memperbaharui data master jenis nilai (Wawancara / Presentasi)', 1, '2022-04-28 15:04:40'),
(204, 'memperbaharui data master jenis nilai (Wawancara / Presentasi)', 1, '2022-04-28 15:04:43'),
(205, 'memperbaharui data master jenis nilai (Wawancara / Presentasi)', 1, '2022-04-28 15:04:48'),
(206, 'menambah data group (Admin OPD)', 1, '2022-11-02 21:31:02'),
(207, 'memperbaharui data config site (Pendataan Aplikasi)', 1, '2022-11-02 21:32:29'),
(208, 'memperbaharui data config site (Data Aplikasi)', 1, '2022-11-02 21:33:24'),
(209, 'memperbaharui data config company (Diskominfo Kota Tanjungpinang)', 1, '2022-11-02 21:35:33'),
(210, 'memperbaharui data config site (Data Aplikasi)', 1, '2022-11-02 21:38:48'),
(211, 'menambah data modul (Data Aplikasi)', 1, '2022-11-03 15:23:14'),
(212, 'memperbaharui data acl (read)', 1, '2022-11-03 15:23:28'),
(213, 'memperbaharui data acl (create)', 1, '2022-11-03 15:23:29'),
(214, 'memperbaharui data acl (update)', 1, '2022-11-03 15:23:29'),
(215, 'memperbaharui data acl (delete)', 1, '2022-11-03 15:23:31'),
(216, 'menambah data user (adminkominfo)', 1, '2022-11-03 15:35:26'),
(217, 'memperbaharui data user (adminkominfo)', 1, '2022-11-03 15:38:10'),
(218, 'menambah data master pansel ()', 3, '2022-11-04 14:14:58'),
(219, 'memperbaharui data master pansel ()', 3, '2022-11-04 14:23:39'),
(220, 'memperbaharui data master pansel ()', 3, '2022-11-04 14:28:41'),
(221, 'memperbaharui data master pansel ()', 3, '2022-11-04 14:32:05'),
(222, 'memperbaharui data master pansel ()', 3, '2022-11-04 14:37:41'),
(223, 'menambah data modul (Validasi Aplikasi)', 1, '2022-11-05 22:44:03'),
(224, 'memperbaharui data acl (read)', 1, '2022-11-05 22:44:13'),
(225, 'memperbaharui data acl (update)', 1, '2022-11-05 22:44:14'),
(226, 'memperbaharui data master pansel ()', 1, '2022-11-05 23:48:50'),
(227, 'memperbaharui data master pansel ()', 1, '2022-11-05 23:49:38'),
(228, 'memperbaharui data master pansel ()', 1, '2022-11-05 23:49:44'),
(229, 'memvalidasi data aplikasi dengan id (1)', 1, '2022-11-05 23:54:32'),
(230, 'memvalidasi data aplikasi dengan id (1)', 1, '2022-11-05 23:54:42'),
(231, 'memvalidasi data aplikasi dengan id (1)', 1, '2022-11-07 14:49:17'),
(232, 'memvalidasi data aplikasi dengan id (1)', 1, '2022-11-07 14:49:23'),
(233, 'memperbaharui data acl (read)', 1, '2022-11-10 20:51:24'),
(234, 'memperbaharui data acl (read)', 1, '2022-11-10 20:51:26'),
(235, 'memperbaharui data acl (create)', 1, '2022-11-10 20:51:26'),
(236, 'memperbaharui data acl (update)', 1, '2022-11-10 20:51:27'),
(237, 'memperbaharui data acl (delete)', 1, '2022-11-10 20:51:28'),
(238, 'memperbaharui data acl (read)', 1, '2022-11-10 20:51:31'),
(239, 'memperbaharui data acl (create)', 1, '2022-11-10 20:51:32'),
(240, 'memperbaharui data acl (update)', 1, '2022-11-10 20:51:33'),
(241, 'memperbaharui data acl (delete)', 1, '2022-11-10 20:51:34'),
(242, 'memperbaharui data acl (read)', 1, '2022-11-10 20:51:40'),
(243, 'memperbaharui data acl (read)', 1, '2022-11-10 20:51:41'),
(244, 'memperbaharui data acl (read)', 1, '2022-11-10 20:51:42'),
(245, 'memperbaharui data acl (create)', 1, '2022-11-10 20:51:43'),
(246, 'memperbaharui data acl (update)', 1, '2022-11-10 20:51:43'),
(247, 'memperbaharui data acl (delete)', 1, '2022-11-10 20:51:44'),
(248, 'memperbaharui data acl (delete)', 1, '2022-11-10 20:51:46'),
(249, 'memperbaharui data acl (update)', 1, '2022-11-10 20:51:47'),
(250, 'memperbaharui data acl (create)', 1, '2022-11-10 20:51:48'),
(251, 'memperbaharui data acl (create)', 1, '2022-11-10 20:51:49'),
(252, 'memperbaharui data acl (update)', 1, '2022-11-10 20:51:49'),
(253, 'memperbaharui data acl (delete)', 1, '2022-11-10 20:51:50'),
(254, 'memperbaharui data config site (SIPA)', 1, '2022-11-11 08:31:50'),
(255, 'menambah data aplikasi (Sistem Informasi Pendataan Aplikasi)', 5, '2022-11-11 08:45:11'),
(256, 'menghapus data master pansel dengan nama David Fherdinan', 5, '2022-11-11 09:25:37'),
(257, 'menambah data aplikasi (Sistem Informasi Pendataan Aplikasi)', 5, '2022-11-11 09:40:52'),
(258, 'menghapus user dengan user id 4', 1, '2022-11-17 20:54:20'),
(259, 'menambah data aplikasi (SIPBOS Kota Tanjungpinang)', 7, '2022-11-17 21:18:52'),
(260, 'menambah data aplikasi (Website Portal OPD)', 7, '2022-11-17 21:30:32'),
(261, 'menambah data aplikasi (Website DPMPTSP dan MPP)', 7, '2022-11-17 21:33:39'),
(262, 'menambah data aplikasi (e-BPHTB)', 7, '2022-11-17 21:38:14'),
(263, 'menambah data aplikasi (KSWP)', 7, '2022-11-17 21:41:47'),
(264, 'menambah data aplikasi (INCOMEPOINT)', 7, '2022-11-17 21:46:35'),
(265, 'menambah data aplikasi (PBB Online)', 7, '2022-11-17 21:50:24'),
(266, 'menambah data aplikasi (Gerai Tani\'e)', 7, '2022-11-17 21:54:14'),
(267, 'menambah data aplikasi (Sistem Akuntabilitas Kinerja Instansi Pemerintahan)', 7, '2022-11-17 21:57:18'),
(268, 'memvalidasi data aplikasi dengan id (8)', 1, '2022-11-17 21:58:05'),
(269, 'memvalidasi data aplikasi dengan id (12)', 1, '2022-11-17 21:58:25'),
(270, 'memvalidasi data aplikasi dengan id (10)', 1, '2022-11-17 21:58:31'),
(271, 'memvalidasi data aplikasi dengan id (9)', 1, '2022-11-17 21:58:37'),
(272, 'memvalidasi data aplikasi dengan id (11)', 1, '2022-11-17 22:04:44'),
(273, 'memvalidasi data aplikasi dengan id (4)', 1, '2022-11-17 22:04:52'),
(274, 'memvalidasi data aplikasi dengan id (3)', 1, '2022-11-17 22:04:58'),
(275, 'memvalidasi data aplikasi dengan id (13)', 1, '2022-11-17 22:05:03'),
(276, 'memvalidasi data aplikasi dengan id (5)', 1, '2022-11-17 22:05:10'),
(277, 'memvalidasi data aplikasi dengan id (7)', 1, '2022-11-17 22:05:21'),
(278, 'memvalidasi data aplikasi dengan id (6)', 1, '2022-11-17 22:05:31'),
(279, 'menambah data aplikasi (Website Portal DP3APM)', 8, '2022-11-25 07:25:46'),
(280, 'menambah data aplikasi (Sistem Informasi Arsip Tanah)', 8, '2022-11-25 07:28:29'),
(281, 'menambah data aplikasi (E-Puskesmas)', 8, '2022-11-25 07:30:25'),
(282, 'menambah data aplikasi (Website Support Mall Pelayanan Publik)', 8, '2022-11-25 07:35:17'),
(283, 'menambah data aplikasi (Website MPP)', 8, '2022-11-25 07:39:07'),
(284, 'menambah data aplikasi (SIstem Informasi Kependudukan dan Pencatatan Sipil (SIKANCIL))', 8, '2022-11-25 07:42:58'),
(285, 'menambah data aplikasi (SIMPEG)', 8, '2022-11-25 07:45:58'),
(286, 'memvalidasi data aplikasi dengan id (16)', 1, '2022-11-25 07:49:11'),
(287, 'memvalidasi data aplikasi dengan id (20)', 1, '2022-11-25 07:49:17'),
(288, 'memvalidasi data aplikasi dengan id (15)', 1, '2022-11-25 07:49:24'),
(289, 'memvalidasi data aplikasi dengan id (19)', 1, '2022-11-25 07:49:30'),
(290, 'memvalidasi data aplikasi dengan id (18)', 1, '2022-11-25 07:49:37'),
(291, 'memvalidasi data aplikasi dengan id (14)', 1, '2022-11-25 07:49:43'),
(292, 'memvalidasi data aplikasi dengan id (17)', 1, '2022-11-25 07:49:48'),
(293, 'menambah data aplikasi (JAVIDCON)', 8, '2022-11-25 08:04:16'),
(294, 'menambah data aplikasi (Digital Up Skill)', 8, '2022-11-25 08:05:56'),
(295, 'menambah data aplikasi (Laporan Harta Kekayaan Aparatur Sipil Negara)', 8, '2022-11-25 08:08:25'),
(296, 'menambah data aplikasi (Pengelolaan Laporan Harta Kekayaan Penyelenggara Negara)', 8, '2022-11-25 08:11:06'),
(297, 'menambah data aplikasi (Pencegahan dan Pemberantasan Penyalahgunaan dan Peredaran Gelap Narkotika (P4GN))', 8, '2022-11-25 08:17:18'),
(298, 'menambah data aplikasi (SIBIJAK)', 8, '2022-11-25 08:19:23'),
(299, 'menambah data aplikasi (Website Portal DLH)', 8, '2022-11-25 08:22:04'),
(300, 'menambah data aplikasi (E-SAKIP)', 8, '2022-11-25 08:25:05'),
(301, 'menambah data aplikasi (Sistem informasi Manajemen hasil Pengawasan (SIMHP))', 8, '2022-11-25 08:27:27'),
(302, 'menambah data aplikasi (Sistem Informasi Pemantauan Tindak Lanjut Temuan (SIPTL))', 8, '2022-11-25 08:30:24'),
(303, 'menambah data aplikasi (SIMDA Keuangan)', 8, '2022-11-25 08:34:20'),
(304, 'menambah data aplikasi (SIMDA BMD)', 8, '2022-11-25 08:37:58'),
(305, 'memperbaharui data user (199003292022021001)', 1, '2023-01-04 10:16:48'),
(306, 'memvalidasi data aplikasi dengan id (22)', 7, '2023-01-04 10:20:05'),
(307, 'memvalidasi data aplikasi dengan id (22)', 7, '2023-01-04 10:20:15'),
(308, 'menambah data aplikasi (JDIH Kota Tanjungpinang)', 11, '2023-01-09 21:27:52'),
(309, 'menambah data aplikasi (Siap Tindak)', 12, '2023-01-17 06:09:50'),
(310, 'memperbaharui data aplikasi (Siap Tindak)', 12, '2023-01-17 06:10:07'),
(311, 'memperbaharui data user (198602162008031001)', 1, '2023-01-18 11:08:05'),
(312, 'memperbaharui data user (198602162008031001)', 1, '2023-01-18 11:08:34'),
(313, 'menambah data aplikasi (Portal Open Data Tanjungpinang)', 11, '2023-01-18 13:09:53'),
(314, 'memperbaharui data aplikasi (Portal Open Data Tanjungpinang)', 11, '2023-01-18 13:13:19'),
(315, 'menambah data aplikasi (Integrated Content Manajemen Sistem (ICMS))', 11, '2023-01-18 13:23:26'),
(316, 'menambah data aplikasi (Tanjungpinang Aktual)', 11, '2023-01-18 13:29:53'),
(317, 'menambah data aplikasi (Website PPID Kota Tanjungpinang)', 11, '2023-01-18 13:35:16'),
(318, 'menambah data aplikasi (Email Kedinasan Kota Tanjungpinang)', 11, '2023-01-18 13:39:38'),
(319, 'menambah data aplikasi (Website Portal Pemerintah Kota Tanjungpinang)', 11, '2023-01-18 13:49:32'),
(320, 'menambah data aplikasi (SICERDIK Tanjungpinang)', 15, '2023-01-26 10:18:15'),
(321, 'memvalidasi data aplikasi dengan id (28)', 1, '2023-01-31 11:11:34'),
(322, 'memvalidasi data aplikasi dengan id (36)', 1, '2023-01-31 11:11:40'),
(323, 'memvalidasi data aplikasi dengan id (21)', 1, '2023-01-31 11:11:45'),
(324, 'memvalidasi data aplikasi dengan id (33)', 1, '2023-01-31 11:11:50'),
(325, 'memvalidasi data aplikasi dengan id (23)', 1, '2023-01-31 11:12:07'),
(326, 'memvalidasi data aplikasi dengan id (39)', 1, '2023-01-31 11:12:21'),
(327, 'memvalidasi data aplikasi dengan id (25)', 1, '2023-01-31 11:13:06'),
(328, 'memvalidasi data aplikasi dengan id (30)', 1, '2023-01-31 11:13:11'),
(329, 'memvalidasi data aplikasi dengan id (27)', 1, '2023-01-31 11:13:26'),
(330, 'memvalidasi data aplikasi dengan id (24)', 1, '2023-01-31 11:13:37'),
(331, 'memvalidasi data aplikasi dengan id (38)', 1, '2023-01-31 11:13:45'),
(332, 'memvalidasi data aplikasi dengan id (40)', 1, '2023-01-31 11:13:58'),
(333, 'memvalidasi data aplikasi dengan id (37)', 1, '2023-01-31 11:14:03'),
(334, 'memvalidasi data aplikasi dengan id (35)', 1, '2023-01-31 11:14:11'),
(335, 'memvalidasi data aplikasi dengan id (31)', 1, '2023-01-31 11:14:17'),
(336, 'memvalidasi data aplikasi dengan id (29)', 1, '2023-01-31 11:14:23'),
(337, 'memvalidasi data aplikasi dengan id (26)', 1, '2023-01-31 11:14:33'),
(338, 'memvalidasi data aplikasi dengan id (34)', 1, '2023-01-31 11:14:45'),
(339, 'memvalidasi data aplikasi dengan id (41)', 1, '2023-01-31 11:14:55'),
(340, 'memvalidasi data aplikasi dengan id (32)', 1, '2023-01-31 11:15:02'),
(341, 'memvalidasi data aplikasi dengan id (22)', 1, '2023-02-20 13:24:46'),
(342, 'memperbaharui data aplikasi (Digital Up Skill)', 18, '2023-02-20 13:28:18'),
(343, 'memvalidasi data aplikasi dengan id (22)', 1, '2023-02-20 13:29:32'),
(344, 'memvalidasi data aplikasi dengan id (1)', 1, '2023-02-20 13:29:47'),
(345, 'memvalidasi data aplikasi dengan id (3)', 1, '2023-02-20 13:30:11'),
(346, 'memperbaharui data aplikasi (Sistem Informasi Aktivitas Presensi (SIAP))', 18, '2023-02-20 13:32:40'),
(347, 'memvalidasi data aplikasi dengan id (37)', 1, '2023-02-20 13:38:53'),
(348, 'memperbaharui data aplikasi (Tanjungpinang Aktual)', 18, '2023-02-20 13:44:43'),
(349, 'menambah data aplikasi (Dagin Market Hub)', 19, '2023-02-27 12:05:38'),
(350, 'menambah data aplikasi (OSS)', 24, '2023-02-28 14:44:00'),
(351, 'menambah data aplikasi (SICANTIK)', 24, '2023-02-28 14:51:13'),
(352, 'menambah data aplikasi (SIMBG)', 24, '2023-02-28 14:54:37'),
(353, 'menambah data aplikasi (Website Dinas Perdagangan dan Perindustrian Kota Tanjungpinang)', 19, '2023-02-28 16:21:44'),
(354, 'memperbaharui data aplikasi (Website Dinas Perdagangan dan Perindustrian Kota Tanjungpinang)', 19, '2023-02-28 16:22:16'),
(355, 'memperbaharui data user (198804102015031001)', 1, '2023-02-28 16:44:23'),
(356, 'menambah data aplikasi (asd)', 18, '2023-03-02 18:27:10'),
(357, 'menghapus data master pansel dengan nama', 18, '2023-03-02 18:28:32'),
(358, 'menambah data aplikasi (SIORMAS)', 30, '2023-03-03 09:26:07'),
(359, 'menambah data aplikasi (SRIKANDI)', 30, '2023-03-03 11:25:22'),
(360, 'menambah data aplikasi (website)', 36, '2023-03-03 13:14:42'),
(361, 'menambah data aplikasi (Sistem Kewaspadaan Dini dan Respon (SKDR) Surveilans)', 40, '2023-03-06 12:03:32'),
(362, 'menambah data aplikasi (sigiziterpadu)', 42, '2023-03-06 12:48:04'),
(363, 'menambah data aplikasi (SITKO)', 33, '2023-03-06 12:54:49'),
(364, 'menambah data aplikasi (RENBUT)', 43, '2023-03-06 13:02:55'),
(365, 'menambah data aplikasi (SI-SDMK)', 43, '2023-03-06 13:24:13'),
(366, 'memperbaharui data aplikasi (SI-SDMK)', 43, '2023-03-06 13:25:25'),
(367, 'mengganti email', 44, '2023-03-06 13:30:54'),
(368, 'mengganti no hp', 44, '2023-03-06 13:31:11'),
(369, 'menambah data aplikasi (E-Formasi Sibangjangkri)', 43, '2023-03-06 13:34:30'),
(370, 'menambah data aplikasi (Website BKPSDM Kota Tanjungpinang)', 35, '2023-03-07 10:27:28'),
(371, 'memperbaharui data aplikasi (Website BKPSDM Kota Tanjungpinang)', 35, '2023-03-07 10:34:46'),
(372, 'memperbaharui data aplikasi (Website BKPSDM Kota Tanjungpinang)', 35, '2023-03-07 10:40:21'),
(373, 'memperbaharui data aplikasi (Website BKPSDM Kota Tanjungpinang)', 35, '2023-03-07 10:40:31'),
(374, 'menambah data aplikasi (APEKEJE)', 35, '2023-03-07 11:27:39'),
(375, 'menambah data aplikasi (CMS)', 48, '2023-03-07 14:01:45'),
(376, 'menambah data aplikasi (SIPD KEUANGAN)', 48, '2023-03-07 14:06:59'),
(377, 'memperbaharui data aplikasi (CMS)', 48, '2023-03-07 14:22:19'),
(378, 'menambah data aplikasi (LPSE TANJUNGPINANG)', 48, '2023-03-07 14:25:55'),
(379, 'menambah data aplikasi (SIPD PERENCANAAN)', 48, '2023-03-07 14:29:04'),
(380, 'menambah data aplikasi (SIRUP)', 48, '2023-03-07 14:33:49'),
(381, 'memperbaharui data aplikasi (sigiziterpadu)', 42, '2023-03-07 14:48:43'),
(382, 'menambah data aplikasi (SILANTOR)', 55, '2023-03-08 15:34:38'),
(383, 'menambah data aplikasi (ESISMAIL V.3)', 55, '2023-03-08 15:40:36'),
(384, 'menghapus data master pansel dengan nama', 55, '2023-03-08 15:41:49'),
(385, 'menambah data aplikasi (ESISMAIL V.3)', 44, '2023-03-08 15:44:11'),
(386, 'menambah data aplikasi (e-ROBKOP)', 54, '2023-03-08 19:59:21'),
(387, 'menambah data aplikasi (Ekohort)', 38, '2023-03-09 09:28:32'),
(388, 'menambah data aplikasi (Siga BKKBN)', 38, '2023-03-09 09:32:17'),
(389, 'menambah data aplikasi (Sigizi Terpadu)', 38, '2023-03-09 09:38:00'),
(390, 'memperbaharui data aplikasi (Sigizi Terpadu)', 38, '2023-03-09 09:38:34'),
(391, 'menambah data aplikasi (siskohatkes)', 38, '2023-03-09 09:42:07'),
(392, 'memperbaharui data aplikasi (Ekohort)', 38, '2023-03-09 09:42:58'),
(393, 'menambah data aplikasi (Simona)', 38, '2023-03-09 09:47:42'),
(394, 'memperbaharui data aplikasi (Siskohatkes)', 38, '2023-03-09 09:48:10'),
(395, 'menambah data aplikasi (Asik Sehat IndonesiaKu)', 38, '2023-03-09 09:54:19'),
(396, 'menambah data aplikasi (Erenggar Bok Salur)', 38, '2023-03-09 09:58:09'),
(397, 'menambah data aplikasi (Aplikasi Keluarga Sehat Versi 2.0)', 38, '2023-03-09 10:07:18'),
(398, 'memperbaharui data aplikasi (Aplikasi Keluarga Sehat Versi 2.0)', 38, '2023-03-09 10:07:32'),
(399, 'menambah data aplikasi (SIPD)', 38, '2023-03-09 10:19:32'),
(400, 'menambah data aplikasi (SIPD)', 38, '2023-03-09 10:22:00'),
(401, 'memperbaharui data aplikasi (SIPD)', 38, '2023-03-09 10:23:32'),
(402, 'menambah data aplikasi (CMS BRK)', 38, '2023-03-09 10:27:44'),
(403, 'menambah data aplikasi (Silantor)', 38, '2023-03-09 10:30:59'),
(404, 'menambah data aplikasi (Aspak)', 38, '2023-03-09 10:34:27'),
(405, 'menambah data aplikasi (Skdr)', 38, '2023-03-09 10:37:28'),
(406, 'menambah data aplikasi (Pcare BPJS)', 38, '2023-03-09 10:53:34'),
(407, 'memperbaharui data aplikasi (Pcare BPJS)', 38, '2023-03-09 10:57:07'),
(408, 'memperbaharui data aplikasi (Erenggar Bok Salur)', 38, '2023-03-09 10:57:35'),
(409, 'memperbaharui data aplikasi (ePPGBM)', 38, '2023-03-09 11:05:10'),
(410, 'menambah data aplikasi (e-Monev TFU)', 38, '2023-03-09 11:27:06'),
(411, 'memperbaharui data aplikasi (SIPD)', 38, '2023-03-09 11:28:18'),
(412, 'memperbaharui data aplikasi (CMS BRK)', 38, '2023-03-09 11:30:05'),
(413, 'memperbaharui data aplikasi (SIPD)', 38, '2023-03-09 11:30:22'),
(414, 'menambah data aplikasi (SITB)', 38, '2023-03-09 11:37:55'),
(415, 'menambah data aplikasi (Sikelim)', 38, '2023-03-09 11:46:15'),
(416, 'memperbaharui data aplikasi (Pcare BPJS)', 38, '2023-03-09 11:47:21'),
(417, 'menambah data aplikasi (TPM)', 38, '2023-03-09 11:52:02'),
(418, 'menambah data aplikasi (Sihepi)', 38, '2023-03-09 11:55:04'),
(419, 'memperbaharui data aplikasi (Sihepi)', 38, '2023-03-09 11:55:33'),
(420, 'menambah data aplikasi (Laporan Insidentil)', 57, '2023-03-09 12:18:39'),
(421, 'menambah data aplikasi (SITB)', 46, '2023-03-09 14:29:27'),
(422, 'menambah data aplikasi (ASPAK)', 46, '2023-03-09 14:41:34'),
(423, 'menambah data aplikasi (SISKOHATKES SHAR,I)', 46, '2023-03-09 14:51:27'),
(424, 'memperbaharui data aplikasi (ASPAK)', 46, '2023-03-09 14:51:47'),
(425, 'memperbaharui data aplikasi (SITB)', 46, '2023-03-09 14:52:04'),
(426, 'memperbaharui data aplikasi (SISKOHATKES SHAR,I)', 46, '2023-03-09 14:52:20'),
(427, 'menambah data aplikasi (lapor frambusia online)', 46, '2023-03-09 15:05:44'),
(428, 'menambah data aplikasi (SITB Mobile)', 46, '2023-03-09 15:14:13'),
(429, 'menambah data aplikasi (website)', 49, '2023-03-09 15:41:27'),
(430, 'memperbaharui data aplikasi (website)', 49, '2023-03-09 15:42:03'),
(431, 'menambah data aplikasi (e-monev HSP)', 62, '2023-03-10 08:33:12'),
(432, 'menambah data aplikasi (e-satu)', 62, '2023-03-10 08:40:26'),
(433, 'menambah data aplikasi (SIKELIM)', 62, '2023-03-10 08:44:30'),
(434, 'menambah data aplikasi (e-monev PKAM)', 62, '2023-03-10 08:48:07'),
(435, 'menambah data aplikasi (Dashboard Air dan Sanitasi)', 62, '2023-03-10 08:56:30'),
(436, 'menambah data aplikasi (SRIKANDI)', 34, '2023-03-10 09:29:29'),
(437, 'memperbaharui data aplikasi (website)', 59, '2023-03-10 09:41:24'),
(438, 'menambah data aplikasi (SIAP)', 34, '2023-03-10 09:56:40'),
(439, 'menambah data aplikasi (SIAP)', 34, '2023-03-10 10:02:10'),
(440, 'menambah data aplikasi (SIMONA (Sistem Perizinan, Monitoring dan Pembinaan Apotek))', 34, '2023-03-10 10:21:06'),
(441, 'menambah data aplikasi (SIPNAP (Sistem Pelaporan Narkotika dan Psikotropika))', 34, '2023-03-10 10:31:58'),
(442, 'menambah data aplikasi (SELENA (Sistem Elektronik Pengelolaan dan Pelayanan Kefarmasian))', 34, '2023-03-10 10:43:10'),
(443, 'menambah data aplikasi (E-Puskesmas)', 34, '2023-03-10 11:00:00'),
(444, 'menambah data aplikasi (E-Kohort)', 34, '2023-03-10 11:08:41'),
(445, 'menambah data aplikasi (MPDN (Maternal Perinatal Death Notification))', 34, '2023-03-10 11:19:22'),
(446, 'menambah data aplikasi (SIMONA)', 64, '2023-03-10 11:54:56'),
(447, 'menambah data aplikasi (SIHA (SISTEM INFORMASI HIV-AIDS))', 56, '2023-03-10 12:48:23'),
(448, 'menambah data aplikasi (SIPTM)', 66, '2023-03-10 12:55:39'),
(449, 'menambah data group (Admin Stasan)', 1, '2023-03-10 13:37:25'),
(450, 'memperbaharui data acl (read)', 1, '2023-03-10 13:37:40'),
(451, 'memperbaharui data acl (create)', 1, '2023-03-10 13:37:44'),
(452, 'memperbaharui data acl (create)', 1, '2023-03-10 13:37:45'),
(453, 'memperbaharui data acl (update)', 1, '2023-03-10 13:37:46'),
(454, 'memperbaharui data user (199511132022021002)', 1, '2023-03-10 13:39:42'),
(455, 'memperbaharui data aplikasi (APEKEJE)', 35, '2023-03-13 09:21:55'),
(456, 'menambah data aplikasi (Mutu Fasyankes)', 34, '2023-03-13 09:56:15'),
(457, 'menambah data aplikasi (Aplikasi Keluarga Sehat 2.0 (PIS-PK))', 34, '2023-03-13 10:14:37'),
(458, 'menambah data aplikasi (Seleksi JPT)', 35, '2023-03-13 10:30:41'),
(459, 'menambah data aplikasi (NEW ALL RECORD (NAR) COVID-19)', 34, '2023-03-13 10:41:30'),
(460, 'memperbaharui data aplikasi (Seleksi JPT)', 35, '2023-03-13 10:42:15'),
(461, 'menambah data aplikasi (SSCASN)', 35, '2023-03-13 10:58:15'),
(462, 'menambah data aplikasi (E-RENGGAR)', 34, '2023-03-13 11:02:25'),
(463, 'memperbaharui data aplikasi (SSCASN)', 35, '2023-03-13 11:09:16'),
(464, 'menambah data aplikasi (SITKO (Sistem informasi terpadu kesehatan kerja dan olahraga))', 34, '2023-03-13 11:13:20'),
(465, 'menambah data aplikasi (SIMPEGNAS)', 35, '2023-03-13 11:21:16'),
(466, 'menambah data aplikasi (SIDARA)', 35, '2023-03-13 11:32:48'),
(467, 'menambah data aplikasi (PWS Imunisasi (IDL, Campak Rubela))', 34, '2023-03-13 11:33:57'),
(468, 'menambah data aplikasi (Pcare BPJS COVID-19)', 34, '2023-03-13 11:49:09'),
(469, 'memperbaharui data aplikasi (SIDARA)', 35, '2023-03-13 12:05:34'),
(470, 'menambah data aplikasi (SISDMK (Sistem Informasi SDM Kesehatan))', 34, '2023-03-13 12:10:26'),
(471, 'menambah data aplikasi (pkm.tpi@tanjungpinangkota.go.id)', 68, '2023-03-13 12:20:05'),
(472, 'menambah data aplikasi (RENBUT (Aplikasi Perencanaan Kebutuhan SDMK))', 34, '2023-03-13 14:56:51'),
(473, 'mengganti nama', 74, '2023-03-13 15:42:09'),
(474, 'mengganti email', 74, '2023-03-13 15:42:09'),
(475, 'mengganti no hp', 74, '2023-03-13 15:42:09'),
(476, 'mengganti email', 74, '2023-03-13 15:42:24'),
(477, 'mengganti email', 73, '2023-03-13 15:59:26'),
(478, 'mengganti no hp', 73, '2023-03-13 15:59:46'),
(479, 'menambah data aplikasi (NEWSIGA)', 74, '2023-03-13 16:08:54'),
(480, 'mengganti nama', 79, '2023-03-13 16:36:36'),
(481, 'mengganti email', 79, '2023-03-13 16:36:41'),
(482, 'mengganti no hp', 79, '2023-03-13 16:36:59'),
(483, 'menambah data aplikasi (e-Puskesmas)', 65, '2023-03-13 16:50:16'),
(484, 'menambah data aplikasi (sigiziterpadu/eppgbm)', 77, '2023-03-13 17:11:06'),
(485, 'menambah data aplikasi (ASPAK)', 80, '2023-03-13 17:13:16'),
(486, 'menambah data aplikasi (SIAP)', 80, '2023-03-13 17:21:53'),
(487, 'menambah data aplikasi (Si Gizi Terpadu - ePPGBM (Pencatatan dan Pelaporan Gizi Berbasis Masyarakat))', 34, '2023-03-13 20:03:36'),
(488, 'menambah data aplikasi (e-Formasi Jabatan Fungsional Kesehatan)', 83, '2023-03-14 08:30:20'),
(489, 'menambah data aplikasi (Srikandi)', 83, '2023-03-14 08:38:58'),
(490, 'memperbaharui data aplikasi (e-Formasi Jabatan Fungsional Kesehatan)', 83, '2023-03-14 08:42:10'),
(491, 'menambah data aplikasi (SISDMK)', 83, '2023-03-14 08:49:16'),
(492, 'menambah data aplikasi (SIMPEG)', 83, '2023-03-14 09:01:22'),
(493, 'menambah data aplikasi (Internalpancur@gmail.com)', 68, '2023-03-14 09:21:36'),
(494, 'menambah data aplikasi (RENBUT)', 83, '2023-03-14 09:25:41'),
(495, 'menambah data aplikasi (SISKOHATKES)', 80, '2023-03-14 09:30:08'),
(496, 'menambah data aplikasi (Sistem Informasi Manajemen Bangunan Gedung)', 25, '2023-03-14 10:18:38'),
(497, 'menambah data aplikasi (SELENA)', 80, '2023-03-14 11:27:06'),
(498, 'menambah data aplikasi (SIMONA)', 80, '2023-03-14 11:33:37'),
(499, 'menambah data aplikasi (Mutu Fasyankes)', 76, '2023-03-14 11:39:48'),
(500, 'menambah data aplikasi (Sistem Informasi Pegawai)', 34, '2023-03-14 12:02:41'),
(501, 'menambah data aplikasi (SITKO)', 86, '2023-03-14 12:06:14'),
(502, 'menambah data aplikasi (MPDN)', 85, '2023-03-14 12:12:03'),
(503, 'menambah data aplikasi (SITB)', 73, '2023-03-14 12:20:34'),
(504, 'menambah data aplikasi (SIHA)', 73, '2023-03-14 12:24:54'),
(505, 'memperbaharui data aplikasi (SIHA)', 73, '2023-03-14 12:27:08'),
(506, 'menambah data aplikasi (SILANTOR)', 80, '2023-03-14 12:27:58'),
(507, 'menambah data aplikasi (E-Formasi)', 34, '2023-03-14 12:28:59'),
(508, 'menambah data aplikasi (SKDR)', 80, '2023-03-14 12:34:41'),
(509, 'menambah data aplikasi (SIHA (Sistem Informasi HIV/AIDS))', 34, '2023-03-14 12:38:12'),
(510, 'menambah data aplikasi (Mobile JKN)', 76, '2023-03-14 12:41:28'),
(511, 'memperbaharui data aplikasi (ASPAK)', 80, '2023-03-14 12:46:45'),
(512, 'memperbaharui data aplikasi (SIAP)', 80, '2023-03-14 12:47:51'),
(513, 'menambah data aplikasi (SIMKESWA)', 87, '2023-03-14 12:57:54'),
(514, 'menambah data aplikasi (pcare eclaim)', 75, '2023-03-14 13:02:58'),
(515, 'menambah data aplikasi (SEHAT INDONESIAKU)', 75, '2023-03-14 13:16:41'),
(516, 'menambah data aplikasi (ASIK)', 80, '2023-03-14 13:21:38'),
(517, 'menambah data aplikasi (SIAK)', 72, '2023-03-14 13:42:19'),
(518, 'menambah data aplikasi (SIHEPI (Sistem Informasi Hepatitis))', 34, '2023-03-14 13:47:28'),
(519, 'menambah data aplikasi (SISKOHATKES)', 31, '2023-03-14 13:49:18'),
(520, 'menambah data aplikasi (BENROLL)', 72, '2023-03-14 13:56:36'),
(521, 'menambah data aplikasi (SISMAL (Sistem Informasi Malaria))', 34, '2023-03-14 14:02:02'),
(522, 'menambah data aplikasi (BCARD)', 72, '2023-03-14 14:02:29'),
(523, 'menambah data aplikasi (SLHS)', 88, '2023-03-14 14:04:13'),
(524, 'menambah data aplikasi (SITKO)', 31, '2023-03-14 14:04:49'),
(525, 'menambah data aplikasi (e-formasi jabatan fungsional kesehatan)', 31, '2023-03-14 14:09:39'),
(526, 'menambah data aplikasi (OSS BKPSDM)', 31, '2023-03-14 14:13:12'),
(527, 'menambah data aplikasi (STBM)', 88, '2023-03-14 14:13:46'),
(528, 'menambah data aplikasi (E-SAKIP)', 31, '2023-03-14 14:16:53'),
(529, 'menambah data aplikasi (E OFFICE)', 72, '2023-03-14 14:17:11'),
(530, 'menambah data aplikasi (Silantor (Surveilan Vektor))', 34, '2023-03-14 14:18:30'),
(531, 'menambah data aplikasi (Sistem Informasi Pegawai (SIMPEG))', 31, '2023-03-14 14:20:25'),
(532, 'menambah data aplikasi (esakip review)', 31, '2023-03-14 14:23:07'),
(533, 'menambah data aplikasi (SIKELIM)', 88, '2023-03-14 14:23:39'),
(534, 'menambah data aplikasi (Lapor SP4N)', 31, '2023-03-14 14:25:16'),
(535, 'menambah data aplikasi (e-SPM)', 31, '2023-03-14 14:27:25'),
(536, 'menambah data aplikasi (E-Monev Kualitas Kesling (TTU, TFU, PKAM, STBM, PLM, KKS))', 34, '2023-03-14 14:29:24'),
(537, 'menambah data aplikasi (eformasi Kemenpan)', 31, '2023-03-14 14:31:12'),
(538, 'menambah data aplikasi (TFU)', 88, '2023-03-14 14:31:13'),
(539, 'menambah data aplikasi (e-Anjab ABK)', 31, '2023-03-14 14:33:20'),
(540, 'menambah data aplikasi (eRenggar)', 31, '2023-03-14 14:35:48'),
(541, 'menambah data aplikasi (KRISNA)', 31, '2023-03-14 14:39:05'),
(542, 'menambah data aplikasi (E-Monev HSP (Higien dan Sanitasi Pangan))', 34, '2023-03-14 14:43:33'),
(543, 'menambah data aplikasi (SISMAL)', 88, '2023-03-14 14:45:08'),
(544, 'menambah data aplikasi (KOMDAT)', 31, '2023-03-14 14:48:56'),
(545, 'menambah data aplikasi (EKOHORT)', 89, '2023-03-14 14:53:35'),
(546, 'menambah data aplikasi (SMILE)', 89, '2023-03-14 15:03:33'),
(547, 'menambah data aplikasi (KELUARGA SEHAT)', 91, '2023-03-14 15:24:35'),
(548, 'menambah data aplikasi (BOK SALUR)', 81, '2023-03-14 15:34:25'),
(549, 'memperbaharui data aplikasi (BOK SALUR)', 81, '2023-03-14 15:36:48'),
(550, 'menambah data aplikasi (MPN G3)', 81, '2023-03-14 15:40:31'),
(551, 'menambah data aplikasi (SIHEPI)', 85, '2023-03-14 16:11:42'),
(552, 'menambah data aplikasi (DJP Online)', 92, '2023-03-14 16:30:36'),
(553, 'menambah data aplikasi (CMS Bank Riau)', 92, '2023-03-14 16:42:15'),
(554, 'memperbaharui data aplikasi (STBM)', 92, '2023-03-14 16:45:31'),
(555, 'menambah data aplikasi (cektanah)', 90, '2023-03-14 19:20:22'),
(556, 'menambah data aplikasi (Website Kelurahan)', 61, '2023-03-14 19:30:12'),
(557, 'menambah data aplikasi (NEW SIGA (Sistem Informasi Keluarga))', 34, '2023-03-14 20:17:46'),
(558, 'menambah data aplikasi (SITB (Sistem Informasi Tuberkulosis))', 34, '2023-03-14 20:37:02'),
(559, 'menambah data aplikasi (Siskohatkes (Sistem Komputerisasi Haji Bidang Kesehatan))', 34, '2023-03-14 20:49:41'),
(560, 'menambah data aplikasi (Kopi Tarik)', 18, '2023-03-15 08:09:51'),
(561, 'menambah data aplikasi (SIKADU)', 18, '2023-03-15 08:13:51'),
(562, 'menghapus data master pansel dengan nama', 93, '2023-03-15 08:48:24'),
(563, 'menambah data aplikasi (SIPTM (Sistem Informasi Penyakit Tidak Menular (Kanker, Stroke, DM, Gangguan Indra))', 34, '2023-03-15 08:59:15'),
(564, 'menambah data aplikasi (OSS RBA)', 50, '2023-03-15 09:16:34'),
(565, 'menambah data aplikasi (ASPAK (Aplikasi Sarana, Prasarana, dan Alat Kesehatan))', 34, '2023-03-15 09:18:33'),
(566, 'menambah data aplikasi (Amdalnet)', 50, '2023-03-15 09:22:41'),
(567, 'menambah data aplikasi (SIGN SMART)', 50, '2023-03-15 09:28:46'),
(568, 'menambah data aplikasi (Simkeswa (Sistem Informasi Kesehatan Jiwa))', 34, '2023-03-15 09:32:32'),
(569, 'menambah data aplikasi (Sistem Registri Nasional Perubahan Iklim)', 50, '2023-03-15 09:34:50'),
(570, 'menambah data aplikasi (SIPTM)', 31, '2023-03-15 09:42:13'),
(571, 'menambah data aplikasi (ASIK)', 31, '2023-03-15 09:46:12'),
(572, 'menambah data aplikasi (Pengendalian Pencemaran dan Kerusakan Lingkungan)', 50, '2023-03-15 09:46:45'),
(573, 'menambah data aplikasi (SILACAK (Sistem Informasi Tracing COVID-19))', 34, '2023-03-15 09:47:22'),
(574, 'menambah data aplikasi (E-Monev HSP)', 31, '2023-03-15 09:49:57'),
(575, 'menambah data aplikasi (Sistem Informasi Pengelolaan Sampah Nasional)', 50, '2023-03-15 09:56:32'),
(576, 'menambah data aplikasi (Sistem Informasi Manajemen Bank Sampah)', 50, '2023-03-15 09:58:47'),
(577, 'menambah data aplikasi (E-Monev PKAM)', 31, '2023-03-15 09:59:33'),
(578, 'menambah data aplikasi (SIMKESWA)', 31, '2023-03-15 10:02:41'),
(579, 'menambah data aplikasi (SIKELIM)', 31, '2023-03-15 10:13:30'),
(580, 'menambah data aplikasi (Aplikasi Sehat Indonesiaku)', 34, '2023-03-15 10:16:22'),
(581, 'menambah data aplikasi (SINAPZA)', 31, '2023-03-15 10:19:38'),
(582, 'menambah data aplikasi (E Monev STBM)', 31, '2023-03-15 10:23:20'),
(583, 'menambah data aplikasi (PPID)', 72, '2023-03-15 10:28:35'),
(584, 'menambah data aplikasi (SILAPHAR COVID-19)', 31, '2023-03-15 10:29:12'),
(585, 'memperbaharui data aplikasi (Sistem Informasi Pengelolaan Sampah Nasional)', 50, '2023-03-15 10:30:16'),
(586, 'menambah data aplikasi (SMILE (Sistem Monitoring Imunisasi dan Logistik Elektronik))', 34, '2023-03-15 10:33:06'),
(587, 'menambah data aplikasi (SKDR)', 31, '2023-03-15 10:34:13'),
(588, 'memperbaharui data aplikasi (Sistem Informasi Pengelolaan Sampah Nasional)', 50, '2023-03-15 10:45:46'),
(589, 'memperbaharui data aplikasi (Sistem Informasi Pengelolaan Sampah Nasional)', 50, '2023-03-15 10:46:12'),
(590, 'memperbaharui data aplikasi (Sistem Informasi Manajemen Bank Sampah)', 50, '2023-03-15 10:51:54'),
(591, 'menambah data aplikasi (SITB)', 31, '2023-03-15 10:56:44'),
(592, 'menambah data aplikasi (APLIKASI CMS)', 72, '2023-03-15 11:01:22'),
(593, 'menambah data aplikasi (Health Facility Information System (HFIS))', 34, '2023-03-15 11:07:00'),
(594, 'menambah data aplikasi (FRAMBUSIA ONLINE)', 31, '2023-03-15 11:09:33'),
(595, 'menambah data aplikasi (SIPP (Penanganan Pengaduan) BPJS)', 34, '2023-03-15 11:24:05'),
(596, 'menambah data aplikasi (SIPD)', 72, '2023-03-15 11:26:46'),
(597, 'menambah data aplikasi (Eclaim/Pcare)', 34, '2023-03-15 11:44:27'),
(598, 'menambah data aplikasi (SIPD (Sistem Informasi Pembangunan Daerah))', 34, '2023-03-15 11:57:41'),
(599, 'menambah data aplikasi (E-Billing (Aplikasi Perpajakan))', 34, '2023-03-15 14:07:58'),
(600, 'menambah data aplikasi (E-Filling (Aplikasi Perpajakan))', 34, '2023-03-15 14:30:44'),
(601, 'menambah data aplikasi (SIRUP (Sistem Informasi Rencana Umum Pengadaan))', 34, '2023-03-15 14:38:50'),
(602, 'menambah data aplikasi (CMS (Cash Management System) BRK Syariah)', 34, '2023-03-15 14:53:16'),
(603, 'memperbaharui data aplikasi (APEKEJE)', 35, '2023-03-15 15:08:00'),
(604, 'memperbaharui data aplikasi (Seleksi JPT)', 35, '2023-03-15 15:08:18'),
(605, 'menambah data aplikasi (LPSE (Layanan Pengadaan Secara Elektronik) Kota Tanjungpinang)', 34, '2023-03-15 15:09:29'),
(606, 'memperbaharui data aplikasi (Website BKPSDM Kota Tanjungpinang)', 35, '2023-03-15 15:11:08'),
(607, 'menambah data aplikasi (OSS BKPSDM Tanjungpinang)', 35, '2023-03-15 15:18:06'),
(608, 'memperbaharui data aplikasi (OSS BKPSDM Tanjungpinang)', 35, '2023-03-15 15:18:59'),
(609, 'menambah data aplikasi (SIASN)', 35, '2023-03-15 15:27:26'),
(610, 'menambah data aplikasi (ERTEHA TANJUNGPINng)', 84, '2023-03-15 15:40:04'),
(611, 'memperbaharui data aplikasi (ERTEHA TANJUNGPINANG)', 84, '2023-03-15 15:40:40'),
(612, 'menambah data aplikasi (BEZZETING)', 35, '2023-03-15 15:53:07'),
(613, 'menambah data aplikasi (https://puskesmastanjungunggat.tanjungpinangkota.go.id/)', 39, '2023-03-15 21:02:33'),
(614, 'menambah data aplikasi (Keamanan Vaksin)', 31, '2023-03-16 12:28:48'),
(615, 'menambah data aplikasi (Pcare Vaksin)', 31, '2023-03-16 13:16:40'),
(616, 'menambah data aplikasi (SILANTOR)', 31, '2023-03-16 15:06:51'),
(617, 'menambah data aplikasi (NAR ANTIGEN)', 31, '2023-03-16 15:10:04'),
(618, 'memperbaharui data aplikasi (NAR ANTIGEN)', 31, '2023-03-16 15:11:20'),
(619, 'menambah data aplikasi (ALLRECORD-19)', 31, '2023-03-16 15:15:14'),
(620, 'menambah data aplikasi (SILACAK)', 31, '2023-03-16 15:18:12'),
(621, 'menambah data aplikasi (MORENA)', 31, '2023-03-16 15:22:20'),
(622, 'menambah data aplikasi (SIPD)', 31, '2023-03-16 15:24:36'),
(623, 'menambah data aplikasi (MONEV)', 31, '2023-03-16 15:27:20'),
(624, 'menambah data aplikasi (ALADIN)', 31, '2023-03-16 15:30:41'),
(625, 'menambah data aplikasi (OMSPAN)', 31, '2023-03-16 15:38:14'),
(626, 'menambah data aplikasi (SPIP)', 31, '2023-03-16 15:41:49'),
(627, 'menambah data aplikasi (SPM Kemkes)', 31, '2023-03-16 15:46:56'),
(628, 'menambah data aplikasi (OSS BKPM)', 31, '2023-03-16 15:50:36'),
(629, 'menambah data aplikasi (SICANTIK)', 31, '2023-03-16 15:55:49'),
(630, 'menambah data aplikasi (RENBUT)', 31, '2023-03-17 08:46:53'),
(631, 'menambah data aplikasi (SISDMK)', 31, '2023-03-17 11:03:11'),
(632, 'menambah data aplikasi (Dashboard BPJS Kesehatan)', 31, '2023-03-17 12:15:01'),
(633, 'menambah data aplikasi (SISTEM INFORMASI GIZI TERPADU)', 31, '2023-03-17 12:30:10'),
(634, 'menambah data aplikasi (SISTEM INFORMASI HIV AIDS)', 31, '2023-03-17 12:34:55'),
(635, 'menambah data aplikasi (SISTEM INFORMASI HEPATITIS)', 31, '2023-03-17 12:38:56'),
(636, 'menambah data aplikasi (E-KOHORT)', 31, '2023-03-17 12:45:13'),
(637, 'menambah data aplikasi (MPDN)', 31, '2023-03-17 12:53:12'),
(638, 'menambah data aplikasi (Komdat Kesmas)', 31, '2023-03-17 12:57:00'),
(639, 'menambah data aplikasi (ASPAK)', 31, '2023-03-17 13:02:33'),
(640, 'menambah data aplikasi (Registrasi Fasyankes)', 31, '2023-03-17 13:06:11'),
(641, 'memperbaharui data aplikasi (ASPAK)', 31, '2023-03-17 13:07:33'),
(642, 'menambah data aplikasi (ESISMAL)', 31, '2023-03-17 13:12:40'),
(643, 'menambah data aplikasi (New SIGA)', 31, '2023-03-17 13:15:56'),
(644, 'menambah data aplikasi (Portal PK21)', 31, '2023-03-17 13:19:44'),
(645, 'menambah data aplikasi (Pemutakhiran Data Keluarga 22)', 31, '2023-03-17 13:23:08'),
(646, 'menambah data aplikasi (Aplikasi Keluarga Sehat)', 39, '2023-03-17 14:37:07'),
(647, 'menambah data aplikasi (SITB)', 39, '2023-03-17 14:44:17'),
(648, 'menambah data aplikasi (ESISMAL)', 39, '2023-03-17 14:48:22'),
(649, 'menambah data aplikasi (Asik_Sehat Indonesiaku)', 39, '2023-03-17 14:56:08'),
(650, 'menambah data aplikasi (SIGA)', 39, '2023-03-17 15:02:14'),
(651, 'memperbaharui data acl (create)', 1, '2023-03-18 11:21:40'),
(652, 'memperbaharui data acl (delete)', 1, '2023-03-18 11:21:44'),
(653, 'mengganti email', 41, '2023-03-27 11:46:14'),
(654, 'mengganti no hp', 41, '2023-03-27 11:46:35'),
(655, 'mengganti no hp', 41, '2023-03-27 11:48:09'),
(656, 'memperbaharui data aplikasi (Kopi Tarik)', 41, '2023-03-27 14:32:18'),
(657, 'memperbaharui data aplikasi (Kopi Tarik)', 41, '2023-03-27 14:53:28'),
(658, 'memperbaharui data aplikasi (Kopi Tarik)', 41, '2023-03-27 14:55:42'),
(659, 'memperbaharui data aplikasi (SIKADU)', 41, '2023-03-27 14:59:00'),
(660, 'memperbaharui data aplikasi (Dagin Market Hub)', 19, '2023-04-05 12:02:24'),
(661, 'memperbaharui data acl (create)', 1, '2023-05-04 10:23:12'),
(662, 'menambah data aplikasi (Data Kepemudaan Kota Tanjungpinang)', 29, '2023-05-05 10:42:46'),
(663, 'memperbaharui data aplikasi (Data Kepemudaan Kota Tanjungpinang)', 29, '2023-05-05 10:52:11');
INSERT INTO `users_log` (`user_log_id`, `activity`, `created_by`, `created_on`) VALUES
(664, 'memperbaharui data aplikasi (Data Kepemudaan Kota Tanjungpinang)', 29, '2023-05-05 10:53:25'),
(665, 'memperbaharui data user (199407062022021001)', 1, '2023-05-31 08:35:34'),
(666, 'menambah data aplikasi (Website Dinas Pertanian Pangan dan Perikanan Kota Tanjungpinang)', 98, '2023-08-31 09:49:55'),
(667, 'memperbaharui data aplikasi (Laporan Insidentil Kebakaran dan Penyelamatan)', 57, '2023-09-04 12:09:50'),
(668, 'menambah data aplikasi (esptpd)', 69, '2023-11-17 11:00:07'),
(669, 'memperbaharui data aplikasi (esptpd)', 69, '2023-11-17 11:00:56'),
(670, 'memperbaharui data aplikasi (esptpd)', 69, '2023-11-17 11:01:18'),
(671, 'memperbaharui data aplikasi (esptpd)', 69, '2023-11-17 11:02:04'),
(672, 'menambah data aplikasi (Dashboard Kolaborasi Penanganan Stunting)', 11, '2024-01-17 14:50:04'),
(673, 'memperbaharui data aplikasi (Dashboard Kolaborasi Penanganan Stunting)', 11, '2024-01-17 14:54:55'),
(674, 'memperbaharui data aplikasi (Dashboard Kolaborasi Penanganan Stunting)', 11, '2024-01-17 14:59:20'),
(675, 'menambah data aplikasi (SINERGI)', 11, '2024-01-17 15:10:03'),
(676, 'menambah data aplikasi (Website Diskominfo Kota Tanjungpinang)', 11, '2024-01-17 15:49:53'),
(677, 'memperbaharui data user (198804102015031001)', 1, '2024-03-22 09:57:17'),
(678, 'memperbaharui data acl (delete)', 1, '2024-03-22 09:58:46'),
(679, 'menambah data aplikasi (https://pustakaarsip.tanjungpinangkota.go.id/)', 103, '2024-03-26 15:48:12'),
(680, 'memperbaharui data aplikasi (https://pustakaarsip.tanjungpinangkota.go.id/)', 103, '2024-03-26 15:49:18'),
(681, 'menambah data aplikasi (SI AMEP)', 108, '2024-03-28 10:28:00'),
(682, 'memperbaharui data aplikasi (Sistem Informasi Monitoring Evaluasi Dan Pelaporan)', 108, '2024-03-28 10:46:48'),
(683, 'memperbaharui data aplikasi (Sistem Informasi Monitoring Evaluasi Dan Pelaporan)', 108, '2024-03-28 11:00:22'),
(684, 'memperbaharui data aplikasi (OSS)', 111, '2024-04-02 10:13:19'),
(685, 'memperbaharui data aplikasi (OSS)', 111, '2024-04-02 10:37:37'),
(686, 'memperbaharui data aplikasi (SICANTIK)', 111, '2024-04-02 10:45:52'),
(687, 'memperbaharui data aplikasi (SIMBG)', 111, '2024-04-02 10:50:52'),
(688, 'memperbaharui data aplikasi (ERTEHA TANJUNGPINANG)', 114, '2024-06-12 14:06:04'),
(689, 'mengganti foto profil', 57, '2024-07-18 16:37:16'),
(690, 'mengganti foto profil', 57, '2024-07-18 16:39:25'),
(691, 'mengganti foto profil', 57, '2024-07-18 16:40:06'),
(692, 'mengganti foto profil', 57, '2024-07-18 16:40:36'),
(693, 'mengganti foto profil', 57, '2024-07-18 16:41:09'),
(694, 'mengganti foto profil', 57, '2024-07-18 16:41:49'),
(695, 'mengganti foto profil', 57, '2024-07-18 16:42:21'),
(696, 'memperbaharui data user (199502152024212004)', 11, '2024-07-26 11:43:57'),
(697, 'menambah data aplikasi (ayam)', 57, '2024-09-08 21:36:02'),
(698, 'menambah data aplikasi (ayam)', 57, '2024-09-08 21:36:47'),
(699, 'menambah data aplikasi (ayam)', 57, '2024-09-08 21:38:05'),
(700, 'memvalidasi data aplikasi dengan id (198)', 11, '2024-10-02 07:42:26'),
(701, 'memvalidasi data aplikasi dengan id (199)', 11, '2024-10-02 07:42:39'),
(702, 'memvalidasi data aplikasi dengan id (58)', 11, '2024-10-02 07:43:03'),
(703, 'memvalidasi data aplikasi dengan id (67)', 11, '2024-10-02 07:43:26'),
(704, 'memvalidasi data aplikasi dengan id (237)', 11, '2024-10-02 07:43:39'),
(705, 'memvalidasi data aplikasi dengan id (279)', 11, '2024-10-02 07:43:59'),
(706, 'memvalidasi data aplikasi dengan id (280)', 11, '2024-10-02 08:08:25'),
(707, 'memvalidasi data aplikasi dengan id (280)', 11, '2024-10-02 08:16:07'),
(708, 'memvalidasi data aplikasi dengan id (280)', 11, '2024-10-02 08:16:48'),
(709, 'memvalidasi data aplikasi dengan id (42)', 11, '2024-10-02 08:32:55'),
(710, 'memvalidasi data aplikasi dengan id (193)', 11, '2024-10-02 08:33:07'),
(711, 'memvalidasi data aplikasi dengan id (277)', 11, '2024-10-02 08:33:34'),
(712, 'memvalidasi data aplikasi dengan id (239)', 11, '2024-10-02 08:34:10'),
(713, 'memperbaharui data user (199507292022021001)', 1, '2024-11-07 10:08:09'),
(714, 'memperbaharui data user (12345678)', 1, '2025-02-13 14:17:39'),
(715, 'mengganti foto profil', 20, '2025-02-13 15:07:48'),
(716, 'mengganti email', 20, '2025-02-13 15:08:04'),
(717, 'mengganti no hp', 20, '2025-02-13 15:08:15'),
(718, 'mengganti email', 80, '2025-02-13 15:41:47'),
(719, 'mengganti no hp', 80, '2025-02-13 15:42:08'),
(720, 'mengganti foto profil', 80, '2025-02-13 15:42:59'),
(721, 'mengganti nama', 128, '2025-02-18 07:36:50'),
(722, 'menambah data aplikasi (Mal Pelayanan Publik Digital (MPPD))', 128, '2025-02-18 08:14:14'),
(723, 'memperbaharui data aplikasi (SICANTIK)', 130, '2025-02-18 09:18:29'),
(724, 'memperbaharui data aplikasi (SIMBG)', 130, '2025-02-18 09:18:57'),
(725, 'menambah data aplikasi (National Single Windows Investment (NSWI))', 130, '2025-02-18 09:53:59'),
(726, 'memperbaharui data aplikasi (Sistem Informasi Manajemen Bangunan Gedung)', 132, '2025-02-18 13:47:21'),
(727, 'menambah data aplikasi (PILAR SIMRS)', 138, '2025-03-05 13:48:38'),
(728, 'menambah data aplikasi (Pilar-Elektronik Rekam Medis (P-ERM))', 138, '2025-03-05 13:53:18'),
(729, 'memvalidasi data aplikasi dengan id (251)', 1, '2025-03-06 10:18:37'),
(730, 'memvalidasi data aplikasi dengan id (251)', 1, '2025-03-06 10:18:48'),
(731, 'memvalidasi data aplikasi dengan id (251)', 1, '2025-03-06 10:18:55'),
(732, 'memvalidasi data aplikasi dengan id (31)', 1, '2025-03-06 10:37:01'),
(733, 'memvalidasi data aplikasi dengan id (32)', 1, '2025-03-06 10:37:14'),
(734, 'memvalidasi data aplikasi dengan id (32)', 1, '2025-03-06 10:37:22'),
(735, 'memvalidasi data aplikasi dengan id (251)', 1, '2025-03-06 10:39:40'),
(736, 'memvalidasi data aplikasi dengan id (246)', 1, '2025-03-06 10:41:01'),
(737, 'memvalidasi data aplikasi dengan id (208)', 1, '2025-03-06 10:41:29'),
(738, 'memvalidasi data aplikasi dengan id (266)', 1, '2025-03-06 10:41:58'),
(739, 'memvalidasi data aplikasi dengan id (259)', 1, '2025-03-06 10:42:35'),
(740, 'memvalidasi data aplikasi dengan id (219)', 1, '2025-03-06 10:43:23'),
(741, 'memvalidasi data aplikasi dengan id (76)', 115, '2025-03-06 10:50:58'),
(742, 'memvalidasi data aplikasi dengan id (76)', 11, '2025-03-06 10:55:58'),
(743, 'memvalidasi data aplikasi dengan id (33)', 11, '2025-03-06 11:17:40'),
(744, 'memvalidasi data aplikasi dengan id (263)', 1, '2025-03-06 11:26:36'),
(745, 'memvalidasi data aplikasi dengan id (165)', 1, '2025-03-06 11:27:00'),
(746, 'memvalidasi data aplikasi dengan id (33)', 11, '2025-03-06 11:27:36'),
(747, 'memvalidasi data aplikasi dengan id (179)', 1, '2025-03-06 11:27:45'),
(748, 'memvalidasi data aplikasi dengan id (211)', 1, '2025-03-06 11:28:15'),
(749, 'memvalidasi data aplikasi dengan id (214)', 1, '2025-03-06 11:28:54'),
(750, 'memvalidasi data aplikasi dengan id (58)', 11, '2025-03-06 11:37:11'),
(751, 'memvalidasi data aplikasi dengan id (240)', 11, '2025-03-06 11:37:39'),
(752, 'memvalidasi data aplikasi dengan id (67)', 11, '2025-03-06 11:38:40'),
(753, 'memvalidasi data aplikasi dengan id (48)', 115, '2025-03-06 11:38:52'),
(754, 'memvalidasi data aplikasi dengan id (237)', 11, '2025-03-06 11:39:45'),
(755, 'memvalidasi data aplikasi dengan id (49)', 115, '2025-03-06 11:40:45'),
(756, 'memvalidasi data aplikasi dengan id (114)', 11, '2025-03-06 11:41:30'),
(757, 'memvalidasi data aplikasi dengan id (238)', 11, '2025-03-06 11:41:58'),
(758, 'memvalidasi data aplikasi dengan id (120)', 11, '2025-03-06 11:42:38'),
(759, 'memvalidasi data aplikasi dengan id (119)', 11, '2025-03-06 11:45:56'),
(760, 'memvalidasi data aplikasi dengan id (116)', 11, '2025-03-06 11:46:22'),
(761, 'memvalidasi data aplikasi dengan id (57)', 11, '2025-03-06 11:47:14'),
(762, 'memvalidasi data aplikasi dengan id (225)', 11, '2025-03-06 11:48:35'),
(763, 'memvalidasi data aplikasi dengan id (162)', 11, '2025-03-06 11:48:53'),
(764, 'memvalidasi data aplikasi dengan id (160)', 11, '2025-03-06 11:49:11'),
(765, 'memvalidasi data aplikasi dengan id (169)', 11, '2025-03-06 11:49:30'),
(766, 'memvalidasi data aplikasi dengan id (220)', 11, '2025-03-06 11:51:38'),
(767, 'memvalidasi data aplikasi dengan id (157)', 11, '2025-03-06 11:51:52'),
(768, 'memvalidasi data aplikasi dengan id (229)', 11, '2025-03-06 11:53:46'),
(769, 'menambah data aplikasi (Sistem Informasi Gerak Jalan)', 142, '2025-03-06 12:19:08'),
(770, 'memperbaharui data aplikasi (Sistem Informasi Gerak Jalan Proklamasi)', 142, '2025-03-06 12:19:23'),
(771, 'memvalidasi data aplikasi dengan id (289)', 11, '2025-03-06 12:37:37'),
(772, 'memvalidasi data aplikasi dengan id (277)', 11, '2025-03-06 12:38:16'),
(773, 'memvalidasi data aplikasi dengan id (203)', 11, '2025-03-06 12:40:32'),
(774, 'memvalidasi data aplikasi dengan id (201)', 11, '2025-03-06 12:40:45'),
(775, 'memvalidasi data aplikasi dengan id (209)', 11, '2025-03-06 12:42:42'),
(776, 'memvalidasi data aplikasi dengan id (204)', 11, '2025-03-06 12:42:53'),
(777, 'memvalidasi data aplikasi dengan id (213)', 11, '2025-03-06 12:43:04'),
(778, 'memvalidasi data aplikasi dengan id (212)', 11, '2025-03-06 12:43:13'),
(779, 'memvalidasi data aplikasi dengan id (206)', 11, '2025-03-06 12:43:39'),
(780, 'memvalidasi data aplikasi dengan id (88)', 11, '2025-03-06 12:44:33'),
(781, 'memvalidasi data aplikasi dengan id (34)', 11, '2025-03-06 12:45:23'),
(782, 'memvalidasi data aplikasi dengan id (34)', 11, '2025-03-06 12:51:30'),
(783, 'memvalidasi data aplikasi dengan id (277)', 11, '2025-03-06 12:54:42'),
(784, 'memvalidasi data aplikasi dengan id (88)', 11, '2025-03-06 12:55:26'),
(785, 'memvalidasi data aplikasi dengan id (193)', 11, '2025-03-06 12:57:02'),
(786, 'memvalidasi data aplikasi dengan id (94)', 11, '2025-03-06 12:57:47'),
(787, 'memvalidasi data aplikasi dengan id (278)', 115, '2025-03-06 14:38:40'),
(788, 'memvalidasi data aplikasi dengan id (46)', 115, '2025-03-06 14:40:01'),
(789, 'memvalidasi data aplikasi dengan id (283)', 115, '2025-03-06 14:41:13'),
(790, 'memvalidasi data aplikasi dengan id (280)', 11, '2025-03-10 08:38:17'),
(791, 'memvalidasi data aplikasi dengan id (33)', 11, '2025-03-10 08:39:07'),
(792, 'memvalidasi data aplikasi dengan id (282)', 11, '2025-03-10 09:31:48'),
(793, 'memvalidasi data aplikasi dengan id (194)', 11, '2025-03-10 09:36:21'),
(794, 'memvalidasi data aplikasi dengan id (3)', 11, '2025-03-10 09:37:10'),
(795, 'memvalidasi data aplikasi dengan id (1)', 11, '2025-03-10 09:38:01'),
(796, 'memvalidasi data aplikasi dengan id (281)', 11, '2025-03-10 09:39:02'),
(797, 'memvalidasi data aplikasi dengan id (37)', 11, '2025-03-10 09:39:40'),
(798, 'memvalidasi data aplikasi dengan id (288)', 11, '2025-03-10 09:46:43'),
(799, 'memvalidasi data aplikasi dengan id (241)', 11, '2025-03-10 09:52:17'),
(800, 'memvalidasi data aplikasi dengan id (284)', 11, '2025-03-10 09:56:59'),
(801, 'memvalidasi data aplikasi dengan id (136)', 11, '2025-03-10 09:57:33'),
(802, 'memvalidasi data aplikasi dengan id (53)', 11, '2025-03-10 10:02:58'),
(803, 'memvalidasi data aplikasi dengan id (225)', 11, '2025-03-10 10:04:12'),
(804, 'memvalidasi data aplikasi dengan id (251)', 11, '2025-03-10 10:20:10'),
(805, 'memvalidasi data aplikasi dengan id (246)', 11, '2025-03-10 10:20:20'),
(806, 'memvalidasi data aplikasi dengan id (203)', 11, '2025-03-10 10:20:34'),
(807, 'memvalidasi data aplikasi dengan id (208)', 11, '2025-03-10 10:20:47'),
(808, 'memvalidasi data aplikasi dengan id (266)', 11, '2025-03-10 10:21:00'),
(809, 'memvalidasi data aplikasi dengan id (259)', 11, '2025-03-10 10:21:20'),
(810, 'memvalidasi data aplikasi dengan id (219)', 11, '2025-03-10 10:21:30'),
(811, 'memvalidasi data aplikasi dengan id (214)', 11, '2025-03-10 10:21:54'),
(812, 'memvalidasi data aplikasi dengan id (211)', 11, '2025-03-10 10:23:07'),
(813, 'memvalidasi data aplikasi dengan id (179)', 11, '2025-03-10 10:23:32'),
(814, 'memvalidasi data aplikasi dengan id (165)', 11, '2025-03-10 10:23:53'),
(815, 'memvalidasi data aplikasi dengan id (263)', 11, '2025-03-10 10:24:10'),
(816, 'memvalidasi data aplikasi dengan id (23)', 11, '2025-03-10 10:24:40'),
(817, 'memvalidasi data aplikasi dengan id (136)', 11, '2025-03-10 10:25:07'),
(818, 'memvalidasi data aplikasi dengan id (201)', 11, '2025-03-10 10:25:41'),
(819, 'memvalidasi data aplikasi dengan id (25)', 11, '2025-03-10 10:25:57'),
(820, 'memvalidasi data aplikasi dengan id (251)', 11, '2025-03-10 14:24:07'),
(821, 'memvalidasi data aplikasi dengan id (246)', 11, '2025-03-10 14:24:37'),
(822, 'memvalidasi data aplikasi dengan id (203)', 11, '2025-03-10 14:24:52'),
(823, 'memvalidasi data aplikasi dengan id (203)', 11, '2025-03-10 14:25:13'),
(824, 'memvalidasi data aplikasi dengan id (225)', 11, '2025-03-10 14:26:00'),
(825, 'memvalidasi data aplikasi dengan id (272)', 11, '2025-03-10 14:26:34'),
(826, 'memvalidasi data aplikasi dengan id (113)', 11, '2025-03-10 14:27:04'),
(827, 'memvalidasi data aplikasi dengan id (75)', 11, '2025-03-10 14:27:17'),
(828, 'memvalidasi data aplikasi dengan id (217)', 11, '2025-03-10 14:28:01'),
(829, 'memvalidasi data aplikasi dengan id (156)', 11, '2025-03-10 14:28:35'),
(830, 'memvalidasi data aplikasi dengan id (208)', 11, '2025-03-10 14:29:05'),
(831, 'memvalidasi data aplikasi dengan id (73)', 11, '2025-03-10 14:29:27'),
(832, 'memvalidasi data aplikasi dengan id (275)', 11, '2025-03-10 14:29:39'),
(833, 'memvalidasi data aplikasi dengan id (266)', 11, '2025-03-10 14:30:20'),
(834, 'memvalidasi data aplikasi dengan id (80)', 11, '2025-03-10 14:30:40'),
(835, 'memvalidasi data aplikasi dengan id (90)', 11, '2025-03-10 14:30:55'),
(836, 'memvalidasi data aplikasi dengan id (129)', 11, '2025-03-10 14:31:05'),
(837, 'memvalidasi data aplikasi dengan id (202)', 11, '2025-03-10 14:31:18'),
(838, 'memvalidasi data aplikasi dengan id (188)', 11, '2025-03-10 14:32:01'),
(839, 'memvalidasi data aplikasi dengan id (59)', 11, '2025-03-10 14:32:29'),
(840, 'memvalidasi data aplikasi dengan id (235)', 11, '2025-03-10 14:32:49'),
(841, 'memvalidasi data aplikasi dengan id (192)', 11, '2025-03-10 14:33:02'),
(842, 'memvalidasi data aplikasi dengan id (78)', 11, '2025-03-10 14:33:35'),
(843, 'memvalidasi data aplikasi dengan id (99)', 11, '2025-03-10 14:34:16'),
(844, 'memvalidasi data aplikasi dengan id (259)', 11, '2025-03-10 14:34:58'),
(845, 'memvalidasi data aplikasi dengan id (191)', 11, '2025-03-10 14:35:15'),
(846, 'memvalidasi data aplikasi dengan id (219)', 11, '2025-03-10 14:35:47'),
(847, 'memvalidasi data aplikasi dengan id (179)', 11, '2025-03-10 14:36:11'),
(848, 'memvalidasi data aplikasi dengan id (232)', 11, '2025-03-10 14:36:21'),
(849, 'memvalidasi data aplikasi dengan id (233)', 11, '2025-03-10 14:36:28'),
(850, 'memvalidasi data aplikasi dengan id (149)', 11, '2025-03-10 14:38:47'),
(851, 'memvalidasi data aplikasi dengan id (132)', 11, '2025-03-10 14:39:03'),
(852, 'memvalidasi data aplikasi dengan id (165)', 11, '2025-03-10 14:39:20'),
(853, 'memvalidasi data aplikasi dengan id (165)', 11, '2025-03-10 14:39:31'),
(854, 'memvalidasi data aplikasi dengan id (56)', 11, '2025-03-10 14:41:41'),
(855, 'memvalidasi data aplikasi dengan id (263)', 11, '2025-03-10 14:44:19'),
(856, 'memvalidasi data aplikasi dengan id (107)', 11, '2025-03-10 14:44:28'),
(857, 'memvalidasi data aplikasi dengan id (95)', 11, '2025-03-10 14:45:01'),
(858, 'memvalidasi data aplikasi dengan id (211)', 11, '2025-03-10 14:48:25'),
(859, 'memvalidasi data aplikasi dengan id (182)', 11, '2025-03-10 14:48:37'),
(860, 'memvalidasi data aplikasi dengan id (176)', 11, '2025-03-10 14:49:18'),
(861, 'memvalidasi data aplikasi dengan id (98)', 11, '2025-03-10 14:50:15'),
(862, 'memvalidasi data aplikasi dengan id (214)', 11, '2025-03-10 15:23:59'),
(863, 'memvalidasi data aplikasi dengan id (83)', 11, '2025-03-10 15:24:20'),
(864, 'memvalidasi data aplikasi dengan id (185)', 11, '2025-03-10 15:24:41'),
(865, 'memvalidasi data aplikasi dengan id (106)', 11, '2025-03-10 15:25:04'),
(866, 'memvalidasi data aplikasi dengan id (127)', 11, '2025-03-10 15:25:15'),
(867, 'memvalidasi data aplikasi dengan id (117)', 11, '2025-03-10 15:25:27'),
(868, 'memvalidasi data aplikasi dengan id (168)', 11, '2025-03-10 15:26:10'),
(869, 'memvalidasi data aplikasi dengan id (96)', 11, '2025-03-10 15:26:20'),
(870, 'memvalidasi data aplikasi dengan id (175)', 11, '2025-03-10 15:26:44'),
(871, 'memvalidasi data aplikasi dengan id (230)', 11, '2025-03-10 15:27:24'),
(872, 'memvalidasi data aplikasi dengan id (177)', 11, '2025-03-10 15:27:38'),
(873, 'memvalidasi data aplikasi dengan id (68)', 11, '2025-03-10 15:27:50'),
(874, 'memvalidasi data aplikasi dengan id (70)', 11, '2025-03-10 15:28:15'),
(875, 'memvalidasi data aplikasi dengan id (180)', 11, '2025-03-10 15:28:28'),
(876, 'memvalidasi data aplikasi dengan id (74)', 11, '2025-03-10 15:28:44'),
(877, 'memvalidasi data aplikasi dengan id (172)', 11, '2025-03-10 15:29:15'),
(878, 'memvalidasi data aplikasi dengan id (66)', 11, '2025-03-10 15:29:44'),
(879, 'memvalidasi data aplikasi dengan id (268)', 11, '2025-03-10 15:29:56'),
(880, 'memvalidasi data aplikasi dengan id (274)', 11, '2025-03-10 15:30:06'),
(881, 'memvalidasi data aplikasi dengan id (124)', 11, '2025-03-11 12:16:41'),
(882, 'menambah data user (199801072024212026)', 1, '2026-02-03 10:25:32'),
(883, 'memperbaharui data user (198607042022021001)', 1, '2026-02-04 10:14:39'),
(884, 'memvalidasi data aplikasi dengan id (283)', 11, '2026-02-11 08:30:42'),
(885, 'memvalidasi data aplikasi dengan id (283)', 11, '2026-02-11 08:32:12'),
(886, 'menambah data aplikasi (e monev  PEemerintah Kota TanjungPinang)', 145, '2026-03-11 11:11:10'),
(887, 'menambah data aplikasi (Sistem Informasi Pembangunan)', 145, '2026-03-11 11:17:56'),
(888, 'memvalidasi data aplikasi dengan id (290)', 11, '2026-03-11 11:20:39'),
(889, 'memvalidasi data aplikasi dengan id (291)', 11, '2026-03-11 11:21:05'),
(890, 'memvalidasi data aplikasi dengan id (42)', 11, '2026-03-12 11:29:45'),
(891, 'memvalidasi data aplikasi dengan id (277)', 11, '2026-03-12 11:30:07'),
(892, 'memvalidasi data aplikasi dengan id (8)', 11, '2026-03-12 11:30:37'),
(893, 'memvalidasi data aplikasi dengan id (16)', 11, '2026-03-12 11:31:21'),
(894, 'memvalidasi data aplikasi dengan id (239)', 11, '2026-03-12 11:31:37'),
(895, 'memvalidasi data aplikasi dengan id (12)', 11, '2026-03-12 11:31:49'),
(896, 'memvalidasi data aplikasi dengan id (9)', 11, '2026-03-12 11:32:11'),
(897, 'memvalidasi data aplikasi dengan id (11)', 11, '2026-03-12 11:33:08'),
(898, 'memvalidasi data aplikasi dengan id (4)', 11, '2026-03-12 11:33:36'),
(899, 'memvalidasi data aplikasi dengan id (284)', 11, '2026-03-12 11:34:20'),
(900, 'memvalidasi data aplikasi dengan id (283)', 11, '2026-03-12 11:35:01'),
(901, 'menambah data aplikasi (Satu Data Tanjungpinang)', 11, '2026-03-12 12:08:31'),
(902, 'menambah data aplikasi (E-SKM)', 115, '2026-03-12 12:09:05'),
(903, 'menambah data aplikasi (SIDEKRA)', 115, '2026-03-12 12:15:31'),
(904, 'memvalidasi data aplikasi dengan id (8)', 11, '2026-03-12 12:53:25'),
(905, 'memperbaharui data aplikasi (e-BPHTB)', 149, '2026-03-12 12:53:50'),
(906, 'memvalidasi data aplikasi dengan id (9)', 11, '2026-03-12 12:54:06'),
(907, 'memperbaharui data aplikasi (KSWP)', 149, '2026-03-12 12:54:40'),
(908, 'memvalidasi data aplikasi dengan id (11)', 11, '2026-03-12 12:54:53'),
(909, 'memperbaharui data aplikasi (PBB Online)', 149, '2026-03-12 12:55:13'),
(910, 'memvalidasi data aplikasi dengan id (11)', 11, '2026-03-12 12:55:23'),
(911, 'memvalidasi data aplikasi dengan id (11)', 11, '2026-03-12 12:55:46'),
(912, 'memperbaharui data aplikasi (PBB Online)', 149, '2026-03-12 12:56:00'),
(913, 'memvalidasi data aplikasi dengan id (11)', 11, '2026-03-12 12:56:11'),
(914, 'memvalidasi data aplikasi dengan id (9)', 11, '2026-03-12 12:56:18'),
(915, 'memvalidasi data aplikasi dengan id (8)', 11, '2026-03-12 12:56:27'),
(916, 'memvalidasi data aplikasi dengan id (293)', 11, '2026-03-12 12:57:13'),
(917, 'memvalidasi data aplikasi dengan id (294)', 11, '2026-03-12 12:57:20'),
(918, 'memvalidasi data aplikasi dengan id (292)', 11, '2026-03-12 12:57:28'),
(919, 'memvalidasi data aplikasi dengan id (37)', 11, '2026-03-12 12:59:27'),
(920, 'memperbaharui data aplikasi (Tanjungpinang Aktual)', 11, '2026-03-12 13:00:10'),
(921, 'memvalidasi data aplikasi dengan id (37)', 11, '2026-03-12 13:00:35'),
(922, 'menambah data aplikasi (Drive Tanjungpinang)', 11, '2026-03-12 13:05:17'),
(923, 'memvalidasi data aplikasi dengan id (295)', 11, '2026-03-12 13:21:32'),
(924, 'memperbaharui data aplikasi (Drive Tanjungpinang)', 11, '2026-03-12 13:23:11'),
(925, 'memvalidasi data aplikasi dengan id (295)', 11, '2026-03-12 13:23:34'),
(926, 'memvalidasi data aplikasi dengan id (203)', 1, '2026-04-22 10:04:09'),
(927, 'menambah data modul (Kategorisasi Sistem Elektronik)', 11, '2026-04-29 08:15:05'),
(928, 'memperbaharui data acl (read)', 11, '2026-04-29 08:15:47'),
(929, 'memperbaharui data acl (update)', 11, '2026-04-29 08:15:54'),
(930, 'memperbaharui data acl (read)', 11, '2026-04-29 08:16:19'),
(931, 'memperbaharui data acl (create)', 11, '2026-04-29 08:16:20'),
(932, 'memperbaharui data acl (update)', 11, '2026-04-29 08:16:20'),
(933, 'memperbaharui data acl (delete)', 11, '2026-04-29 08:16:21'),
(934, 'memperbaharui data acl (read)', 11, '2026-04-29 08:16:30'),
(935, 'memperbaharui data acl (update)', 11, '2026-04-29 08:16:32'),
(936, 'menambah data aplikasi', 11, '2026-06-03 10:03:30'),
(937, 'menambah data aplikasi', 11, '2026-06-03 10:06:49'),
(938, 'menambah data aplikasi', 11, '2026-06-03 10:19:48'),
(939, 'menambah data aplikasi', 11, '2026-06-03 10:20:58'),
(940, 'menambah data aplikasi', 11, '2026-06-03 11:09:30'),
(941, 'menambah data aplikasi', 11, '2026-06-03 11:09:59'),
(942, 'menambah data aplikasi', 11, '2026-06-03 11:20:23'),
(943, 'menambah data aplikasi', 11, '2026-06-03 14:41:56'),
(944, 'menambah data aplikasi', 11, '2026-06-03 14:42:18'),
(945, 'menghapus data kategori SE dengan nama Sistem Informasi Pendataan Aplikasi', 11, '2026-06-08 08:13:53'),
(946, 'menghapus data kategori SE dengan nama', 11, '2026-06-08 08:13:57'),
(947, 'menambah data aplikasi', 11, '2026-06-08 08:14:16'),
(948, 'memperbaharui data kategori SE ()', 11, '2026-06-08 08:40:53'),
(949, 'memperbaharui data kategori SE ()', 11, '2026-06-08 08:41:03'),
(950, 'menghapus data kategori SE dengan nama', 11, '2026-06-08 09:07:01'),
(951, 'menambah data Kategori SE', 11, '2026-06-08 09:07:22'),
(952, 'menghapus data kategori SE dengan nama Sistem Informasi Aktivitas Presensi (SIAP)', 11, '2026-06-08 09:10:44'),
(953, 'menambah data Kategori SE', 11, '2026-06-08 09:12:32'),
(954, 'menghapus data kategori SE dengan nama Sistem Informasi Aktivitas Presensi (SIAP)', 11, '2026-06-08 09:12:52'),
(955, 'menambah data Kategori SE', 11, '2026-06-08 09:13:19'),
(956, 'menghapus data kategori SE dengan nama Sistem Informasi Aktivitas Presensi (SIAP)', 11, '2026-06-08 09:21:39'),
(957, 'menambah data Kategori SE', 11, '2026-06-08 09:22:19'),
(958, 'memperbaharui data kategori SE ()', 11, '2026-06-08 09:42:18'),
(959, 'memperbaharui data kategori SE ()', 11, '2026-06-08 09:44:35'),
(960, 'memperbaharui data kategori SE ()', 11, '2026-06-08 09:46:42'),
(961, 'memperbaharui data kategori SE ()', 11, '2026-06-08 09:52:36'),
(962, 'memperbaharui data kategori SE ()', 11, '2026-06-08 09:53:10'),
(963, 'memperbaharui data kategori SE ()', 11, '2026-06-08 09:53:44'),
(964, 'memperbaharui data kategori SE ()', 11, '2026-06-08 10:01:11'),
(965, 'memperbaharui data kategori SE ()', 11, '2026-06-08 10:01:16'),
(966, 'memperbaharui data kategori SE ()', 11, '2026-06-08 10:01:38'),
(967, 'memperbaharui data kategori SE ()', 11, '2026-06-08 10:02:00'),
(968, 'memperbaharui data kategori SE ()', 11, '2026-06-08 10:02:46'),
(969, 'menambah data Kategori SE', 11, '2026-06-08 10:32:31'),
(970, 'menambah data Kategori SE', 11, '2026-06-08 10:32:58'),
(971, 'menghapus data kategori SE dengan nama Sistem Informasi Aktivitas Presensi (SIAP)', 11, '2026-06-08 10:33:03'),
(972, 'menambah data Kategori SE', 152, '2026-06-10 13:44:47'),
(973, 'memperbaharui data kategori SE ()', 152, '2026-06-10 13:45:22'),
(974, 'memperbaharui data kategori SE ()', 152, '2026-06-10 13:45:43'),
(975, 'menghapus data kategori SE dengan nama Website Portal Pemerintah Kota Tanjungpinang', 152, '2026-06-10 13:47:03'),
(976, 'menghapus data kategori SE dengan nama Sistem Informasi Pendataan Aplikasi', 152, '2026-06-10 13:47:05'),
(977, 'menambah data Kategori SE', 11, '2026-06-10 13:59:52'),
(978, 'memperbaharui data kategori SE ()', 11, '2026-06-10 14:01:19'),
(979, 'memperbaharui data kategori SE ()', 11, '2026-06-10 14:02:32'),
(980, 'menghapus data kategori SE dengan nama Sistem Informasi Aktivitas Presensi (SIAP)', 11, '2026-06-10 14:02:42'),
(981, 'menambah data Kategori SE', 11, '2026-06-10 14:03:03'),
(982, 'memperbaharui data user (199511132022021002)', 11, '2026-06-10 14:09:24'),
(983, 'mengganti email', 154, '2026-06-11 10:02:43'),
(984, 'mengganti no hp', 154, '2026-06-11 10:02:43'),
(985, 'mengganti email', 154, '2026-06-11 10:02:48'),
(986, 'mengganti email', 172, '2026-06-11 10:05:27'),
(987, 'mengganti no hp', 172, '2026-06-11 10:05:27'),
(988, 'mengganti email', 172, '2026-06-11 10:05:36'),
(989, 'mengganti no hp', 172, '2026-06-11 10:06:03'),
(990, 'memperbaharui data aplikasi (SIAPI)', 57, '2026-06-11 10:09:06'),
(991, 'mengganti email', 57, '2026-06-11 10:09:49'),
(992, 'mengganti no hp', 57, '2026-06-11 10:09:58'),
(993, 'menambah data Kategori SE', 179, '2026-06-11 10:11:45'),
(994, 'memperbaharui data aplikasi (Website Portal DLH)', 188, '2026-06-11 10:32:32'),
(995, 'mengganti no hp', 173, '2026-06-11 11:00:56'),
(996, 'menghapus data kategori SE dengan nama Sistem Informasi Aktivitas Presensi (SIAP)', 11, '2026-06-18 08:00:00'),
(997, 'menghapus data kategori SE dengan nama JAVIDCON', 11, '2026-06-18 08:00:02'),
(998, 'memperbaharui data acl (delete)', 11, '2026-06-18 08:26:17'),
(999, 'memperbaharui data aplikasi (Tanjungpinang Aktual)', 11, '2026-06-18 08:32:03'),
(1000, 'memperbaharui data aplikasi (Drive Tanjungpinang)', 11, '2026-06-18 08:33:48'),
(1001, 'memperbaharui data aplikasi (Drive Tanjungpinang)', 11, '2026-06-18 08:33:54'),
(1002, 'memperbaharui data aplikasi (Drive Tanjungpinang)', 11, '2026-06-18 08:35:44'),
(1003, 'memperbaharui data aplikasi (Drive Tanjungpinang)', 11, '2026-06-18 08:35:50'),
(1004, 'memperbaharui data aplikasi (Website Dinas Perpustakaan dan Kearsipan Kota Tanjungpinang)', 192, '2026-06-19 07:42:21'),
(1005, 'mengganti foto profil', 193, '2026-06-19 10:58:51'),
(1006, 'mengganti email', 193, '2026-06-19 10:59:42'),
(1007, 'mengganti email', 193, '2026-06-19 10:59:46'),
(1008, 'memperbaharui data aplikasi (E-SAKIP)', 194, '2026-06-22 09:08:39'),
(1009, 'memperbaharui data aplikasi (Laporan Harta Kekayaan Aparatur Sipil Negara)', 194, '2026-06-22 09:09:40'),
(1010, 'memperbaharui data aplikasi (E-SAKIP)', 194, '2026-06-22 09:12:55'),
(1011, 'memperbaharui data aplikasi (SIBIJAK)', 194, '2026-06-22 09:16:33'),
(1012, 'memperbaharui data aplikasi (Sistem Akuntabilitas Kinerja Instansi Pemerintahan)', 194, '2026-06-22 09:17:38'),
(1013, 'memperbaharui data aplikasi (Sistem informasi Manajemen hasil Pengawasan (SIMHP))', 194, '2026-06-22 09:20:53'),
(1014, 'memperbaharui data aplikasi (Sistem Informasi Pemantauan Tindak Lanjut Temuan (SIPTL))', 194, '2026-06-22 09:23:14'),
(1015, 'memperbaharui data aplikasi (SIKADU)', 194, '2026-06-22 09:44:50'),
(1016, 'memperbaharui data aplikasi (Kopi Tarik)', 194, '2026-06-22 09:45:52'),
(1017, 'memperbaharui data aplikasi (Pengelolaan Laporan Harta Kekayaan Penyelenggara Negara)', 194, '2026-06-22 09:52:00'),
(1018, 'menambah data Kategori SE', 194, '2026-06-22 10:02:48'),
(1019, 'menambah data Kategori SE', 194, '2026-06-22 10:10:41'),
(1020, 'menambah data Kategori SE', 194, '2026-06-22 10:12:35'),
(1021, 'menambah data Kategori SE', 194, '2026-06-22 10:13:53'),
(1022, 'memperbaharui data aplikasi (Sistem Informasi Pemantauan Tindak Lanjut Temuan (SIPTL))', 166, '2026-06-22 10:37:00'),
(1023, 'memperbaharui data aplikasi (Gerai Tani\'e)', 195, '2026-06-23 11:50:04'),
(1024, 'memperbaharui data aplikasi (Website Dinas Pertanian Pangan dan Perikanan Kota Tanjungpinang)', 195, '2026-06-23 11:50:12'),
(1025, 'memperbaharui data aplikasi (Gerai Tani\'e)', 196, '2026-06-23 11:50:28'),
(1026, 'memperbaharui data aplikasi (Website Dinas Pertanian Pangan dan Perikanan Kota Tanjungpinang)', 196, '2026-06-23 11:50:44'),
(1027, 'memperbaharui data aplikasi (SICERDIK Tanjungpinang)', 16, '2026-06-26 14:17:27'),
(1028, 'memperbaharui data aplikasi (SICERDIK Tanjungpinang)', 16, '2026-06-26 14:19:03'),
(1029, 'memperbaharui data aplikasi (SIstem Informasi Kependudukan dan Pencatatan Sipil (SIKANCIL))', 197, '2026-06-30 08:33:54'),
(1030, 'memperbaharui data aplikasi (BCARD)', 197, '2026-06-30 08:54:44'),
(1031, 'memperbaharui data aplikasi (APLIKASI CMS)', 197, '2026-07-02 08:41:12'),
(1032, 'menambah data modul (Validasi Kategori SE)', 11, '2026-08-18 17:38:03'),
(1033, 'memperbaharui data acl (read)', 11, '2026-08-18 17:38:27'),
(1034, 'memperbaharui data acl (approve)', 11, '2026-08-18 17:38:34'),
(1035, 'memperbaharui data acl (update)', 11, '2026-08-18 17:38:42'),
(1036, 'memperbaharui data acl (approve)', 11, '2026-08-18 17:38:46'),
(1037, 'menghapus modul dengan user id 71', 11, '2026-08-18 17:39:59'),
(1038, 'menambah data modul (Validasi Kategorisasi SE)', 11, '2026-08-18 17:40:27'),
(1039, 'memperbaharui data acl (read)', 11, '2026-08-18 17:40:35'),
(1040, 'memperbaharui data acl (update)', 11, '2026-08-18 17:40:38'),
(1041, 'memperbaharui data acl (read)', 11, '2026-08-18 17:40:45'),
(1042, 'memperbaharui data acl (update)', 11, '2026-08-18 17:40:46'),
(1043, 'menambah data Kategori SE', 67, '2026-08-19 08:27:07'),
(1044, 'memperbaharui data aplikasi (Digital Up Skill)', 152, '2026-08-19 08:34:40'),
(1045, 'memperbaharui data aplikasi (Digital Up Skill)', 152, '2026-08-19 08:34:47'),
(1046, 'memvalidasi data aplikasi dengan id (22)', 1, '2026-08-19 08:36:05'),
(1047, 'memperbaharui data user (198607042022021001)', 1, '2026-08-19 08:48:34'),
(1048, 'memperbaharui data aplikasi (Sistem Informasi Monitoring Evaluasi Dan Pelaporan)', 205, '2026-08-19 08:54:20'),
(1049, 'memperbaharui data aplikasi (SIPPDB (Sistem Informasi Penerimaan Peserta Didik Baru) Kota Tanjungpinang)', 116, '2026-08-19 09:15:28'),
(1050, 'menambah data Kategori SE', 97, '2026-08-19 09:40:08'),
(1051, 'menambah data Kategori SE', 206, '2026-08-19 09:43:49'),
(1052, 'menghapus data kategori SE dengan nama Portal Open Data Tanjungpinang', 67, '2026-08-19 09:47:12'),
(1053, 'menghapus data kategori SE dengan nama JAVIDCON', 67, '2026-08-19 09:47:15'),
(1054, 'menambah data Kategori SE', 116, '2026-08-19 09:51:07'),
(1055, 'menambah data Kategori SE', 200, '2026-08-19 09:53:30'),
(1056, 'menambah data aplikasi (Website Portal BPKAD Kota Tanjungpinang)', 202, '2026-08-19 10:00:12'),
(1057, 'menambah data Kategori SE', 202, '2026-08-19 10:03:17'),
(1058, 'menambah data Kategori SE', 215, '2026-08-19 10:12:59'),
(1059, 'menambah data aplikasi (AK 1)', 204, '2026-08-19 10:29:01'),
(1060, 'menambah data Kategori SE', 218, '2026-08-19 10:33:55'),
(1061, 'menambah data aplikasi (https://dishub.tanjungpinangkota.go.id)', 203, '2026-08-19 12:22:17'),
(1062, 'memperbaharui data aplikasi (SICERDIK Tanjungpinang)', 116, '2026-08-19 12:23:04'),
(1063, 'menambah data Kategori SE', 203, '2026-08-19 12:24:40'),
(1064, 'menambah data Kategori SE', 204, '2026-08-19 13:07:31'),
(1065, 'menambah data aplikasi (Monev PBJ)', 201, '2026-08-19 14:56:37'),
(1066, 'menambah data aplikasi (SPSE)', 201, '2026-08-19 15:03:15'),
(1067, 'memperbaharui data aplikasi (E-Puskesmas)', 31, '2026-08-20 09:10:10'),
(1068, 'memperbaharui data aplikasi (E-Puskesmas)', 31, '2026-08-20 09:10:28'),
(1069, 'memperbaharui data aplikasi (Aplikasi Sehat Indonesiaku)', 34, '2026-08-20 09:10:50'),
(1070, 'memperbaharui data aplikasi (ASPAK (Aplikasi Sarana, Prasarana, dan Alat Kesehatan))', 34, '2026-08-20 09:11:04'),
(1071, 'memperbaharui data aplikasi (CMS (Cash Management System) BRK Syariah)', 34, '2026-08-20 09:11:10'),
(1072, 'memperbaharui data aplikasi (E-Billing (Aplikasi Perpajakan))', 34, '2026-08-20 09:11:24'),
(1073, 'memperbaharui data aplikasi (E-Filling (Aplikasi Perpajakan))', 34, '2026-08-20 09:11:30'),
(1074, 'memperbaharui data aplikasi (E-Formasi)', 34, '2026-08-20 09:11:36'),
(1075, 'memperbaharui data aplikasi (E-Kohort)', 34, '2026-08-20 09:11:41'),
(1076, 'memperbaharui data aplikasi (E-Monev HSP (Higien dan Sanitasi Pangan))', 34, '2026-08-20 09:11:47'),
(1077, 'memperbaharui data aplikasi (ALLRECORD-19)', 31, '2026-08-20 09:11:54'),
(1078, 'memperbaharui data aplikasi (E-Monev Kualitas Kesling (TTU, TFU, PKAM, STBM, PLM, KKS))', 34, '2026-08-20 09:12:01'),
(1079, 'memperbaharui data aplikasi (ASIK)', 31, '2026-08-20 09:12:01'),
(1080, 'memperbaharui data aplikasi (ASPAK)', 31, '2026-08-20 09:12:08'),
(1081, 'memperbaharui data aplikasi (Dashboard BPJS Kesehatan)', 31, '2026-08-20 09:12:14'),
(1082, 'memperbaharui data aplikasi (e-Anjab ABK)', 31, '2026-08-20 09:12:20'),
(1083, 'memperbaharui data aplikasi (E-Puskesmas)', 34, '2026-08-20 09:12:21'),
(1084, 'memperbaharui data aplikasi (e-formasi jabatan fungsional kesehatan)', 31, '2026-08-20 09:12:28'),
(1085, 'memperbaharui data aplikasi (E-RENGGAR)', 34, '2026-08-20 09:12:30'),
(1086, 'memperbaharui data aplikasi (E-KOHORT)', 31, '2026-08-20 09:12:34'),
(1087, 'memperbaharui data aplikasi (E-Monev HSP)', 31, '2026-08-20 09:12:44'),
(1088, 'memperbaharui data aplikasi (Eclaim/Pcare)', 34, '2026-08-20 09:12:50'),
(1089, 'memperbaharui data aplikasi (SISTEM INFORMASI HIV AIDS)', 127, '2026-08-20 09:12:56'),
(1090, 'memperbaharui data aplikasi (Health Facility Information System (HFIS))', 34, '2026-08-20 09:12:59'),
(1091, 'memperbaharui data aplikasi (E-Monev PKAM)', 31, '2026-08-20 09:12:59'),
(1092, 'memperbaharui data aplikasi (LPSE (Layanan Pengadaan Secara Elektronik) Kota Tanjungpinang)', 34, '2026-08-20 09:13:05'),
(1093, 'memperbaharui data aplikasi (SPM Kemkes)', 127, '2026-08-20 09:13:10'),
(1094, 'memperbaharui data aplikasi (MPDN (Maternal Perinatal Death Notification))', 34, '2026-08-20 09:13:12'),
(1095, 'memperbaharui data aplikasi (Mutu Fasyankes)', 34, '2026-08-20 09:13:18'),
(1096, 'memperbaharui data aplikasi (E-Puskesmas)', 31, '2026-08-20 09:13:18'),
(1097, 'memperbaharui data aplikasi (Sistem Informasi Pegawai (SIMPEG))', 127, '2026-08-20 09:13:19'),
(1098, 'memperbaharui data aplikasi (NEW ALL RECORD (NAR) COVID-19)', 34, '2026-08-20 09:13:28'),
(1099, 'memperbaharui data aplikasi (E-SAKIP)', 31, '2026-08-20 09:13:32'),
(1100, 'memperbaharui data aplikasi (NEW SIGA (Sistem Informasi Keluarga))', 34, '2026-08-20 09:13:35'),
(1101, 'memperbaharui data aplikasi (SITB)', 127, '2026-08-20 09:13:35'),
(1102, 'memperbaharui data aplikasi (SPIP)', 127, '2026-08-20 09:13:45'),
(1103, 'memperbaharui data aplikasi (e-SPM)', 31, '2026-08-20 09:13:47'),
(1104, 'memperbaharui data aplikasi (SRIKANDI)', 34, '2026-08-20 09:13:52'),
(1105, 'memperbaharui data aplikasi (eformasi Kemenpan)', 31, '2026-08-20 09:13:57'),
(1106, 'memperbaharui data aplikasi (SMILE (Sistem Monitoring Imunisasi dan Logistik Elektronik))', 34, '2026-08-20 09:13:58'),
(1107, 'memperbaharui data aplikasi (Pcare BPJS COVID-19)', 34, '2026-08-20 09:14:05'),
(1108, 'memperbaharui data aplikasi (eRenggar)', 31, '2026-08-20 09:14:11'),
(1109, 'memperbaharui data aplikasi (PWS Imunisasi (IDL, Campak Rubela))', 34, '2026-08-20 09:14:17'),
(1110, 'memperbaharui data aplikasi (esakip review)', 31, '2026-08-20 09:14:21'),
(1111, 'memperbaharui data aplikasi (RENBUT (Aplikasi Perencanaan Kebutuhan SDMK))', 34, '2026-08-20 09:14:24'),
(1112, 'memperbaharui data aplikasi (SELENA (Sistem Elektronik Pengelolaan dan Pelayanan Kefarmasian))', 34, '2026-08-20 09:14:30'),
(1113, 'memperbaharui data aplikasi (ESISMAL)', 31, '2026-08-20 09:14:31'),
(1114, 'memperbaharui data aplikasi (Si Gizi Terpadu - ePPGBM (Pencatatan dan Pelaporan Gizi Berbasis Masyarakat))', 34, '2026-08-20 09:14:37'),
(1115, 'memperbaharui data aplikasi (FRAMBUSIA ONLINE)', 31, '2026-08-20 09:14:40'),
(1116, 'memperbaharui data aplikasi (SIAP)', 34, '2026-08-20 09:14:42'),
(1117, 'memperbaharui data aplikasi (ASPAK)', 33, '2026-08-20 09:14:45'),
(1118, 'memperbaharui data aplikasi (SIHA (Sistem Informasi HIV/AIDS))', 34, '2026-08-20 09:14:48'),
(1119, 'memperbaharui data aplikasi (Keamanan Vaksin)', 31, '2026-08-20 09:14:56'),
(1120, 'memperbaharui data aplikasi (KOMDAT)', 31, '2026-08-20 09:15:09'),
(1121, 'memperbaharui data aplikasi (SIHEPI (Sistem Informasi Hepatitis))', 34, '2026-08-20 09:15:12'),
(1122, 'memperbaharui data aplikasi (SILACAK (Sistem Informasi Tracing COVID-19))', 34, '2026-08-20 09:15:19'),
(1123, 'memperbaharui data aplikasi (Komdat Kesmas)', 31, '2026-08-20 09:15:20'),
(1124, 'memperbaharui data aplikasi (Silantor (Surveilan Vektor))', 34, '2026-08-20 09:15:25'),
(1125, 'memperbaharui data aplikasi (Simkeswa (Sistem Informasi Kesehatan Jiwa))', 34, '2026-08-20 09:15:32'),
(1126, 'memperbaharui data aplikasi (KRISNA)', 31, '2026-08-20 09:15:35'),
(1127, 'memperbaharui data aplikasi (SIMONA (Sistem Perizinan, Monitoring dan Pembinaan Apotek))', 34, '2026-08-20 09:15:38'),
(1128, 'memperbaharui data aplikasi (SIPD (Sistem Informasi Pembangunan Daerah))', 34, '2026-08-20 09:15:46'),
(1129, 'memperbaharui data aplikasi (Lapor SP4N)', 31, '2026-08-20 09:15:48'),
(1130, 'memperbaharui data aplikasi (SIPNAP (Sistem Pelaporan Narkotika dan Psikotropika))', 34, '2026-08-20 09:15:53'),
(1131, 'memperbaharui data aplikasi (MONEV)', 31, '2026-08-20 09:15:56'),
(1132, 'memperbaharui data aplikasi (MORENA)', 31, '2026-08-20 09:16:10'),
(1133, 'memperbaharui data aplikasi (SIPP (Penanganan Pengaduan) BPJS)', 34, '2026-08-20 09:16:13'),
(1134, 'memperbaharui data aplikasi (MPDN)', 31, '2026-08-20 09:16:19'),
(1135, 'memperbaharui data aplikasi (SIPTM (Sistem Informasi Penyakit Tidak Menular (Kanker, Stroke, DM, Gangguan Indra))', 34, '2026-08-20 09:16:22'),
(1136, 'memperbaharui data aplikasi (SIRUP (Sistem Informasi Rencana Umum Pengadaan))', 34, '2026-08-20 09:16:28'),
(1137, 'memperbaharui data aplikasi (SISDMK (Sistem Informasi SDM Kesehatan))', 34, '2026-08-20 09:16:34'),
(1138, 'memperbaharui data aplikasi (NAR ANTIGEN)', 31, '2026-08-20 09:16:36'),
(1139, 'memperbaharui data aplikasi (Siskohatkes (Sistem Komputerisasi Haji Bidang Kesehatan))', 34, '2026-08-20 09:16:51'),
(1140, 'memperbaharui data aplikasi (New SIGA)', 31, '2026-08-20 09:17:06'),
(1141, 'memperbaharui data aplikasi (SISMAL (Sistem Informasi Malaria))', 34, '2026-08-20 09:17:15'),
(1142, 'memperbaharui data aplikasi (OMSPAN)', 31, '2026-08-20 09:17:15'),
(1143, 'memperbaharui data aplikasi (Sistem Informasi Pegawai)', 34, '2026-08-20 09:17:23'),
(1144, 'memperbaharui data aplikasi (SITB (Sistem Informasi Tuberkulosis))', 34, '2026-08-20 09:17:30'),
(1145, 'memperbaharui data aplikasi (OSS BKPM)', 31, '2026-08-20 09:17:32'),
(1146, 'memperbaharui data aplikasi (SITKO (Sistem informasi terpadu kesehatan kerja dan olahraga))', 34, '2026-08-20 09:17:35'),
(1147, 'memperbaharui data aplikasi (OSS BKPSDM)', 31, '2026-08-20 09:17:59'),
(1148, 'mengganti email', 36, '2026-08-20 09:18:03'),
(1149, 'mengganti no hp', 36, '2026-08-20 09:18:03'),
(1150, 'mengganti email', 36, '2026-08-20 09:18:07'),
(1151, 'memperbaharui data aplikasi (Pcare Vaksin)', 31, '2026-08-20 09:18:13'),
(1152, 'mengganti no hp', 36, '2026-08-20 09:18:16'),
(1153, 'memperbaharui data aplikasi (MPDN)', 227, '2026-08-20 09:18:27'),
(1154, 'memperbaharui data aplikasi (Pemutakhiran Data Keluarga 22)', 31, '2026-08-20 09:18:35'),
(1155, 'memperbaharui data aplikasi (Portal PK21)', 31, '2026-08-20 09:18:49'),
(1156, 'memperbaharui data aplikasi (CMS)', 33, '2026-08-20 09:18:59'),
(1157, 'memperbaharui data aplikasi (Registrasi Fasyankes)', 31, '2026-08-20 09:19:01'),
(1158, 'memperbaharui data aplikasi (e-monev HSP)', 33, '2026-08-20 09:19:09'),
(1159, 'memperbaharui data aplikasi (RENBUT)', 31, '2026-08-20 09:19:19'),
(1160, 'memperbaharui data aplikasi (SICANTIK)', 31, '2026-08-20 09:19:28'),
(1161, 'memperbaharui data aplikasi (SIKELIM)', 31, '2026-08-20 09:19:41'),
(1162, 'memperbaharui data aplikasi (SILACAK)', 31, '2026-08-20 09:20:07'),
(1163, 'memperbaharui data aplikasi (SILANTOR)', 31, '2026-08-20 09:20:38'),
(1164, 'memperbaharui data aplikasi (e-satu)', 33, '2026-08-20 09:20:57'),
(1165, 'memperbaharui data aplikasi (SILAPHAR COVID-19)', 31, '2026-08-20 09:21:01'),
(1166, 'memperbaharui data aplikasi (SITKO)', 31, '2026-08-20 09:21:23'),
(1167, 'memperbaharui data aplikasi (ESISMAIL V.3)', 33, '2026-08-20 09:21:28'),
(1168, 'memperbaharui data aplikasi (SIMKESWA)', 31, '2026-08-20 09:21:44'),
(1169, 'memperbaharui data aplikasi (SINAPZA)', 31, '2026-08-20 09:22:02'),
(1170, 'memperbaharui data aplikasi (SIPD)', 31, '2026-08-20 09:22:12'),
(1171, 'memperbaharui data aplikasi (SIPTM)', 31, '2026-08-20 09:22:22'),
(1172, 'memperbaharui data aplikasi (SISDMK)', 31, '2026-08-20 09:22:31'),
(1173, 'memperbaharui data aplikasi (SISKOHATKES)', 31, '2026-08-20 09:22:42'),
(1174, 'memperbaharui data aplikasi (SISTEM INFORMASI GIZI TERPADU)', 31, '2026-08-20 09:22:53'),
(1175, 'memperbaharui data aplikasi (SISTEM INFORMASI HEPATITIS)', 31, '2026-08-20 09:23:04'),
(1176, 'memperbaharui data aplikasi (SKDR)', 31, '2026-08-20 09:23:14'),
(1177, 'memperbaharui data aplikasi (E-Puskesmas)', 31, '2026-08-20 09:23:27'),
(1178, 'memperbaharui data aplikasi (lapor frambusia online)', 33, '2026-08-20 09:24:17'),
(1179, 'memperbaharui data aplikasi (LPSE TANJUNGPINANG)', 33, '2026-08-20 09:24:36'),
(1180, 'memperbaharui data aplikasi (RENBUT)', 33, '2026-08-20 09:24:49'),
(1181, 'memperbaharui data aplikasi (SITB Mobile)', 33, '2026-08-20 09:25:32'),
(1182, 'memperbaharui data aplikasi (SIPTM)', 33, '2026-08-20 09:25:48'),
(1183, 'memperbaharui data aplikasi (SIPD PERENCANAAN)', 33, '2026-08-20 09:26:01'),
(1184, 'memperbaharui data aplikasi (SIPD KEUANGAN)', 33, '2026-08-20 09:26:12'),
(1185, 'memperbaharui data aplikasi (SIMONA)', 33, '2026-08-20 09:26:21'),
(1186, 'memperbaharui data aplikasi (SILANTOR)', 33, '2026-08-20 09:26:30'),
(1187, 'memperbaharui data aplikasi (SILANTOR)', 33, '2026-08-20 09:26:39'),
(1188, 'memperbaharui data aplikasi (SIKELIM)', 33, '2026-08-20 09:26:58'),
(1189, 'memperbaharui data aplikasi (SIHA (SISTEM INFORMASI HIV-AIDS))', 33, '2026-08-20 09:27:07'),
(1190, 'memperbaharui data aplikasi (sigiziterpadu)', 33, '2026-08-20 09:27:23'),
(1191, 'memperbaharui data aplikasi (SI-SDMK)', 33, '2026-08-20 09:27:33'),
(1192, 'memperbaharui data aplikasi (SITB)', 33, '2026-08-20 09:27:45'),
(1193, 'menambah data aplikasi (Website UPTD Puskesmas Sei Jang)', 34, '2026-08-20 09:28:15'),
(1194, 'memperbaharui data aplikasi (Sistem Kewaspadaan Dini dan Respon (SKDR) Surveilans)', 33, '2026-08-20 09:28:40'),
(1195, 'memperbaharui data aplikasi (SISKOHATKES SHAR,I)', 33, '2026-08-20 09:28:59'),
(1196, 'memperbaharui data aplikasi (SIRUP)', 33, '2026-08-20 09:29:38'),
(1197, 'memperbaharui data aplikasi (E-Puskesmas)', 31, '2026-08-20 09:30:37'),
(1198, 'menambah data aplikasi (Website DKP2KB Kota Tanjungpinang)', 31, '2026-08-20 09:57:36'),
(1199, 'mengganti email', 233, '2026-08-20 09:58:19'),
(1200, 'mengganti no hp', 233, '2026-08-20 09:58:19'),
(1201, 'mengganti email', 233, '2026-08-20 09:58:26'),
(1202, 'mengganti no hp', 233, '2026-08-20 09:59:12'),
(1203, 'memperbaharui data aplikasi (Website UPTD Puskesmas Sei Jang)', 34, '2026-08-20 10:01:18'),
(1204, 'menambah data Kategori SE', 31, '2026-08-20 10:02:05'),
(1205, 'menambah data Kategori SE', 31, '2026-08-20 10:02:51'),
(1206, 'menambah data aplikasi (Website Profile)', 193, '2026-08-20 10:09:30'),
(1207, 'menambah data aplikasi (Pengurusan administrasi)', 186, '2026-08-20 10:14:04'),
(1208, 'memperbaharui data aplikasi (Website Profile)', 193, '2026-08-20 10:14:27'),
(1209, 'memperbaharui data aplikasi (Pengurusan administrasi)', 186, '2026-08-20 10:14:34'),
(1210, 'memperbaharui data aplikasi (Pengurusan administrasi)', 186, '2026-08-20 10:14:54'),
(1211, 'memperbaharui data aplikasi (cuti administrasi)', 186, '2026-08-20 10:15:58'),
(1212, 'menambah data aplikasi (kampungbarukel.tanjungpinangkot)', 230, '2026-08-20 10:16:08'),
(1213, 'menambah data aplikasi (Pengurusan administrasi)', 186, '2026-08-20 10:17:50'),
(1214, 'memperbaharui data aplikasi (Website DKP2KB Kota Tanjungpinang)', 31, '2026-08-20 10:18:48'),
(1215, 'memperbaharui data aplikasi (E-Puskesmas)', 31, '2026-08-20 10:19:12'),
(1216, 'memperbaharui data kategori SE ()', 31, '2026-08-20 10:19:42'),
(1217, 'menambah data aplikasi (Pemetaan wilayah)', 186, '2026-08-20 10:19:56'),
(1218, 'memperbaharui data aplikasi (cuti administrasi)', 186, '2026-08-20 10:20:14'),
(1219, 'memperbaharui data aplikasi (cuti administrasi)', 186, '2026-08-20 10:20:32'),
(1220, 'memperbaharui data aplikasi (administrasi cuti)', 186, '2026-08-20 10:20:52'),
(1221, 'memperbaharui data aplikasi (Website Profile)', 193, '2026-08-20 10:21:05'),
(1222, 'menambah data aplikasi (WEBSITE PROFILE PUKSESMAS BATU 10)', 225, '2026-08-20 10:21:22'),
(1223, 'memperbaharui data aplikasi (Website UPTD Puskesmas Sei Jang)', 34, '2026-08-20 10:21:43'),
(1224, 'memperbaharui data aplikasi (Website UPT Puskesmas Tanjungpinang)', 68, '2026-08-20 10:22:33'),
(1225, 'menambah data aplikasi (Web profil)', 33, '2026-08-20 10:24:24'),
(1226, 'menambah data aplikasi (Website Profile Kelurahan Kemboja)', 222, '2026-08-20 10:25:39'),
(1227, 'memperbaharui data aplikasi (Website UPTD Puskesmas Sei Jang)', 34, '2026-08-20 10:25:43'),
(1228, 'menambah data aplikasi (Profil Puskesmas)', 36, '2026-08-20 10:25:49'),
(1229, 'memperbaharui data aplikasi (WEBSITE PROFILE PUKSESMAS BATU 10)', 225, '2026-08-20 10:25:52'),
(1230, 'memperbaharui data aplikasi (administrasi cuti)', 186, '2026-08-20 10:25:59'),
(1231, 'memperbaharui data aplikasi (Web profil)', 33, '2026-08-20 10:26:01'),
(1232, 'memperbaharui data aplikasi (Website UPT Puskesmas Tanjungpinang)', 68, '2026-08-20 10:26:01'),
(1233, 'menambah data aplikasi (WEBSITE PROFILE PUSKESMAS MEKAR BARU)', 227, '2026-08-20 10:26:12'),
(1234, 'memperbaharui data aplikasi (WEBSITE PROFILE PUKSESMAS BATU 10)', 225, '2026-08-20 10:26:19'),
(1235, 'menambah data aplikasi (kec. tpibarat@tanjungpinang.go.id)', 231, '2026-08-20 10:26:27'),
(1236, 'memperbaharui data aplikasi (Website Profile Kelurahan Kemboja)', 222, '2026-08-20 10:26:48'),
(1237, 'memperbaharui data aplikasi (administrasi cuti)', 186, '2026-08-20 10:27:25'),
(1238, 'memperbaharui data aplikasi (WEBSITE PROFILE PUSKESMAS MEKAR BARU)', 227, '2026-08-20 10:27:47'),
(1239, 'menambah data aplikasi (WEBSITE PROFIL KELURAHAN PENYENGAT)', 234, '2026-08-20 10:28:41'),
(1240, 'menambah data aplikasi (Website profile Kelurahan)', 223, '2026-08-20 10:29:06'),
(1241, 'menambah data aplikasi (sipakominfotanjungpinang)', 232, '2026-08-20 10:29:10'),
(1242, 'memperbaharui data aplikasi (KELUARGA SEHAT)', 227, '2026-08-20 10:29:21'),
(1243, 'memperbaharui data aplikasi (KELUARGA SEHAT)', 227, '2026-08-20 10:30:15'),
(1244, 'menambah data aplikasi (Simkel)', 193, '2026-08-20 10:30:51'),
(1245, 'memperbaharui data aplikasi (Website Profil Puskesmas)', 36, '2026-08-20 10:31:26'),
(1246, 'memperbaharui data aplikasi (WEBSITE PROFILE PUSKESMAS MEKAR BARU)', 227, '2026-08-20 10:32:24'),
(1247, 'memperbaharui data aplikasi (Kelurahan kampung baru kecamatan tanjungpinang barat)', 230, '2026-08-20 10:32:24'),
(1248, 'memperbaharui data aplikasi (Website Puskesmas Tanjung Unggat)', 39, '2026-08-20 10:32:59'),
(1249, 'memperbaharui data aplikasi (Kelurahan kampung baru kecamatan tanjungpinang barat)', 230, '2026-08-20 10:33:22'),
(1250, 'memperbaharui data aplikasi (Mobile JKN)', 227, '2026-08-20 10:34:26'),
(1251, 'memperbaharui data aplikasi (administrasi cuti)', 186, '2026-08-20 10:34:38'),
(1252, 'memperbaharui data aplikasi (Pemetaan wilayah)', 186, '2026-08-20 10:34:52'),
(1253, 'memperbaharui data aplikasi (Pengurusan administrasi)', 186, '2026-08-20 10:35:06'),
(1254, 'memperbaharui data aplikasi (website profile Kelurahan Senggarang)', 232, '2026-08-20 10:35:08'),
(1255, 'memperbaharui data aplikasi (KELUARGA SEHAT)', 227, '2026-08-20 10:35:32'),
(1256, 'memperbaharui data aplikasi (Asik Sehat IndonesiaKu)', 225, '2026-08-20 10:35:56'),
(1257, 'memperbaharui data aplikasi (Aspak)', 225, '2026-08-20 10:36:13'),
(1258, 'memperbaharui data aplikasi (CMS BRK)', 225, '2026-08-20 10:36:33'),
(1259, 'memperbaharui data aplikasi (e-Monev TFU)', 225, '2026-08-20 10:36:43'),
(1260, 'memperbaharui data aplikasi (Ekohort)', 225, '2026-08-20 10:36:53'),
(1261, 'memperbaharui data aplikasi (ePPGBM)', 225, '2026-08-20 10:37:01'),
(1262, 'memperbaharui data aplikasi (Erenggar Bok Salur)', 225, '2026-08-20 10:37:13'),
(1263, 'memperbaharui data aplikasi (Pcare BPJS)', 225, '2026-08-20 10:37:24'),
(1264, 'menambah data aplikasi (proklim.batuixtanjungpinangkota.go.id)', 229, '2026-08-20 10:37:25'),
(1265, 'memperbaharui data aplikasi (Siga BKKBN)', 225, '2026-08-20 10:37:34'),
(1266, 'menambah data Kategori SE', 186, '2026-08-20 10:39:14'),
(1267, 'menambah data Kategori SE', 186, '2026-08-20 10:39:53'),
(1268, 'menambah data Kategori SE', 186, '2026-08-20 10:41:21'),
(1269, 'menambah data Kategori SE', 186, '2026-08-20 10:42:54'),
(1270, 'memperbaharui data kategori SE ()', 31, '2026-08-20 10:43:07'),
(1271, 'memperbaharui data kategori SE ()', 186, '2026-08-20 10:43:19'),
(1272, 'memperbaharui data kategori SE ()', 31, '2026-08-20 10:43:34'),
(1273, 'menambah data Kategori SE', 225, '2026-08-20 10:45:51'),
(1274, 'menambah data Kategori SE', 193, '2026-08-20 10:45:52'),
(1275, 'menambah data Kategori SE', 227, '2026-08-20 10:45:54'),
(1276, 'menambah data Kategori SE', 223, '2026-08-20 10:45:56'),
(1277, 'menambah data Kategori SE', 33, '2026-08-20 10:45:57'),
(1278, 'menambah data Kategori SE', 34, '2026-08-20 10:46:06'),
(1279, 'menambah data Kategori SE', 68, '2026-08-20 10:46:08'),
(1280, 'menambah data Kategori SE', 232, '2026-08-20 10:46:19'),
(1281, 'menambah data Kategori SE', 39, '2026-08-20 10:46:52'),
(1282, 'menambah data Kategori SE', 221, '2026-08-20 10:46:54'),
(1283, 'menambah data Kategori SE', 230, '2026-08-20 10:46:55'),
(1284, 'memperbaharui data kategori SE ()', 31, '2026-08-20 10:47:55'),
(1285, 'menambah data Kategori SE', 193, '2026-08-20 10:48:01'),
(1286, 'menambah data Kategori SE', 222, '2026-08-20 10:48:15'),
(1287, 'memperbaharui data aplikasi (Sihepi)', 225, '2026-08-20 10:48:29'),
(1288, 'menambah data Kategori SE', 234, '2026-08-20 10:48:35'),
(1289, 'memperbaharui data aplikasi (Asik Sehat IndonesiaKu)', 225, '2026-08-20 10:48:36'),
(1290, 'memperbaharui data aplikasi (Sikelim)', 225, '2026-08-20 10:48:55'),
(1291, 'memperbaharui data aplikasi (TPM)', 225, '2026-08-20 10:49:15');
INSERT INTO `users_log` (`user_log_id`, `activity`, `created_by`, `created_on`) VALUES
(1292, 'memperbaharui data aplikasi (Silantor)', 225, '2026-08-20 10:49:29'),
(1293, 'memperbaharui data aplikasi (Skdr)', 225, '2026-08-20 10:49:43'),
(1294, 'menambah data Kategori SE', 36, '2026-08-20 10:50:09'),
(1295, 'memperbaharui data aplikasi (SITB)', 225, '2026-08-20 10:50:10'),
(1296, 'memperbaharui data aplikasi (Simona)', 225, '2026-08-20 10:50:25'),
(1297, 'menambah data Kategori SE', 231, '2026-08-20 10:50:39'),
(1298, 'memperbaharui data aplikasi (Siskohatkes)', 225, '2026-08-20 10:50:40'),
(1299, 'memperbaharui data kategori SE ()', 223, '2026-08-20 10:50:53'),
(1300, 'memperbaharui data aplikasi (SIPD)', 225, '2026-08-20 10:50:56'),
(1301, 'memperbaharui data kategori SE ()', 221, '2026-08-20 10:51:55'),
(1302, 'menambah data Kategori SE', 229, '2026-08-20 10:53:23'),
(1303, 'menambah data Kategori SE', 201, '2026-08-20 11:21:10'),
(1304, 'menambah data Kategori SE', 201, '2026-08-20 11:22:09'),
(1305, 'memperbaharui data aplikasi (Website Dinas Perdagangan dan Perindustrian Kota Tanjungpinang)', 135, '2026-08-20 11:35:30'),
(1306, 'memperbaharui data aplikasi (Website Dinas Perdagangan dan Perindustrian Kota Tanjungpinang)', 135, '2026-08-20 11:35:48'),
(1307, 'memperbaharui data kategori SE ()', 135, '2026-08-20 11:36:02'),
(1308, 'memperbaharui data aplikasi (Website Dinas Perdagangan dan Perindustrian Kota Tanjungpinang)', 220, '2026-08-20 12:01:04'),
(1309, 'memperbaharui data kategori SE ()', 220, '2026-08-20 12:01:48'),
(1310, 'menambah data aplikasi (Website Profil Kecamatan Tanjungpinang Timur)', 226, '2026-08-20 14:47:36'),
(1311, 'memperbaharui data aplikasi (Website Puskesmas Tanjung Unggat)', 39, '2026-08-20 22:34:01'),
(1312, 'memperbaharui data aplikasi (SITB)', 39, '2026-08-20 22:34:40'),
(1313, 'memperbaharui data aplikasi (SIGA)', 39, '2026-08-20 22:35:58'),
(1314, 'memperbaharui data aplikasi (ESISMAL)', 39, '2026-08-20 22:36:45'),
(1315, 'memperbaharui data aplikasi (Mal Pelayanan Publik Digital (MPPD))', 170, '2026-08-21 08:32:10'),
(1316, 'memperbaharui data aplikasi (OSS)', 170, '2026-08-21 08:35:24'),
(1317, 'memperbaharui data aplikasi (Mal Pelayanan Publik Digital (MPPD))', 170, '2026-08-21 08:35:35'),
(1318, 'memperbaharui data aplikasi (OSS)', 170, '2026-08-21 08:35:44'),
(1319, 'memperbaharui data aplikasi (SICANTIK)', 170, '2026-08-21 08:35:58'),
(1320, 'memperbaharui data aplikasi (SIMBG)', 170, '2026-08-21 08:36:08'),
(1321, 'memperbaharui data aplikasi (Website Support Mall Pelayanan Publik)', 170, '2026-08-21 09:00:31'),
(1322, 'memperbaharui data aplikasi (Mal Pelayanan Publik Digital (MPPD))', 170, '2026-08-21 09:00:52'),
(1323, 'memperbaharui data aplikasi (National Single Windows Investment (NSWI))', 170, '2026-08-21 09:01:02'),
(1324, 'memperbaharui data aplikasi (OSS)', 170, '2026-08-21 09:01:09'),
(1325, 'memperbaharui data aplikasi (SICANTIK)', 170, '2026-08-21 09:01:17'),
(1326, 'memperbaharui data aplikasi (SIMBG)', 170, '2026-08-21 09:01:23'),
(1327, 'menambah data aplikasi (DINAS KEBUDAYAAN DAN PARIWISATA KOTA TANJUNGPINANG)', 154, '2026-08-21 09:01:25'),
(1328, 'memperbaharui data aplikasi (DINAS KEBUDAYAAN DAN PARIWISATA KOTA TANJUNGPINANG)', 154, '2026-08-21 09:02:34'),
(1329, 'memperbaharui data aplikasi (DINAS KEBUDAYAAN DAN PARIWISATA KOTA TANJUNGPINANG)', 154, '2026-08-21 09:03:08'),
(1330, 'memperbaharui data aplikasi (E-SAKIP)', 235, '2026-08-21 09:17:12'),
(1331, 'memperbaharui data aplikasi (Pencegahan dan Pemberantasan Penyalahgunaan dan Peredaran Gelap Narkotika (P4GN))', 235, '2026-08-21 09:17:27'),
(1332, 'memperbaharui data aplikasi (Pengelolaan Laporan Harta Kekayaan Penyelenggara Negara)', 235, '2026-08-21 09:17:44'),
(1333, 'memperbaharui data aplikasi (SIBIJAK)', 235, '2026-08-21 09:18:11'),
(1334, 'memperbaharui data aplikasi (Sistem informasi Manajemen hasil Pengawasan (SIMHP))', 235, '2026-08-21 09:18:26'),
(1335, 'memperbaharui data aplikasi (Sistem Informasi Pemantauan Tindak Lanjut Temuan (SIPTL))', 235, '2026-08-21 09:18:38'),
(1336, 'memperbaharui data aplikasi (SIASN)', 237, '2026-08-21 09:21:53'),
(1337, 'memperbaharui data aplikasi (SIMPEGNAS)', 237, '2026-08-21 09:22:05'),
(1338, 'memperbaharui data aplikasi (SSCASN)', 237, '2026-08-21 09:22:11'),
(1339, 'memperbaharui data aplikasi (SIAPI)', 57, '2026-08-21 09:22:55'),
(1340, 'menambah data aplikasi (WEBSITE PROFIL DPRD KOTA TANJUNGPINANGF)', 177, '2026-08-21 09:25:00'),
(1341, 'memperbaharui data aplikasi (WEBSITE PROFIL DPRD KOTA TANJUNGPINANGF)', 177, '2026-08-21 09:25:40'),
(1342, 'memperbaharui data aplikasi (OSS BKPSDM Tanjungpinang)', 237, '2026-08-21 09:25:54'),
(1343, 'memperbaharui data aplikasi (SIMPEG)', 237, '2026-08-21 09:28:14'),
(1344, 'memperbaharui data aplikasi (Kopi Tarik)', 235, '2026-08-21 09:28:18'),
(1345, 'memperbaharui data aplikasi (SIKADU)', 235, '2026-08-21 09:28:31'),
(1346, 'memperbaharui data aplikasi (Sistem Akuntabilitas Kinerja Instansi Pemerintahan)', 235, '2026-08-21 09:29:04'),
(1347, 'memperbaharui data aplikasi (OSS BKPSDM Tanjungpinang)', 237, '2026-08-21 09:31:02'),
(1348, 'menambah data aplikasi (WEBSITE PROFILE SATPOL PP KOTA TANJUNGPINANG)', 238, '2026-08-21 09:32:24'),
(1349, 'memperbaharui data aplikasi (WEBSITE PROFILE SATPOL PP KOTA TANJUNGPINANG)', 238, '2026-08-21 09:32:40'),
(1350, 'memperbaharui data aplikasi (Sistem Akuntabilitas Kinerja Instansi Pemerintahan)', 235, '2026-08-21 09:35:35'),
(1351, 'menambah data Kategori SE', 57, '2026-08-21 09:39:15'),
(1352, 'memperbaharui data kategori SE ()', 57, '2026-08-21 09:40:58'),
(1353, 'memperbaharui data kategori SE ()', 57, '2026-08-21 09:43:03'),
(1354, 'menambah data Kategori SE', 177, '2026-08-21 09:51:08'),
(1355, 'menambah data Kategori SE', 157, '2026-08-21 09:51:37'),
(1356, 'memperbaharui data kategori SE ()', 157, '2026-08-21 09:53:48'),
(1357, 'menambah data Kategori SE', 237, '2026-08-21 09:54:14'),
(1358, 'menghapus data kategori SE dengan nama SIMPEG', 237, '2026-08-21 09:54:29'),
(1359, 'menambah data Kategori SE', 239, '2026-08-21 09:57:05'),
(1360, 'memperbaharui data kategori SE ()', 235, '2026-08-21 09:58:32'),
(1361, 'menghapus data kategori SE dengan nama Sistem informasi Manajemen hasil Pengawasan (SIMHP)', 235, '2026-08-21 09:59:12'),
(1362, 'memperbaharui data aplikasi (Kelurahan kampung baru kecamatan tanjungpinang barat)', 230, '2026-08-22 04:42:12'),
(1363, 'memperbaharui data aplikasi (Web profil)', 33, '2026-08-23 17:05:02'),
(1364, 'memperbaharui data aplikasi (ASIK)', 227, '2026-08-24 13:34:09'),
(1365, 'memperbaharui data aplikasi (MPDN)', 227, '2026-08-24 13:34:25'),
(1366, 'memperbaharui data aplikasi (ASIK)', 227, '2026-08-24 13:34:33'),
(1367, 'memperbaharui data aplikasi (ASIK)', 227, '2026-08-24 13:34:42'),
(1368, 'memperbaharui data aplikasi (SITB)', 227, '2026-08-24 13:34:51'),
(1369, 'memperbaharui data aplikasi (ASPAK)', 227, '2026-08-24 13:34:58'),
(1370, 'memperbaharui data aplikasi (SITKO)', 227, '2026-08-24 13:35:07'),
(1371, 'memperbaharui data aplikasi (MPN G3)', 227, '2026-08-24 13:35:19'),
(1372, 'memperbaharui data aplikasi (Mutu Fasyankes)', 227, '2026-08-24 13:35:28'),
(1373, 'memperbaharui data aplikasi (NEWSIGA)', 227, '2026-08-24 13:35:42'),
(1374, 'memperbaharui data aplikasi (pcare eclaim)', 227, '2026-08-24 13:35:59'),
(1375, 'memperbaharui data aplikasi (RENBUT)', 227, '2026-08-24 13:36:08'),
(1376, 'memperbaharui data aplikasi (SEHAT INDONESIAKU)', 227, '2026-08-24 13:36:33'),
(1377, 'memperbaharui data aplikasi (SELENA)', 227, '2026-08-24 13:36:41'),
(1378, 'memperbaharui data aplikasi (TFU)', 227, '2026-08-24 13:37:51'),
(1379, 'memperbaharui data aplikasi (STBM)', 227, '2026-08-24 13:39:28'),
(1380, 'memperbaharui data aplikasi (sigiziterpadu/eppgbm)', 227, '2026-08-24 13:40:01'),
(1381, 'memperbaharui data aplikasi (SISKOHATKES)', 227, '2026-08-24 13:40:22'),
(1382, 'memperbaharui data aplikasi (SISDMK)', 227, '2026-08-24 13:40:37'),
(1383, 'memperbaharui data aplikasi (SKDR)', 227, '2026-08-24 13:41:00'),
(1384, 'memperbaharui data aplikasi (SISMAL)', 227, '2026-08-24 13:41:11'),
(1385, 'memperbaharui data aplikasi (SIMPEG)', 227, '2026-08-24 13:41:25'),
(1386, 'memperbaharui data aplikasi (SIHA)', 227, '2026-08-24 13:41:34'),
(1387, 'memperbaharui data aplikasi (SLHS)', 227, '2026-08-24 13:41:50'),
(1388, 'memperbaharui data aplikasi (SIHEPI)', 227, '2026-08-24 13:42:21'),
(1389, 'memperbaharui data aplikasi (SIKELIM)', 227, '2026-08-24 13:42:35'),
(1390, 'memperbaharui data aplikasi (SMILE)', 227, '2026-08-24 13:42:48'),
(1391, 'memperbaharui data aplikasi (SILANTOR)', 227, '2026-08-24 13:47:06'),
(1392, 'memperbaharui data aplikasi (SIMKESWA)', 227, '2026-08-24 13:47:20'),
(1393, 'memperbaharui data aplikasi (Srikandi)', 227, '2026-08-24 13:47:38'),
(1394, 'memperbaharui data aplikasi (SIMONA)', 227, '2026-08-24 13:48:15'),
(1395, 'memperbaharui data aplikasi (SIMPEG)', 227, '2026-08-24 13:48:32'),
(1396, 'memperbaharui data aplikasi (Website DPMPTSP dan MPP)', 170, '2026-08-26 08:40:10'),
(1397, 'memperbaharui data aplikasi (Website MPP)', 170, '2026-08-26 08:40:55'),
(1398, 'menambah data Kategori SE', 237, '2026-08-26 14:32:45'),
(1399, 'memperbaharui data kategori SE ()', 237, '2026-08-26 14:33:17'),
(1400, 'menambah data aplikasi (MITRAWAN)', 177, '2026-08-28 08:22:28'),
(1401, 'menambah data Kategori SE', 177, '2026-08-28 08:24:08'),
(1402, 'menambah data aplikasi (Website Museum Sultan Sulaiman Badrul Alamsyah)', 199, '2026-08-28 08:52:26'),
(1403, 'memperbaharui data aplikasi (WEBSITE PROFIL DPRD KOTA TANJUNGPINANGF)', 177, '2026-08-28 10:03:50'),
(1404, 'memperbaharui data aplikasi (Sistem Informasi Manajemen Bangunan Gedung)', 206, '2026-08-28 11:00:43'),
(1405, 'menambah data aplikasi (KESEJAHTERAAN SOSIAL)', 155, '2026-08-28 14:28:33'),
(1406, 'memperbaharui data aplikasi (Website Profil Kecamatan Tanjungpinang Timur)', 226, '2026-08-28 14:47:39'),
(1407, 'memperbaharui data aplikasi (KESEJAHTERAAN SOSIAL)', 155, '2026-08-28 14:57:16'),
(1408, 'menambah data Kategori SE', 226, '2026-08-28 15:02:11'),
(1409, 'menghapus data kategori SE dengan nama Website Profil Kecamatan Tanjungpinang Timur', 226, '2026-08-28 15:02:34'),
(1410, 'menambah data Kategori SE', 176, '2026-08-28 15:04:05'),
(1411, 'memperbaharui data aplikasi (BOK SALUR)', 227, '2026-08-28 15:39:55'),
(1412, 'memperbaharui data aplikasi (DJP Online)', 227, '2026-08-28 15:40:05'),
(1413, 'memperbaharui data aplikasi (EKOHORT)', 227, '2026-08-28 15:40:14'),
(1414, 'memperbaharui data aplikasi (e-Formasi Jabatan Fungsional Kesehatan)', 227, '2026-08-28 15:40:24'),
(1415, 'mengganti no hp', 54, '2026-08-31 08:38:46'),
(1416, 'memperbaharui data user (198803022015031002)', 1, '2026-08-31 08:43:21'),
(1417, 'memperbaharui data aplikasi (PBB Online)', 54, '2026-08-31 08:44:27'),
(1418, 'menambah data aplikasi (Sistem Informasi Pelayanan PBB)', 54, '2026-08-31 08:55:44'),
(1419, 'menambah data aplikasi (Website BPPRD)', 54, '2026-08-31 09:06:41'),
(1420, 'menambah data aplikasi (Pelayanan PBB Online)', 54, '2026-08-31 09:14:34'),
(1421, 'menambah data aplikasi (Pantau Pajak)', 54, '2026-08-31 09:19:56'),
(1422, 'menambah data aplikasi (Aplikasi Sosialisasi dan Pelayanan)', 54, '2026-08-31 09:32:12'),
(1423, 'menambah data aplikasi (website RSUD Kota Tanjungpinang)', 136, '2026-08-31 09:51:30'),
(1424, 'menambah data Kategori SE', 136, '2026-08-31 09:56:17'),
(1425, 'menambah data Kategori SE', 136, '2026-08-31 09:58:21'),
(1426, 'memperbaharui data aplikasi (Website UPT Puskesmas Tanjungpinang)', 68, '2026-08-31 18:16:26'),
(1427, 'menambah data aplikasi (Dinas Pekerjaan Umum dan Penataan Ruang Kota Tanjungpinang)', 206, '2026-09-01 08:36:54'),
(1428, 'menambah data Kategori SE', 206, '2026-09-01 08:42:50'),
(1429, 'memperbaharui data aplikasi (Website Museum Sultan Sulaiman Badrul Alamsyah)', 199, '2026-09-01 13:10:02'),
(1430, 'memperbaharui data aplikasi (Website DPMPTSP dan MPP)', 170, '2026-09-01 14:05:44'),
(1431, 'memperbaharui data aplikasi (Website DPMPTSP dan MPP)', 170, '2026-09-01 14:06:03'),
(1432, 'memperbaharui data aplikasi (Website DPMPTSP dan MPP)', 170, '2026-09-01 14:11:24'),
(1433, 'memperbaharui data aplikasi (Website MPP)', 170, '2026-09-01 14:11:37'),
(1434, 'menambah data Kategori SE', 170, '2026-09-01 14:17:25'),
(1435, 'menambah data Kategori SE', 170, '2026-09-01 14:18:27'),
(1436, 'menambah data aplikasi (Siniaga)', 200, '2026-09-07 10:55:44'),
(1437, 'menambah data aplikasi (Dataniaga)', 200, '2026-09-07 11:03:44'),
(1438, 'memperbaharui data kategori SE ()', 135, '2026-09-07 11:34:29'),
(1439, 'memperbaharui data kategori SE ()', 147, '2026-09-21 10:53:09'),
(1440, 'menambah data aplikasi (SIAP TANJUNGPINANG)', 159, '2026-09-25 09:51:57'),
(1441, 'memperbaharui data kategori SE ()', 147, '2026-09-25 10:09:45'),
(1442, 'memperbaharui data kategori SE ()', 147, '2026-09-25 10:13:53'),
(1443, 'menambah data Kategori SE', 159, '2026-09-25 10:51:07'),
(1444, 'menghapus data kategori SE dengan nama SIAP TANJUNGPINANG', 159, '2026-09-25 10:53:03'),
(1445, 'mengganti foto profil', 189, '2026-10-04 05:11:18'),
(1446, 'memperbaharui data aplikasi (Sistem Penerimaan Murid Baru (SPMB) Kota Tanjungpinang)', 116, '2026-10-05 08:54:40'),
(1447, 'memperbaharui data aplikasi (Sistem Penerimaan Murid Baru (SPMB) Kota Tanjungpinang)', 116, '2026-10-05 08:54:53'),
(1448, 'memperbaharui data aplikasi (Sistem Penerimaan Murid Baru (SPMB) Kota Tanjungpinang)', 116, '2026-10-05 08:56:53'),
(1449, 'memvalidasi data aplikasi dengan id (297)', 11, '2026-10-05 09:21:09'),
(1450, 'memvalidasi data aplikasi dengan id (5)', 11, '2026-10-05 10:29:48'),
(1451, 'menambah data Kategori SE', 116, '2026-10-05 12:31:24'),
(1452, 'menambah data Kategori SE', 35, '2026-10-05 14:32:05'),
(1453, 'menambah data Kategori SE', 200, '2026-10-06 09:16:33'),
(1454, 'menambah data Kategori SE', 200, '2026-10-06 09:18:42'),
(1455, 'menambah data aplikasi (sisakti)', 187, '2026-10-06 09:52:11'),
(1456, 'menambah data aplikasi (website profile kelurahan Tanjung Ayun Sakti)', 187, '2026-10-06 09:54:54'),
(1457, 'menambah data Kategori SE', 187, '2026-10-06 09:56:20'),
(1458, 'menambah data Kategori SE', 187, '2026-10-06 09:57:14'),
(1459, 'memperbaharui data aplikasi (Website Museum Sultan Sulaiman Badrul Alamsyah)', 199, '2026-10-06 11:03:57'),
(1460, 'menambah data Kategori SE', 199, '2026-10-06 11:06:23'),
(1461, 'menambah data Kategori SE', 238, '2026-10-06 11:40:27'),
(1462, 'memperbaharui data aplikasi (Siap Tindak)', 238, '2026-10-06 11:40:52'),
(1463, 'menambah data aplikasi (Website Dinas Sosial)', 122, '2026-10-07 09:28:10'),
(1464, 'menambah data Kategori SE', 122, '2026-10-07 09:30:45'),
(1465, 'menambah data aplikasi (Gurindampay)', 54, '2026-10-07 10:13:51'),
(1466, 'menambah data Kategori SE', 54, '2026-10-07 10:17:23'),
(1467, 'menambah data Kategori SE', 54, '2026-10-07 10:26:13'),
(1468, 'menambah data Kategori SE', 54, '2026-10-07 10:27:18'),
(1469, 'menambah data Kategori SE', 54, '2026-10-07 10:29:05'),
(1470, 'menambah data Kategori SE', 54, '2026-10-07 10:30:32'),
(1471, 'menambah data Kategori SE', 54, '2026-10-07 10:31:50'),
(1472, 'menambah data Kategori SE', 54, '2026-10-07 10:32:47'),
(1473, 'menambah data Kategori SE', 54, '2026-10-07 10:33:27'),
(1474, 'menambah data Kategori SE', 54, '2026-10-07 10:34:11'),
(1475, 'menambah data Kategori SE', 54, '2026-10-07 10:36:29'),
(1476, 'menambah data aplikasi (Website Dinas Kependudukan dan Pencatatan Sipil)', 182, '2026-10-07 11:49:10'),
(1477, 'memperbaharui data aplikasi (Website Dinas Sosial)', 122, '2026-10-07 11:49:41'),
(1478, 'memperbaharui data aplikasi (Website Dinas Sosial)', 122, '2026-10-07 11:57:28'),
(1479, 'menambah data aplikasi (Tuah Gurindam)', 182, '2026-10-07 12:00:08'),
(1480, 'menambah data Kategori SE', 182, '2026-10-07 12:02:18'),
(1481, 'menambah data Kategori SE', 182, '2026-10-07 12:05:00'),
(1482, 'memperbaharui data kategori SE ()', 182, '2026-10-07 12:05:50'),
(1483, 'mengganti nama', 147, '2026-10-08 09:54:55'),
(1484, 'mengganti email', 147, '2026-10-08 09:54:56'),
(1485, 'mengganti no hp', 147, '2026-10-08 09:55:04'),
(1486, 'mengganti nama', 147, '2026-10-08 09:55:40'),
(1487, 'memperbaharui data kategori SE ()', 147, '2026-10-08 11:45:33'),
(1488, 'memperbaharui data kategori SE ()', 67, '2026-10-08 11:50:37'),
(1489, 'memperbaharui data aplikasi (SRIKANDI)', 161, '2026-10-09 09:18:16'),
(1490, 'menambah data aplikasi (Website Bakesbangpol Kota Tanjungpinang)', 161, '2026-10-09 09:24:48'),
(1491, 'menambah data Kategori SE', 161, '2026-10-09 09:26:34'),
(1492, 'memperbaharui data aplikasi (Website Bakesbangpol Kota Tanjungpinang)', 161, '2026-10-09 09:27:41'),
(1493, 'menambah data aplikasi (Website Profil Kelurahan Kampung Bugis)', 172, '2026-10-09 09:58:05'),
(1494, 'menambah data Kategori SE', 172, '2026-10-09 09:59:00'),
(1495, 'memvalidasi data aplikasi dengan id (193)', 11, '2026-10-16 07:56:28'),
(1496, 'memvalidasi data aplikasi dengan id (15)', 11, '2026-10-16 07:56:35'),
(1497, 'memvalidasi data aplikasi dengan id (225)', 11, '2026-10-16 08:35:36'),
(1498, 'memvalidasi data aplikasi dengan id (192)', 11, '2026-10-16 08:36:16'),
(1499, 'memvalidasi data aplikasi dengan id (162)', 11, '2026-10-16 08:36:40'),
(1500, 'memvalidasi data aplikasi dengan id (160)', 11, '2026-10-16 08:36:48'),
(1501, 'memvalidasi data aplikasi dengan id (169)', 11, '2026-10-16 08:37:03'),
(1502, 'memvalidasi data aplikasi dengan id (201)', 11, '2026-10-16 08:38:13'),
(1503, 'memvalidasi data aplikasi dengan id (275)', 11, '2026-10-16 08:38:46'),
(1504, 'memvalidasi data aplikasi dengan id (127)', 11, '2026-10-16 08:39:09'),
(1505, 'memvalidasi data aplikasi dengan id (209)', 11, '2026-10-16 08:39:41'),
(1506, 'memvalidasi data aplikasi dengan id (133)', 11, '2026-10-16 08:40:10'),
(1507, 'memvalidasi data aplikasi dengan id (206)', 11, '2026-10-16 08:40:30'),
(1508, 'memvalidasi data aplikasi dengan id (157)', 11, '2026-10-16 08:40:40'),
(1509, 'memvalidasi data aplikasi dengan id (335)', 11, '2026-10-16 08:41:20'),
(1510, 'memvalidasi data aplikasi dengan id (130)', 11, '2026-10-16 08:41:31'),
(1511, 'memvalidasi data aplikasi dengan id (101)', 11, '2026-10-16 08:41:41'),
(1512, 'memvalidasi data aplikasi dengan id (212)', 11, '2026-10-16 08:42:00'),
(1513, 'memvalidasi data aplikasi dengan id (213)', 11, '2026-10-16 08:42:12'),
(1514, 'memvalidasi data aplikasi dengan id (229)', 11, '2026-10-16 08:42:27'),
(1515, 'memvalidasi data aplikasi dengan id (287)', 11, '2026-10-16 08:42:40'),
(1516, 'memvalidasi data aplikasi dengan id (204)', 11, '2026-10-16 08:43:20'),
(1517, 'memvalidasi data aplikasi dengan id (32)', 11, '2026-10-16 08:43:54'),
(1518, 'memvalidasi data aplikasi dengan id (31)', 11, '2026-10-16 08:44:06'),
(1519, 'memvalidasi data aplikasi dengan id (135)', 11, '2026-10-16 08:44:14'),
(1520, 'memvalidasi data aplikasi dengan id (300)', 11, '2026-10-16 08:44:28'),
(1521, 'mengganti foto profil', 160, '2026-10-20 21:30:20'),
(1522, 'mengganti foto profil', 160, '2026-10-20 21:30:23'),
(1523, 'mengganti foto profil', 160, '2026-10-20 21:30:50'),
(1524, 'menambah data aplikasi (asdasd)', 160, '2026-10-20 21:42:06'),
(1525, 'memperbaharui data aplikasi (asdasd)', 160, '2026-10-20 21:42:19'),
(1526, 'memperbaharui data aplikasi (asdasd)', 160, '2026-10-20 21:42:42'),
(1527, 'memperbaharui data aplikasi (asdasd)', 160, '2026-10-20 21:42:55'),
(1528, 'menambah data aplikasi (dsada)', 11, '2026-10-22 12:07:45'),
(1529, 'memperbaharui data aplikasi (dsada)', 11, '2026-10-22 12:10:59'),
(1530, 'memperbaharui data aplikasi (dsada)', 11, '2026-10-22 12:11:15'),
(1531, 'memperbaharui data aplikasi (dsada)', 11, '2026-10-22 12:12:03'),
(1532, 'memperbaharui data aplikasi (dsada)', 11, '2026-10-22 12:19:53'),
(1533, 'menambah data aplikasi (Simbiosis.tanjungpinangkota.go.id)', 260, '2026-10-23 11:19:40'),
(1534, 'memvalidasi data aplikasi dengan id (346)', 11, '2026-10-24 07:52:54'),
(1535, 'menambah data aplikasi (Smart SKRD)', 53, '2026-10-24 13:14:06'),
(1536, 'memperbaharui data aplikasi (Smart SKRD DPUPR Kota Tanjungpinang)', 53, '2026-10-24 13:14:42'),
(1537, 'memperbaharui data aplikasi (Smart SKRD DPUPR Kota Tanjungpinang)', 53, '2026-10-24 13:15:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_online`
--

CREATE TABLE `users_online` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `times` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data untuk tabel `users_online`
--

INSERT INTO `users_online` (`id`, `user_id`, `times`) VALUES
(5071, 53, '2026-10-24 22:59:51');

--
-- Indeks untuk tabel yang dibuang
--

--
-- Indeks untuk tabel `acls`
--
ALTER TABLE `acls`
  ADD PRIMARY KEY (`acl_id`);

--
-- Indeks untuk tabel `captcha`
--
ALTER TABLE `captcha`
  ADD PRIMARY KEY (`captcha_id`),
  ADD KEY `word` (`word`);

--
-- Indeks untuk tabel `config_company`
--
ALTER TABLE `config_company`
  ADD PRIMARY KEY (`config_company_id`);

--
-- Indeks untuk tabel `config_site`
--
ALTER TABLE `config_site`
  ADD PRIMARY KEY (`config_site_id`);

--
-- Indeks untuk tabel `data_aplikasi`
--
ALTER TABLE `data_aplikasi`
  ADD PRIMARY KEY (`id_aplikasi`);

--
-- Indeks untuk tabel `data_aplikasi_2026`
--
ALTER TABLE `data_aplikasi_2026`
  ADD PRIMARY KEY (`id_aplikasi`);

--
-- Indeks untuk tabel `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indeks untuk tabel `guides`
--
ALTER TABLE `guides`
  ADD PRIMARY KEY (`guide_id`);

--
-- Indeks untuk tabel `guides_groups`
--
ALTER TABLE `guides_groups`
  ADD PRIMARY KEY (`user_guide_id`);

--
-- Indeks untuk tabel `kategorisasi_se`
--
ALTER TABLE `kategorisasi_se`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `laporan_kampanye`
--
ALTER TABLE `laporan_kampanye`
  ADD PRIMARY KEY (`id_kampanye`);

--
-- Indeks untuk tabel `laporan_kampanye_dokumentasi`
--
ALTER TABLE `laporan_kampanye_dokumentasi`
  ADD PRIMARY KEY (`id_dokumentasi_kampanye`);

--
-- Indeks untuk tabel `laporan_kampanye_tokoh_politik`
--
ALTER TABLE `laporan_kampanye_tokoh_politik`
  ADD PRIMARY KEY (`id_topol_kampanye`);

--
-- Indeks untuk tabel `laporan_pelanggaran`
--
ALTER TABLE `laporan_pelanggaran`
  ADD PRIMARY KEY (`id_laporan_pelanggaran`);

--
-- Indeks untuk tabel `master_daerah`
--
ALTER TABLE `master_daerah`
  ADD PRIMARY KEY (`id_daerah`);

--
-- Indeks untuk tabel `master_dbms`
--
ALTER TABLE `master_dbms`
  ADD PRIMARY KEY (`id_dbms`);

--
-- Indeks untuk tabel `master_frekuensi_penggunaan`
--
ALTER TABLE `master_frekuensi_penggunaan`
  ADD PRIMARY KEY (`id_frekuensi_penggunaan`);

--
-- Indeks untuk tabel `master_jenis_layanan`
--
ALTER TABLE `master_jenis_layanan`
  ADD PRIMARY KEY (`id_jenis_layanan`);

--
-- Indeks untuk tabel `master_kategori_pelanggaran`
--
ALTER TABLE `master_kategori_pelanggaran`
  ADD PRIMARY KEY (`id_kategori_pelanggaran`);

--
-- Indeks untuk tabel `master_lokasi_hosting`
--
ALTER TABLE `master_lokasi_hosting`
  ADD PRIMARY KEY (`id_lokasi_hosting`);

--
-- Indeks untuk tabel `master_opd`
--
ALTER TABLE `master_opd`
  ADD PRIMARY KEY (`id_opd`),
  ADD KEY `IndexSearch` (`id_opd`);

--
-- Indeks untuk tabel `master_opd_old`
--
ALTER TABLE `master_opd_old`
  ADD PRIMARY KEY (`id_opd`);

--
-- Indeks untuk tabel `master_pangkat`
--
ALTER TABLE `master_pangkat`
  ADD PRIMARY KEY (`id_pangkat`);

--
-- Indeks untuk tabel `master_pansel`
--
ALTER TABLE `master_pansel`
  ADD PRIMARY KEY (`id_pansel`);

--
-- Indeks untuk tabel `master_partai_politik`
--
ALTER TABLE `master_partai_politik`
  ADD PRIMARY KEY (`id_parpol`);

--
-- Indeks untuk tabel `master_pegawai`
--
ALTER TABLE `master_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indeks untuk tabel `master_pelanggaran`
--
ALTER TABLE `master_pelanggaran`
  ADD PRIMARY KEY (`id_pelanggaran`);

--
-- Indeks untuk tabel `master_pertanyaan`
--
ALTER TABLE `master_pertanyaan`
  ADD PRIMARY KEY (`id_pertanyaan`);

--
-- Indeks untuk tabel `master_pilkada`
--
ALTER TABLE `master_pilkada`
  ADD PRIMARY KEY (`id_pilkada`);

--
-- Indeks untuk tabel `master_seleksi`
--
ALTER TABLE `master_seleksi`
  ADD PRIMARY KEY (`id_master_seleksi`);

--
-- Indeks untuk tabel `master_tokoh_politik`
--
ALTER TABLE `master_tokoh_politik`
  ADD PRIMARY KEY (`id_topol`);

--
-- Indeks untuk tabel `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`module_id`);

--
-- Indeks untuk tabel `oauth`
--
ALTER TABLE `oauth`
  ADD PRIMARY KEY (`oauth_id`);

--
-- Indeks untuk tabel `paslon`
--
ALTER TABLE `paslon`
  ADD PRIMARY KEY (`id_paslon`);

--
-- Indeks untuk tabel `password_recovery`
--
ALTER TABLE `password_recovery`
  ADD PRIMARY KEY (`password_recovery_id`);

--
-- Indeks untuk tabel `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`id_peserta`);

--
-- Indeks untuk tabel `send_mail`
--
ALTER TABLE `send_mail`
  ADD PRIMARY KEY (`send_mail_id`);

--
-- Indeks untuk tabel `send_notifikasi`
--
ALTER TABLE `send_notifikasi`
  ADD PRIMARY KEY (`send_notifikasi_id`);

--
-- Indeks untuk tabel `send_sms`
--
ALTER TABLE `send_sms`
  ADD PRIMARY KEY (`send_sms_id`);

--
-- Indeks untuk tabel `template_mail`
--
ALTER TABLE `template_mail`
  ADD PRIMARY KEY (`template_mail_id`);

--
-- Indeks untuk tabel `template_notifikasi`
--
ALTER TABLE `template_notifikasi`
  ADD PRIMARY KEY (`template_notifikasi_id`);

--
-- Indeks untuk tabel `template_sms`
--
ALTER TABLE `template_sms`
  ADD PRIMARY KEY (`template_sms_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Indeks untuk tabel `users_log`
--
ALTER TABLE `users_log`
  ADD PRIMARY KEY (`user_log_id`);

--
-- Indeks untuk tabel `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `acls`
--
ALTER TABLE `acls`
  MODIFY `acl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=828;

--
-- AUTO_INCREMENT untuk tabel `captcha`
--
ALTER TABLE `captcha`
  MODIFY `captcha_id` bigint(13) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2276;

--
-- AUTO_INCREMENT untuk tabel `config_company`
--
ALTER TABLE `config_company`
  MODIFY `config_company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `data_aplikasi`
--
ALTER TABLE `data_aplikasi`
  MODIFY `id_aplikasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=348;

--
-- AUTO_INCREMENT untuk tabel `data_aplikasi_2026`
--
ALTER TABLE `data_aplikasi_2026`
  MODIFY `id_aplikasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;

--
-- AUTO_INCREMENT untuk tabel `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `guides`
--
ALTER TABLE `guides`
  MODIFY `guide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1026;

--
-- AUTO_INCREMENT untuk tabel `guides_groups`
--
ALTER TABLE `guides_groups`
  MODIFY `user_guide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT untuk tabel `kategorisasi_se`
--
ALTER TABLE `kategorisasi_se`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT untuk tabel `laporan_kampanye`
--
ALTER TABLE `laporan_kampanye`
  MODIFY `id_kampanye` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `laporan_kampanye_dokumentasi`
--
ALTER TABLE `laporan_kampanye_dokumentasi`
  MODIFY `id_dokumentasi_kampanye` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `laporan_kampanye_tokoh_politik`
--
ALTER TABLE `laporan_kampanye_tokoh_politik`
  MODIFY `id_topol_kampanye` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `laporan_pelanggaran`
--
ALTER TABLE `laporan_pelanggaran`
  MODIFY `id_laporan_pelanggaran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `master_dbms`
--
ALTER TABLE `master_dbms`
  MODIFY `id_dbms` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `master_frekuensi_penggunaan`
--
ALTER TABLE `master_frekuensi_penggunaan`
  MODIFY `id_frekuensi_penggunaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `master_jenis_layanan`
--
ALTER TABLE `master_jenis_layanan`
  MODIFY `id_jenis_layanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `master_kategori_pelanggaran`
--
ALTER TABLE `master_kategori_pelanggaran`
  MODIFY `id_kategori_pelanggaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `master_lokasi_hosting`
--
ALTER TABLE `master_lokasi_hosting`
  MODIFY `id_lokasi_hosting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `master_pansel`
--
ALTER TABLE `master_pansel`
  MODIFY `id_pansel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `master_partai_politik`
--
ALTER TABLE `master_partai_politik`
  MODIFY `id_parpol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `master_pegawai`
--
ALTER TABLE `master_pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `master_pelanggaran`
--
ALTER TABLE `master_pelanggaran`
  MODIFY `id_pelanggaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `master_pertanyaan`
--
ALTER TABLE `master_pertanyaan`
  MODIFY `id_pertanyaan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `master_pilkada`
--
ALTER TABLE `master_pilkada`
  MODIFY `id_pilkada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `master_seleksi`
--
ALTER TABLE `master_seleksi`
  MODIFY `id_master_seleksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `master_tokoh_politik`
--
ALTER TABLE `master_tokoh_politik`
  MODIFY `id_topol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `modules`
--
ALTER TABLE `modules`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT untuk tabel `oauth`
--
ALTER TABLE `oauth`
  MODIFY `oauth_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `paslon`
--
ALTER TABLE `paslon`
  MODIFY `id_paslon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `password_recovery`
--
ALTER TABLE `password_recovery`
  MODIFY `password_recovery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT untuk tabel `peserta`
--
ALTER TABLE `peserta`
  MODIFY `id_peserta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `send_mail`
--
ALTER TABLE `send_mail`
  MODIFY `send_mail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT untuk tabel `send_notifikasi`
--
ALTER TABLE `send_notifikasi`
  MODIFY `send_notifikasi_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `send_sms`
--
ALTER TABLE `send_sms`
  MODIFY `send_sms_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT untuk tabel `users_log`
--
ALTER TABLE `users_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1538;

--
-- AUTO_INCREMENT untuk tabel `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5073;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
