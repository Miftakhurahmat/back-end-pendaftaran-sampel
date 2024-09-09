-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 09, 2024 at 03:37 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pendaftaran`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_pasien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_rekam_medis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `nama_pasien`, `nomor_rekam_medis`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `nomor_telepon`, `created_at`, `updated_at`) VALUES
(2, 'Aulia', '09123993929', '22/07/80', 'P', 'Jakarta', '097978238763', '2024-09-04 23:50:01', '2024-09-05 00:03:33'),
(3, 'muhammad', '09709766', '18/11/2010', 'L', 'Bandung', '09787987999', '2024-09-05 01:06:27', '2024-09-05 01:06:27');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_09_05_031836_create_personal_access_tokens_table', 1),
(5, '2024_09_05_033753_create_forms_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'MyApp', 'a32d068fccfd002868172aefaff8385f37aa5c0672ba4398d641f40882ffb5e5', '[\"*\"]', '2024-09-05 00:03:33', NULL, '2024-09-04 23:37:09', '2024-09-05 00:03:33'),
(2, 'App\\Models\\User', 1, 'MyApp', '209e2791446e85a2ab0d79868ed6f85a2111d9ee8698994ad3d3fba9d4631e5b', '[\"*\"]', '2024-09-05 01:20:26', NULL, '2024-09-04 23:37:33', '2024-09-05 01:20:26'),
(3, 'App\\Models\\User', 2, 'MyApp', '474fda1297a6b4f0ef83930ae9022c332e8bffd12f6ae4fc328507a36286e58c', '[\"*\"]', NULL, NULL, '2024-09-05 01:04:29', '2024-09-05 01:04:29'),
(4, 'App\\Models\\User', 2, 'MyApp', 'f03f0de9cb09f5bb761c423e0b661e04ec985504cdda6da7db9b25512990ab09', '[\"*\"]', '2024-09-05 01:06:51', NULL, '2024-09-05 01:05:12', '2024-09-05 01:06:51'),
(5, 'App\\Models\\User', 3, 'MyApp', '918cf8e7e75ce142cf663fefe456041c1a2dae019892bea6bf0ae0f1b92e939b', '[\"*\"]', NULL, NULL, '2024-09-06 21:50:12', '2024-09-06 21:50:12'),
(6, 'App\\Models\\User', 2, 'MyApp', '0dcbf19434afc04f017c99b89ce70b5b1a2b2fe6ba3f43147041fa8bf043c5fe', '[\"*\"]', NULL, NULL, '2024-09-08 07:03:48', '2024-09-08 07:03:48'),
(7, 'App\\Models\\User', 2, 'MyApp', '2b635ebcc6c022866bdf47bf8933a2dbc3239a556f5517726ec5ed8f01bb90d1', '[\"*\"]', NULL, NULL, '2024-09-08 07:13:25', '2024-09-08 07:13:25'),
(8, 'App\\Models\\User', 5, 'MyApp', '2657b0a5cae2fc8d595b2f0b0a57af584a1a844bf9a994109cb9c457e614dcb1', '[\"*\"]', NULL, NULL, '2024-09-08 07:25:15', '2024-09-08 07:25:15'),
(9, 'App\\Models\\User', 2, 'MyApp', '00061f389ed49a88a3a549aa69800df272d8fac88b07cfe0d81f2399a907abb6', '[\"*\"]', NULL, NULL, '2024-09-08 07:38:38', '2024-09-08 07:38:38'),
(10, 'App\\Models\\User', 5, 'MyApp', '83d658a9fffd2020d7f458172fd581ecda2808f6710886d0ab56211474540202', '[\"*\"]', NULL, NULL, '2024-09-08 07:50:20', '2024-09-08 07:50:20'),
(11, 'App\\Models\\User', 5, 'MyApp', 'd86a158bca4cc4c255174045889ac6f313248dc92e5ccd0758d4b5bf296e1c2c', '[\"*\"]', NULL, NULL, '2024-09-08 07:58:34', '2024-09-08 07:58:34'),
(12, 'App\\Models\\User', 5, 'MyApp', '5f31c1b2b6fa8942eb2fc6253f0cdc6045dc14d555d6a9d5504fee98010b36d8', '[\"*\"]', NULL, NULL, '2024-09-08 08:01:10', '2024-09-08 08:01:10'),
(13, 'App\\Models\\User', 5, 'MyApp', '5dd762bf4c13be3da47744f1197053a2ef5376c52a58ef0776db165ff1341a43', '[\"*\"]', NULL, NULL, '2024-09-08 08:02:02', '2024-09-08 08:02:02'),
(14, 'App\\Models\\User', 5, 'MyApp', 'f567bb89d801cf4413b123caca4a981885027ea4a98a6fea929b167b52bfc014', '[\"*\"]', NULL, NULL, '2024-09-08 08:06:11', '2024-09-08 08:06:11'),
(15, 'App\\Models\\User', 5, 'MyApp', '47ed9c15a38a46b92fc776d4e1c9fde4f6dac60067b2eb73765764c892376e51', '[\"*\"]', NULL, NULL, '2024-09-08 08:08:30', '2024-09-08 08:08:30'),
(16, 'App\\Models\\User', 5, 'MyApp', '9daa79e69f4f0d403bdea9846aaf05767cfe039b5c8c166b2e499250e7766bcf', '[\"*\"]', NULL, NULL, '2024-09-08 08:09:32', '2024-09-08 08:09:32'),
(17, 'App\\Models\\User', 5, 'MyApp', '44d96215fee8923b2f7bda58b1d7d4e0250975f31d6e1d1710390f7e84503a03', '[\"*\"]', NULL, NULL, '2024-09-08 08:10:15', '2024-09-08 08:10:15'),
(18, 'App\\Models\\User', 5, 'MyApp', '1cfcdc2ef587b135a0deed688958d087d9b1c44d1b5dcb96625d251ba0414e77', '[\"*\"]', NULL, NULL, '2024-09-08 08:11:30', '2024-09-08 08:11:30'),
(19, 'App\\Models\\User', 5, 'MyApp', 'c204d70f36ef90f7866040930126fca1ceb27dcee6f47ad6c54b4f9695e2bf89', '[\"*\"]', NULL, NULL, '2024-09-08 08:12:37', '2024-09-08 08:12:37'),
(20, 'App\\Models\\User', 5, 'MyApp', '035db22d2501654dece344e2a90e109e1b07301f148eed0d4d181b0c37d45891', '[\"*\"]', NULL, NULL, '2024-09-08 08:13:18', '2024-09-08 08:13:18'),
(21, 'App\\Models\\User', 5, 'MyApp', '101b2b03a78ce2a08c802f8cd49c92f07898cd523ca6f064695099d9018b16de', '[\"*\"]', NULL, NULL, '2024-09-08 08:13:39', '2024-09-08 08:13:39'),
(22, 'App\\Models\\User', 5, 'MyApp', '5e26028356ea66bef797acd1decc7be1edb7e89ad226f6b83d37b0d269a18021', '[\"*\"]', NULL, NULL, '2024-09-08 08:14:09', '2024-09-08 08:14:09'),
(23, 'App\\Models\\User', 5, 'MyApp', '9c3b9efc88fefeef979bab949b28cf1026dba920d5063ef9eebf01569dea5399', '[\"*\"]', NULL, NULL, '2024-09-08 08:18:12', '2024-09-08 08:18:12'),
(24, 'App\\Models\\User', 6, 'MyApp', '36033ef3699a5ec2fff92772d0af24b83e432cb223ec0a72bec9aaab918039ca', '[\"*\"]', NULL, NULL, '2024-09-08 08:35:03', '2024-09-08 08:35:03'),
(25, 'App\\Models\\User', 6, 'MyApp', '888e390c702d8fcc4d336a072227d90b116bd4abe68d644a620abae9f00a3879', '[\"*\"]', NULL, NULL, '2024-09-08 08:36:36', '2024-09-08 08:36:36');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'aulia', 'aulia@gmail.com', NULL, '$2y$12$m/9kDOcFrjv6KjlFMumDQ.Rf/YP9jQYHhyXsAaSbYb4K2j5ZOdrO2', NULL, '2024-09-04 23:37:09', '2024-09-04 23:37:09'),
(2, 'miftakhurahmat', 'miftah11@gmail.com', NULL, '$2y$12$QAusEUViGVw297jXklYn1udfW39jq8ORwAHjB8sgeQm0rNfuoWeAy', NULL, '2024-09-05 01:04:29', '2024-09-05 01:04:29'),
(3, 'Miftah', 'miftakhurahmat15@gmail.com', NULL, '$2y$12$MZY4P.Kl03c8jOCXG77CzuWFz2tVLYVodigP2DJcOHh9gMa8OJEiq', NULL, '2024-09-06 21:50:12', '2024-09-06 21:50:12'),
(5, 'Saya Miftah', 'mif@gmail.com', NULL, '$2y$12$o8C6t2rTPg8B9Z0wB20LPeNj9Vb2LymlOCrWn/tMEygMYnlDDuDuW', NULL, '2024-09-08 07:25:15', '2024-09-08 07:25:15'),
(6, 'Rahmat Aulia', 'rahmat@gmail.com', NULL, '$2y$12$cC5UD1gMN9cdydDmjZamt.Ga2lmEEeqmgRjx8aVXg53qVfaJvzAzu', NULL, '2024-09-08 08:35:03', '2024-09-08 08:35:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
