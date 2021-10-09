-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Okt 2021 pada 03.40
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineshop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `lendings`
--

CREATE TABLE `lendings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asset` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time_start` time NOT NULL,
  `time_end` time NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lendings`
--

INSERT INTO `lendings` (`id`, `name`, `asset`, `description`, `date`, `time_start`, `time_end`, `phone`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Aldi', 'Kaos', 'Evenet', '2021-07-02', '09:51:17', '14:51:17', '08123009876', 'On Progress', '2021-07-01 23:51:17', '2021-07-01 23:51:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `maintenances`
--

CREATE TABLE `maintenances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `maintenances`
--

INSERT INTO `maintenances` (`id`, `name`, `description`, `location`, `address`, `date`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Proyektor 1', 'Rusak', 'Service Anugerah', 'Jl. Menanggung', '2021-07-02', '0813209876', '2021-07-01 23:52:31', '2021-07-01 19:29:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_21_222359_create_products_table', 1),
(5, '2021_07_01_221753_create_supplier_table', 2),
(6, '2021_07_01_231731_create_lendings_table', 3),
(7, '2021_07_01_233744_create_lendings_table', 4),
(8, '2021_07_01_234031_create_maintenances_table', 5),
(9, '2021_07_01_234906_create_lendings_table', 6),
(15, '2014_10_12_000000_create_users_table', 7),
(16, '2016_06_01_000001_create_oauth_auth_codes_table', 8),
(17, '2016_06_01_000002_create_oauth_access_tokens_table', 8),
(18, '2016_06_01_000003_create_oauth_refresh_tokens_table', 8),
(19, '2016_06_01_000004_create_oauth_clients_table', 8),
(20, '2016_06_01_000005_create_oauth_personal_access_clients_table', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_access_tokens`
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

--
-- Dumping data untuk tabel `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('2eff8f8c2780fa9a9b46fc78cce7bf4c096af1b6b021fdb33239817f6a38dbaf624078855eb0da3b', 3, 3, 'appToken', '[]', 1, '2021-09-30 16:47:40', '2021-09-30 16:47:40', '2022-09-30 23:47:40'),
('54bc6e65daacdc03da58fe2a335870bc4674096e8e28c1007941961023e27e2fd921c9ac8239b96c', 4, 3, 'appToken', '[]', 0, '2021-09-30 16:33:31', '2021-09-30 16:33:31', '2022-09-30 23:33:31'),
('7b4f1862160cef53b38a39b52d501531e06b9679bd915de1c670aa8206aa63563525b95ada448206', 1, 3, 'appToken', '[]', 1, '2021-09-30 16:11:42', '2021-09-30 16:11:42', '2022-09-30 23:11:42'),
('8efb54c01e5a3e104df899148407e6821e32d1ddd532052a10475f34fb402a0675b38017d0349e6f', 3, 3, 'appToken', '[]', 0, '2021-09-30 17:40:27', '2021-09-30 17:40:27', '2022-10-01 00:40:27'),
('962dc2ae7d90b20741bccc2eae6504810a8017ef41df992075248acb655759f9823bf89c423ab6ff', 3, 3, 'appToken', '[]', 1, '2021-09-30 16:43:53', '2021-09-30 16:43:53', '2022-09-30 23:43:53'),
('97e387fe062f709bf01c0e759a526da4d3c79ae1e9dc5e0d663414a33c81dae49b44f4d10cdb06b7', 3, 3, 'appToken', '[]', 1, '2021-09-30 16:27:50', '2021-09-30 16:27:50', '2022-09-30 23:27:50'),
('9a8fbae78650b6f2ebcb5c312556e1478a44f36c883e623937f8cb805d52497c5f2c2d97e42ef19a', 2, 3, 'appToken', '[]', 0, '2021-09-30 16:17:18', '2021-09-30 16:17:18', '2022-09-30 23:17:18'),
('a885fa759985b260b39a4572c0a18adc6106f37de9c70539b400091adb1fecc25bd835d04349e169', 1, 3, 'appToken', '[]', 0, '2021-09-30 08:57:24', '2021-09-30 08:57:24', '2022-09-30 15:57:24'),
('e0738d012af067930a4afd47993fd18af45fad4bee82fd063b7c935f14d0947ee28cf29aa88dd954', 1, 3, 'appToken', '[]', 1, '2021-09-30 08:58:09', '2021-09-30 08:58:09', '2022-09-30 15:58:09'),
('e7e67d9911499db6a48836aebc4408a28fbd4a98d777e4c99d0086853cd0279880d23a3d8c6e8934', 3, 3, 'appToken', '[]', 1, '2021-09-30 16:17:44', '2021-09-30 16:17:44', '2022-09-30 23:17:44'),
('ed3eee66bc18a0520d42dbe180c3dd3f237c6af8c2e671bb1dd0d1add13751297410bbe99d00d9b3', 5, 3, 'appToken', '[]', 1, '2021-09-30 16:40:25', '2021-09-30 16:40:25', '2022-09-30 23:40:25'),
('fb1196c908c248369fbd79a226451d92d10a8550f18d30879417fcd2023601ade4247d63e019b84a', 6, 3, 'appToken', '[]', 1, '2021-09-30 17:39:35', '2021-09-30 17:39:35', '2022-10-01 00:39:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_auth_codes`
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
-- Struktur dari tabel `oauth_clients`
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

--
-- Dumping data untuk tabel `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'RlwahMDV5NXdKpE1CalvbqxcfdqTE2Sv4g7KftcI', NULL, 'http://localhost', 1, 0, 0, '2021-09-30 05:14:22', '2021-09-30 05:14:22'),
(2, NULL, 'Laravel Password Grant Client', 'KiMDcuEh3ueoL5CaZaYfj4ZHADh6TOCYsF1AulHJ', 'users', 'http://localhost', 0, 1, 0, '2021-09-30 05:14:22', '2021-09-30 05:14:22'),
(3, NULL, 'Laravel Personal Access Client', 'cDLy9UiiOrb2xrcvok0aAmKVZyviYxQ2hlxt11pk', NULL, 'http://localhost', 1, 0, 0, '2021-09-30 05:14:38', '2021-09-30 05:14:38'),
(4, NULL, 'Laravel Password Grant Client', 'ZVmRuUgovls5npcIH9XJ03KaR2dPiwkoLOWWUjE5', 'users', 'http://localhost', 0, 1, 0, '2021-09-30 05:14:38', '2021-09-30 05:14:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-09-30 05:14:22', '2021-09-30 05:14:22'),
(2, 3, '2021-09-30 05:14:38', '2021-09-30 05:14:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image_url`, `created_at`, `updated_at`) VALUES
(2, 'Kaos Oblong', 'Kualitas Import Tinggi', '150000.00', 'https://cf.shopee.co.id/file/f0e6bd52dbe9e9edc17fc7e02ea978f9', NULL, '2021-06-30 02:17:43'),
(3, 'Tas Laptop', 'Ukuran Besar', '250000.00', 'https://tokokomputer007.com/wp-content/uploads/2017/12/tas-laptop-1.jpg', NULL, '2021-06-30 11:21:21'),
(4, 'Gelas B01', 'Dari beling', '25000.00', 'https://id-test-11.slatic.net/shop/c9b11bfffa4c0d72eaf00ea2bfb0756a.jpeg_2200x2200q80.jpg_.webp', '2021-06-21 20:44:05', '2021-07-01 15:24:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `suppliers`
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
-- Dumping data untuk tabel `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `description`, `address`, `phone`, `created_at`, `updated_at`) VALUES
(2, 'PT. Sejahtera', 'Supplier Kaos', 'Jl. Kejayaan', '0812101010', '2021-07-01 16:11:50', '2021-07-01 16:11:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'DM', 'Naufal', '081311008828', 'dmnaufal7@gmail.com', NULL, '$2y$10$pkHpXRjQKX0Cs5/h1ceDJ.hVjKcd5eXw3G0IlRLfYAv4PPLal7TBK', NULL, '2021-09-30 08:57:23', '2021-09-30 08:57:23'),
(2, 'Damian', 'Fal', '081311008829', 'damian@email.com', NULL, '$2y$10$LBoHgi0nKDrJWqXLPDLGoeRd0McfPQ7ynglXKkIbxsYTTOOQl.amK', NULL, '2021-09-30 16:17:18', '2021-09-30 16:17:18'),
(3, 'Naufal', 'Maulana', '081311008830', 'naufal@email.com', NULL, '$2y$10$mn6aL5ZEr.T2z.1s8wc/a.w45.EaKkyt4zmf.zEnmYZE9KfbOVowe', NULL, '2021-09-30 16:17:44', '2021-09-30 16:17:44'),
(4, 'Lala', 'Lili', '021342', 'lala@email.com', NULL, '$2y$10$Lf0LFc6tdeM/aGw5hmgG5OpgDn9WoEFz7KSK.zP8bTXhPaVAD2Bei', NULL, '2021-09-30 16:33:30', '2021-09-30 16:33:30'),
(5, 'Emanuel', 'Sanjaya', '081311008832', 'emanuel@email.com', NULL, '$2y$10$I7sKOr0PW3j1W.660zvWL.2MwEGrq9W67w3UTC7u3pyPPn/du4MHi', NULL, '2021-09-30 16:40:25', '2021-09-30 16:40:25'),
(6, 'sebas', 'tian', '081211008829', 'sebaatian@email.com', NULL, '$2y$10$dmWrgKS.TKy5zlhI0oFLfuRuqSdQtPEHUYijCSWujjl4SrRahh1wy', NULL, '2021-09-30 17:39:35', '2021-09-30 17:39:35');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lendings`
--
ALTER TABLE `lendings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `maintenances`
--
ALTER TABLE `maintenances`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lendings`
--
ALTER TABLE `lendings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `maintenances`
--
ALTER TABLE `maintenances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
