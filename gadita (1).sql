-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2022 at 06:14 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gadita`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Ruang Meeting', 'RM', '2021-12-08 01:44:43', '2021-12-08 01:44:43'),
(2, 'Kelas', 'KLS', '2021-12-08 02:35:42', '2021-12-08 02:35:42'),
(4, 'Lapangan', 'LP', '2021-12-26 15:57:58', '2021-12-26 15:57:58');

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
-- Table structure for table `lendings`
--

CREATE TABLE `lendings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `borrower` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asset_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_start` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_end` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) DEFAULT NULL,
  `month` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_code` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lendings`
--

INSERT INTO `lendings` (`id`, `borrower`, `asset_id`, `qty`, `description`, `date`, `time_start`, `time_end`, `phone`, `status`, `year`, `month`, `created_at`, `updated_at`, `product_code`, `image`) VALUES
(1, 'Naufal', 1, 7, 'Keperluan seminar', '09/12/2021', '0000-00-00 00:00:00', '2021-12-10 19:00:00', '081311008828', 'Selesai', 2021, 'Oct', '2021-12-09 12:16:34', '2021-12-09 05:38:37', 'RM-1638953151', 'https://id-test-11.slatic.net/shop/c9b11bfffa4c0d72eaf00ea2bfb0756a.jpeg_2200x2200q80.jpg_.webp'),
(2, 'Naufal', 2, 5, 'Keperluan seminar', '09/12/2021', '2021-12-09 09:00:00', '2021-12-09 17:00:00', '081311008828', 'Selesai', 2021, 'Nov', '2021-12-09 05:31:47', '2021-12-09 06:37:57', 'KLS-1638956223', 'https://cf.shopee.co.id/file/f0e6bd52dbe9e9edc17fc7e02ea978f9'),
(4, 'Naufalsaaa', 2, 6, 'Keperluan seminar', '09/12/2021', '2021-12-09 09:00:00', '2021-12-09 17:00:00', '081311008828', 'Dipinjam', 2021, 'Nov', '2021-12-09 05:35:28', '2021-12-09 05:35:28', 'KLS-1638956223', 'https://cf.shopee.co.id/file/f0e6bd52dbe9e9edc17fc7e02ea978f9'),
(6, 'Alwan', 1, 1, 'Iseng', '09/12/2021', '2021-12-12 07:00:00', '2021-12-12 18:00:00', '081311008828', 'Selesai', 2021, 'Nov', '2021-12-09 06:11:59', '2021-12-09 07:35:47', 'RM-1638953151', 'https://id-test-11.slatic.net/shop/c9b11bfffa4c0d72eaf00ea2bfb0756a.jpeg_2200x2200q80.jpg_.webp'),
(7, 'Mahmud', 1, 9, 'Sedekah', '09/12/2021', '2021-12-11 07:00:00', '2021-12-11 19:00:00', '081311008828', 'Tersedia', 2021, 'Dec', '2021-12-09 07:44:00', '2021-12-19 19:11:34', 'RM-1638953151', 'https://id-test-11.slatic.net/shop/c9b11bfffa4c0d72eaf00ea2bfb0756a.jpeg_2200x2200q80.jpg_.webp'),
(8, 'Bambang', 1, 56, 'Iseng', '20/12/2021', '828hshsh', 'jzhxhxjso', '081311008828', 'Tersedia', 2021, 'Dec', '2021-12-19 18:54:10', '2021-12-26 14:58:35', 'RM-1638953151', 'https://id-test-11.slatic.net/shop/c9b11bfffa4c0d72eaf00ea2bfb0756a.jpeg_2200x2200q80.jpg_.webp'),
(9, 'Ayy', 1, 60, 'Seminar', '20/12/2021', '8273828', '73828288283', '081311008828', 'Tersedia', 2021, 'Dec', '2021-12-19 19:06:01', '2021-12-26 14:58:40', 'RM-1638953151', 'https://id-test-11.slatic.net/shop/c9b11bfffa4c0d72eaf00ea2bfb0756a.jpeg_2200x2200q80.jpg_.webp'),
(10, 'Mimbaria', 1, 78, 'Keperluan quiz', '22/12/2021', '2021-12-09 09:00:00', '2021-12-09 17:00:00', '081311008828', 'Dipinjam', 2021, 'Dec', '2021-12-22 06:38:48', '2021-12-22 06:38:48', 'RM-1638953151', 'https://id-test-11.slatic.net/shop/c9b11bfffa4c0d72eaf00ea2bfb0756a.jpeg_2200x2200q80.jpg_.webp'),
(11, 'Wahyu', 1, 30, 'Manja', '26/12/2021', '2021/12/31', '12.00', '081311008828', 'Dipinjam', 2021, 'Dec', '2021-12-26 09:09:58', '2021-12-26 09:09:58', 'RM-1638953151', 'https://id-test-11.slatic.net/shop/c9b11bfffa4c0d72eaf00ea2bfb0756a.jpeg_2200x2200q80.jpg_.webp'),
(12, 'Lanjar', 2, 50, 'Seminar', '26/12/2021', '17.00', '20.00', '081311008828', 'Dipinjam', 2021, 'Dec', '2021-12-26 09:31:44', '2021-12-26 09:31:44', 'KLS-1638956223', 'https://cf.shopee.co.id/file/f0e6bd52dbe9e9edc17fc7e02ea978f9'),
(13, 'Bambang', 4, 10, 'Konfirm', '26/12/2021', '00:31:00', '06:30:00', '081311008828', 'Dipinjam', 2021, 'Dec', '2021-12-26 10:28:38', '2021-12-26 10:28:38', 'RM-1640096367', 'https://www.jakartanotebook.com/images/products/41/1020/53635/280/keychron-wireless-mechanical-keyboard-84-keys-backlit-with-gateron-red-switch-k2-a-v2-gray-or-red-1.jpg'),
(14, 'Ahmad', 5, 15, 'Pengajian', '28/12/2021', '00:56', '06:00', '081311008828', 'Dipinjam', 2021, 'Dec', '2021-12-26 10:52:44', '2021-12-26 10:52:44', 'KLS-1640096607', 'https://uwitan.id/wp-content/uploads/2019/09/1-furniture-meja-makan-m-natural.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `maintenances`
--

CREATE TABLE `maintenances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maintenances`
--

INSERT INTO `maintenances` (`id`, `name`, `description`, `location`, `address`, `date`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Gelas', 'Pecah', 'PT. Keramik', 'Jl. Kebangsaan 3', '27/12/2021', '081311008828', '2021-12-26 11:57:18', '2021-12-26 20:07:34');

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
(6, '2021_07_01_231731_create_lendings_table', 3),
(7, '2021_07_01_233744_create_lendings_table', 4),
(22, '2014_10_12_000000_create_users_table', 5),
(23, '2014_10_12_100000_create_password_resets_table', 5),
(24, '2016_06_01_000001_create_oauth_auth_codes_table', 5),
(25, '2016_06_01_000002_create_oauth_access_tokens_table', 5),
(26, '2016_06_01_000003_create_oauth_refresh_tokens_table', 5),
(27, '2016_06_01_000004_create_oauth_clients_table', 5),
(28, '2016_06_01_000005_create_oauth_personal_access_clients_table', 5),
(29, '2019_08_19_000000_create_failed_jobs_table', 5),
(30, '2021_06_21_222359_create_products_table', 5),
(31, '2021_07_01_221753_create_supplier_table', 5),
(32, '2021_07_01_234031_create_maintenances_table', 5),
(33, '2021_07_01_234906_create_lendings_table', 5),
(34, '2021_10_23_044827_create_categories_table', 5),
(36, '2021_12_10_115640_create_stock_opnames_table', 6),
(37, '2021_12_14_074202_create_periods_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `month`
--

CREATE TABLE `month` (
  `id` bigint(11) NOT NULL,
  `month` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `month`
--

INSERT INTO `month` (`id`, `month`) VALUES
(1, 'Januari'),
(2, 'Februari'),
(3, 'Maret'),
(4, 'April'),
(5, 'Mei'),
(6, 'Juni'),
(7, 'Juli'),
(8, 'Agustus'),
(9, 'September'),
(10, 'Oktober'),
(11, 'November'),
(12, 'Desembar');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `periods`
--

CREATE TABLE `periods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `period` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `month` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precentage` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `periods`
--

INSERT INTO `periods` (`id`, `user`, `period`, `year`, `month`, `day`, `precentage`, `created_at`, `updated_at`) VALUES
(48, NULL, '23-10-2021', 2021, 'Oct', 'Thu', 13, '2021-12-23 08:25:39', '2021-12-23 16:21:27'),
(56, NULL, '23-11-2021', 2021, 'Nov', 'Thu', 14, '2021-12-23 16:28:16', '2021-12-23 16:28:16'),
(73, NULL, '24-12-2021', 2021, 'Dec', 'Fri', 13, '2021-12-23 18:12:18', '2021-12-23 18:13:21'),
(77, NULL, '27-12-2021', 2021, 'Dec', 'Mon', 2, '2021-12-26 20:17:07', '2021-12-26 20:17:58');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty_master` int(20) DEFAULT NULL,
  `qty_lending` int(20) DEFAULT NULL,
  `qty_available` int(20) DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category_id`, `product_code`, `description`, `qty_master`, `qty_lending`, `qty_available`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 'Gelas', 1, 'RM-1638953151', 'Dari Beling', 123, 215, NULL, 'asset_image//c9b11bfffa4c0d72eaf00ea2bfb0756a.jpeg_2200x2200q80.jpg_.png', '2021-12-08 01:45:51', '2021-12-26 16:57:36'),
(2, 'Kaos Oblong', 2, 'KLS-1638956223', 'Dari sutera', 56, 17, NULL, 'asset_image//f0e6bd52dbe9e9edc17fc7e02ea978f9.png', '2021-12-08 02:37:03', '2021-12-26 20:17:49'),
(4, 'Keyboard', 1, 'RM-1640096367', 'Mekanik', 153, NULL, NULL, 'asset_image//keychron-wireless-mechanical-keyboard-84-keys-backlit-with-gateron-red-switch-k2-a-v2-gray-or-red-1.jpg', '2021-12-21 07:19:28', '2021-12-26 20:03:15'),
(5, 'Meja', 2, 'KLS-1640096607', 'Dari Kayu Jati', 96, NULL, NULL, 'asset_image//1-furniture-meja-makan-m-natural.jpg', '2021-12-21 07:23:27', '2021-12-26 14:20:46');

-- --------------------------------------------------------

--
-- Table structure for table `stock_opnames`
--

CREATE TABLE `stock_opnames` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_asset` bigint(20) UNSIGNED DEFAULT NULL,
  `id_period` bigint(20) UNSIGNED DEFAULT NULL,
  `year` int(15) DEFAULT NULL,
  `month` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asset_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asset_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty_asset_master` int(11) DEFAULT NULL,
  `qty_asset_lending` int(11) DEFAULT NULL,
  `total_lending` int(11) DEFAULT NULL,
  `percentage` int(11) DEFAULT NULL,
  `created_at` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_opnames`
--

INSERT INTO `stock_opnames` (`id`, `id_asset`, `id_period`, `year`, `month`, `asset_name`, `asset_code`, `qty_asset_master`, `qty_asset_lending`, `total_lending`, `percentage`, `created_at`, `updated_at`) VALUES
(77, 1, 48, 2021, 'Oct', 'Gelas', 'RM-1638953151', 890, NULL, 222, 740, '2021-12-23 15:26:04', '2021-12-23 15:26:04'),
(78, 2, 48, 2021, 'Oct', 'Kaos Oblong', 'KLS-1638956223', 123, NULL, 222, 740, '2021-12-23 15:26:04', '2021-12-23 15:26:04'),
(80, 1, 48, 2021, 'Oct', 'Gelas', 'RM-1638953151', 67, NULL, 8, 27, '2021-12-23 23:28:05', '2021-12-23 23:28:05'),
(81, 2, 48, 2021, 'Oct', 'Kaos Oblong', 'KLS-1638956223', 123, NULL, 8, 27, '2021-12-23 23:28:05', '2021-12-23 23:28:05'),
(82, 1, 56, 2021, 'Nov', 'Gelas', 'RM-1638953151', 67, NULL, 8, 27, '2021-12-23 23:28:31', '2021-12-23 23:28:31'),
(83, 2, 56, 2021, 'Nov', 'Kaos Oblong', 'KLS-1638956223', 123, NULL, 8, 27, '2021-12-23 23:28:31', '2021-12-23 23:28:31'),
(123, 1, 73, 2021, 'Dec', 'Gelas', 'RM-1638953151', 78, NULL, 8, 27, '2021-12-24 01:13:21', '2021-12-24 01:13:21'),
(124, 2, 73, 2021, 'Dec', 'Kaos Oblong', 'KLS-1638956223', 123, NULL, 8, 27, '2021-12-24 01:13:21', '2021-12-24 01:13:21'),
(125, 1, 73, 2021, 'Dec', 'Gelas', 'RM-1638953151', 78, NULL, 2, 7, '2021-12-26 02:03:06', '2021-12-26 02:03:06'),
(126, 2, 73, 2021, 'Dec', 'Kaos Oblong', 'KLS-1638956223', 123, NULL, 2, 7, '2021-12-26 02:03:06', '2021-12-26 02:03:06'),
(127, 1, 73, 2021, 'Dec', 'Gelas', 'RM-1638953151', 78, NULL, 2, 7, '2021-12-26 02:23:00', '2021-12-26 02:23:00'),
(128, 2, 73, 2021, 'Dec', 'Kaos Oblong', 'KLS-1638956223', 123, NULL, 2, 7, '2021-12-26 02:23:01', '2021-12-26 02:23:01'),
(129, 1, 73, 2021, 'Dec', 'Gelas', 'RM-1638953151', 78, NULL, 2, 7, '2021-12-26 02:46:56', '2021-12-26 02:46:56'),
(130, 2, 73, 2021, 'Dec', 'Kaos Oblong', 'KLS-1638956223', 123, NULL, 6, 20, '2021-12-26 02:46:56', '2021-12-26 02:46:56'),
(137, 1, 77, 2021, 'Dec', 'Gelas', 'RM-1638953151', 123, NULL, 3, 10, '2021-12-27 03:17:57', '2021-12-27 03:17:57'),
(138, 2, 77, 2021, 'Dec', 'Kaos Oblong', 'KLS-1638956223', 56, NULL, 1, 3, '2021-12-27 03:17:57', '2021-12-27 03:17:57');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `description`, `address`, `phone`, `created_at`, `updated_at`) VALUES
(2, 'PT. Sejahtera M', 'Supplier Kaos', 'Jl. Kejayaan 3', '0812101010', '2021-07-01 16:11:50', '2021-12-26 15:21:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE `year` (
  `id` bigint(20) NOT NULL,
  `year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `year`
--

INSERT INTO `year` (`id`, `year`) VALUES
(2, 2021),
(4, 2022);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lendings`
--
ALTER TABLE `lendings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asset_id` (`asset_id`);

--
-- Indexes for table `maintenances`
--
ALTER TABLE `maintenances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `month`
--
ALTER TABLE `month`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `periods`
--
ALTER TABLE `periods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Category ID` (`category_id`);

--
-- Indexes for table `stock_opnames`
--
ALTER TABLE `stock_opnames`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_asset` (`id_asset`),
  ADD KEY `id_asset_2` (`id_asset`),
  ADD KEY `id_asset_3` (`id_asset`),
  ADD KEY `id_year` (`id_period`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `year`
--
ALTER TABLE `year`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lendings`
--
ALTER TABLE `lendings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `maintenances`
--
ALTER TABLE `maintenances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `month`
--
ALTER TABLE `month`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `periods`
--
ALTER TABLE `periods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `stock_opnames`
--
ALTER TABLE `stock_opnames`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `year`
--
ALTER TABLE `year`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lendings`
--
ALTER TABLE `lendings`
  ADD CONSTRAINT `Asset ID` FOREIGN KEY (`asset_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `Category ID` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stock_opnames`
--
ALTER TABLE `stock_opnames`
  ADD CONSTRAINT `stock_opnames_ibfk_1` FOREIGN KEY (`id_asset`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stock_opnames_ibfk_2` FOREIGN KEY (`id_period`) REFERENCES `periods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
