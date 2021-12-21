-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 27, 2021 at 09:25 AM
-- Server version: 10.3.31-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hkblcdih_sil`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('6a014908-cd94-44a8-a6b7-1ee31677ad12', 'App\\Notifications\\NotifyRegister', 'App\\User', 2, '{\"user\":{\"name\":\"Rizky Maulana\",\"nama_perusahaan\":\"CV.HIMAGRIB\",\"email\":\"1606033@sttgarut.ac.id\",\"status\":\"menunggu\",\"updated_at\":\"2020-09-20T14:49:17.000000Z\",\"created_at\":\"2020-09-20T14:49:17.000000Z\",\"id\":3},\"jenis\":\"Pengguna\"}', NULL, '2020-09-20 21:49:23', '2020-09-20 21:49:23'),
('ce49c99c-b567-4e9b-835a-4a5afd829489', 'App\\Notifications\\NotifyPelaporanStats', 'App\\User', 1, '{\"pelaporan\":{\"id\":1,\"nama\":\"Rizky Maulana\",\"telp\":\"08123456789\",\"email\":\"1606033@sttgarut.ac.id\",\"nama_perusahaan\":\"CV.HIMAGRIB\",\"bidang_usaha\":\"Apotek\",\"alamat\":\"Jl. Cimanuk\",\"jenis\":\"Air\",\"periode\":\"1\",\"tahun\":\"2025\",\"dokumentasi\":\"Pelaporan-Air\\/Periode-1\\/Tahun-2025\\/Dokumentasi\\/dUy70il0XfnDFjr30fJSJhxVbrVYWO6pzB6v0hwY.png\",\"dok_1\":\"Pelaporan-Air\\/Periode-1\\/Tahun-2025\\/Gambaran-Pengelolaan-Air\\/fIk888VSyYwFNc5OAAfb382ncGfs0ayDe2cWg4iY.docx\",\"dok_2\":\"Pelaporan-Air\\/Periode-1\\/Tahun-2025\\/Sertifikat-Uji-Lab\\/GKNFkWry8Uz505W5AB6Gu14lXg17b0PaXJI3RBnq.docx\",\"dok_3\":\"Pelaporan-Air\\/Periode-1\\/Tahun-2025\\/Izin-Ipalasa\\/9aRrJcv87I9bsZNAFvLLyag21NjIFlgAuFt2uWCY.docx\",\"dok_4\":null,\"status\":\"Reviewing\",\"user_id\":\"3\",\"created_at\":\"2020-10-22T16:23:59.000000Z\",\"updated_at\":\"2020-10-22T16:23:59.000000Z\"},\"jenis\":\"Pelaporan\"}', '2020-10-22 16:28:08', '2020-10-22 16:23:59', '2020-10-22 16:28:08'),
('efb23eba-bca4-4761-be31-7da19725c876', 'App\\Notifications\\NotifyRegister', 'App\\User', 2, '{\"user\":{\"nama_perusahaan\":\"CV.HIMAGRIB\",\"email\":\"1606033@sttgarut.ac.id\",\"status\":\"menunggu\",\"updated_at\":\"2020-09-20T12:02:58.000000Z\",\"created_at\":\"2020-09-20T12:02:58.000000Z\",\"id\":3},\"jenis\":\"Pengguna\"}', '2020-09-20 19:10:11', '2020-09-20 19:03:02', '2020-09-20 19:10:11'),
('fecbff9c-f6fd-4e13-a278-6283b5aa8bac', 'App\\Notifications\\NotifyRegister', 'App\\User', 2, '{\"user\":{\"name\":\"Anwar Fauzi\",\"nama_perusahaan\":\"PT. Rancamaya\",\"email\":\"anwar@gmail.com\",\"status\":\"menunggu\",\"updated_at\":\"2020-09-20T12:07:41.000000Z\",\"created_at\":\"2020-09-20T12:07:41.000000Z\",\"id\":4},\"jenis\":\"Pengguna\"}', '2020-09-20 19:08:07', '2020-09-20 19:07:45', '2020-09-20 19:08:07');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('1606033@sttgarut.ac.id', '$2y$10$YhVzwQekgqA/.N1YeTV3YeY0qzct3Yop9HZLwLFufsEr504sslhk.', '2020-09-20 22:52:59');

-- --------------------------------------------------------

--
-- Table structure for table `pelaporan`
--

CREATE TABLE `pelaporan` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_perusahaan` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bidang_usaha` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis` enum('Air','Udara','LimbahB3','Lingkungan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `periode` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dokumentasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dok_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dok_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dok_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dok_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Reviewing','Reviewed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Reviewing',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pelaporan`
--

INSERT INTO `pelaporan` (`id`, `nama`, `telp`, `email`, `nama_perusahaan`, `bidang_usaha`, `alamat`, `jenis`, `periode`, `tahun`, `dokumentasi`, `dok_1`, `dok_2`, `dok_3`, `dok_4`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Rizky Maulana', '08123456789', '1606033@sttgarut.ac.id', 'CV.HIMAGRIB', 'Apotek', 'Jl. Cimanuk', 'Air', '1', '2025', 'Pelaporan-Air/Periode-1/Tahun-2025/Dokumentasi/dUy70il0XfnDFjr30fJSJhxVbrVYWO6pzB6v0hwY.png', 'Pelaporan-Air/Periode-1/Tahun-2025/Gambaran-Pengelolaan-Air/fIk888VSyYwFNc5OAAfb382ncGfs0ayDe2cWg4iY.docx', 'Pelaporan-Air/Periode-1/Tahun-2025/Sertifikat-Uji-Lab/GKNFkWry8Uz505W5AB6Gu14lXg17b0PaXJI3RBnq.docx', 'Pelaporan-Air/Periode-1/Tahun-2025/Izin-Ipalasa/9aRrJcv87I9bsZNAFvLLyag21NjIFlgAuFt2uWCY.docx', NULL, 'Reviewing', 3, '2020-10-22 16:23:59', '2020-10-22 16:29:51');

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id` int(10) UNSIGNED NOT NULL,
  `nik` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pelapor` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_perusahaan` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bidang_usaha` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `periode` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_dok_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_dok_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_dok_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_dok_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kesimpulan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_surat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_verifikasi` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pelaporan_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_perusahaan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bidang_usaha` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('aktif','menunggu') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'menunggu',
  `roles` enum('Admin','Operator','User') COLLATE utf8mb4_unicode_ci DEFAULT 'User',
  `completed` enum('true','false') COLLATE utf8mb4_unicode_ci DEFAULT 'false',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `telp`, `nama_perusahaan`, `bidang_usaha`, `alamat`, `jabatan`, `status`, `roles`, `completed`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$AgCcOvT5/RcTHIqbL6oIe.HJGimsdVJPsHBWFApQ9SqP75Q6Lirx.', NULL, NULL, NULL, NULL, NULL, 'aktif', 'Admin', 'false', NULL, NULL, '2020-09-20 19:34:59'),
(2, 'Operator', 'rizkymaulanamm@gmail.com', NULL, '$2y$12$AvUJIs8/y77x998.j/pvJuS8II21RpTxMp1mM3CbrEazsX4hw1v2K', NULL, NULL, NULL, NULL, NULL, 'aktif', 'Operator', 'false', NULL, NULL, NULL),
(3, 'Rizky Maulana', '1606033@sttgarut.ac.id', NULL, '$2y$10$2Ev/ntLuli1M4y6hswQL4.hT5wefXvDh2AIOmIcu7330IUhNPtTeC', '08123456789', 'CV.HIMAGRIB', 'Apotek', 'Jl. Cimanuk', 'Manager', 'aktif', 'User', 'true', NULL, '2020-09-20 21:49:17', '2020-10-22 16:42:58');

-- --------------------------------------------------------

--
-- Table structure for table `wizards`
--

CREATE TABLE `wizards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pelaporan`
--
ALTER TABLE `pelaporan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pelaporan_user_id_foreign` (`user_id`);

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `review_pelaporan_id_foreign` (`pelaporan_id`),
  ADD KEY `review_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wizards`
--
ALTER TABLE `wizards`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pelaporan`
--
ALTER TABLE `pelaporan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wizards`
--
ALTER TABLE `wizards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pelaporan`
--
ALTER TABLE `pelaporan`
  ADD CONSTRAINT `pelaporan_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_pelaporan_id_foreign` FOREIGN KEY (`pelaporan_id`) REFERENCES `pelaporan` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `review_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
