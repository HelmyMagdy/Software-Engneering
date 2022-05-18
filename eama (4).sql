-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2022 at 02:29 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eama`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_05_11_204224_create_sessions_table', 1);

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
('ahmedmostafa823@hotmail.com', '$2y$10$X/YfxH1p7MGdPAwEzMjEOe6Q8wvVozPnfKT1o1fJyMOqU5fMb2IDa', '2022-05-17 17:19:02'),
('m.mourad9696@gmail.com', '$2y$10$bYoM.89FAFtIyeyhCk/GwOo35ZzJJpFOS2Rj4R1vRLoJz/CpoiScq', '2022-05-17 18:19:22');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ac9y4fjdLEBC8CrfZ40Kb7oD7dWbLg0R7XNeF0Wl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibDZzNk5JTVJTSlJiNlh6Rmd4Z0ZBR2szeXRwM0pObklUbTliN0w3diI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9lYW1hLmxvY2FsL3JlZ2lzdGVyIjt9fQ==', 1652828851);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `phone`, `address`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'mohamed mourad', 'm.mourad9696@gmail.com', '0', '01153559077', 'cairo', NULL, '$2y$10$WxXO6iP0w/fxtqWAQz1MHexUMVUQy4wD/EZc7sts1334k92hOJN/i', NULL, NULL, NULL, 'KXgGTvbzfVGgjp9H4KcerWQB0L9pHt3dhIeJQij6fTj43DhjLKydtwTY0QQM', NULL, NULL, '2022-05-11 18:57:31', '2022-05-14 22:21:23'),
(2, 'admin', 'mohamed1903157@miuegypt.edu.eg', '1', '01289563091', 'cairo', NULL, '$2y$10$JqHnyQfP6mkuUTHyDz8Hcu0FXP/G.9h2UG8qt/YbWOifh/tPM2Ec.', NULL, NULL, NULL, 'dtBh3JjoXwCh6BQaozlvyTRXMdsm4F1wOAmRfzTxJwnz4G8Aeo5NWiWxrz81', NULL, NULL, '2022-05-11 18:59:29', '2022-05-11 18:59:29'),
(3, 'Mourad', 'm.astra96.a@gmail.com', '0', '0157789935', 'Alexandria', NULL, '$2y$10$owsnAHNfXNKROFsGYzEWLe..Wt67C9pkgn6l4YMSNgb1lipF/CE3.', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-11 23:03:52', '2022-05-11 23:03:52'),
(4, 'user_1', 'user_1@gmaill.com', '0', '01289563091', 'Alexandria', NULL, '$2y$10$ooCwPvYrTV/4XkBAS1iCeuhjr5tzDcojs0WsfYq2qRlZVZZXs4uZm', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-16 04:49:12', '2022-05-16 04:49:30'),
(5, 'Mourad', 'wewe@ewkmdewqd', '0', '0148548596230', 'any', NULL, '$2y$10$J5cUeHmbAj1cXaaZriABkeCTg07cJi9Uk.o71l8ohtoZmVFjVbsw6', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-16 05:13:49', '2022-05-16 05:13:49'),
(6, 'moataz', 'Moataz@gmail.com', '0', '01153559077', 'any', NULL, '$2y$10$3JNgTsNk8uLZ8oUVAc12zueneekvFMFnSXS8/DORfGbPZWtkDw2mq', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-16 05:26:43', '2022-05-16 05:26:43'),
(7, 'user_3', 'MohamedMourad@gmail.com', '0', '01289563091', 'any', NULL, '$2y$10$gfDbCItL6uZDU4xnmfmAFux4AyzWWy0NPmEv0KsihQaYuRh57lIAW', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-16 05:28:28', '2022-05-16 05:28:28'),
(8, 'user_2', 'user_2@gmail.com', '0', '01153559077', 'any', NULL, '$2y$10$F4ElB9Uq4saNhuK2g3289OhHsd4FVC/0QiuRlooRAu4aG0ukfP7Au', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-16 05:29:23', '2022-05-16 05:29:23'),
(9, 'user_4', 'user_4@gmail.com', '0', '0157789935', 'cairo', NULL, '$2y$10$XO/S4aGQq51pc5ALh.TSKOwpiNwSScAV1/YJIfIBdLzkvYH08IIym', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-16 05:30:36', '2022-05-16 05:30:36'),
(10, 'userada', 'wewe@ewkmdeasaf', '0', '11145456sd', 'cairo', NULL, '$2y$10$42/TFXtOT56.X6C2GMuaMuqUgHEzGhUskRwqY0clvvSsqWleXynw6', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-16 05:39:50', '2022-05-16 05:39:50'),
(11, 'mohamed mourad', 'wewe@ewkmdewqdsasa', '0', '01289563091', 'cairo', NULL, '$2y$10$RMTjXRS30uCCRlKa/7YlauXOMkPVio9Soy8r6q8vKrzoMSLZWcHku', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-16 17:50:27', '2022-05-16 17:50:27'),
(12, 'user_3', 'wewe@ewkmdewqdads', '0', '0148548596230', 'ad', NULL, '$2y$10$YL5L21pWZ4r8.VVo3DVnF.sZxqTm8MiNTIkOp1S9YLE4E.brsNWqK', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-16 18:37:01', '2022-05-16 18:37:01'),
(13, 'adadas', 'wewe@ewkmdewqdsaas', '0', '01289563091', 'cairo', NULL, '$2y$10$tOdH3mQfdnwECg4OvQ6a3..INw5ltjcKcmGTrWjwpH7EzZ/tWOdeW', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-16 18:42:21', '2022-05-16 18:42:21'),
(14, 'adadasd', 'wewe@ewkmdewqdasdsa', '0', '0157789935', 'cairo', NULL, '$2y$10$SYQY4J3pUVIFU32MBdO0SO/nuUFQrjwH8ilk/T8WukNLD/nnsr96K', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-16 18:43:51', '2022-05-16 18:43:51'),
(15, 'adadsda', 'm.mourad9696@gmail.comsasaas', '0', '0148548596230', 'Alexandria', NULL, '$2y$10$sKVhNE/CPFviYtk4rqsx7OOA3akZO5UyWj/J8NMDFDE77u8bxTWIi', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-16 18:47:04', '2022-05-16 18:47:04'),
(16, 'adadadad', 'wewe@ewkmdedaad', '0', '01289563091', 'cairo', NULL, '$2y$10$GJUlwP89x5P0AFR50mdYSegE0KiQyBlWGKA4wJob3eaQVnSxWI5fy', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-16 18:48:57', '2022-05-16 18:48:57'),
(17, 'asdadffeffe3w', 'mohamed1903157@miuegypt.edu.egdsds', '0', '01289563091', 'any', NULL, '$2y$10$ebgZDEdF0bnKhoGETYoxCeS.tgIvZ84P0NNprj/mrcOFCyQeB8REO', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-16 18:49:34', '2022-05-16 18:49:34'),
(18, 'sasadsda', 'mohamed1903157@miuegypt.edu.egsdadas', '0', '11145456', 'cairo', NULL, '$2y$10$.wTjyjnMXgCsdHV0Vs/Vp.epI2ZMOS2Q1wsxiB4lop.fGtSnyggMa', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-16 18:52:20', '2022-05-16 18:52:20'),
(19, 'afsafas', 'wewe@ewkmdewqdasfsaf', '0', '01289563091', 'any', NULL, '$2y$10$1HytVofZ3BOwgz/tp.RPdemaw8bQxLTYMpa6u/4rClp0zGi42vSKG', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-16 19:03:57', '2022-05-16 19:03:57'),
(20, 'sadasdas', 'mohamed1903157@miuegypt.edu.egsafasf', '0', '0148548596230', 'any', NULL, '$2y$10$z3.sNdb8QdItoGdqGarnbeeoSt.8h.dlHNNLlFy7/RYRATGnwlLDi', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-16 19:06:46', '2022-05-16 19:06:46'),
(21, 'safsaaf', 'mohamed1903157@miuegypt.edu.egafsaf', '0', '01153559077', 'cairo', NULL, '$2y$10$DE.amUfS7xAO/..pD22TAug6oVFpYOuOkmYlCgX43iGc4LBkXrJDa', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-16 19:29:14', '2022-05-16 19:29:14'),
(22, 'sffsFs', 'm.mourad9696@gmail.comasfs', '0', '11111111', 'cairo', NULL, '$2y$10$iiwEhLigAC.sFOJpFO8SDuf2WUbUBGcAdDTEA.PAUwXpUFM5wyeDy', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-16 19:31:53', '2022-05-16 19:31:53'),
(23, 'sffsfsaafsfas', 'mohamed1903157@miuegypt.edu.egasdaf', '0', '01153559077', 'cairo', NULL, '$2y$10$qZIO9GP1QyUNvc3.LeFg7ekXQwCiYVqH7KRWBNSkE5u0acwiEmi6S', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-16 19:34:31', '2022-05-16 19:34:31'),
(24, 'scadsad', 'wewe@ewkmdewqdasdsad', '0', '0112', 'any', NULL, '$2y$10$py5uSF6pU532JQxAkZAo4OOq8u/VNmPYKQ.0yIsa5219vIvS.bWmO', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-16 19:38:32', '2022-05-16 19:38:32'),
(25, 'Mouradassaf', 'wewe@ewkmdewqdafsafsa', '0', '2222222222', 'cairo', NULL, '$2y$10$uVaVV28VYJlva2yaW/sQTulseWONzaREMrXh3YV.plKz3dPnBg24y', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-16 19:42:54', '2022-05-16 19:42:54'),
(26, 'sdadadfs', 'wewe@ewkmdewqdadfdaf', '0', '0148548596230', 'any', NULL, '$2y$10$LD5IsuP8aw/37GqpViBH.OJoFRzuegA./hVDaplbsl1pFJi.p3Oem', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-16 19:43:35', '2022-05-16 19:43:35'),
(27, 'adadasas', 'wewe@ewkmdewqddasdsa', '0', '01289563091', 'cairo', NULL, '$2y$10$yM6Cm7VyzYn9ZW5oYjY1Z.zgyfDub6giMoBJ3cvAyS6GkTpyrX/wC', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-16 19:45:59', '2022-05-16 19:45:59'),
(28, 'ahmed mostafa', 'ahmedmostafa823@hotmail.com', '0', '0148548596230', 'cairo', NULL, '$2y$10$z4sF1jBYPlo8zWRQ0LT9KO4RRExXrbN644wfcOA/0TZIewwGeCGM.', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-17 17:18:51', '2022-05-17 17:18:51'),
(29, 'adadsdasds', 'wewe@ewkmdewqdfafsafda', '0', '11145456', 'any', NULL, '$2y$10$6.eFCCRvj/FRBbSjjMHIl.4yS9GntZQKrwe/H8ydRf.BEjJvZpKJa', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-17 20:49:10', '2022-05-17 20:49:10'),
(30, 'mohamed mourad', 'any@gmail.comdsda', '0', '0148548596230', 'any', NULL, '$2y$10$9Ihcfgq55tdq7ftu49cMqu4j6UbMDeUaspD/sH8wGR96TLJ0mPgoS', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-17 20:58:17', '2022-05-17 20:58:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
