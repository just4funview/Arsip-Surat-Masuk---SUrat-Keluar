-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Apr 2025 pada 05.04
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_surat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(50) NOT NULL,
  `username_admin` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama_admin`, `username_admin`, `password`, `gambar`) VALUES
(2, 'admin2', 'admin2', '315f166c5aca63a157f7d41007675cb44a948b33', 'admin2.png'),
(27, 'admin', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_bagian`
--

CREATE TABLE `tb_bagian` (
  `id_bagian` int(11) NOT NULL,
  `nama_bagian` varchar(120) NOT NULL,
  `username_admin_bagian` varchar(50) NOT NULL,
  `password_bagian` varchar(50) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `tanggal_lahir_bagian` date NOT NULL,
  `alamat` text NOT NULL,
  `no_hp_bagian` varchar(12) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_bagian`
--

INSERT INTO `tb_bagian` (`id_bagian`, `nama_bagian`, `username_admin_bagian`, `password_bagian`, `nama_lengkap`, `tanggal_lahir_bagian`, `alamat`, `no_hp_bagian`, `gambar`) VALUES
(1, 'Direktur', 'direktur', 'ef55c764d670377f3b24cf6d065252f06ee031c5 ', 'Direktur', '1975-02-25', 'Kudus', '081293847561', 'direktur.png'),
(28, 'Admin Keuangan', 'admink', '859c0d1a0f214269a58914b3751b71eafe94bbf4 ', 'admink', '1968-06-12', 'Kudus', '082176543290', 'admink.png'),
(29, 'Manajer Lapangan Pelaksanaan Pekerjaan Gedung', 'manajerl', '8adffd7f679857658e14e750c9c3d8aca6b74850 ', 'manajerl', '1966-12-21', 'Kudus', '085219384756', 'manajerl.png'),
(30, 'Pengawas Pekerjaan Struktur Bangunan Gedung', 'pengawas', 'd11127fd15ac0d300316772a5926bb4b48edac41 ', 'pengawas', '1976-09-22', 'Kudus', '087654321098', 'pengawas.png'),
(32, 'Pelaksana Lapangan ', 'pelaksana', '37937b7c6354e5c5e12af15848d8b7e2fa843fc8 ', 'pelaksana', '1987-01-09', 'Kudus', '088123456789', 'pelaksana.png'),
(49, 'Mandor', 'mandor', '1108b4bf49de374e01da5efd192b926c39fe2161 ', 'mandor', '2025-04-14', 'Kudus', '089612345670', 'mandor.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_surat`
--

CREATE TABLE `tb_surat` (
  `id` int(11) NOT NULL,
  `kode_surat` varchar(100) DEFAULT NULL,
  `nomor_surat` varchar(100) DEFAULT NULL,
  `nomor_urut` varchar(100) DEFAULT NULL,
  `tanggal` datetime DEFAULT current_timestamp(),
  `tanggal_surat` date DEFAULT NULL,
  `penerima` varchar(255) DEFAULT NULL,
  `pengirim` varchar(255) DEFAULT NULL,
  `perihal` text DEFAULT NULL,
  `kategori` enum('Surat Masuk','Surat Keluar') DEFAULT NULL,
  `file_surat` varchar(255) DEFAULT NULL,
  `id_bagian_pengirim` int(11) DEFAULT NULL,
  `id_bagian_penerima` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `disposisi_1` text DEFAULT NULL,
  `tanggal_disposisi_1` datetime DEFAULT NULL,
  `disposisi_2` text DEFAULT NULL,
  `tanggal_disposisi_2` datetime DEFAULT NULL,
  `disposisi_3` text DEFAULT NULL,
  `tanggal_disposisi_3` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_surat`
--

INSERT INTO `tb_surat` (`id`, `kode_surat`, `nomor_surat`, `nomor_urut`, `tanggal`, `tanggal_surat`, `penerima`, `pengirim`, `perihal`, `kategori`, `file_surat`, `id_bagian_pengirim`, `id_bagian_penerima`, `created_at`, `updated_at`, `disposisi_1`, `tanggal_disposisi_1`, `disposisi_2`, `tanggal_disposisi_2`, `disposisi_3`, `tanggal_disposisi_3`) VALUES
(23, '444', '22', '0001', '2025-04-15 08:24:00', '2025-04-09', 'Admin Keuangan', 'Direktur', 'Permintaan Laporan Keuangan Proyek Triwulan I Tahun 2025', 'Surat Keluar', '2025-22.pdf', 1, 28, '2025-04-15 01:37:40', '2025-04-15 01:37:40', '', NULL, '', NULL, '', NULL),
(24, '505', '64', '0002', '2025-04-02 08:38:00', '2025-03-30', 'Manajer Lapangan Pelaksanaan Pekerjaan Gedung', 'Direktur', 'Instruksi Strategi Percepatan Pelaksanaan Proyek Gedung Serbaguna', 'Surat Keluar', '2025-64.pdf', 1, 29, '2025-04-15 01:40:34', '2025-04-15 01:40:34', '', NULL, '', NULL, '', NULL),
(26, '9761', '22', '0004', '2025-02-20 08:42:00', '2025-04-15', 'Pelaksana Lapangan', 'Direktur', 'Penugasan Pelaksanaan Pekerjaan Proyek Baru di Lokasi Karanganyar\r\n', 'Surat Keluar', '2025-22.pdf', 1, 32, '2025-04-15 01:43:43', '2025-04-15 01:43:43', '', NULL, '', NULL, '', NULL),
(27, '1070', '11', '0005', '2025-01-28 08:44:00', '2025-02-01', 'Mandor', 'Direktur', 'Pemberitahuan Perubahan Jadwal Shift Kerja Tim Lapangan', 'Surat Keluar', '2025-11.pdf', 1, 49, '2025-04-15 01:45:12', '2025-04-15 01:45:12', '', NULL, '', NULL, '', NULL),
(28, '444', '22', '6', '2025-04-15 08:58:00', '2025-04-15', 'Direktur', 'Admin Keuangan', 'Laporan Keuangan Proyek Triwulan I Tahun 2025 – Telah Diterima dan Dilaporkan', 'Surat Keluar', '2025-22.pdf', 28, 1, '2025-04-15 01:58:48', '2025-04-15 01:58:48', '', NULL, '', NULL, '', NULL),
(29, '505', '64', '7', '2025-04-02 08:59:00', '2025-04-02', 'Direktur', 'Manajer Lapangan Pelaksanaan Pekerjaan Gedung', 'Tindak Lanjut Strategi Percepatan Pelaksanaan Proyek Gedung Serbaguna', 'Surat Keluar', '2025-64.pdf', 29, 1, '2025-04-15 02:00:42', '2025-04-15 02:00:42', '', NULL, '', NULL, '', NULL),
(30, '777', '31', '8', '2025-02-14 09:04:00', '2025-02-12', 'Direktur', 'Pengawas Pekerjaan Struktur Bangunan Gedung', 'Laporan Evaluasi Teknis Struktur Tahap Awal Proyek Bangunan Gedung', 'Surat Keluar', '2025-31.pdf', 30, 1, '2025-04-15 02:05:12', '2025-04-15 02:05:12', '', NULL, '', NULL, '', NULL),
(31, '9761', '22', '9', '2025-02-22 09:08:00', '2025-02-20', 'Direktur', 'Pelaksana Lapangan ', 'Konfirmasi Penugasan Proyek Baru di Lokasi Karanganyar', 'Surat Keluar', '2025-04-15_09-09-13-22.pdf', 32, 1, '2025-04-15 02:09:13', '2025-04-15 02:09:13', '', NULL, '', NULL, '', NULL),
(32, '1070', '11', '10', '2025-02-03 09:10:00', '2025-02-02', 'Direktur', 'Mandor', 'Penerimaan Jadwal Baru Shift Kerja dan Penyesuaian Tim Lapangan', 'Surat Keluar', '2025-04-15_09-10-45-11.pdf', 49, 1, '2025-04-15 02:10:45', '2025-04-15 02:10:45', '', NULL, '', NULL, '', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_suratkeluar`
--

CREATE TABLE `tb_suratkeluar` (
  `id_suratkeluar` int(11) NOT NULL,
  `id_bagian` int(11) DEFAULT NULL,
  `tanggalkeluar_suratkeluar` datetime NOT NULL,
  `kode_suratkeluar` varchar(10) NOT NULL,
  `nomor_suratkeluar` varchar(45) NOT NULL,
  `nama_bagian` varchar(70) NOT NULL,
  `tanggalsurat_suratkeluar` date NOT NULL,
  `kepada_suratkeluar` varchar(255) NOT NULL,
  `perihal_suratkeluar` text NOT NULL,
  `file_suratkeluar` varchar(255) NOT NULL,
  `operator` varchar(50) NOT NULL,
  `tanggal_entry` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_suratkeluar`
--

INSERT INTO `tb_suratkeluar` (`id_suratkeluar`, `id_bagian`, `tanggalkeluar_suratkeluar`, `kode_suratkeluar`, `nomor_suratkeluar`, `nama_bagian`, `tanggalsurat_suratkeluar`, `kepada_suratkeluar`, `perihal_suratkeluar`, `file_suratkeluar`, `operator`, `tanggal_entry`) VALUES
(96, 32, '2024-12-29 06:13:00', '476.4', '3463', 'Ka. Bid PPT', '2024-12-29', 'Ka. Balai PSDA', 'halooo lulll', '2024-3463.pdf', 'Ka. Bid PPT', '2024-12-29 06:13:27'),
(99, 28, '2024-12-29 06:43:00', '476.4', '3466', 'Ka. Balai PSDA', '2024-12-29', 'Ka. Bid PPT', ':(', '2024-3466.pdf', 'Ka. Balai PSDA', '2024-12-29 06:43:54'),
(100, 32, '2024-12-29 06:45:00', '476.4', '3467', 'Ka. Bid PPT', '2024-12-29', 'Ka. Balai PSDA', 'lullllll', '2024-3467.pdf', 'Ka. Bid PPT', '2024-12-29 06:45:19'),
(101, 32, '2024-12-29 07:47:00', '476.4', '3468', 'Ka. Bid PPT', '2024-12-29', 'Ka. Balai PSDA', 'fgf', '2024-3468.pdf', 'admin', '2024-12-29 07:47:50'),
(102, 28, '2024-12-29 07:54:00', '476.4', '3469', 'Kasubag Program', '2024-12-29', 'Ka. Bid PPT', '54354', '2024-3469.pdf', 'admin', '2024-12-29 07:54:41'),
(103, 32, '2025-01-01 14:46:00', '476.4', '3470', 'Ka. Bid PPT', '2025-01-01', 'Ka. Balai PSDA', 'rrrrrrrrr', '2025-3470.pdf', 'Ka. Bid PPT', '2025-01-01 14:46:19'),
(104, 28, '2025-01-01 17:17:00', '476.4', '3471', 'Ka. Balai PSDA', '2025-01-01', 'Ka. Bid PPT', 'ssssssss', '2025-3471.pdf', 'Ka. Balai PSDA', '2025-01-01 17:18:21'),
(105, NULL, '2025-02-23 18:30:17', '', '3472', 'Ka. Bid PPT', '2025-02-23', '', '', '2025-3472.pdf', '', '2025-02-23 18:30:17'),
(106, NULL, '2025-02-23 18:30:55', '', '3473', 'Ka. Bid PPT', '2025-02-23', '', '', '2025-3473.pdf', '', '2025-02-23 18:30:55'),
(107, NULL, '2025-02-26 11:45:03', '', '3474', 'Direktur', '2025-02-26', '', '', '2025-3474.pdf', '', '2025-02-26 11:45:03'),
(108, NULL, '2025-04-15 08:46:10', '', '3475', 'Direktur', '2025-04-15', '', '', '2025-3475.pdf', '', '2025-04-15 08:46:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_suratmasuk`
--

CREATE TABLE `tb_suratmasuk` (
  `id_suratmasuk` int(11) NOT NULL,
  `tanggalmasuk_suratmasuk` datetime NOT NULL DEFAULT current_timestamp(),
  `kode_suratmasuk` varchar(10) NOT NULL,
  `nomorurut_suratmasuk` varchar(7) NOT NULL,
  `nomor_suratmasuk` varchar(25) NOT NULL,
  `tanggalsurat_suratmasuk` date NOT NULL,
  `pengirim` varchar(255) NOT NULL,
  `kepada_suratmasuk` varchar(255) NOT NULL,
  `perihal_suratmasuk` text NOT NULL,
  `file_suratmasuk` varchar(255) NOT NULL,
  `operator` varchar(50) NOT NULL,
  `tanggal_entry` datetime NOT NULL DEFAULT current_timestamp(),
  `disposisi1` varchar(50) DEFAULT NULL,
  `tanggal_disposisi1` datetime DEFAULT current_timestamp(),
  `disposisi2` varchar(50) DEFAULT NULL,
  `tanggal_disposisi2` varchar(25) DEFAULT NULL,
  `disposisi3` varchar(50) DEFAULT NULL,
  `tanggal_disposisi3` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_suratmasuk`
--

INSERT INTO `tb_suratmasuk` (`id_suratmasuk`, `tanggalmasuk_suratmasuk`, `kode_suratmasuk`, `nomorurut_suratmasuk`, `nomor_suratmasuk`, `tanggalsurat_suratmasuk`, `pengirim`, `kepada_suratmasuk`, `perihal_suratmasuk`, `file_suratmasuk`, `operator`, `tanggal_entry`, `disposisi1`, `tanggal_disposisi1`, `disposisi2`, `tanggal_disposisi2`, `disposisi3`, `tanggal_disposisi3`) VALUES
(2, '2024-11-13 13:00:00', '900', '4518', '050/588/300.01', '2024-10-17', 'HIDROLOGI', 'BANGGUNA', 'Permohonan\r\n', '2024-4518.pdf', 'admin', '2024-12-12 12:15:57', 'HIDROLOGI', '2024-11-13 14:30:00', '', '1970-01-01 07:00:00', '', '1970-01-01 07:00:00'),
(3, '2017-09-20 14:00:00', '010', '4519', '036/B/HMJELEKTRO/IX/2017', '2017-09-18', 'FORUM KOMUNIKASI HIMPUNAN MAHASISWA ELEKTRO INDONESIA WILAYAH XIII KALIMANTAN', 'UMUM', 'Permohonan\r\n', '2017-4519.pdf', 'admin2', '2017-11-14 23:43:44', 'UMUM', '2017-09-22 11:00:00', '', '1970-01-01 07:00:00', 'UMUM', '2017-09-22 11:05:00'),
(5, '2017-09-21 15:10:00', '660', '4520', '660.2/1539/100.14', '2017-09-19', 'DINAS LINGKUNGAN HIDUP KOTA SAMARINDA', 'Sekretaris Daerah', 'Penting', '2017-4520.pdf', 'admin2', '2017-11-14 23:58:01', 'SEKDA', '2017-09-21 23:00:00', 'PLT.ASS.II', '2017-09-24 21:00:00', 'EKONOMI & SDA', '2017-09-25 09:00:00'),
(6, '2017-09-26 10:00:00', '061', '4521', '061/4382/SJ', '2017-09-20', 'MENDAGRI RI', 'Organisasi', 'Surat Edaran Tentang Mekanisme Layanan Administrasi Kemendagri\r\n', '2017-4521.pdf', 'admin', '2017-12-02 21:44:11', 'ASS.III', '2017-09-26 15:00:00', '', '1970-01-01 07:00:00', 'ORTAL', '2017-09-27 11:30:00'),
(7, '2017-09-25 14:00:00', '503', '4522', '503/744/100.26', '2017-09-25', 'DINAS PENANAMAN MODAL DAN PELAYANAN TERPADU SATU PINTU KOTA SAMARINDA', 'PLH SEKDA', 'Tindak Lanjut Permohonan Penghapusan Denda Retribusi IMB PT.Borneo Inti Graha\r\n', '2017-4522.pdf', 'admin', '2017-12-06 00:32:23', 'PLH.SEKDA', '2017-09-26 10:00:00', '', '1970-01-01 07:00:00', 'HUKUM', '2017-09-27 15:00:00'),
(8, '2017-12-06 08:12:00', '454', '4523 ', '4121/wawali/2017', '2017-12-06', 'pdam', 'wawali', 'air', '2017-4523.pdf', 'admin', '2017-12-06 07:15:07', 'WAKIL WALIKOTA', '2017-12-14 08:14:00', 'ADM.PEMB', '2017-12-12 08:14:00', 'PEM-OTDA', '2017-12-13 08:15:00'),
(10, '2025-01-01 09:00:00', '66', '4524 ', '56', '2025-01-01', 'Ka. Bid PPT', 'Ka. Bid TARU', 'sdfasdf', '2025-4524.pdf', 'Ka. Bid PPT', '2025-01-01 09:00:54', 'Kasubag Umpeg', '2025-01-01 09:00:00', 'Kasubag Umpeg', '2025-01-01 09:00:00', 'Ka. Bid IAB', '2025-01-08 09:01:00'),
(11, '2025-01-01 15:06:00', '12334', '4525 ', '34', '2025-01-01', 'Ka. Balai PSDA', 'Ka. Bid PPT', 'pppppppppppppppppp', '2025-4525.pdf', 'Ka. Balai PSDA', '2025-01-01 15:07:15', '', '1970-01-01 07:00:00', '', '1970-01-01 07:00:00', '', '1970-01-01 07:00:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `username_admin` (`username_admin`);

--
-- Indeks untuk tabel `tb_bagian`
--
ALTER TABLE `tb_bagian`
  ADD PRIMARY KEY (`id_bagian`),
  ADD UNIQUE KEY `username_admin_bagian` (`username_admin_bagian`);

--
-- Indeks untuk tabel `tb_surat`
--
ALTER TABLE `tb_surat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_bagian_pengirim` (`id_bagian_pengirim`),
  ADD KEY `id_bagian_penerima` (`id_bagian_penerima`);

--
-- Indeks untuk tabel `tb_suratkeluar`
--
ALTER TABLE `tb_suratkeluar`
  ADD PRIMARY KEY (`id_suratkeluar`),
  ADD UNIQUE KEY `nomor_suratkeluar` (`nomor_suratkeluar`),
  ADD KEY `fk_id_bagian` (`id_bagian`);

--
-- Indeks untuk tabel `tb_suratmasuk`
--
ALTER TABLE `tb_suratmasuk`
  ADD PRIMARY KEY (`id_suratmasuk`),
  ADD UNIQUE KEY `nomorurut_suratmasuk` (`nomorurut_suratmasuk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `tb_bagian`
--
ALTER TABLE `tb_bagian`
  MODIFY `id_bagian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `tb_surat`
--
ALTER TABLE `tb_surat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `tb_suratkeluar`
--
ALTER TABLE `tb_suratkeluar`
  MODIFY `id_suratkeluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT untuk tabel `tb_suratmasuk`
--
ALTER TABLE `tb_suratmasuk`
  MODIFY `id_suratmasuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_surat`
--
ALTER TABLE `tb_surat`
  ADD CONSTRAINT `tb_surat_ibfk_1` FOREIGN KEY (`id_bagian_pengirim`) REFERENCES `tb_bagian` (`id_bagian`) ON DELETE SET NULL,
  ADD CONSTRAINT `tb_surat_ibfk_2` FOREIGN KEY (`id_bagian_penerima`) REFERENCES `tb_bagian` (`id_bagian`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `tb_suratkeluar`
--
ALTER TABLE `tb_suratkeluar`
  ADD CONSTRAINT `fk_id_bagian` FOREIGN KEY (`id_bagian`) REFERENCES `tb_bagian` (`id_bagian`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
