-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2025 at 10:49 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelpos`
--

-- --------------------------------------------------------

--
-- Table structure for table `absences`
--

CREATE TABLE `absences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `login_at` time NOT NULL,
  `logout_at` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `absences`
--

INSERT INTO `absences` (`id`, `user_id`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES
(1, 11, '13:29:00', '13:31:00', '2025-01-19 06:29:25', '2025-01-19 06:31:11'),
(2, 9, '13:31:00', '13:32:00', '2025-01-19 06:31:17', '2025-01-19 06:32:08'),
(3, 11, '13:32:00', NULL, '2025-01-19 06:32:13', '2025-01-19 06:32:13'),
(4, 1, '15:37:00', '15:38:00', '2025-06-22 08:37:10', '2025-06-22 08:38:43'),
(5, 7, '15:42:00', '15:54:00', '2025-06-22 08:42:41', '2025-06-22 08:54:39'),
(6, 1, '15:54:00', '15:55:00', '2025-06-22 08:54:57', '2025-06-22 08:55:11'),
(7, 4, '15:55:00', '15:57:00', '2025-06-22 08:55:32', '2025-06-22 08:57:48'),
(8, 11, '15:57:00', '15:58:00', '2025-06-22 08:57:56', '2025-06-22 08:58:20'),
(9, 4, '15:58:00', '15:59:00', '2025-06-22 08:58:34', '2025-06-22 08:59:56'),
(10, 11, '16:00:00', '16:01:00', '2025-06-22 09:00:47', '2025-06-22 09:01:32'),
(11, 7, '16:01:00', NULL, '2025-06-22 09:01:40', '2025-06-22 09:01:40'),
(12, 3, '01:50:00', '02:02:00', '2025-06-22 18:50:26', '2025-06-22 19:02:42'),
(13, 4, '02:03:00', '02:04:00', '2025-06-22 19:03:16', '2025-06-22 19:04:53'),
(14, 11, '02:05:00', NULL, '2025-06-22 19:05:28', '2025-06-22 19:05:28'),
(15, 11, '08:35:00', NULL, '2025-06-23 01:35:38', '2025-06-23 01:35:38');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(21, 'jajan kering', NULL, '2025-06-22 08:47:40', '2025-06-22 08:47:40'),
(22, 'ciki', NULL, '2025-06-22 09:04:31', '2025-06-22 09:04:31'),
(23, 'Nastar', NULL, '2025-06-22 18:52:25', '2025-06-22 18:52:25'),
(24, 'stick', NULL, '2025-06-22 19:28:45', '2025-06-22 19:28:45');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(26, 'fadil', '089524174289', 'Ds. Sindang Kec Dukuhwaru', '2025-06-22 08:46:07', '2025-06-22 08:46:07'),
(27, 'kuyi', '0856352674836', 'Ds. Kaligayam', '2025-06-22 18:52:05', '2025-06-22 18:52:05');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `cost_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `picture` varchar(255) NOT NULL DEFAULT 'default.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `code`, `category_id`, `cost_price`, `selling_price`, `stock`, `picture`, `created_at`, `updated_at`) VALUES
(302, 'kripik singkong', 'ZVDG5790', 21, 30000, 50000, 80, 'default.png', '2025-06-22 08:48:18', '2025-06-22 18:54:46'),
(304, 'pilus', 'PZTJ1797', 21, 10000, 20000, 50, 'default.png', '2025-06-22 18:58:23', '2025-06-22 18:58:23'),
(305, 'pilus ikan', 'QMAL4378', 21, 30000, 45000, 65, 'default.png', '2025-06-22 18:58:54', '2025-06-22 18:58:54'),
(306, 'tahi kucing', 'ZOGD3801', 21, 10000, 15000, 36, 'default.png', '2025-06-22 18:59:42', '2025-06-22 18:59:42'),
(307, 'kripik singkong mini', 'FYAV1153', 21, 5000, 9000, 60, 'default.png', '2025-06-22 19:00:18', '2025-06-22 19:00:18'),
(308, 'putri salju', 'JYLH4091', 23, 25000, 35000, 45, 'default.png', '2025-06-22 19:00:59', '2025-06-22 19:30:53'),
(309, 'choco crunch', 'XNKE6033', 22, 30000, 45000, 87, 'default.png', '2025-06-22 19:01:30', '2025-06-22 19:30:53');

-- --------------------------------------------------------

--
-- Table structure for table `item_supplier`
--

CREATE TABLE `item_supplier` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_21_174125_create_categories_table', 1),
(5, '2024_05_21_174227_create_customers_table', 1),
(6, '2024_05_21_174511_create_payment_methods_table', 1),
(7, '2024_05_21_175122_create_item_supplier_table', 1),
(8, '2024_05_21_175123_create_wholesale_prices_table', 1),
(9, '2024_05_21_182615_create_carts_table', 1),
(10, '2024_05_22_030109_create_transactions_table', 1),
(11, '2024_05_22_030902_create_transaction_details_table', 1),
(12, '2024_05_27_072011_create_absences_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'Tunai',
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Tunai', NULL, '2025-01-19 06:28:45', '2025-01-19 06:28:45'),
(2, 'Debit', NULL, '2025-01-19 06:28:45', '2025-01-19 06:28:45'),
(3, 'Kredit', NULL, '2025-01-19 06:28:45', '2025-01-19 06:28:45'),
(4, 'Transfer', NULL, '2025-01-19 06:28:45', '2025-01-19 06:28:45'),
(5, 'OVO', NULL, '2025-01-19 06:28:45', '2025-01-19 06:28:45'),
(6, 'GoPay', NULL, '2025-01-19 06:28:45', '2025-01-19 06:28:45'),
(7, 'Dana', NULL, '2025-01-19 06:28:45', '2025-01-19 06:28:45'),
(8, 'QRIS', NULL, '2025-01-19 06:28:45', '2025-01-19 06:28:45');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('p0RrlhR3R7cwafLlIOngud9wQgygrAiuKsGyIZJS', 11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiQlhiV2tzTlFVRkMzR0hsbEpRbWdyTVI0STdnRWpmdmdheWhlZlpZOSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM2OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvaW52ZW50b3J5L2l0ZW0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxMTtzOjIyOiJQSFBERUJVR0JBUl9TVEFDS19EQVRBIjthOjA6e319', 1750667949);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `phone`, `address`, `email`, `description`, `created_at`, `updated_at`) VALUES
(26, 'toko', '089524174263', 'Ds Ujungrusi Jl raya 2 adiwerna singkil', 'supplier@gmail.com', NULL, '2025-06-22 08:53:03', '2025-06-22 08:53:03'),
(27, 'toko izal', '085634267483', 'Ds. Ujungrusi Rt05/03', 'izal@gmail.com', NULL, '2025-06-22 18:53:05', '2025-06-22 18:53:05');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `invoice` varchar(255) NOT NULL,
  `invoice_no` varchar(255) NOT NULL,
  `total` int(11) NOT NULL,
  `discount` int(11) NOT NULL DEFAULT 0,
  `payment_method_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `change` int(11) NOT NULL DEFAULT 0,
  `status` enum('paid','debt') NOT NULL DEFAULT 'paid',
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `customer_id`, `invoice`, `invoice_no`, `total`, `discount`, `payment_method_id`, `amount`, `change`, `status`, `note`, `created_at`, `updated_at`) VALUES
(1, 7, NULL, '2206250001', '1', 1000002, 0, NULL, NULL, 0, 'debt', NULL, '2025-06-22 09:05:30', '2025-06-22 09:05:30'),
(2, 7, 26, '2206250002', '2', 1, 1, 8, 0, 0, 'paid', NULL, '2025-06-22 09:07:23', '2025-06-22 09:07:23'),
(3, 3, 27, '2306250001', '1', 750000, 0, 8, 0, 0, 'paid', NULL, '2025-06-22 18:54:46', '2025-06-22 18:54:46'),
(4, 11, NULL, '2306250002', '2', 275000, 0, 1, 300000, 25000, 'paid', NULL, '2025-06-22 19:30:53', '2025-06-22 19:30:53');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `item_price` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transaction_id`, `item_id`, `qty`, `item_price`, `total`, `created_at`, `updated_at`) VALUES
(3, 3, 302, 15, 50000, 750000, '2025-06-22 18:54:46', '2025-06-22 18:54:46'),
(4, 4, 309, 3, 45000, 135000, '2025-06-22 19:30:53', '2025-06-22 19:30:53'),
(5, 4, 308, 4, 35000, 140000, '2025-06-22 19:30:53', '2025-06-22 19:30:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'cashier',
  `position` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `picture` varchar(2048) NOT NULL DEFAULT 'profile.jpg',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `phone`, `role`, `position`, `password`, `picture`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Marvin Gulgowski', 'schuster.major', 'edgar72@example.net', '+19187402631', 'admin', NULL, '$2y$12$r6T7zTuWCQUw1Ig0FFtA.e.t/P/kbSdYNeJTBMhtYVd4b.nQXvBkG', 'profile.jpg', 'ej6tqs8bbWBA3gs9HakliOwFo9AcFV0WA4ZtYfjfvF7bE33u2cteZj1ddfmK', '2025-01-19 06:28:45', '2025-06-22 08:40:44'),
(2, 'Ms. Jaida Maggio DVM', 'ajenkins', 'nicole64@example.org', '786-838-1642', 'admin', 'Pest Control Worker', '$2y$12$apCzBJRFgvHsxtvM7lF0v.fIGq1CV9nVRehPBq8yytNPDd5A16OK6', 'profile.jpg', 'mfE1QmG7fC', '2025-01-19 06:28:45', '2025-06-22 08:41:02'),
(3, 'KalebJ', 'kaleb10', 'kaleb@gmail.com', '0895525647384', 'cashier', 'Video Editor', '$2y$12$/rPIZFDE74Jn27g3vmXiJuUVYQJvYgk4M7Xgzcs551bpx1NUzLttC', '1750643833.jpg', 'FSyc4fV8Zvni3hIFDGdi2JFNDw90JXbOVAK8sman3rZvOcRYmyN2Ash5pbQS', '2025-01-19 06:28:45', '2025-06-22 18:57:13'),
(4, 'Kellie Renner', 'zfarrell', 'odie02@example.com', '+15317101574', 'supervisor', NULL, '$2y$12$A1naZAskgXouA5PUFmJwS.8P9BgREGYjYN.Qlr1T7SKfxJi3C3VPK', 'profile.jpg', 'd64FN5CLZhnqFL95YN4rktVXAJxhZCXrBmGhPPNQQ2WZWMBiFuAKBQMzJkZ2', '2025-01-19 06:28:45', '2025-06-22 08:41:20'),
(5, 'augusta Mante', 'admin2', 'admin2@gmail.com', '085624537826', 'supervisor', NULL, '$2y$12$1poOxhy0sbrhJmEtdWXkEeT0eudoDhRoULFWC49uRsEbtt.IdRWPi', 'profile.jpg', 'lOyHj1R74X', '2025-01-19 06:28:45', '2025-06-22 19:04:37'),
(6, 'Dr. Tanner Crist DVM', 'isobel.mraz', 'ellen.dietrich@example.org', '+1 (757) 258-6607', 'admin', 'Central Office Operator', '$2y$12$NiOSM7DUEqOLV1wt4ZsUwu./KdqH80imDWK0Dkpy6fb3L.CFgxQNe', 'profile.jpg', '2eY27EBrb6', '2025-01-19 06:28:45', '2025-06-22 08:41:35'),
(7, 'Prof. Duane Stamm Sr.', 'fschoen', 'woodrow.crona@example.org', '361.693.9017', 'cashier', 'Archivist', '$2y$12$l90cCNVrDO55.exf5bnbBenV/b.TCB.KzKDkVpg6.RfBwfVptBxGO', 'profile.jpg', 'NjgefM1pY48qr2v0PJQJXEddJCvwTGHY6smRN5CzqYyDVu5RRowP2aKLBn52', '2025-01-19 06:28:45', '2025-06-22 08:41:42'),
(8, 'Guillermo Crooks Sr.', 'vyundt', 'velma.dach@example.com', '(364) 285-8202', 'cashier', 'Petroleum Engineer', '$2y$12$wVmUSaYHPmzkrVx7RxvHAOoA.8ZQKSPKS4ZsdqzVXwqV.jCBBFg/.', 'profile.jpg', 'J5KAUQbvUx', '2025-01-19 06:28:45', '2025-06-22 08:41:49'),
(9, 'daryl Ledner', 'kasir', 'llewellyn77@example.net', '+14149651424', 'cashier', 'Woodworking Machine Setter', '$2y$12$ab6P.MEDLBU1qz7nDbeETORL0Dlu64iXVb4ciZjrCDLAzXbdOL38m', 'profile.jpg', 'NT6LGX2c83cDDGK9QwTtOjaCEJwFV9f9HvrnW2PODaykl0wjv0zoTgcEAnim', '2025-01-19 06:28:45', '2025-06-22 08:41:55'),
(10, 'Miss Lizzie Kerluke Sr.', 'raynor.raymond', 'effertz.colby@example.org', '507.536.2528', 'admin', 'Kindergarten Teacher', '$2y$12$CRId9C4MjTVxoONraAgaqef/l7F1.nqWspsbyeBBTlP5vOi3I75bO', 'profile.jpg', 'cMWlF4ZhaX', '2025-01-19 06:28:45', '2025-06-22 08:42:01'),
(11, 'Admin', 'admin', 'dbauch@example.org', '(440) 392-0370', 'owner', 'Occupational Health Safety Specialist', '$2y$12$woH7sPTK9kkj2bm/o/RrQOYV4eS6AsHyH24/DTKA3fwBPSRY9TesS', 'profile.jpg', 'cBmIiZasQ3kuSO2rt62H1k3StNRPXgfDJ2HZaQ0Z5RYAOsqRgUNSGJzWXbGK', '2025-01-19 06:28:45', '2025-06-22 08:42:07');

-- --------------------------------------------------------

--
-- Table structure for table `wholesale_prices`
--

CREATE TABLE `wholesale_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `min_qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absences`
--
ALTER TABLE `absences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `absences_user_id_foreign` (`user_id`);

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
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_item_id_foreign` (`item_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `items_code_unique` (`code`),
  ADD KEY `items_category_id_foreign` (`category_id`);

--
-- Indexes for table `item_supplier`
--
ALTER TABLE `item_supplier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_supplier_item_id_foreign` (`item_id`),
  ADD KEY `item_supplier_supplier_id_foreign` (`supplier_id`);

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
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_customer_id_foreign` (`customer_id`),
  ADD KEY `transactions_payment_method_id_foreign` (`payment_method_id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_details_transaction_id_foreign` (`transaction_id`),
  ADD KEY `transaction_details_item_id_foreign` (`item_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `wholesale_prices`
--
ALTER TABLE `wholesale_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wholesale_prices_item_id_foreign` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absences`
--
ALTER TABLE `absences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;

--
-- AUTO_INCREMENT for table `item_supplier`
--
ALTER TABLE `item_supplier`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wholesale_prices`
--
ALTER TABLE `wholesale_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absences`
--
ALTER TABLE `absences`
  ADD CONSTRAINT `absences_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_supplier`
--
ALTER TABLE `item_supplier`
  ADD CONSTRAINT `item_supplier_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_supplier_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD CONSTRAINT `transaction_details_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaction_details_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wholesale_prices`
--
ALTER TABLE `wholesale_prices`
  ADD CONSTRAINT `wholesale_prices_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
