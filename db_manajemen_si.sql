-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2023 at 11:56 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_manajemen_si`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pegawai_id` bigint(20) NOT NULL,
  `jam_masuk` time NOT NULL,
  `jam_istirahat` time NOT NULL,
  `tanggal_kerja` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id`, `pegawai_id`, `jam_masuk`, `jam_istirahat`, `tanggal_kerja`, `created_at`, `updated_at`) VALUES
(1, 1, '07:00:00', '22:00:00', '2023-06-08', '2023-06-07 20:49:06', '2023-06-07 20:49:06'),
(2, 2, '07:00:00', '12:00:00', '2023-06-01', '2023-06-08 02:06:30', '2023-06-08 02:07:09'),
(3, 5, '07:00:00', '12:00:00', '2023-06-05', '2023-06-08 02:31:07', '2023-06-08 02:31:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gaji`
--

CREATE TABLE `gaji` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pegawai_id` bigint(20) NOT NULL,
  `tunjangan_id` bigint(20) NOT NULL,
  `jumlah_gaji` varchar(255) NOT NULL,
  `total_gaji` varchar(255) NOT NULL,
  `tanggal_gaji` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gaji`
--

INSERT INTO `gaji` (`id`, `pegawai_id`, `tunjangan_id`, `jumlah_gaji`, `total_gaji`, `tanggal_gaji`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '3000000', '6000000', '2023-07-01', '2023-06-07 20:59:19', '2023-06-07 20:59:19'),
(2, 3, 2, '5000000', '7000000', '2023-07-01', '2023-06-08 02:09:07', '2023-06-08 02:09:07'),
(3, 4, 2, '4000000', '6000000', '2023-07-01', '2023-06-08 02:32:18', '2023-06-08 02:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `ijin`
--

CREATE TABLE `ijin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alasan_ijin` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ijin`
--

INSERT INTO `ijin` (`id`, `alasan_ijin`, `created_at`, `updated_at`) VALUES
(1, 'Sakit', '2023-06-07 07:55:28', '2023-06-07 07:55:28'),
(2, 'Hamil', '2023-06-07 07:56:03', '2023-06-07 07:56:03'),
(3, 'Urusan Keluarga', '2023-06-07 07:56:18', '2023-06-07 07:56:18'),
(4, 'Kuliah Extend', '2023-06-08 02:11:40', '2023-06-08 02:11:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_07_095452_create_pegawais_table', 1),
(6, '2023_06_07_100658_create_absensis_table', 2),
(7, '2023_06_07_101158_create_pendidikans_table', 3),
(8, '2023_06_07_101718_create_gajis_table', 4),
(9, '2023_06_07_102127_create_tunjangans_table', 5),
(10, '2023_06_07_102548_create_ijins_table', 6),
(11, '2023_06_07_103158_create_pengajuans_table', 7),
(12, '2023_06_07_103556_create_pengembangans_table', 8),
(13, '2023_06_07_104006_create_penggunas_table', 9),
(14, '2023_06_07_130029_create_pegawais_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nomor_handphone` varchar(15) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nama`, `alamat`, `nomor_handphone`, `jabatan`, `created_at`, `updated_at`) VALUES
(1, 'Bambang', 'Pasuruan', '081767838311', 'produksi', '2023-06-07 07:26:14', '2023-06-07 07:26:14'),
(2, 'Ayu', 'Malang', '089543213512', 'Finishing', '2023-06-07 07:27:35', '2023-06-07 07:27:35'),
(3, 'Doni', 'Mojokerto', '085899543211', 'Teknisi', '2023-06-07 07:29:14', '2023-06-07 07:29:14'),
(4, 'Salzsabilla', 'Kediri', '081654377999', 'Admin Produksi', '2023-06-07 07:30:23', '2023-06-07 07:32:01'),
(5, 'Rudianto', 'Kediri', '085678231544', 'Operator Produksi', '2023-06-07 07:31:12', '2023-06-08 02:05:06');

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pendidikan_terakhir` varchar(50) NOT NULL,
  `asal_pendidikan` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`id`, `pendidikan_terakhir`, `asal_pendidikan`, `created_at`, `updated_at`) VALUES
(1, 'SLTA Sederajat', 'SMAN Purwosari', '2023-06-07 07:53:50', '2023-06-07 07:53:50'),
(2, 'SLTP Sederajat', 'SMPN 1 Purwosari', '2023-06-08 02:10:17', '2023-06-08 02:10:17'),
(3, 'Strata1 (S1)', 'ITN Malang', '2023-06-08 02:10:49', '2023-06-08 02:10:49'),
(4, 'Magister (S2)', 'Unibraw Malang', '2023-06-08 02:33:15', '2023-06-08 02:33:15');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan`
--

CREATE TABLE `pengajuan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pegawai_id` bigint(20) NOT NULL,
  `ijin_id` bigint(20) NOT NULL,
  `tgl_mulaiizin` date NOT NULL,
  `tgl_selesaiizin` date NOT NULL,
  `tgl_pengajuan` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengajuan`
--

INSERT INTO `pengajuan` (`id`, `pegawai_id`, `ijin_id`, `tgl_mulaiizin`, `tgl_selesaiizin`, `tgl_pengajuan`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-06-05', '2023-06-07', '2023-06-04', '2023-06-07 22:11:43', '2023-06-07 22:11:43'),
(2, 3, 1, '2023-06-06', '2023-06-08', '2023-06-05', '2023-06-08 02:35:25', '2023-06-08 02:35:25');

-- --------------------------------------------------------

--
-- Table structure for table `pengembangan`
--

CREATE TABLE `pengembangan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pegawai_id` bigint(20) NOT NULL,
  `pendidikan_id` bigint(20) NOT NULL,
  `nama_pengembangan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengembangan`
--

INSERT INTO `pengembangan` (`id`, `pegawai_id`, `pendidikan_id`, `nama_pengembangan`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Pinter Ngoding', '2023-06-07 21:34:32', '2023-06-07 21:34:32'),
(2, 4, 3, 'Microsoft Office', '2023-06-08 02:12:57', '2023-06-08 02:12:57'),
(3, 5, 1, 'Comunnication Good', '2023-06-08 02:34:25', '2023-06-08 02:34:25');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tunjangan`
--

CREATE TABLE `tunjangan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_tunjangan` varchar(50) NOT NULL,
  `nilai_tunjangan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tunjangan`
--

INSERT INTO `tunjangan` (`id`, `nama_tunjangan`, `nilai_tunjangan`, `created_at`, `updated_at`) VALUES
(1, 'Bpjs Kesehatan', '4000000', '2023-06-07 20:50:46', '2023-06-07 20:50:46'),
(2, 'Bpjs Ketanagakerjaan', '3000000', '2023-06-07 20:51:36', '2023-06-07 20:51:36'),
(3, 'Pensiun', '7000000', '2023-06-07 20:51:56', '2023-06-07 20:51:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Muhammad Firman', 'firmananjelo5@gmail.com', NULL, '$2y$10$nfrKcOpoJ2ejioAajxd31e3ZSSq6ZlG4PnnXikmof1iXqo3feEuii', NULL, '2023-06-07 06:47:26', '2023-06-07 06:47:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gaji`
--
ALTER TABLE `gaji`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ijin`
--
ALTER TABLE `ijin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengembangan`
--
ALTER TABLE `pengembangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tunjangan`
--
ALTER TABLE `tunjangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gaji`
--
ALTER TABLE `gaji`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ijin`
--
ALTER TABLE `ijin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pengajuan`
--
ALTER TABLE `pengajuan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengembangan`
--
ALTER TABLE `pengembangan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tunjangan`
--
ALTER TABLE `tunjangan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
