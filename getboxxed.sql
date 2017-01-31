-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2017 at 09:32 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `getboxxed`
--

-- --------------------------------------------------------

--
-- Table structure for table `merchants`
--

DROP TABLE IF EXISTS `merchants`;
CREATE TABLE `merchants` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `owner` text,
  `contactdate` varchar(100) DEFAULT NULL,
  `contractmonths` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `merchants`
--

TRUNCATE TABLE `merchants`;
--
-- Dumping data for table `merchants`
--

INSERT INTO `merchants` (`id`, `user_id`, `name`, `owner`, `contactdate`, `contractmonths`, `username`, `password`, `email`, `updated_at`, `created_at`) VALUES
(1, 0, 'asdfsaf', NULL, NULL, NULL, NULL, NULL, NULL, '2017-01-31 07:05:34', '2017-01-31 07:05:34'),
(2, 0, 'asdfsaf', 'asfsa', '2017-01-06', 'asfas', 'asfas', 'asfasfas', 'asf@asdas.com', '2017-01-31 07:07:32', '2017-01-31 07:07:32'),
(3, 0, 'asdfsaf', 'asfsa', '2017-01-06', 'asfas', 'asfas', 'asfasfas', 'asf@asdas.com', '2017-01-31 07:08:04', '2017-01-31 07:08:04'),
(4, 0, 'asdfsaf', 'asfsa', '2017-01-06', 'asfas', 'asfas', 'asfasfas', 'asf@asdas.com', '2017-01-31 07:09:56', '2017-01-31 07:09:56'),
(5, 0, 'asdfsaf', 'asfsa', '2017-01-06', 'asfas', 'asfas', 'asfasfas', 'asf@asdas.com', '2017-01-31 07:11:59', '2017-01-31 07:11:59'),
(6, 0, 'asdfsaf', 'asfsa', '2017-01-06', 'asfas', 'asfas', 'asfasfas', 'asf@asdas.com', '2017-01-31 07:12:38', '2017-01-31 07:12:38'),
(7, 0, 'sadsa', 'safsaf', '2017-01-14', 'safsaf', 'asfsaf', 'asgsa', 'asf@asdas.com', '2017-01-31 07:20:50', '2017-01-31 07:20:50'),
(8, 0, 'sadsa', 'safsaf', '2017-01-14', 'safsaf', 'asfsaf', 'asgsa', 'asf@asdas.com', '2017-01-31 07:23:29', '2017-01-31 07:23:29'),
(9, 0, 'reymond', 'reymondko', '2017-01-07', '6', 'reymondko', 'asdsaf', 'asfasf@z.com', '2017-01-31 07:24:17', '2017-01-31 07:24:17'),
(10, 0, 'reymond', 'reymondko', '2017-01-06', 'asfasf', 'reymondb@zylun.com', 'qwerty123', 'reymondb@zylun.com', '2017-01-31 07:26:32', '2017-01-31 07:26:32'),
(11, 0, 'asfasf', 'asfasf', '2017-01-07', '23', 'reymondb@zylun.com', 'qwerty123', 'reymondb@zylun.com', '2017-01-31 07:33:16', '2017-01-31 07:33:16'),
(12, NULL, 'asdsafasfasfasf', 'asgasgasgasgasg', '2017-01-14', '6', 'z@z.com', 'qwerty123', 'z@z.com', '2017-01-31 07:40:15', '2017-01-31 07:40:15'),
(13, 5, 'reymondko', 'asfsaf', '2017-01-28', '5', 'xzy@xyz.com', 'qwerty123', 'xzy@xyz.com', '2017-01-31 07:58:38', '2017-01-31 07:58:38');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `migrations`
--

TRUNCATE TABLE `migrations`;
--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `password_resets`
--

TRUNCATE TABLE `password_resets`;
-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `users`
--

TRUNCATE TABLE `users`;
--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'reymond buenaviaje', 'reymondko@getboxxed.com', '$2y$10$JcIPNjizMvtkEGhLDdcfqOuydKNXpahdXydNSbET/pAR3WJ4G3T/.', 'T13bjLiRG3sktveTiG5xCa0kJrIx7ofoFKBUx0TaRJZbSv3Q3ZvApnTNQ5uM', '2017-01-30 18:39:00', '2017-01-30 18:39:00'),
(2, 'asfasf', 'reymondb@zylun.com', '$2y$10$bmP6JZi93Le9Hj2Sj1dwXuY5SNB6lrw1dfR.TmTbnIXtH79wmZTCm', NULL, '2017-01-30 23:38:35', '2017-01-30 23:38:35'),
(4, 'asdsafasfasfasf', 'z@z.com', '$2y$10$ciuyvnpQe7/VLIITr31EH.O07LkokuRBG8pyJyTLXAe7XFwu2FQs2', NULL, '2017-01-30 23:40:15', '2017-01-30 23:40:15'),
(5, 'reymondko', 'xzy@xyz.com', '$2y$10$pkf7AnSBrVNhkZtxAHxvg.N0bEhj7W.2ZQXDngen87dNydsVlfEc6', NULL, '2017-01-30 23:58:38', '2017-01-30 23:58:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `merchants`
--
ALTER TABLE `merchants`
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
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

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
-- AUTO_INCREMENT for table `merchants`
--
ALTER TABLE `merchants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
