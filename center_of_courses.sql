-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2022 at 01:07 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `center_of_courses`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(150) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `role` int(6) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `phone`, `email`, `password`, `image`, `role`, `updated_at`, `created_at`) VALUES
(1, 'Saad', '012548997', 'saad@gmail.com', '14676985', NULL, NULL, '2022-07-31 07:59:20', '2022-07-31 04:28:32'),
(2, 'Moaaz', '012545328997', 'moaaz@gmail.com', '$2y$10$5ORKlQZD/.PFZRqsqN7xbemxKnB2A3dV9EX4iFzUkA/rxE9CnBLD6', NULL, NULL, '2022-07-31 09:33:21', '2022-07-31 09:33:21'),
(4, 'Gamal', '0125451328997', 'Gamal@gmail.com', '$2y$10$fORzao/bJrndmDt42bdmGOdgSGojCljVXk6PNRSO4wJqkkBJi9foG', NULL, NULL, '2022-07-31 10:24:30', '2022-07-31 10:24:30');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `link` varchar(200) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `admin_id` int(11) NOT NULL,
  `track_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `link`, `image`, `admin_id`, `track_id`, `level_id`, `created_at`, `updated_at`) VALUES
(3, 'fullstack', 'https//fullstack.net', NULL, 1, 1, 1, '2022-07-31 06:24:54', '2022-07-31 06:24:54');

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
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Advanced.', '2022-07-31 05:54:44', '2022-08-01 07:39:52'),
(2, 'intermediate.', '2022-08-01 07:40:49', '2022-08-01 07:40:49');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires_at` timestamp NULL DEFAULT current_timestamp(),
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `expires_at`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 7, 'adminToken', NULL, 'dc8feb9b29ede0a097079bd46a6c863d7d7c2fc2f039042524f974022dcc88ba', '[\"*\"]', NULL, '2022-07-31 18:33:39', '2022-07-31 18:33:39'),
(3, 'App\\Models\\User', 9, 'adminToken', NULL, '25d218c3036b0a180a1ea7a04ef1d017aaaa9a6134ecf069d97d53acd155893f', '[\"*\"]', NULL, '2022-08-01 06:57:36', '2022-08-01 06:57:36'),
(5, 'App\\Models\\User', 10, 'adminToken', NULL, '3156209a2e482f0bc7eed9ed5dd045a750689b7fd1d1e207350dae775fa264c0', '[\"*\"]', '2022-08-01 09:06:47', '2022-08-01 07:02:18', '2022-08-01 09:06:47');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `student_id`, `course_id`, `rate`, `created_at`, `updated_at`) VALUES
(3, 1, 3, 6, '2022-08-01 09:06:47', '2022-08-01 09:06:47');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone` varchar(22) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(22) NOT NULL,
  `college` varchar(25) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `phone`, `email`, `password`, `college`, `image`, `created_at`, `updated_at`) VALUES
(1, 'tarekreda', '1045823456789', 'tarekreda@gmail.com', '123456789', NULL, NULL, '2022-07-31 05:28:18', '2022-07-31 05:28:18');

-- --------------------------------------------------------

--
-- Table structure for table `trackes`
--

CREATE TABLE `trackes` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(180) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trackes`
--

INSERT INTO `trackes` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Backend', 'It is about server side', '2022-07-31 05:55:59', '2022-07-31 05:55:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(1, 'Mohab', 'mohab@gmail.com', NULL, '$2y$10$2pVdzoRDKTLPFD7WHFSCpeC4Vdf4K7LGRLyPmdC39W3gS.uY2UvOa', NULL, '2022-07-31 10:22:01', '2022-07-31 10:22:01'),
(2, 'Ahmed', 'ahmed@gmail.com', NULL, '$2y$10$ocz8Rs19RiHCNAioeIhxOObb5tuGjhgatJI4B8k6STzw0oY3cyJZm', NULL, '2022-07-31 10:25:24', '2022-07-31 10:25:24'),
(3, 'Ahmed Helmy', 'ahmedhelmy@gmail.com', NULL, '$2y$10$/Q0pWcPU8YxT1lpZYfS9JeQMb4dLph5FFZOPU5fBed1J48W8x5jzO', NULL, '2022-07-31 17:56:42', '2022-07-31 17:56:42'),
(4, 'Ahmed Nabil', 'ahmednabil@gmail.com', NULL, '$2y$10$6mJzUFJTjVG97hra0TimtOM32AGyWRq5O3uBthx2ug.JkkrhTu0ze', NULL, '2022-07-31 18:05:04', '2022-07-31 18:05:04'),
(5, 'Ahmed Nabil', 'ahmednabil2@gmail.com', NULL, '$2y$10$UY/rx9Jdyq96oiK/uOETt.K7WErMs7gPP2Gw/83RnpDFrn0fX6pRC', NULL, '2022-07-31 18:19:38', '2022-07-31 18:19:38'),
(6, 'Ahmed Nabil', 'ahmednabil12@gmail.com', NULL, '$2y$10$6Sxgu/cJimcrD5xRllZWxeQvQW1Tp/l3CAhK5K1CnLHyX1r2WQBwS', NULL, '2022-07-31 18:31:48', '2022-07-31 18:31:48'),
(7, 'Ahmed Nabil', 'ahmednabil132@gmail.com', NULL, '$2y$10$rES1rLdEnpWAIYinBwIhk.lXxxKZzxfN9GUOl9R9pMxrdyhxSzNWu', NULL, '2022-07-31 18:33:39', '2022-07-31 18:33:39'),
(8, 'Ahmed Nabil', 'ahmednabil1332@gmail.com', NULL, '$2y$10$/1D2uB2ZUGnKplxjTk3sq.N/O8ATO.vcn6yRODiHAzXp8AhYK6Aba', NULL, '2022-07-31 18:36:16', '2022-07-31 18:36:16'),
(9, 'Saad', 'saad@gmail.com', NULL, '$2y$10$u0nemqXy.w0bFiviC7SyWObVNWRFV2EQBLr6F/mw8DE3vmOesz2oW', NULL, '2022-08-01 06:57:36', '2022-08-01 06:57:36'),
(10, 'Tarek', 'tarek@gmail.com', NULL, '$2y$10$y5x6WvyecaAP4IY3ekOctuh/gaDg3cQ8WqxOCFDQD5keAOK.ECOTm', NULL, '2022-08-01 07:01:06', '2022-08-01 07:01:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `track_id` (`track_id`),
  ADD KEY `level_id` (`level_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trackes`
--
ALTER TABLE `trackes`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `trackes`
--
ALTER TABLE `trackes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `gf` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lv` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rwt` FOREIGN KEY (`track_id`) REFERENCES `trackes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `crs` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `st` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
