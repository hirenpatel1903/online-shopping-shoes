-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2019 at 03:01 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online-laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin@admin.com', 'admin123', NULL, NULL);

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
(3, '2019_08_13_163750_user_register_table', 2),
(4, '2016_01_01_000000_add_voyager_user_fields', 3),
(5, '2016_01_01_000000_create_data_types_table', 3),
(6, '2016_05_19_173453_create_menu_table', 3),
(7, '2016_10_21_190000_create_roles_table', 3),
(8, '2016_10_21_190000_create_settings_table', 3),
(9, '2016_11_30_135954_create_permission_table', 3),
(10, '2016_11_30_141208_create_permission_role_table', 3),
(11, '2016_12_26_201236_data_types__add__server_side', 3),
(12, '2017_01_13_000000_add_route_to_menu_items_table', 3),
(13, '2017_01_14_005015_create_translations_table', 3),
(14, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 3),
(15, '2017_03_06_000000_add_controller_to_data_types_table', 3),
(16, '2017_04_21_000000_add_order_to_data_rows_table', 3),
(17, '2017_07_05_210000_add_policyname_to_data_types_table', 3),
(18, '2017_08_05_000000_add_group_to_settings_table', 3),
(19, '2017_11_26_013050_add_user_role_relationship', 3),
(20, '2017_11_26_015000_create_user_roles_table', 3),
(21, '2018_03_11_000000_add_user_settings', 3),
(22, '2018_03_14_000000_add_details_to_data_types_table', 3),
(23, '2018_03_16_000000_make_settings_value_nullable', 3),
(26, '2019_08_13_164132_create_userregisters_table', 4),
(27, '2019_08_15_121425_admin_login_table', 4);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-08-14 01:35:08', '2019-08-14 01:35:08'),
(2, 'browse_bread', NULL, '2019-08-14 01:35:08', '2019-08-14 01:35:08'),
(3, 'browse_database', NULL, '2019-08-14 01:35:08', '2019-08-14 01:35:08'),
(4, 'browse_media', NULL, '2019-08-14 01:35:08', '2019-08-14 01:35:08'),
(5, 'browse_compass', NULL, '2019-08-14 01:35:08', '2019-08-14 01:35:08'),
(6, 'browse_menus', 'menus', '2019-08-14 01:35:08', '2019-08-14 01:35:08'),
(7, 'read_menus', 'menus', '2019-08-14 01:35:08', '2019-08-14 01:35:08'),
(8, 'edit_menus', 'menus', '2019-08-14 01:35:08', '2019-08-14 01:35:08'),
(9, 'add_menus', 'menus', '2019-08-14 01:35:08', '2019-08-14 01:35:08'),
(10, 'delete_menus', 'menus', '2019-08-14 01:35:09', '2019-08-14 01:35:09'),
(11, 'browse_roles', 'roles', '2019-08-14 01:35:09', '2019-08-14 01:35:09'),
(12, 'read_roles', 'roles', '2019-08-14 01:35:09', '2019-08-14 01:35:09'),
(13, 'edit_roles', 'roles', '2019-08-14 01:35:09', '2019-08-14 01:35:09'),
(14, 'add_roles', 'roles', '2019-08-14 01:35:09', '2019-08-14 01:35:09'),
(15, 'delete_roles', 'roles', '2019-08-14 01:35:09', '2019-08-14 01:35:09'),
(16, 'browse_users', 'users', '2019-08-14 01:35:09', '2019-08-14 01:35:09'),
(17, 'read_users', 'users', '2019-08-14 01:35:09', '2019-08-14 01:35:09'),
(18, 'edit_users', 'users', '2019-08-14 01:35:09', '2019-08-14 01:35:09'),
(19, 'add_users', 'users', '2019-08-14 01:35:10', '2019-08-14 01:35:10'),
(20, 'delete_users', 'users', '2019-08-14 01:35:10', '2019-08-14 01:35:10'),
(21, 'browse_settings', 'settings', '2019-08-14 01:35:10', '2019-08-14 01:35:10'),
(22, 'read_settings', 'settings', '2019-08-14 01:35:10', '2019-08-14 01:35:10'),
(23, 'edit_settings', 'settings', '2019-08-14 01:35:10', '2019-08-14 01:35:10'),
(24, 'add_settings', 'settings', '2019-08-14 01:35:10', '2019-08-14 01:35:10'),
(25, 'delete_settings', 'settings', '2019-08-14 01:35:10', '2019-08-14 01:35:10'),
(26, 'browse_hooks', NULL, '2019-08-14 01:35:13', '2019-08-14 01:35:13');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-08-14 01:35:07', '2019-08-14 01:35:07'),
(2, 'user', 'Normal User', '2019-08-14 01:35:08', '2019-08-14 01:35:08');

-- --------------------------------------------------------

--
-- Table structure for table `userregister`
--

CREATE TABLE `userregister` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userregister`
--

INSERT INTO `userregister` (`id`, `name`, `address`, `contact`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'HIREN PATEL', 'AHMEDABAD', 7686867867, 'patelhiren.hp19@gmail.com', 'hiren123', NULL, NULL, NULL),
(2, 'ARCHANA PATEL', 'SURAT', 8978675676, 'patelarchu.1695@gmail.com', 'archana123', NULL, NULL, NULL),
(3, 'LOKESH DARJI', 'RAJASTAN', 8776787698, 'lokeshlp12@gmail.com', 'lokesh123', NULL, NULL, NULL),
(4, 'Nidzii Parmar', 'Surat', 7867564556, 'nidhiparmar.np19@gmail.com', 'nidhi123', NULL, NULL, NULL),
(5, 'Nidzii Parmar', 'Surat', 7867564556, 'nidhiparmar.np19@gmail.com', 'nidhi123', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, NULL, 'HIREN PATEL', 'patelhiren.hp19@gmail.com', 'users/default.png', NULL, '$2y$10$HA1/LfQW1jyOQtuCjcep6.8G70uPbRCEJD4EsFCk7AjKGN7w8f1HO', 'zv9I7hDJPCx5ayY9t5aAVROedbJOpM0gVKygH054rfYenDnuQJo6MbVIkNVA', NULL, '2019-08-08 12:34:12', '2019-08-08 12:34:12'),
(2, NULL, 'abdul', 'aabdulak@gmail.com', 'users/default.png', NULL, '$2y$10$WzTJUID4a868uykLn.HGQujtL6qUvYT04RCurw5kO2bsxt0GVtp12', NULL, NULL, '2019-08-09 01:21:48', '2019-08-09 01:21:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `userregister`
--
ALTER TABLE `userregister`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `userregister`
--
ALTER TABLE `userregister`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
