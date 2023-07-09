-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 12:22 AM
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
-- Database: `zedan`
--

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
(1, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-05-13 13:50:20', '2023-05-13 13:50:20'),
(2, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-05-13 14:27:20', '2023-05-13 14:27:20'),
(3, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-05-19 14:52:57', '2023-05-19 14:52:57'),
(4, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-05-19 14:54:55', '2023-05-19 14:54:55'),
(5, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-05-19 16:35:58', '2023-05-19 16:35:58'),
(6, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-05-19 16:45:49', '2023-05-19 16:45:49'),
(7, 'default', 'تم عرض  الادوار', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-05-19 16:46:15', '2023-05-19 16:46:15'),
(8, 'default', 'تم عرض  الادوار', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-05-19 16:46:39', '2023-05-19 16:46:39'),
(9, 'default', 'تم عرض  الادوار', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-05-19 16:46:42', '2023-05-19 16:46:42'),
(10, 'default', ' تم اضافة دور  باسم سوبر ادمن ', 'Spatie\\Permission\\Models\\Role', 1, 'App\\Models\\Admin', 1, '[]', '2023-05-19 16:47:40', '2023-05-19 16:47:40'),
(11, 'default', 'تم عرض  المستخدمين', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-05-19 16:48:43', '2023-05-19 16:48:43'),
(12, 'default', 'تم عرض  الادوار', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-05-19 16:51:25', '2023-05-19 16:51:25'),
(13, 'default', ' تم تعديل دور  باسم سوبر ادمن ', 'Spatie\\Permission\\Models\\Role', 1, 'App\\Models\\Admin', 1, '[]', '2023-05-19 16:51:32', '2023-05-19 16:51:32'),
(14, 'default', 'تم عرض  المستخدمين', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-05-19 16:51:39', '2023-05-19 16:51:39'),
(15, 'default', 'تم  تعديل بيانات مستخدم  Mohamed EL sdodey ', 'App\\Models\\Admin', 1, 'App\\Models\\Admin', 1, '[]', '2023-05-19 16:52:04', '2023-05-19 16:52:04'),
(16, 'default', 'تم عرض  المستخدمين', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-05-19 16:52:10', '2023-05-19 16:52:10'),
(17, 'default', 'تم عرض  المستخدمين', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-05-19 16:52:53', '2023-05-19 16:52:53'),
(18, 'default', 'تم عرض  الطلبات  الجديدة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-05-19 16:54:19', '2023-05-19 16:54:19'),
(19, 'default', 'تم عرض  التجار', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-05-19 17:59:48', '2023-05-19 17:59:48'),
(20, 'default', 'تم عرض  الاقسام', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-05-19 18:00:16', '2023-05-19 18:00:16'),
(21, 'default', '  تم اضافة قسم باسم التصنيف الاول ', 'App\\Models\\Category', 1, 'App\\Models\\Admin', 1, '[]', '2023-05-19 18:00:36', '2023-05-19 18:00:36'),
(22, 'default', 'تم عرض  التجار', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-05-19 18:00:40', '2023-05-19 18:00:40'),
(23, 'default', ' تم اضافة تاجر  باسم Katelyn Kirby ', 'App\\Models\\Trader', 1, 'App\\Models\\Admin', 1, '[]', '2023-05-19 18:00:59', '2023-05-19 18:00:59'),
(24, 'default', 'تم عرض  التجار', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-05-19 18:01:04', '2023-05-19 18:01:04'),
(25, 'default', ' تم اضافة تاجر  باسم Sheila Banks ', 'App\\Models\\Trader', 2, 'App\\Models\\Admin', 1, '[]', '2023-05-19 18:01:25', '2023-05-19 18:01:25'),
(26, 'default', 'تم عرض  الطلبات  الجديدة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-05-19 18:01:40', '2023-05-19 18:01:40'),
(27, 'default', 'تم عرض  المناديب', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-05-19 18:07:32', '2023-05-19 18:07:32'),
(28, 'default', ' تم اضافة مندوب  باسم Yetta Roberts ', 'App\\Models\\Delivery', 1, 'App\\Models\\Admin', 1, '[]', '2023-05-19 18:07:45', '2023-05-19 18:07:45'),
(29, 'default', 'تم عرض  الطلبات  الجديدة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-05-19 18:07:56', '2023-05-19 18:07:56'),
(30, 'default', 'تم عرض  الدول', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-05-19 18:08:17', '2023-05-19 18:08:17'),
(31, 'default', ' تم اضافة دولة باسم القاهرة ', 'App\\Models\\Area', 1, 'App\\Models\\Admin', 1, '[]', '2023-05-19 18:10:20', '2023-05-19 18:10:20'),
(32, 'default', 'تم عرض  المحافظات', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-05-19 18:10:22', '2023-05-19 18:10:22'),
(33, 'default', ' تم اضافة محافظة  باسم مدينة نصر ', 'App\\Models\\Area', 2, 'App\\Models\\Admin', 1, '[]', '2023-05-19 18:10:42', '2023-05-19 18:10:42'),
(34, 'default', 'تم عرض  الطلبات  الجديدة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-05-19 18:10:53', '2023-05-19 18:10:53'),
(35, 'default', 'تم عرض  التجار', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-05-19 18:40:50', '2023-05-19 18:40:50'),
(36, 'default', '  تم اضافة طلبات   ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-05-19 18:48:14', '2023-05-19 18:48:14'),
(37, 'default', 'تم عرض  الطلبات  الجديدة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-05-19 18:48:16', '2023-05-19 18:48:16'),
(38, 'default', 'تم عرض  الطلبات المحولة للمناديب', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-05-19 18:48:27', '2023-05-19 18:48:27'),
(39, 'default', 'تم عرض  الطلبات  الجديدة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-05-19 18:48:37', '2023-05-19 18:48:37'),
(40, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 12:21:11', '2023-06-03 12:21:11'),
(41, 'default', 'تم عرض  المستخدمين', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 12:31:42', '2023-06-03 12:31:42'),
(42, 'default', 'تم عرض  الادوار', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 12:31:45', '2023-06-03 12:31:45'),
(43, 'default', 'تم عرض  الاقسام', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 12:31:49', '2023-06-03 12:31:49'),
(44, 'default', 'تم عرض  المناديب', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 12:31:52', '2023-06-03 12:31:52'),
(45, 'default', 'تم عرض  الطلبات  الجديدة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 12:32:01', '2023-06-03 12:32:01'),
(46, 'default', 'تم عرض  التجار', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 12:32:19', '2023-06-03 12:32:19'),
(47, 'default', 'تم عرض  المناديب', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 12:32:43', '2023-06-03 12:32:43'),
(48, 'default', 'تم عرض  تقارير المناديب  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 12:33:00', '2023-06-03 12:33:00'),
(49, 'default', 'تم عرض  تقارير المناديب  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 12:33:04', '2023-06-03 12:33:04'),
(50, 'default', 'تم عرض  تقارير المناديب  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 12:33:12', '2023-06-03 12:33:12'),
(51, 'default', 'تم عرض  تقارير المناديب  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 12:33:18', '2023-06-03 12:33:18'),
(52, 'default', 'تم عرض  تقارير التجار  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 12:34:05', '2023-06-03 12:34:05'),
(53, 'default', 'تم عرض  تقارير يومية الطلبات  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 12:34:08', '2023-06-03 12:34:08'),
(54, 'default', 'تم عرض  الطلبات المحولة للمناديب', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 12:35:30', '2023-06-03 12:35:30'),
(55, 'default', 'تم عرض  الطلبات  المسلمة جزئيا للعميل', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 12:35:51', '2023-06-03 12:35:51'),
(56, 'default', 'تم عرض  الطلبات  الجديدة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 12:35:56', '2023-06-03 12:35:56'),
(57, 'default', 'تم عرض  الطلبات المحولة للمناديب', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 12:35:59', '2023-06-03 12:35:59'),
(58, 'default', 'تم عرض  الطلبات  المسلمة جزئيا للعميل', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 12:36:17', '2023-06-03 12:36:17'),
(59, 'default', 'تم عرض  الطلبات  المسلمة كليا للعميل', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 12:36:22', '2023-06-03 12:36:22'),
(60, 'default', 'تم عرض  الطلبات المحولة للمناديب', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 12:36:25', '2023-06-03 12:36:25'),
(61, 'default', 'تم عرض  الطلبات  المسلمة جزئيا للعميل', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 12:36:45', '2023-06-03 12:36:45'),
(62, 'default', 'تم عرض  المناديب', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 12:36:54', '2023-06-03 12:36:54'),
(63, 'default', ' تم تعديل مندوب  باسم Yetta Roberts ', 'App\\Models\\Delivery', 1, 'App\\Models\\Admin', 1, '[]', '2023-06-03 12:37:25', '2023-06-03 12:37:25'),
(64, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 12:38:12', '2023-06-03 12:38:12'),
(65, 'default', 'تم عرض  المناديب', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 12:38:16', '2023-06-03 12:38:16'),
(66, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 12:41:54', '2023-06-03 12:41:54'),
(67, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 12:42:07', '2023-06-03 12:42:07'),
(68, 'default', 'تم عرض  التجار', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 12:44:28', '2023-06-03 12:44:28'),
(69, 'default', 'تم عرض  التجار', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 12:44:29', '2023-06-03 12:44:29'),
(70, 'default', ' تم تعديل بيانات   التاجر Sheila Banks ', 'App\\Models\\Trader', 2, 'App\\Models\\Admin', 1, '[]', '2023-06-03 12:44:50', '2023-06-03 12:44:50'),
(71, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:29:40', '2023-06-03 14:29:40'),
(72, 'default', 'تم عرض  تقارير المناديب  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:29:51', '2023-06-03 14:29:51'),
(73, 'default', 'تم عرض  تقارير المناديب  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:30:03', '2023-06-03 14:30:03'),
(74, 'default', 'تم عرض  تقارير المناديب  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:30:06', '2023-06-03 14:30:06'),
(75, 'default', 'تم عرض  تقارير المناديب  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:30:17', '2023-06-03 14:30:17'),
(76, 'default', 'تم عرض  تقارير المناديب  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:30:22', '2023-06-03 14:30:22'),
(77, 'default', 'تم عرض  تقارير المناديب  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:30:26', '2023-06-03 14:30:26'),
(78, 'default', 'تم عرض  تقارير المناديب  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:30:29', '2023-06-03 14:30:29'),
(79, 'default', 'تم عرض  تقارير المناديب  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:30:39', '2023-06-03 14:30:39'),
(80, 'default', 'تم عرض  تقارير المناديب  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:35:51', '2023-06-03 14:35:51'),
(81, 'default', 'تم عرض  تقارير المناديب  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:36:10', '2023-06-03 14:36:10'),
(82, 'default', 'تم عرض  تقارير المناديب  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:36:25', '2023-06-03 14:36:25'),
(83, 'default', 'تم عرض  تقارير المناديب  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:36:28', '2023-06-03 14:36:28'),
(84, 'default', 'تم عرض  تقارير المناديب  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:36:38', '2023-06-03 14:36:38'),
(85, 'default', 'تم عرض  تقارير المناديب  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:36:38', '2023-06-03 14:36:38'),
(86, 'default', 'تم عرض  تقارير المناديب  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:36:50', '2023-06-03 14:36:50'),
(87, 'default', 'تم عرض  تقارير المناديب  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:37:02', '2023-06-03 14:37:02'),
(88, 'default', 'تم عرض  تقارير المناديب  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:37:07', '2023-06-03 14:37:07'),
(89, 'default', 'تم عرض  تقارير المناديب  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:37:12', '2023-06-03 14:37:12'),
(90, 'default', 'تم عرض  تقارير التجار  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:38:42', '2023-06-03 14:38:42'),
(91, 'default', 'تم عرض  تقارير التجار  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:40:07', '2023-06-03 14:40:07'),
(92, 'default', 'تم عرض  تقارير التجار  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:40:11', '2023-06-03 14:40:11'),
(93, 'default', 'تم عرض  تقارير التجار  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:40:16', '2023-06-03 14:40:16'),
(94, 'default', 'تم عرض  تقارير يومية الطلبات  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:40:25', '2023-06-03 14:40:25'),
(95, 'default', 'تم عرض  الطلبات المحولة للمناديب', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:40:50', '2023-06-03 14:40:50'),
(96, 'default', 'تم عرض  الطلبات  الجديدة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:40:55', '2023-06-03 14:40:55'),
(97, 'default', '  تم اضافة طلبات جديدة   ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:41:18', '2023-06-03 14:41:18'),
(98, 'default', 'تم عرض  الطلبات  الجديدة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:41:21', '2023-06-03 14:41:21'),
(99, 'default', 'تم عرض  الطلبات المحولة للمناديب', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:41:24', '2023-06-03 14:41:24'),
(100, 'default', 'تم عرض  الطلبات المحولة للمناديب', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:42:35', '2023-06-03 14:42:35'),
(101, 'default', 'تم عرض  الطلبات المحولة للمناديب', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:42:59', '2023-06-03 14:42:59'),
(102, 'default', 'تم عرض  الطلبات  الجديدة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:50:23', '2023-06-03 14:50:23'),
(103, 'default', 'تم عرض  الطلبات المحولة للمناديب', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:50:35', '2023-06-03 14:50:35'),
(104, 'default', 'تم عرض  الطلبات  الجديدة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:50:38', '2023-06-03 14:50:38'),
(105, 'default', '  تم اضافة طلبات جديدة   ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:52:00', '2023-06-03 14:52:00'),
(106, 'default', 'تم عرض  الطلبات  الجديدة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 14:52:02', '2023-06-03 14:52:02'),
(107, 'default', 'تم عرض  الطلبات  الجديدة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 15:02:24', '2023-06-03 15:02:24'),
(108, 'default', '  تم اضافة طلبات جديدة   ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 15:14:15', '2023-06-03 15:14:15'),
(109, 'default', 'تم عرض  الطلبات  الجديدة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 15:14:18', '2023-06-03 15:14:18'),
(110, 'default', 'تم عرض  الطلبات  الجديدة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 15:14:22', '2023-06-03 15:14:22'),
(111, 'default', 'تم عرض  الطلبات  الجديدة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 15:41:40', '2023-06-03 15:41:40'),
(112, 'default', 'تم عرض  الطلبات  الجديدة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 15:41:53', '2023-06-03 15:41:53'),
(113, 'default', '  تم اضافة طلبات جديدة   ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 15:42:30', '2023-06-03 15:42:30'),
(114, 'default', 'تم عرض  الطلبات  الجديدة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 15:42:33', '2023-06-03 15:42:33'),
(115, 'default', 'تم عرض  الطلبات  الجديدة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 15:42:40', '2023-06-03 15:42:40'),
(116, 'default', '  تم اضافة طلبات جديدة   ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 15:44:05', '2023-06-03 15:44:05'),
(117, 'default', 'تم عرض  الطلبات  الجديدة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 15:44:07', '2023-06-03 15:44:07'),
(118, 'default', 'تم عرض  الطلبات  الجديدة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 15:44:37', '2023-06-03 15:44:37'),
(119, 'default', '  تم اضافة طلبات جديدة   ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 15:45:28', '2023-06-03 15:45:28'),
(120, 'default', 'تم عرض  الطلبات  الجديدة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 15:45:30', '2023-06-03 15:45:30'),
(121, 'default', 'تم عرض  الطلبات المحولة للمناديب', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 15:45:45', '2023-06-03 15:45:45'),
(122, 'default', 'تم عرض  الطلبات المحولة للمناديب', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 15:49:59', '2023-06-03 15:49:59'),
(123, 'default', 'تم عرض  الطلبات  الجديدة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 15:50:05', '2023-06-03 15:50:05'),
(124, 'default', 'تم عرض  التجار', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 16:01:22', '2023-06-03 16:01:22'),
(125, 'default', '  تم اضافة طلبات   ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 16:09:58', '2023-06-03 16:09:58'),
(126, 'default', 'تم عرض  الطلبات  الجديدة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 16:10:00', '2023-06-03 16:10:00'),
(127, 'default', 'تم عرض  الطلبات  الجديدة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 16:10:07', '2023-06-03 16:10:07'),
(128, 'default', '  تم اضافة طلبات   ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 16:10:47', '2023-06-03 16:10:47'),
(129, 'default', 'تم عرض  الطلبات  الجديدة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 16:10:49', '2023-06-03 16:10:49'),
(130, 'default', 'تم عرض  الطلبات المحولة للمناديب', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 16:11:00', '2023-06-03 16:11:00'),
(131, 'default', 'تم عرض  المناديب', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 16:28:01', '2023-06-03 16:28:01'),
(132, 'default', 'تم عرض  الطلبات  المسلمة جزئيا للعميل', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 16:39:09', '2023-06-03 16:39:09'),
(133, 'default', 'تم عرض  الطلبات  المسلمة كليا للعميل', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 16:39:15', '2023-06-03 16:39:15'),
(134, 'default', 'تم عرض  الطلبات  المسلمة جزئيا للعميل', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 16:39:19', '2023-06-03 16:39:19'),
(135, 'default', 'تم عرض  الطلبات    الغير مسلمة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 16:39:23', '2023-06-03 16:39:23'),
(136, 'default', 'تم عرض  الطلبات  الجديدة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 16:39:27', '2023-06-03 16:39:27'),
(137, 'default', 'تم عرض  الطلبات المحولة للمناديب', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 16:39:34', '2023-06-03 16:39:34'),
(138, 'default', 'تم عرض  الطلبات    الغير مسلمة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 16:40:37', '2023-06-03 16:40:37'),
(139, 'default', 'تم عرض  الطلبات  الجديدة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 16:40:48', '2023-06-03 16:40:48'),
(140, 'default', 'تم عرض  المناديب', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 16:42:52', '2023-06-03 16:42:52'),
(141, 'default', 'تم عرض  المناديب', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-03 16:42:52', '2023-06-03 16:42:52'),
(142, 'default', 'تم عرض  المناديب', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-04 02:23:22', '2023-06-04 02:23:22'),
(143, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-04 02:24:25', '2023-06-04 02:24:25'),
(144, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-04 02:31:52', '2023-06-04 02:31:52'),
(145, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-04 02:32:20', '2023-06-04 02:32:20'),
(146, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-04 02:40:35', '2023-06-04 02:40:35'),
(147, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-04 02:41:52', '2023-06-04 02:41:52'),
(148, 'default', 'تم عرض  المناديب', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-04 02:43:40', '2023-06-04 02:43:40'),
(149, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-04 02:49:54', '2023-06-04 02:49:54'),
(150, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-04 04:21:06', '2023-06-04 04:21:06'),
(151, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-04 07:36:25', '2023-06-04 07:36:25'),
(152, 'default', 'تم عرض  الطلبات  الجديدة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-04 07:37:34', '2023-06-04 07:37:34'),
(153, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-04 17:05:06', '2023-06-04 17:05:06'),
(154, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-04 17:05:46', '2023-06-04 17:05:46'),
(155, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-04 17:06:17', '2023-06-04 17:06:17'),
(156, 'default', 'تم عرض  الاعدادات العامة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-04 17:06:58', '2023-06-04 17:06:58'),
(157, 'default', 'تم عرض  الاعدادات العامة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-04 17:08:13', '2023-06-04 17:08:13'),
(158, 'default', 'تم عرض  الادوار', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-04 17:08:15', '2023-06-04 17:08:15'),
(159, 'default', 'تم عرض  الاعدادات العامة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-04 17:08:19', '2023-06-04 17:08:19'),
(160, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-05 02:29:53', '2023-06-05 02:29:53'),
(161, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-05 02:30:55', '2023-06-05 02:30:55'),
(162, 'default', 'تم عرض  الادوار', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-05 02:31:16', '2023-06-05 02:31:16'),
(163, 'default', 'تم عرض  الادوار', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-05 02:31:34', '2023-06-05 02:31:34'),
(164, 'default', 'تم عرض  المناديب', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-05 02:38:43', '2023-06-05 02:38:43'),
(165, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-05 12:21:09', '2023-06-05 12:21:09'),
(166, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-05 12:21:32', '2023-06-05 12:21:32'),
(167, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-05 12:21:46', '2023-06-05 12:21:46'),
(168, 'default', 'تم عرض  المناديب', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-05 12:21:51', '2023-06-05 12:21:51'),
(169, 'default', 'تم عرض  التجار', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-05 12:46:55', '2023-06-05 12:46:55'),
(170, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-05 12:54:03', '2023-06-05 12:54:03'),
(171, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-05 12:54:23', '2023-06-05 12:54:23'),
(172, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-05 13:17:50', '2023-06-05 13:17:50'),
(173, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-05 13:23:51', '2023-06-05 13:23:51'),
(174, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-05 13:24:06', '2023-06-05 13:24:06'),
(175, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-05 13:24:14', '2023-06-05 13:24:14'),
(176, 'default', 'تم عرض  الاعدادات العامة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-05 13:24:27', '2023-06-05 13:24:27'),
(177, 'default', 'تم عرض  المستخدمين', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-05 13:24:32', '2023-06-05 13:24:32'),
(178, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-05 13:24:43', '2023-06-05 13:24:43'),
(179, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-05 13:25:23', '2023-06-05 13:25:23'),
(180, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-05 19:04:29', '2023-06-05 19:04:29'),
(181, 'default', 'تم عرض  الاعدادات العامة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-05 19:06:13', '2023-06-05 19:06:13'),
(182, 'default', 'تم تعديل الاعدادات العامة ', 'App\\Models\\Setting', 1, 'App\\Models\\Admin', 1, '[]', '2023-06-05 19:06:26', '2023-06-05 19:06:26'),
(183, 'default', 'تم عرض  الاعدادات العامة', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-05 19:06:29', '2023-06-05 19:06:29'),
(184, 'default', 'تم عرض  الرئيسية', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2023-06-05 19:06:38', '2023-06-05 19:06:38');

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
(1, 'admin@admin.com', '$2y$10$VVT1/.HJzJsNiTcfj20u1.PQt.GxwQ.oa2HZWkkXm1XRAFrv7k.Yi', 'Mohamed EL sdodey', 'admins/jpeg_WhatsApp Image 2023-04-13 at 22.19.55.jpeg_1684522324.jpeg', 1, NULL, '2023-05-19 16:52:04');

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `title`, `from_id`, `created_at`, `updated_at`) VALUES
(1, 'القاهرة', NULL, '2023-05-19 18:10:20', '2023-05-19 18:10:20'),
(2, 'مدينة نصر', 1, '2023-05-19 18:10:42', '2023-05-19 18:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(1, 'التصنيف الاول', 'categories/jpg_67fd1ec3de3a8beb7bb95cc7c82c51d1.jpg_1684526436.jpg', '2023-05-19 18:00:36', '2023-05-19 18:00:36');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`id`, `name`, `email`, `phone1`, `phone2`, `whatsapp`, `image`, `address`, `user_name`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Yetta Roberts', 'xufedetyv@mailinator.com', '29', '10', 'Consequatur tempori', 'delivers/jpg_c48f2f3d0088ee0e02b6024fd8542b20.jpg_1684526865.jpg', NULL, 'jijazif', '$2y$10$rjDdnhIOFPLZ2Uv/V076H.2WpNn.P5SV76xsF4gebRn7/ZYfWwwbm', '2023-05-19 18:07:45', '2023-06-03 12:37:25');

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
(11, '2022_08_08_184804_create_admins_table', 1),
(12, '2023_01_27_052308_create_settings_table', 1),
(13, '2023_04_10_171427_create_permission_tables', 1),
(14, '2023_04_10_212120_create_categories_table', 1),
(15, '2023_04_10_212258_create_areas_table', 1),
(16, '2023_04_11_180702_create_deliveries_table', 1),
(17, '2023_04_11_180739_create_traders_table', 1),
(18, '2023_04_12_171730_create_activity_log_table', 1),
(19, '2023_04_12_205050_create_orders_table', 1),
(20, '2023_04_14_080500_create_order_details_table', 1);

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

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_time` datetime DEFAULT NULL,
  `trader_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipment_pieces_number` int(11) DEFAULT NULL,
  `shipment_value` double DEFAULT NULL,
  `delivery_value` double DEFAULT NULL,
  `total_value` double DEFAULT NULL,
  `delivery_ratio` double DEFAULT NULL,
  `status` enum('new','converted_to_delivery','total_delivery_to_customer','partial_delivery_to_customer','not_delivery') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `refused_reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_id` bigint(20) UNSIGNED DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `province_id`, `customer_name`, `customer_address`, `customer_phone`, `delivery_time`, `trader_id`, `shipment_pieces_number`, `shipment_value`, `delivery_value`, `total_value`, `delivery_ratio`, `status`, `refused_reason`, `delivery_id`, `latitude`, `longitude`, `address`, `created_at`, `updated_at`) VALUES
(1, NULL, 2, 'Aphrodite Leach', '123 South New Street', '36', '1998-07-14 04:56:00', 2, 847, 56, 93, 149, 35, 'partial_delivery_to_customer', NULL, 1, NULL, NULL, NULL, NULL, '2023-06-03 12:36:12'),
(2, NULL, 2, 'Martha David', 'Nam beatae non esse', '77', '1979-04-14 11:09:00', 2, 726, 51, 59, 110, 38, 'total_delivery_to_customer', NULL, 1, NULL, NULL, NULL, NULL, '2023-06-03 12:39:57'),
(3, NULL, 2, 'Sopoline Turner', '334 Oak Parkway', '34', '2020-05-18 00:37:00', 2, 112, 4, 43, 47, 20, 'not_delivery', NULL, 1, NULL, NULL, NULL, NULL, '2023-06-05 02:49:10'),
(4, NULL, 2, 'Wallace Garza', '67 Green First Court', '65880878675', '2023-06-03 19:50:00', 2, 4, 4000, 3000, 7000, 5, 'partial_delivery_to_customer', NULL, 1, NULL, NULL, NULL, NULL, '2023-06-05 02:49:30'),
(5, NULL, 2, '123', '67 Green First Court', '123456', '2023-06-01 19:56:00', 2, 12, 657678, 768989, 1426667, 8, 'not_delivery', NULL, 1, NULL, NULL, NULL, NULL, '2023-06-05 12:22:43'),
(6, NULL, 2, 'Wallace Garza', '49 Rocky Nobel Boulevard', '53465768', '2023-06-01 20:42:00', 2, 123, 1200, 100, 1300, 44, 'not_delivery', 'testing', 1, NULL, NULL, NULL, NULL, '2023-06-05 12:42:08'),
(7, NULL, 2, 'Wallace Garza', '867 East Oak Boulevard', '5476879756', '2023-06-08 20:43:00', 2, 4, 6000, 1200, 7200, 30, 'new', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, 2, 'Honorato Barron', '17 South Oak Avenue', '68', '1994-12-09 18:19:00', 1, 515, 23, 86, 109, 21, 'new', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, NULL, 2, 'Rigel Beasley', 'Quas voluptatum dese', '20', '2001-07-17 00:55:00', 1, 54, 80, 15, 95, 49, 'converted_to_delivery', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(10, NULL, 2, 'Avye Barron', '60 North Green Oak Boulevard', '53', '2019-06-27 13:31:00', 2, 693, 42, 35, 77, 45, 'new', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, NULL, 2, 'Chiquita Horton', 'Quia adipisicing qui', '11', '1988-03-10 13:54:00', 2, 382, 2, 11, 13, 23, 'new', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, NULL, 2, 'Burton Schroeder', '82 First Boulevard', '87', '1973-09-20 21:16:00', 2, 863, 18, 61, 79, 42, 'new', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, NULL, 2, 'Peter Barry', 'Sed et non eligendi', '28', '2009-04-22 01:21:00', 2, 764, 36, 42, 78, 35, 'converted_to_delivery', NULL, 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'عرض المستخدمين', 'admin', '2022-05-21 07:00:39', '2022-05-21 07:00:39'),
(2, 'اضافة مستخدمين', 'admin', '2022-05-21 07:00:39', '2022-05-21 07:00:39'),
(3, 'تعديل مستخدمين', 'admin', '2022-05-21 07:00:39', '2022-05-21 07:00:39'),
(4, 'حذف مستخدمين', 'admin', '2022-05-21 07:00:39', '2022-05-21 07:00:39'),
(5, 'عرض سجل العمليات', 'admin', '2022-05-21 07:00:39', '2022-05-21 07:00:39'),
(6, 'العمليات علي سجل العمليات', 'admin', '2022-07-03 12:31:55', '2022-07-03 12:31:55'),
(7, 'عرض تصنيفات التجار', 'admin', '2022-05-21 07:00:39', '2022-05-21 07:00:39'),
(8, 'اضافة تصنيف تجار', 'admin', '2022-07-03 12:31:55', '2022-07-03 12:31:55'),
(9, 'تعديل تصنيف تجار', 'admin', '2022-05-21 07:00:39', '2022-05-21 07:00:39'),
(10, 'حذف تصنيفات التجار', 'admin', '2022-07-03 12:31:55', '2022-07-03 12:31:55'),
(11, 'عرض اعدادات المناطق', 'admin', '2022-05-21 07:00:39', '2022-05-21 07:00:39'),
(12, 'الاضافة في اعدادات مناطق', 'admin', '2022-07-03 12:31:55', '2022-07-03 12:31:55'),
(13, 'التعديل في اعدادات مناطق', 'admin', '2022-05-21 07:00:39', '2022-05-21 07:00:39'),
(14, 'الحذف في اعدادات المناطق', 'admin', '2022-07-03 12:31:55', '2022-07-03 12:31:55'),
(15, 'عرض المناديب', 'admin', '2022-05-21 07:00:39', '2022-05-21 07:00:39'),
(16, 'اضافة مندوب', 'admin', '2022-07-03 12:31:55', '2022-07-03 12:31:55'),
(17, 'تعديل مندوب', 'admin', '2022-05-21 07:00:39', '2022-05-21 07:00:39'),
(18, 'حذف مندوب', 'admin', '2022-07-03 12:31:55', '2022-07-03 12:31:55'),
(19, 'عرض الادوار', 'admin', '2022-05-21 07:00:39', '2022-05-21 07:00:39'),
(20, 'اضافة الدور', 'admin', '2022-07-03 12:31:55', '2022-07-03 12:31:55'),
(21, 'تعديل دور', 'admin', '2022-05-21 07:00:39', '2022-05-21 07:00:39'),
(22, 'حذف دور', 'admin', '2022-07-03 12:31:55', '2022-07-03 12:31:55'),
(23, 'عرض الاعدادات العامة', 'admin', '2022-05-21 07:00:39', '2022-05-21 07:00:39'),
(24, 'التعديل علي الاعدادات العامة', 'admin', '2022-05-21 07:00:39', '2022-05-21 07:00:39'),
(25, 'عرض التجار', 'admin', '2022-05-21 07:00:39', '2022-05-21 07:00:39'),
(26, 'اضافة تجار', 'admin', '2022-07-03 12:31:55', '2022-07-03 12:31:55'),
(27, 'تعديل التجار', 'admin', '2022-05-21 07:00:39', '2022-05-21 07:00:39'),
(28, 'حذف التجار', 'admin', '2022-07-03 12:31:55', '2022-07-03 12:31:55'),
(29, 'عرض التقارير', 'admin', '2022-05-21 07:00:39', '2022-05-21 07:00:39'),
(30, 'عرض الطلبات', 'admin', '2022-05-21 07:00:39', '2022-05-21 07:00:39'),
(31, 'العمليات علي الطلبات', 'admin', '2022-07-03 12:31:55', '2022-07-03 12:31:55'),
(32, 'اعطاء دور', 'admin', '2022-05-21 07:00:39', '2022-05-21 07:00:39');

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

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'سوبر ادمن', 'admin', '2023-05-19 16:47:39', '2023-05-19 16:47:39');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
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
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo_header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fave_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_footer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo_header`, `fave_icon`, `logo_footer`, `app_name`, `created_at`, `updated_at`) VALUES
(1, 'settings/jpg_67fd1ec3de3a8beb7bb95cc7c82c51d1.jpg_1685999186.jpg', NULL, NULL, 'Elsdodey', '2023-05-13 13:50:15', '2023-06-05 19:06:26');

-- --------------------------------------------------------

--
-- Table structure for table `traders`
--

CREATE TABLE `traders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `competent_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `competent_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `traders`
--

INSERT INTO `traders` (`id`, `name`, `address`, `phone`, `competent_name`, `competent_phone`, `user_name`, `password`, `fax`, `logo`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Katelyn Kirby', NULL, '20', 'Katelyn Walters', '70', 'baxytinib', '$2y$10$2Jg/Zjrbo9.YiWpJdaYAtOLL.H.KuIBiDpdO3rBoD5fClw5o./yba', '+1 (355) 913-3088', 'traders/jpg_mohamed.jpg_1684526459.jpg', 1, '2023-05-19 18:00:59', '2023-05-19 18:00:59'),
(2, 'Sheila Banks', NULL, '58', 'Mark Gregory', '3', 'pizym', '$2y$10$jn4iczYa1j9BS9obgbx5W.lsEg5Rqr.BCOClVBbW95pEmiACtKjiO', '+1 (881) 227-9587', 'traders/jpg_c48f2f3d0088ee0e02b6024fd8542b20.jpg_1684526485.jpg', 1, '2023-05-19 18:01:25', '2023-06-03 12:44:50');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `areas_from_id_foreign` (`from_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_title_unique` (`title`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_province_id_foreign` (`province_id`),
  ADD KEY `orders_trader_id_foreign` (`trader_id`),
  ADD KEY `orders_delivery_id_foreign` (`delivery_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

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
-- Indexes for table `traders`
--
ALTER TABLE `traders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `traders_category_id_foreign` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `traders`
--
ALTER TABLE `traders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `areas`
--
ALTER TABLE `areas`
  ADD CONSTRAINT `areas_from_id_foreign` FOREIGN KEY (`from_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_delivery_id_foreign` FOREIGN KEY (`delivery_id`) REFERENCES `deliveries` (`id`),
  ADD CONSTRAINT `orders_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `areas` (`id`),
  ADD CONSTRAINT `orders_trader_id_foreign` FOREIGN KEY (`trader_id`) REFERENCES `traders` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `traders`
--
ALTER TABLE `traders`
  ADD CONSTRAINT `traders_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
