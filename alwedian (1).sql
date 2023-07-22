-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2023 at 10:57 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alwedian`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('product','about_us') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'about_us',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `title_ar`, `title_en`, `desc_ar`, `desc_en`, `image`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Nostrum tempor facil', 'Accusamus aut volupt', 'Nesciunt Nam in ius', 'Perferendis quia vol', 'aboutUs/jpg_auth-one-bg.jpg_1687363603.jpg', 'about_us', '2023-06-21 14:06:17', '2023-06-21 14:06:43'),
(5, 'Commodo sit asperior', 'Sit atque tempora s', 'Est quasi eaque quis', 'Quo dolor ipsam eius', 'products/jpg_brand-logo-5.jpg_1687607966.jpg', 'product', '2023-06-24 09:59:26', '2023-06-24 09:59:26');

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-21 03:35:14', '2023-06-21 03:35:14'),
(2, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-21 03:37:00', '2023-06-21 03:37:00'),
(3, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-21 03:37:05', '2023-06-21 03:37:05'),
(4, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-21 03:37:09', '2023-06-21 03:37:09'),
(5, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-21 03:38:16', '2023-06-21 03:38:16'),
(6, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-21 03:39:23', '2023-06-21 03:39:23'),
(7, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-21 03:42:30', '2023-06-21 03:42:30'),
(8, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-21 03:42:41', '2023-06-21 03:42:41'),
(9, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-21 03:43:05', '2023-06-21 03:43:05'),
(10, 'default', 'تم  تعديل بيانات مستخدم  Mohamed EL sdodey ', 'App\\Models\\Admin', 1, 'App\\Models\\Admin', 1, '[]', '2023-06-21 03:44:25', '2023-06-21 03:44:25'),
(11, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-21 03:44:37', '2023-06-21 03:44:37'),
(12, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-21 03:45:25', '2023-06-21 03:45:25'),
(13, 'default', 'تم  تعديل بيانات مستخدم  Mohamed EL sdodey ', 'App\\Models\\Admin', 1, 'App\\Models\\Admin', 1, '[]', '2023-06-21 03:45:39', '2023-06-21 03:45:39'),
(14, 'default', 'تم  تعديل بيانات مستخدم  Mohamed EL sdodey ', 'App\\Models\\Admin', 1, 'App\\Models\\Admin', 1, '[]', '2023-06-21 03:45:48', '2023-06-21 03:45:48'),
(15, 'default', 'تم عرض  البانر  الرئيسي', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-21 03:50:57', '2023-06-21 03:50:57'),
(16, 'default', 'تم عرض  البانر  الرئيسي', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-21 04:03:08', '2023-06-21 04:03:08'),
(17, 'default', '  تم اضافة بانر باسم Aut nulla nisi volup ', 'App\\Models\\Slider', 1, 'App\\Models\\Admin', 1, '[]', '2023-06-21 04:06:12', '2023-06-21 04:06:12'),
(18, 'default', 'تم عرض  البانر  الرئيسي', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-21 04:06:24', '2023-06-21 04:06:24'),
(19, 'default', 'تم عرض  البانر  الرئيسي', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-21 04:08:59', '2023-06-21 04:08:59'),
(20, 'default', 'تم  تعديل بيانات البانر    Aut nulla nisi volup ', 'App\\Models\\Slider', 1, 'App\\Models\\Admin', 1, '[]', '2023-06-21 04:10:29', '2023-06-21 04:10:29'),
(21, 'default', 'تم عرض  البانر  الرئيسي', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-21 04:10:35', '2023-06-21 04:10:35'),
(22, 'default', 'تم عرض  البانر  الرئيسي', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-21 04:17:05', '2023-06-21 04:17:05'),
(23, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-21 04:25:03', '2023-06-21 04:25:03'),
(24, 'default', 'تم عرض  الاعدادات العامة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-21 04:27:00', '2023-06-21 04:27:00'),
(25, 'default', 'تم عرض  الاعدادات العامة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-21 04:29:35', '2023-06-21 04:29:35'),
(26, 'default', 'تم عرض  الاعدادات العامة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-21 04:32:59', '2023-06-21 04:32:59'),
(27, 'default', 'تم عرض  الاعدادات العامة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-21 04:35:46', '2023-06-21 04:35:46'),
(28, 'default', 'تم عرض  الاعدادات العامة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-21 04:42:11', '2023-06-21 04:42:11'),
(29, 'default', 'تم تعديل الاعدادات العامة ', 'App\\Models\\Setting', 1, 'App\\Models\\Admin', 1, '[]', '2023-06-21 04:42:31', '2023-06-21 04:42:31'),
(30, 'default', 'تم تعديل الاعدادات العامة ', 'App\\Models\\Setting', 1, 'App\\Models\\Admin', 1, '[]', '2023-06-21 04:42:34', '2023-06-21 04:42:34'),
(31, 'default', 'تم تعديل الاعدادات العامة ', 'App\\Models\\Setting', 1, 'App\\Models\\Admin', 1, '[]', '2023-06-21 04:42:50', '2023-06-21 04:42:50'),
(32, 'default', 'تم عرض  الاعدادات العامة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-21 04:42:55', '2023-06-21 04:42:55'),
(33, 'default', 'تم عرض  الاعدادات العامة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-21 04:48:02', '2023-06-21 04:48:02'),
(34, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-21 13:45:18', '2023-06-21 13:45:18'),
(35, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-21 13:57:47', '2023-06-21 13:57:47'),
(36, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-21 13:58:06', '2023-06-21 13:58:06'),
(37, 'default', '  تم اضافة بانر باسم Non qui minim sit t ', 'App\\Models\\Slider', 2, 'App\\Models\\Admin', 1, '[]', '2023-06-21 14:00:01', '2023-06-21 14:00:01'),
(38, 'default', '  تم اضافة بانر باسم Eos Nam qui illum u ', 'App\\Models\\Slider', 3, 'App\\Models\\Admin', 1, '[]', '2023-06-21 14:01:46', '2023-06-21 14:01:46'),
(39, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-21 14:18:02', '2023-06-21 14:18:02'),
(40, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-21 14:25:11', '2023-06-21 14:25:11'),
(41, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-21 14:25:20', '2023-06-21 14:25:20'),
(42, 'default', 'تم عرض  البانر  الرئيسي', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-21 14:25:23', '2023-06-21 14:25:23'),
(43, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-21 16:08:58', '2023-06-21 16:08:58'),
(44, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-22 03:51:25', '2023-06-22 03:51:25'),
(45, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-22 03:55:50', '2023-06-22 03:55:50'),
(46, 'default', 'تم عرض  الاقسام', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-22 03:55:56', '2023-06-22 03:55:56'),
(47, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-22 04:37:46', '2023-06-22 04:37:46'),
(48, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-22 04:40:01', '2023-06-22 04:40:01'),
(49, 'default', 'تم عرض  المستخدمين', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-22 04:40:06', '2023-06-22 04:40:06'),
(50, 'default', 'تم  الغاء تفعيل  المستخدم  Mohamed EL sdodey ', 'App\\Models\\Admin', 1, 'App\\Models\\Admin', 1, '[]', '2023-06-22 04:40:11', '2023-06-22 04:40:11'),
(51, 'default', 'تم   تفعيل  المستخدم  Mohamed EL sdodey ', 'App\\Models\\Admin', 1, 'App\\Models\\Admin', 1, '[]', '2023-06-22 04:40:12', '2023-06-22 04:40:12'),
(52, 'default', 'تم عرض  المستخدمين', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-22 04:40:41', '2023-06-22 04:40:41'),
(53, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-22 04:40:55', '2023-06-22 04:40:55'),
(54, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-22 04:46:00', '2023-06-22 04:46:00'),
(55, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-22 04:47:34', '2023-06-22 04:47:34'),
(56, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-22 04:49:19', '2023-06-22 04:49:19'),
(57, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-22 04:50:07', '2023-06-22 04:50:07'),
(58, 'default', 'تم عرض  المستخدمين', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-22 04:50:31', '2023-06-22 04:50:31'),
(59, 'default', 'تم عرض  البانر  الرئيسي', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-22 04:50:34', '2023-06-22 04:50:34'),
(60, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-23 12:07:38', '2023-06-23 12:07:38'),
(61, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-24 07:09:44', '2023-06-24 07:09:44'),
(62, 'default', 'تم عرض  الاعدادات العامة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-24 07:09:50', '2023-06-24 07:09:50'),
(63, 'default', 'تم تعديل الاعدادات العامة ', 'App\\Models\\Setting', 1, 'App\\Models\\Admin', 1, '[]', '2023-06-24 07:11:43', '2023-06-24 07:11:43'),
(64, 'default', 'تم عرض  الاعدادات العامة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-24 07:11:47', '2023-06-24 07:11:47'),
(65, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-24 07:46:45', '2023-06-24 07:46:45'),
(66, 'default', 'تم عرض  الاعدادات العامة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-24 07:46:52', '2023-06-24 07:46:52'),
(67, 'default', 'تم تعديل الاعدادات العامة ', 'App\\Models\\Setting', 1, 'App\\Models\\Admin', 1, '[]', '2023-06-24 07:47:16', '2023-06-24 07:47:16'),
(68, 'default', 'تم عرض  الاعدادات العامة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-24 07:47:19', '2023-06-24 07:47:19'),
(69, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-24 09:26:55', '2023-06-24 09:26:55'),
(70, 'default', 'تم عرض  الاعدادات العامة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-24 09:27:01', '2023-06-24 09:27:01'),
(71, 'default', 'تم عرض  الاعدادات العامة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-24 09:30:56', '2023-06-24 09:30:56'),
(72, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-24 09:32:49', '2023-06-24 09:32:49'),
(73, 'default', 'تم عرض  الاعدادات العامة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-24 09:33:15', '2023-06-24 09:33:15'),
(74, 'default', 'تم تعديل الاعدادات العامة ', 'App\\Models\\Setting', 1, 'App\\Models\\Admin', 1, '[]', '2023-06-24 09:39:53', '2023-06-24 09:39:53'),
(75, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-24 09:58:17', '2023-06-24 09:58:17'),
(76, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-24 10:00:20', '2023-06-24 10:00:20'),
(77, 'default', 'تم عرض  البانر  الرئيسي', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-24 10:00:55', '2023-06-24 10:00:55'),
(78, 'default', 'تم عرض  المستخدمين', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-24 10:00:59', '2023-06-24 10:00:59'),
(79, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-24 10:03:11', '2023-06-24 10:03:11'),
(80, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-24 10:11:39', '2023-06-24 10:11:39'),
(81, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-24 10:39:43', '2023-06-24 10:39:43'),
(82, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-24 10:42:34', '2023-06-24 10:42:34'),
(83, 'default', 'تم عرض  الاعدادات العامة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-24 10:42:38', '2023-06-24 10:42:38'),
(84, 'default', 'تم عرض  الاعدادات العامة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-24 10:42:38', '2023-06-24 10:42:38'),
(85, 'default', 'تم عرض  الاعدادات العامة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-24 10:43:59', '2023-06-24 10:43:59'),
(86, 'default', 'تم عرض  الاعدادات العامة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-24 10:58:19', '2023-06-24 10:58:19'),
(87, 'default', 'تم عرض  الاعدادات العامة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-24 10:58:39', '2023-06-24 10:58:39'),
(88, 'default', 'تم عرض  الاعدادات العامة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-24 11:01:52', '2023-06-24 11:01:52'),
(89, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-24 16:04:01', '2023-06-24 16:04:01'),
(90, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-24 16:15:48', '2023-06-24 16:15:48'),
(91, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-24 16:18:27', '2023-06-24 16:18:27'),
(92, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-07-14 02:18:00', '2023-07-14 02:18:00');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `password`, `name`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'admin@admin.com', '$2y$10$1eRpbBZ8/T9GGNRn69ClQewG.T1q4jdtjCC/nc9KzGemm8veZ0dF6', 'Mohamed EL sdodey', 'admins/jpg_mohamed.jpg_1687326348.jpg', 1, NULL, '2023-06-22 04:40:12');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('main','sub') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'main',
  `from_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title_ar`, `title_en`, `type`, `from_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'القسم الرئيسي الاول', 'tttttttt', 'main', NULL, 'categories/jpg_mohamed.jpg_1687414136.jpg', '2023-06-22 04:08:56', '2023-06-22 04:09:31'),
(2, 'Soluta pariatur Nes', 'Deserunt magnam numq', 'sub', 1, 'subCategories/jpg_67fd1ec3de3a8beb7bb95cc7c82c51d1.jpg_1687415566.jpg', '2023-06-22 04:32:46', '2023-06-22 04:32:46');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(2, 'ddd', 'sdsds', 'sdsd', 'sdsds dffd wjhkdwj shdfjwc jqdkhwc', '2023-06-21 07:00:39', '2022-05-21 07:00:39'),
(3, 'ddd', 'sdsds', 'sdsd', 'sdsds dffd wjhkdwj shdfjwc jqdkhwc', '2023-06-21 07:00:39', '2022-05-21 07:00:39'),
(5, 'ddd', 'sdsds', 'sdsd', 'sdsds dffd wjhkdwj shdfjwc jqdkhwc', '2023-06-21 07:00:39', '2022-05-21 07:00:39'),
(6, 'ddd', 'sdsds', 'sdsd', 'sdsds dffd wjhkdwj shdfjwc jqdkhwc', '2023-06-23 07:00:39', '2022-05-21 07:00:39'),
(8, 'ddd', 'sdsds', 'sdsd', 'sdsds dffd wjhkdwj shdfjwc jqdkhwc', '2023-06-26 07:00:39', '2022-05-21 07:00:39'),
(9, 'Dawn Newman', 'cyzuqulija@mailinator.com', '+1 (458) 251-3877', 'Sint et aperiam erro', '2023-06-24 09:23:54', '2023-06-24 09:23:54'),
(10, 'Kyla Donovan', 'rorepi@mailinator.com', '+1 (233) 766-1482', 'Animi totam repudia', '2023-06-24 09:24:12', '2023-06-24 09:24:12'),
(11, 'Graiden Valdez', 'qohuhamut@mailinator.com', '+1 (615) 462-7984', 'Do nostrud eum eu vo', '2023-06-24 10:17:12', '2023-06-24 10:17:12'),
(12, 'Denton Stone', 'walobaqel@mailinator.com', '+1 (518) 962-5219', 'Velit debitis quam i', '2023-06-24 12:26:27', '2023-06-24 12:26:27'),
(13, 'Tanek Lee', 'vizelyx@mailinator.com', '+1 (773) 284-2254', 'Qui blanditiis rem e', '2023-06-24 16:04:37', '2023-06-24 16:04:37'),
(14, 'Lisandra Gentry', 'gynu@mailinator.com', '+1 (418) 648-8878', 'Ex distinctio Repre', '2023-07-14 02:30:27', '2023-07-14 02:30:27');

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
(1, '2022_08_08_184804_create_admins_table', 1),
(2, '2023_01_27_052308_create_settings_table', 1),
(3, '2023_04_10_171427_create_permission_tables', 1),
(4, '2023_04_10_212120_create_categories_table', 1),
(5, '2023_04_12_171730_create_activity_log_table', 1),
(6, '2023_06_20_210508_create_sliders_table', 1),
(7, '2023_06_20_210651_create_contacts_table', 1),
(8, '2023_06_20_211505_create_about_us_table', 1),
(9, '2023_06_20_211642_create_products_table', 1),
(12, '2023_06_24_093505_add_about_ar_to_settings_table', 2),
(14, '2023_06_24_105805_add_lat_to_settings_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `title_ar`, `title_en`, `desc_ar`, `desc_en`, `image`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Quis ea et sequi tot', 'Vero doloribus et ex', 'Nihil itaque harum p', 'Earum velit cupidita', 'product/jpeg_WhatsApp Image 2022-11-03 at 10.05.40 PM.jpeg_1687613126.jpeg', '2023-06-24 11:25:26', '2023-06-24 11:26:25'),
(2, NULL, NULL, 'Non quod sint archit', 'Et exercitation in e', 'Impedit vitae deser', 'Adipisicing qui fugi', 'product/jpg_auth-one-bg.jpg_1689308314.jpg', '2023-07-14 02:18:34', '2023-07-14 02:18:34');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `long` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fave_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_footer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `long`, `lat`, `about_en`, `about_ar`, `logo_header`, `fave_icon`, `logo_footer`, `app_name_ar`, `app_name_en`, `phone1`, `phone2`, `map_link`, `address_ar`, `address_en`, `email`, `created_at`, `updated_at`) VALUES
(1, '144.955631', '-37.817085', 'information', 'معلومات', 'settings/png_footer-logo.png_1687597903.png', 'settings/jpg_brand-logo-4.jpg_1687597903.jpg', 'settings/png_footer-logo.png_1687597903.png', 'Kirestin Guerrero', 'Bertha Stark', '14', '99', '50', 'ألعنوان', 'In molestias quis po', 'dyrewumo@mailinator.com', '2023-06-21 03:35:08', '2023-06-24 09:39:53');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title_ar`, `title_en`, `desc_ar`, `desc_en`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Aut nulla nisi volup', 'Sit aliquip ea odit', 'Placeat temporibus', 'Explicabo Sed sequi', 'sliders/jpg_67fd1ec3de3a8beb7bb95cc7c82c51d1.jpg_1687327829.jpg', '2023-06-21 04:06:12', '2023-06-21 04:10:29'),
(2, 'Non qui minim sit t', 'Eum enim neque et ma', 'Asperiores blanditii', 'Aliquid id repellend', 'sliders/jpg_311471168_675949810704824_6944318494769842239_n.jpg_1687363201.jpg', '2023-06-21 14:00:01', '2023-06-21 14:00:01'),
(3, 'Eos Nam qui illum u', 'Ipsum rerum illum f', 'Velit ut incidunt e', 'Laborum Autem ullam', 'sliders/jpg_mohamed.jpg_1687363306.jpg', '2023-06-21 14:01:46', '2023-06-21 14:01:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_sub_category_id_foreign` (`sub_category_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
