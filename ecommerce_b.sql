-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2024 at 07:59 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_b`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ACI Pharmaceuticals Limited', 'ACI Pharmaceuticals Limited', 'brand-images/b4.jpg', 1, '2022-07-04 08:11:17', '2022-10-17 11:22:47'),
(3, 'Healthcare  Limited', 'Healthcare  Limited', 'brand-images/1-401.webp', 1, '2022-07-25 07:20:36', '2022-10-17 11:22:24'),
(4, 'Healthcare Pharmaceuticals Limited', 'Healthcare Pharmaceuticals Limited', 'brand-images/index.jpg', 1, '2022-07-25 07:36:50', '2022-10-17 11:21:56'),
(5, 'Renata Limited', 'Renata Limited', 'brand-images/sh3.jpg', 1, '2022-07-25 07:37:06', '2022-10-17 11:21:22'),
(6, 'Opsonin Pharma Ltd', 'Opsonin Pharma Ltd', 'brand-images/index.jpg', 1, '2022-07-25 07:37:23', '2022-10-17 11:20:43'),
(7, 'Beximco Pharmaceuticals Ltd', 'Beximco Pharmaceuticals Ltd', 'brand-images/f5.jpg', 1, '2022-07-25 07:37:36', '2022-10-17 11:20:09'),
(8, 'Incepta Pharmaceutical Ltd.', 'Incepta Pharmaceutical Ltd.', 'brand-images/f4.jpg', 1, '2022-07-25 07:46:25', '2022-10-17 11:19:44'),
(9, 'Square Pharmaceuticals Limited', 'Square Pharmaceuticals Limited', 'brand-images/f5.jpg', 1, '2022-10-17 11:19:14', '2022-10-17 11:19:14');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Liquid', 'LiquidLiquidLiquidLiquid', 'category-images/f3.jpg', 1, '2022-07-18 06:32:41', '2022-10-17 11:03:53'),
(3, 'ACI Limited', 'Napa', 'category-images/11.jpg', 1, '2022-07-23 08:38:51', '2022-10-21 12:20:26'),
(4, 'Injections', 'InjectionsInjections', 'category-images/p2.jpg', 1, '2022-07-25 07:31:18', '2022-10-17 11:09:23'),
(6, 'Inhalers', 'InhalersInhalersInhalers', 'category-images/p2.jpg', 1, '2022-07-25 07:31:57', '2022-10-17 11:08:40'),
(7, 'Drops', 'DropsDropsDropsDrops', 'category-images/p3.jpg', 1, '2022-07-25 07:32:13', '2022-10-17 11:07:42'),
(10, 'Capsules', 'CapsulesCapsulesCapsules', 'category-images/11.jpg', 1, '2022-07-25 07:50:10', '2022-10-17 11:05:04');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `date_of_birth` text DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `mobile`, `address`, `image`, `date_of_birth`, `nid`, `created_at`, `updated_at`) VALUES
(1, 'User', 'admin@admin.com', '$2y$10$nVpmullMFJk4RYktcoMc5O/bLcc.qFjCBGzUQnQZ4sIaVrcz4bP9W', '0171545613', NULL, NULL, NULL, NULL, '2022-08-02 08:46:49', '2022-08-02 08:46:49'),
(4, 'sadas dasdas dasd', 'use2123123r@user.com', '$2y$10$XMo6Cd.NLWOzkJhT.6x1OuJrYl4pVwWpOxODop1jsc2rbNCig/YPC', '213123123123', NULL, NULL, NULL, NULL, '2022-08-02 08:56:33', '2022-08-02 08:56:33'),
(5, 'Rofiq khan', 'kahn@gmail.com', '$2y$10$aCeBrhf4RvWVpOF/YbILb.rkuX3h/pa73a6OE/1F/pmDxvbyCPKci', '12345678', NULL, NULL, NULL, NULL, '2022-08-07 06:47:29', '2022-08-07 06:47:29'),
(6, 'Jubayer Khan', 'jubaer@gmail.com', '$2y$10$YBNVX7Zhf3Dpq.2x3.gxZeGE8Jb76GpSjbXVp7Ue1pK9NVkhqGWCu', '017154679', NULL, NULL, NULL, NULL, '2022-08-07 07:34:01', '2022-08-07 07:34:01'),
(7, 'Rojot Kumar', 'rogot@gmail.com', '$2y$10$CzZM05BgXsaVCkLmGbtOcedKFWUXNsXjn2tpEmi9SVh.BWgtZUt.G', '12312321', NULL, NULL, NULL, NULL, '2022-08-07 07:40:32', '2022-08-07 07:40:32'),
(9, 'Shahabuddin Khan', 'rogot123@gmail.com', '$2y$10$oPG0646DQDXq.62XVFoJPe5xu5rESdXo4aZWGzX5wvN7xhn90JaVm', '123456', NULL, NULL, NULL, NULL, '2022-08-07 08:31:14', '2022-08-07 08:31:14'),
(10, 'Mohiuddin Khan', 'khan123@gmail.com', '$2y$10$0swS0HGdaeeINuJDFP9Uk.ZFeqOPDhFWm/rdeGnGBdIGWZbKxrpLC', '01715111222', NULL, NULL, NULL, NULL, '2022-08-16 06:28:31', '2022-08-16 06:28:31'),
(11, 'Shahabuddin Khan', 'rajatsahadiu5@gmail.com', '$2y$10$StKKfHIiIeP6n3iT3vLufuN6Gs5kyQekQOvIwIa92VCOjVw0kMBAu', '123234', NULL, NULL, NULL, NULL, '2022-08-28 06:49:44', '2022-08-28 06:49:44'),
(12, 'Jaber Ahamed', 'mayienuddin77@gmail.com', '$2y$10$N2d6jBhfuZWLhaZem9ZjKO/fkgStExUKE6chjTpE/oNOpaVVKCa1i', '132456789', NULL, NULL, NULL, NULL, '2022-08-28 08:08:13', '2022-08-28 08:08:13'),
(13, 'RAZOAN', 'razoan@gmail.com', '$2y$10$40mlpsYDsw2XNbChDKk1JOKc5Nw/mAcbK3U6iK7CdcvjJpshk6Kxe', '01743069757', NULL, NULL, NULL, NULL, '2022-10-20 12:11:01', '2022-10-20 12:11:01'),
(15, 'RAZOAN', 'razoan1@gmail.com', '$2y$10$Q8HAEj.guDpFNhkz4PYY/uHGBkHNtFdDqtOkhddgKY6QfdeYCz0Om', '017460369', NULL, NULL, NULL, NULL, '2022-10-21 05:55:29', '2022-10-21 05:55:29'),
(16, 'RAZOAN', 'razoan420@gmail.com', '$2y$10$A83a9ahyyTKRsGmzZ.yiXeBuTyFhMJXPIzmJxwGg1ZlooU5qvsuga', '01785322622', NULL, NULL, NULL, NULL, '2022-10-25 09:09:46', '2022-10-25 09:09:46'),
(17, 'Kylan Owen', 'qakonozeqo@mailinator.com', '$2y$10$Uck/.Myo4BZ5FLDxa.mlYeibQW.nTPsmYtU8ssYVEzc.vqxg3i5Ky', '13', NULL, NULL, NULL, NULL, '2024-01-10 07:38:12', '2024-01-10 07:38:12'),
(18, 'Georgia Wong', 'rytizelona@mailinator.com', '$2y$10$PeWTKEG4xfPrMTzwSqOYGOeYxncqUZhfjNk3F9URYDUhwmCwrMkOO', '65', NULL, NULL, NULL, NULL, '2024-01-10 12:35:32', '2024-01-10 12:35:32'),
(19, 'Cruz Douglas', 'syto@mailinator.com', '$2y$10$3uY8NNROWzQaGhxsNcX64eVhkzaKzMEh/2ke1jdTlTD47azmIf1Ca', '43', NULL, NULL, NULL, NULL, '2024-01-10 12:36:10', '2024-01-10 12:36:10');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_06_27_143639_create_sessions_table', 1),
(10, '2022_07_02_141208_create_categories_table', 2),
(11, '2022_07_04_131032_create_brands_table', 2),
(12, '2022_07_04_135127_create_sub_categories_table', 2),
(13, '2022_07_04_141207_create_units_table', 3),
(15, '2022_07_18_133519_create_products_table', 4),
(16, '2022_07_20_133158_create_sub_images_table', 5),
(17, '2022_08_02_134053_create_customers_table', 6),
(18, '2022_08_02_134101_create_orders_table', 6),
(19, '2022_08_02_134109_create_order_details_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_total` double(11,2) NOT NULL,
  `tax_total` int(11) NOT NULL,
  `shipping_total` int(11) NOT NULL,
  `delivery_address` text NOT NULL,
  `order_status` text NOT NULL DEFAULT 'Pending',
  `order_date` text DEFAULT NULL,
  `order_timestamp` text DEFAULT NULL,
  `payment_status` text NOT NULL DEFAULT 'Pending',
  `payment_method` text NOT NULL,
  `payment_date` text DEFAULT NULL,
  `payment_timestamp` text DEFAULT NULL,
  `transaction_id` text DEFAULT NULL,
  `delivery_status` text NOT NULL DEFAULT 'Pending',
  `delivery_date` text DEFAULT NULL,
  `delivery_timestamp` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_amount` int(11) NOT NULL DEFAULT 0,
  `currency` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_total`, `tax_total`, `shipping_total`, `delivery_address`, `order_status`, `order_date`, `order_timestamp`, `payment_status`, `payment_method`, `payment_date`, `payment_timestamp`, `transaction_id`, `delivery_status`, `delivery_date`, `delivery_timestamp`, `created_at`, `updated_at`, `payment_amount`, `currency`) VALUES
(3, 5, 56783919.00, 7406533, 500, 'Mirpur - 12', 'Pending', '2022-08-07', '1659830400', 'Pending', '1', NULL, NULL, NULL, 'Pending', NULL, NULL, '2022-08-07 06:47:30', '2022-08-07 06:47:30', 0, NULL),
(4, 7, 63076.00, 8162, 500, 'Rampura', 'Pending', '2022-08-07', '1659830400', 'Pending', '1', NULL, NULL, NULL, 'Pending', NULL, NULL, '2022-08-07 08:24:15', '2022-08-07 08:24:15', 0, NULL),
(5, 9, 63076.00, 8162, 500, 'Dhamondhi 23, Dhaka.', 'Complete', '2022-08-07', '1659830400', 'Complete', '1', '2022-08-21', '1661040000', NULL, 'Complete', '2022-08-21', '1661040000', '2022-08-07 08:31:14', '2022-08-21 08:12:30', 63076, NULL),
(6, 9, 63076.00, 8162, 500, 'SAvar', 'Pending', '2022-08-07', '1659830400', 'Pending', '1', NULL, NULL, NULL, 'Pending', NULL, NULL, '2022-08-07 08:33:43', '2022-08-07 08:33:43', 0, NULL),
(7, 10, 1047978.00, 136628, 500, 'Rampura', 'Pending', '2022-08-16', '1660608000', 'Pending', '1', NULL, NULL, NULL, 'Pending', NULL, NULL, '2022-08-16 06:28:31', '2022-08-16 06:28:31', 0, NULL),
(8, 10, 523227.00, 68182, 500, 'Uttra - 10', 'Pending', '2022-08-16', '1660608000', 'Pending', '1', NULL, NULL, NULL, 'Pending', NULL, NULL, '2022-08-16 06:33:48', '2022-08-16 06:33:48', 0, NULL),
(9, 11, 524650.00, 68367, 500, 'Rokeya Hall', 'Pending', '2022-08-28', '1661644800', 'Pending', '1', NULL, NULL, NULL, 'Pending', NULL, NULL, '2022-08-28 06:49:44', '2022-08-28 06:49:44', 0, NULL),
(10, 12, 523227.00, 68182, 500, 'Rampura, Dhaka', 'Processing', '2022-08-28', '1661644800', 'Pending', '2', NULL, NULL, '630b770e9c922', 'Pending', NULL, NULL, NULL, NULL, 0, 'BDT'),
(11, 13, 1011.00, 67, 500, 'gjhjfjyfrsj', 'Pending', '2022-10-20', '1666224000', 'Pending', '1', NULL, NULL, NULL, 'Pending', NULL, NULL, '2022-10-20 12:11:01', '2022-10-20 12:11:01', 0, NULL),
(12, 15, 1750.00, 163, 500, 'kkkkk', 'Pending', '2022-10-21', '1666310400', 'Pending', '1', NULL, NULL, NULL, 'Pending', NULL, NULL, '2022-10-21 06:11:21', '2022-10-21 06:11:21', 0, NULL),
(13, 16, 1644.00, 149, 500, 'gvgvu', 'Canceled', '2022-10-25', '1666656000', 'Pending', '2', NULL, NULL, '6357fc3b2a553', 'Pending', NULL, NULL, NULL, NULL, 0, 'BDT'),
(14, 15, 4119.00, 472, 500, 'Namapara', 'Pending', '2022-10-26', '1666742400', 'Pending', '1', NULL, NULL, NULL, 'Pending', NULL, NULL, '2022-10-26 07:12:36', '2022-10-26 07:12:36', 0, NULL),
(15, 17, 1011.00, 67, 500, 'Dolore occaecat eum', 'Pending', '2024-01-10', '1704844800', 'Pending', '1', NULL, NULL, NULL, 'Pending', NULL, NULL, '2024-01-10 07:38:12', '2024-01-10 07:38:12', 0, NULL),
(16, 17, 729.00, 30, 500, 'Dolore enim est vol', 'Pending', '2024-01-10', '1704844800', 'Pending', '1', NULL, NULL, NULL, 'Pending', NULL, NULL, '2024-01-10 07:53:01', '2024-01-10 07:53:01', 0, NULL),
(17, 18, 627.00, 17, 500, 'Totam eiusmod invent', 'Canceled', '2024-01-10', '1704844800', 'Pending', '2', NULL, NULL, '659ee374539e3', 'Pending', NULL, NULL, NULL, NULL, 0, 'BDT'),
(18, 19, 627.00, 17, 500, 'Et expedita et nesci', 'Pending', '2024-01-10', '1704844800', 'Pending', '1', NULL, NULL, NULL, 'Pending', NULL, NULL, '2024-01-10 12:36:49', '2024-01-10 12:36:49', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` text NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_image`, `product_price`, `product_qty`, `created_at`, `updated_at`) VALUES
(3, 3, 14, 'Product Name 51454', 'product-images/images.jpg', 455425, 1, '2022-08-07 06:47:30', '2022-08-07 06:47:30'),
(4, 3, 13, 'Product Name 9', 'product-images/images.jpg', 48921461, 1, '2022-08-07 06:47:30', '2022-08-07 06:47:30'),
(5, 4, 12, 'Product Name 8', 'product-images/1_samsung-a21s.jpg', 54414, 1, '2022-08-07 08:24:16', '2022-08-07 08:24:16'),
(6, 5, 12, 'Product Name 8', 'product-images/1_samsung-a21s.jpg', 54414, 1, '2022-08-07 08:31:14', '2022-08-07 08:31:14'),
(7, 6, 12, 'Product Name 8', 'product-images/1_samsung-a21s.jpg', 54414, 1, '2022-08-07 08:33:43', '2022-08-07 08:33:43'),
(8, 7, 14, 'Product Name 51454', 'product-images/images.jpg', 455425, 2, '2022-08-16 06:28:31', '2022-08-16 06:28:31'),
(9, 8, 9, 'Product Name 5', 'product-images/s1_new-good-looking-denim-jeans-pant-for-men.jpg', 454545, 1, '2022-08-16 06:33:48', '2022-08-16 06:33:48'),
(10, 9, 14, 'Product Name 51454', 'product-images/images.jpg', 455425, 1, '2022-08-28 06:49:44', '2022-08-28 06:49:44'),
(11, 9, 4, 'Havay T-shirt', 'product-images/p1.jpg', 358, 1, '2022-08-28 06:49:44', '2022-08-28 06:49:44'),
(12, 11, 9, 'Entacyd®', 'product-images/Entacyd Susp.jpg', 444, 1, '2022-10-20 12:11:01', '2022-10-20 12:11:01'),
(13, 12, 9, 'Entacyd®', 'product-images/Entacyd Susp.jpg', 444, 2, '2022-10-21 06:11:21', '2022-10-21 06:11:21'),
(14, 12, 13, 'Virux Tablet', 'product-images/MOXACIL-15ML.jpg', 199, 1, '2022-10-21 06:11:21', '2022-10-21 06:11:21'),
(15, 14, 11, 'Virux®', 'product-images/VIRUX.jpg', 360, 5, '2022-10-26 07:12:36', '2022-10-26 07:12:36'),
(16, 14, 10, 'Virux Tablet®', 'product-images/MOXACIL-15ML.jpg', 449, 3, '2022-10-26 07:12:36', '2022-10-26 07:12:36'),
(17, 15, 9, 'Entacyd®', 'product-images/Entacyd Susp.jpg', 444, 1, '2024-01-10 07:38:12', '2024-01-10 07:38:12'),
(18, 16, 13, 'Virux Tablet', 'product-images/MOXACIL-15ML.jpg', 199, 1, '2024-01-10 07:53:01', '2024-01-10 07:53:01'),
(19, 18, 14, 'Napa', 'product-images/mclav.jpg', 110, 1, '2024-01-10 12:36:49', '2024-01-10 12:36:49');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `regular_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `stock_amount` int(11) NOT NULL DEFAULT 0,
  `short_description` text NOT NULL,
  `long_description` longtext NOT NULL,
  `image` text NOT NULL,
  `hit_count` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `code`, `regular_price`, `selling_price`, `stock_amount`, `short_description`, `long_description`, `image`, `hit_count`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 'Sony X-Peria XZ', 'SXPXZ123', 45600, 45000, 20, 'ewrwerwe', '<p>dsdfsdf</p>', 'product-images/3.png', 0, 1, '2022-07-20 07:48:05', '2022-07-20 07:48:05'),
(3, 1, 3, 1, 2, 'This is a product', '345', 3432, 234234, 32423, 'fefrewfrwer', '<p>seffewr</p>', 'product-images/005024Student-03_kalerkantho_pic.jpg', 0, 1, '2022-07-25 07:16:37', '2022-07-25 07:16:37'),
(4, 2, 4, 3, 1, 'Havay T-shirt', 'Sk454', 458, 358, 15, 'akajkj', '<div class=\"product-detail-header\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left; background-color: rgb(233, 234, 235); color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana; font-size: 14px;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><h2 style=\"padding: 0px; margin: 4px 0px 2px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; color: inherit; font-size: 15px;\">প্রোডাক্টের বিবরণ :&nbsp;<span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">আনস্টিচড কটন থ্রি-পিস</span></h2></div><div class=\"header-code-text\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; text-align: right; font-family: SolaimanLipi, Helvetica, Verdana; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px;\">ডিল কোড:</span>&nbsp;<span id=\"DealCodeLabel\" style=\"padding: 0px; margin: 0px;\">১১১৬৭৬০</span></div></div><div class=\"product-details-text-wrapper\" style=\"padding: 0px; margin: 10px 0px 20px; width: 907.188px; float: left; color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana; font-size: 14px;\"><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">Orna: Chiffon</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">Fabric: Salwar &amp; Kamiz - cotton</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">&nbsp;Free Size, Unstitched</span></div></div><h3 style=\"padding: 0px; margin: 20px 0px 18.1406px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); font-size: 14px;\"><span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">আনস্টিচড কটন থ্রি-পিস</span>&nbsp;কিনুন বাংলাদেশের সেরা দামে</h3>', 'product-images/p1.jpg', 0, 1, '2022-07-25 07:21:54', '2022-07-25 07:21:54'),
(5, 3, 5, 3, 1, 'Three Pices', 'SKR4784', 897, 758, 12, '1411+61', '<div class=\"product-detail-header\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left; background-color: rgb(233, 234, 235); color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana; font-size: 14px;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><h2 style=\"padding: 0px; margin: 4px 0px 2px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; color: inherit; font-size: 15px;\">প্রোডাক্টের বিবরণ :&nbsp;<span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">আনস্টিচড কটন থ্রি-পিস</span></h2></div><div class=\"header-code-text\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; text-align: right; font-family: SolaimanLipi, Helvetica, Verdana; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px;\">ডিল কোড:</span>&nbsp;<span id=\"DealCodeLabel\" style=\"padding: 0px; margin: 0px;\">১১১৬৭৬০</span></div></div><div class=\"product-details-text-wrapper\" style=\"padding: 0px; margin: 10px 0px 20px; width: 907.188px; float: left; color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana; font-size: 14px;\"><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">Orna: Chiffon</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">Fabric: Salwar &amp; Kamiz - cotton</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">&nbsp;Free Size, Unstitched</span></div></div><h3 style=\"padding: 0px; margin: 20px 0px 18.1406px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); font-size: 14px;\"><span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">আনস্টিচড কটন থ্রি-পিস</span>&nbsp;কিনুন বাংলাদেশের সেরা দামে</h3>', 'product-images/p4.jpg', 0, 1, '2022-07-25 07:24:26', '2022-07-25 07:24:26'),
(6, 1, 1, 1, 1, 'Mobaile Name 2', 'MB43P', 14987, 13598, 18, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type speci', '<div class=\"product-detail-header\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left; background-color: rgb(233, 234, 235); color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana; font-size: 14px;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><h2 style=\"padding: 0px; margin: 4px 0px 2px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; color: inherit; font-size: 15px;\">প্রোডাক্টের বিবরণ :&nbsp;<span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">সেমি ন্যারো ফিট জিন্স প্যান্ট ফর মেন</span></h2></div><div class=\"header-code-text\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; text-align: right; font-family: SolaimanLipi, Helvetica, Verdana; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px;\">ডিল কোড:</span>&nbsp;<span id=\"DealCodeLabel\" style=\"padding: 0px; margin: 0px;\">১৩৮২৭৯৯</span></div></div><div class=\"product-details-text-wrapper\" style=\"padding: 0px; margin: 10px 0px 20px; width: 907.188px; float: left; color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana; font-size: 14px;\"><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">স্টাইল: সেমি ন্যারো</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">ম্যাটেরিয়াল: ১০০% ডেনিম কটন</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">সাইজ: 28 - 40 (এশিয়ান মেজারমেন্ট)</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">ফ্যাশনেবল ও আরামদায়ক</span></div></div><h3 style=\"padding: 0px; margin: 20px 0px 18.1406px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); font-size: 14px;\"><span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">সেমি ন্যারো ফিট জিন্স প্যান্ট ফর মেন</span>&nbsp;কিনুন বাংলাদেশের সেরা দামে</h3><div class=\"product-specification-container\" style=\"padding: 0px; margin: 0px 0px 18.1406px; color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana; font-size: 14px;\"><span class=\"product-specification-head\" style=\"padding: 0px; margin: 0px 0px 10px; width: 907.188px; float: left; background-color: rgb(233, 234, 235);\"><h2 style=\"padding: 0px; margin: 10px 0px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; color: inherit; font-size: 15px;\"><span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">সেমি ন্যারো ফিট জিন্স প্যান্ট ফর মেন</span>&nbsp;- Product Specification</h2></span><div class=\"product-detail-header-wrapper\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-weight: 700; color: rgb(0, 0, 0);\">ব্র্যান্ড :</span><span id=\"BrandNameInProuductDetails\" style=\"padding: 0px; margin: 0px;\"></span></div><div class=\"header-code-text\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; text-align: right; font-family: SolaimanLipi, Helvetica, Verdana; color: rgb(93, 90, 90);\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-size: 15px; font-weight: 700; color: rgb(0, 0, 0);\">ডিল কোড:&nbsp;</span><span id=\"DealCodeInProuductDetails\" style=\"padding: 0px; margin: 0px;\">১৩৮২৭৯৯</span></div></div><div class=\"product-detail-header-wrapper\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-weight: 700; color: rgb(0, 0, 0);\">বৈশিষ্ট্যসমূহ :</span><span class=\"feautures-wrapper\" style=\"padding: 0px; margin: 0px;\"><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 445.594px; float: left; font-size: 14px; line-height: 27px;\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">প্রযোজ্য নয়</span></div></span></div><div class=\"header-code-text\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; text-align: right; font-family: SolaimanLipi, Helvetica, Verdana; color: rgb(93, 90, 90);\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-size: 15px; font-weight: 700; color: rgb(0, 0, 0);\">মডেল :</span><span id=\"ModelNo\" style=\"padding: 0px; margin: 0px;\"><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 445.594px; float: left; line-height: 27px;\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">প্রযোজ্য নয়</span></div></span></div></div><div class=\"product-specification-text-wrapper\" style=\"padding: 0px; margin: 9.0625px 0px 0px;\"></div><div class=\"product-detail-header-wrapper\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-weight: 700; color: rgb(0, 0, 0);\">প্যাকেটে যা থাকছে :</span></div></div><div class=\"packets-includes-product-wrapper\" style=\"padding: 0px; margin: 0px;\"><span class=\"packets-includes-product-text\" style=\"padding: 0px; margin: 0px 0px 0px 10px;\">সেমি ন্যারো ফিট জিন্স প্যান্ট ফর মেন</span></div></div>', 'product-images/download.jpg', 0, 1, '2022-07-25 07:28:32', '2022-07-25 07:28:32'),
(7, 4, 17, 7, 1, 'Lumertam®', 'R-3', 1000, 990, 15, 'Artemether + Lumefantrine\r\nAntimalarials (Antiparasite Preparations)', '<h5 class=\"ssa\"><b><span class=\"pagtitle\">Indication:</span> </b><br>Lumertam<sup>®</sup>&nbsp;is\r\n indicated in the treatment and standby emergency treatment of acute \r\nuncomplicated Plasmodium falciparum malaria including mixed P. \r\nfalciparum infection of adults, children and infants weighing from 5 kg \r\nand above.&nbsp;</h5><h5><b><span class=\"pagtitle\">Preparation:</span> </b></h5><h5>Each box of Lumertam<sup>®</sup></h5>', 'product-images/Lumertam.jpg', 0, 1, '2022-07-25 07:39:13', '2022-10-17 14:40:55'),
(8, 6, 17, 7, 1, 'Camlodin®', 'C-5', 2555, 2222, 15, 'Hypertension, stable angina, vasospastic angina.', '<div class=\"col-xs-12 col-sm-7 col-md-7 col-lg-7\">\r\n                                <div class=\"prodetails\">\r\n                                    <h5 class=\"ssa\"><b><span class=\"pagtitle\">Indication:</span> </b><br>Hypertension, stable angina, vasospastic angina.</h5><h5 class=\"ssa\"><b><span class=\"pagtitle\">Dosage &amp; Administration:</span></b><br>5-10 mg once daily.</h5><h5 class=\"ssa\"><b><span class=\"pagtitle\">Preparation:</span> </b><br>Camlodin<sup>®</sup> 5 tablet : Box containing 5 x 6 tablets in blister pack.</h5>                                </div>\r\n								\r\n								                            </div>', 'product-images/CARVA-75.jpg', 0, 1, '2022-07-25 07:40:52', '2022-10-17 15:06:47'),
(9, 1, 13, 5, 1, 'Entacyd®', 'g3', 400, 444, 150, 'Aluminum Hydroxide + Magnesium Hydroxide\r\nNon-systemic Antacid & Antiflatulent (Antiulcerant)', '<div class=\"col-xs-12 col-sm-7 col-md-7 col-lg-7\"><h5>\r\n                                </h5><div class=\"prodetails\"><h5>\r\n                                    </h5><h5 class=\"ssa\">Indication: <br>Hyperacidity, peptic ulcer, gastritis, heartburn, sour stomach and dyspepsia.</h5><h5 class=\"ssa\">Dosage &amp; Administration:<br>Two teaspoonful suspension 1-3 hours after meal and at bed time.</h5><h5 class=\"ssa\"><span style=\"font-weight: normal;\">Preparation: </span><br>Entacyd® suspension : Bottle containing 200 ml suspension.</h5><h5>                                </h5></div><h5>\r\n								\r\n								                            </h5></div>', 'product-images/Entacyd Susp.jpg', 0, 1, '2022-07-25 07:42:15', '2022-10-17 13:55:08'),
(10, 10, 14, 7, 1, 'Virux Tablet®', '544akjh', 500, 449, 100, 'Virux® 200 : Each box containing 3X10 tablets in blister pack.', '<div class=\"col-xs-12 col-sm-7 col-md-7 col-lg-7\">\r\n                                <div class=\"prodetails\">\r\n                                    <h6 class=\"ssa\"><b><span class=\"pagtitle\">Preparation:</span> </b><br>Virux<sup>®</sup> 200 : Each box containing 3X10 tablets in blister pack.<br>\r\nVirux<sup>®</sup> 400 : Each box containing 2X10 tablets in blister pack.</h6>                                </div><h6><br></h6>\r\n								\r\n								                            </div>', 'product-images/MOXACIL-15ML.jpg', 0, 1, '2022-07-25 07:43:52', '2022-10-17 15:03:48'),
(11, 7, 15, 5, 1, 'Virux®', 'v1', 400, 360, 145, 'For the treatment of viral infections due to herpes simplex virus (type I & II) and varicella zoster virus (herpes zoster & chickenpox).', '<div class=\"col-xs-12 col-sm-7 col-md-7 col-lg-7\"><h6>\r\n                                </h6><div class=\"prodetails\"><h6>\r\n                                    </h6><h6 class=\"ssa\"><b><span class=\"pagtitle\">Indication:</span> </b><br>For\r\n the treatment of viral infections due to herpes simplex virus  (type I \r\n&amp; II) and varicella zoster virus (herpes zoster &amp; chickenpox).<br>\r\nFor the treatment of herpes simplex virus infections of the skin and \r\nmucous membranes including initial and recurrent genital herpes. <br>\r\nFor the prophylaxis of herpes simplex infections in immunocompromised patients. <br>\r\n</h6><h6 class=\"ssa\"><b><span class=\"pagtitle\">Dosage &amp; Administration:</span></b><br></h6><h6 class=\"preview\">Treatment\r\n of initial herpes simplex: 200 mg 5 times daily usually for 5 days. For\r\n immunocompromised patients 400 mg 5 times daily for 5 days (longer if \r\nnew lesions appear during treatment or if healing incomplete; increase \r\ndose to 800 mg 5 times daily for genital herpes in immuno-compromised) \r\nor as directed by the registered physician.\r\nChildren under 2 years: half of the adults dose.\r\nChildren over 2 years: Adult dose.\r\nPrevention of recurrence of herpes simplex: 200 mg 4 times daily or 400 \r\nmg twice daily possibly reduced to 200 mg 2 or 3 times daily and \r\ninterrupted every 6-12 months.\r\nChildren under 2 years: Half of the adult dose.\r\nChildren over 2 years: Adul<a href=\"https://www.squarepharma.com.bd/product-details.php?pid=305#\" class=\"read-more-link\">Show more </a></h6><h6 class=\"ssa\"><b><span class=\"pagtitle\">Preparation:</span> </b><br>Virux<sup>®</sup> tablet : Box containing 3 x 10 tablets in blister pack.<br>\r\nVirux<sup>®</sup> cream : Tube containing 5 g of <br>\r\nVirux<sup>®</sup> cream.</h6><h6>                                </h6></div><h6>\r\n								\r\n								                            </h6></div>', 'product-images/VIRUX.jpg', 0, 1, '2022-07-25 07:47:19', '2022-10-17 13:46:18'),
(12, 4, 16, 3, 1, 'Tylace™', 't-9', 300, 299, 50, 'Dosage & Administration:\r\nAs Mucolytic :\r\nAdults and children over 6 years: 1 Tablet daily', '<blockquote><div class=\"row\"><h5>\r\n                            </h5><div class=\"bx-viewport\" style=\"width: 100%; overflow: hidden; position: relative; height: 292px;\"><h5>\r\n                                </h5><h5><br></h5><h5 class=\"ssa\"><b><span class=\"pagtitle\">Indication:</span> </b><br>-\r\n As an adjunctive treatment for patients with abnormal, viscid or \r\ninspissated mucus secretion associated with conditions such as- Acute \r\n&amp; chronic bronchopulmonary disorders (Pneumonia, Bronchitis, \r\nLaryngitis, Sinusitis, Tracheitis, Influenza, Emphysema, \r\nTracheobronchitis, Chronic asthmatic bronchitis, Tuberculosis etc.), \r\nAtelectasis , Pulmonary complication of cystic fibrosis, Pulmonary \r\ncomplication of thoracic &amp; cardiovascular surgery.<br><br>\r\n- As an antidote in Paracetamol overdose <br>\r\n</h5><h5 class=\"ssa\"><b><span class=\"pagtitle\">Dosage &amp; Administration:</span></b><br><b>As Mucolytic : </b><br>\r\nAdults and children over 6 years: 1 Tablet daily<br>\r\n<br><br>\r\n<b>In Paracetamol overdose : </b><br>\r\nInitially 140 mg/kg, followed by 70 mg/kg in every 4 hours for an additional 17 doses<br><br><br>\r\n<br>\r\nDissolve 1 Tablet in a glass of water (200 ml)<br>\r\n</h5><h5><b><span class=\"pagtitle\">Preparation:</span> </b></h5><ul class=\"theproducts\" style=\"width: 315%; position: relative; transition-duration: 0.5s; transform: translate3d(-40px, 0px, 0px);\"><li style=\"float: left; list-style: none; position: relative; width: 438px; margin-right: 10px;\" class=\"bx-clone\"><h5>\r\n                                                        </h5><h5><br></h5></li></ul></div><div class=\"col-xs-12 col-sm-5 col-md-5 col-lg-5\"><div class=\"row\"><div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\"><div id=\"productdetails\"><div class=\"bx-wrapper\" style=\"max-width: 100%;\"><div class=\"bx-controls bx-has-pager\"><div class=\"bx-pager bx-default-pager\"><div class=\"bx-pager-item\"><h5><a href=\"https://www.squarepharma.com.bd/product-details.php?pid=654\" data-slide-index=\"0\" class=\"bx-pager-link active\">1</a></h5></div></div></div></div><h5>\r\n                                        </h5></div><h5>\r\n                                    </h5></div><h5>\r\n\r\n                                    </h5><div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\"><h5>\r\n                                        </h5><div class=\"share-section\"><h5>\r\n                                            </h5><div class=\"row\"><h5>\r\n                                                </h5><div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\"><h5>\r\n                                                                                                            </h5><div class=\"prescribe-btn\"><h5>\r\n                                                            <a href=\"https://www.squarepharma.com.bd/downloads/Tylace DS English .pdf\" target=\"_blank\">View Prescribing Details</a>\r\n                                                        </h5></div><h5>\r\n                                                    \r\n                                                    </h5><div class=\"addthisbtns\"><h5>\r\n                                                        </h5><div class=\"sharethis-inline-share-buttons st-right  st-inline-share-buttons st-animated\" id=\"st-1\"><div class=\"st-btn st-first\" data-network=\"sharethis\" style=\"display: inline-block;\"><h5>\r\n  <img alt=\"sharethis sharing button\" src=\"https://platform-cdn.sharethis.com/img/sharethis.svg\">\r\n  \r\n</h5></div><div class=\"st-btn\" data-network=\"facebook\" style=\"display: inline-block;\"><h5>\r\n  <img alt=\"facebook sharing button\" src=\"https://platform-cdn.sharethis.com/img/facebook.svg\">\r\n  \r\n</h5></div><div class=\"st-btn\" data-network=\"twitter\" style=\"display: inline-block;\"><h5>\r\n  <img alt=\"twitter sharing button\" src=\"https://platform-cdn.sharethis.com/img/twitter.svg\">\r\n  \r\n</h5></div><div class=\"st-btn\" data-network=\"linkedin\" style=\"display: inline-block;\"><h5>\r\n  <img alt=\"linkedin sharing button\" src=\"https://platform-cdn.sharethis.com/img/linkedin.svg\">\r\n  \r\n</h5></div><div class=\"st-btn st-last\" data-network=\"email\" style=\"display: inline-block;\"><h5>\r\n  <img alt=\"email sharing button\" src=\"https://platform-cdn.sharethis.com/img/email.svg\">\r\n  \r\n</h5></div></div><h5>\r\n                                                    </h5></div><h5>\r\n                                                </h5></div><h5>\r\n                                            </h5></div><h5>\r\n                                        </h5></div><h5>\r\n                                    \r\n									\r\n									</h5></div><h5> \r\n                                    </h5><h5> \r\n                                </h5></div><h5>              \r\n                                \r\n                \r\n                            </h5></div><h5>\r\n                        </h5></div><div class=\"clearfix\"></div><hr></blockquote>', 'product-images/Moxaclav-Forte-PFS_l.jpg', 0, 1, '2022-07-25 07:48:17', '2022-10-17 15:08:24'),
(13, 1, 13, 1, 1, 'Virux Tablet', 'v-2', 200, 199, 10, 'Indication:\r\nOsteoarthritis, rheumatoid arthritis and ankylosing spondylitis', '<div class=\"col-xs-12 col-sm-7 col-md-7 col-lg-7\">\r\n                                <div class=\"prodetails\">\r\n                                    <h5 class=\"ssa\"><b><span class=\"pagtitle\">Indication:</span> </b><br>Osteoarthritis, rheumatoid arthritis and ankylosing spondylitis</h5><h5 class=\"ssa\"><b><span class=\"pagtitle\">Dosage &amp; Administration:</span></b><br>Flexi: 100 mg twice daily; Flexi SR: 200 mg once daily.</h5><h5 class=\"ssa\"><b><span class=\"pagtitle\">Preparation:</span> </b><br>Flexi Tablet: Box containing 10 x 10 tablets in Alu-Alu blister pack;&nbsp;<br>\r\nFlexi SR Tablet : Box containing 3 x 10 tablets in Alu-PVDC blister pack.</h5><div class=\"col-xs-12 col-sm-7 col-md-7 col-lg-7\">\r\n                                <div class=\"prodetails\">\r\n                                    <h5 class=\"ssa\"><b><span class=\"pagtitle\">Indication:</span> </b><br>Infections\r\n of the ear, nose, and throat, genitourinary tract, skin and skin \r\nstructure, lower respiratory tract; gonorrhea, acute uncomplicated \r\n(ano-genital and urethral infections). H. pylori eradication to reduce \r\nthe risk of duodenal ulcer recurrence in combination with clarithromycin\r\n plus lansoprazol as triple therapy. Prophylactic cover for patients at \r\nrisk of developing endocarditis when undergoing dental surgery.</h5><h5 class=\"ssa\"><b><span class=\"pagtitle\">Dosage &amp; Administration:</span></b><br>Adult\r\n : Mild/Moderate -500 mg every 12 hours or 250 mg every 8 hours, \r\nSevere-875 mg every 12 hours or 500 mg every 8 hours. Children: \r\nMild/Moderate-25 mg/kg/day in divided doses every 12 hours or \r\n20mg/kg/day in divided doses every 8 hours, Severe-45 mg/kg/day in \r\ndivided doses every 12 hours or 40 mg/kg/day in divided doses every 8 \r\nhours. Gonorrhea, Acute, uncomplicated ano-genital, and urethral \r\ninfections in males and females 3 g as single oral dose. Prepubertal \r\nchildren 50 mg/Kg/Amoxicillin, combined with 25 mg/kg Probenecid as a \r\nsingle dose.</h5><h5 class=\"ssa\"><b><span class=\"pagtitle\">Preparation:</span> </b><br>Moxacil<sup>®</sup> 250 Capsule : Box containing 100 capsules in blister pack.<br>\r\nMoxacil<sup>®</sup> 500 Capsule : Box containing 100 capsules in blister pack.<br>\r\nMoxacil<sup>®</sup> Powder for Suspension: Each Bottle containing dry ingredients to make 100 ml suspension.<br>\r\nMoxacil<sup>®</sup> Paediatric Drops : Each Bottle containing powder to make 15 ml drops.</h5>                                </div>\r\n								\r\n								                            </div><p></p>                                </div>\r\n								\r\n								                            </div>', 'product-images/MOXACIL-15ML.jpg', 0, 1, '2022-07-25 07:52:48', '2022-10-17 14:44:00'),
(14, 4, 16, 4, 1, 'Napa', 'p-4', 120, 110, 18, 'NAPA (The National Automotive Parts Association) Corporate Profile', '<h5 class=\"ssa\"><b><span class=\"pagtitle\">Indication:</span> </b><br>Upper\r\n respiratory tract infections; Lower respiratory tract infections; \r\nGenito-urinary tract infections; Skin and soft tissue infections; Bone \r\nand joint infections e.g. osteomyelitis; Other infections e.g. septic \r\nabortion, puerperal sepsis, intra-abdominal sepsis, etc.</h5><h5 class=\"ssa\"><b><span class=\"pagtitle\">Dosage &amp; Administration:</span></b><br></h5><h5 class=\"preview\">Adults\r\n and children over 12 years: One Moxaclav® 375 mg tablet three times a \r\nday. In severe infection one Moxaclav® 625mg tablet three times a day or\r\n one Moxaclav® 1gm tablet two times a day. Children of 6-12 years: 2 \r\nteaspoonsful of Moxaclav® Powder for Suspension every 8 hours. Children \r\nof 1-6 years: 1 teaspoonful of Moxaclav® Powder for Suspension every 8 \r\nhours. Children below 1 year: 25 mg/kg/day in divided doses every 8 \r\nhours. Moxaclav® Forte Powder for Suspension: Children of 2-12 years: ½ \r\nto 2 teaspoonful b.i.d. Children of 2 months to 2 years: 25/3.6 \r\nmg/kg/day to 45/6.4 mg/kg/day b.i.d. Moxaclav® 1.2 IV Injection: 1.2 g \r\nevery 6-8 hours, Children up <a href=\"https://www.squarepharma.com.bd/product-details.php?pid=237#\" class=\"read-more-link\">Show more </a></h5><h5><b><span class=\"pagtitle\">Preparation:</span> </b></h5><h5>Moxaclav<sup>®</sup> 375 tablet : Box containing 4 x 6 film coated tablets in Alu-Alu blister pack.</h5><h5>\r\nMoxaclav<sup>®</sup> 625 tablet :Box containing 5 x 6 film coated tablets in Alu-Alu blister pack.</h5><h5>\r\nMoxaclav<sup>®</sup> 1gm tablet : Box containing 2 x 6 film coated tablets in Alu-Alu blister pack.</h5><h5>\r\nMoxaclav<sup>®</sup> Powder for Suspension: HDPE Bottle containing dry \r\npowder to make 100 ml suspension and HDPE Bottle containing dry powder \r\nto make 60 ml suspension.</h5><h5>\r\nMoxaclav<sup>®</sup></h5>', 'product-images/mclav.jpg', 0, 1, '2022-07-25 07:54:03', '2022-10-17 14:59:59');

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
('dtqgjt9pp211OYiiSVtf1WLtIB6qlyizAksLjlZf', 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YToxMDp7czo2OiJfdG9rZW4iO3M6NDA6IlZqQzRvMnFQaWdFOTdMZ3J5dHljcERDR1laQWpua0RBWmJTRVNhb1QiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjExODoiaHR0cDovL2xvY2FsaG9zdC9BbGwlMjBwcm9qZWN0L05ldyUyMCUyMG9jci9PQ1ItU1lTVEVNLUlOLVBIQVJNQUNZLUUtQ09NTUVSQ0UvT0NSLVNZU1RFTS1JTi1QSEFSTUFDWS1FLUNPTU1FUkNFL3B1YmxpYyI7fXM6MjY6IjR5VGxUREt1M29KT2Z6RF9jYXJ0X2l0ZW1zIjtPOjMyOiJEYXJyeWxkZWNvZGVcQ2FydFxDYXJ0Q29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YToxOntpOjg7TzozMjoiRGFycnlsZGVjb2RlXENhcnRcSXRlbUNvbGxlY3Rpb24iOjM6e3M6ODoiACoAaXRlbXMiO2E6Njp7czoyOiJpZCI7aTo4O3M6NDoibmFtZSI7czoxMDoiQ2FtbG9kaW7CriI7czo1OiJwcmljZSI7aToyMjIyO3M6ODoicXVhbnRpdHkiO3M6MToiMSI7czoxMDoiYXR0cmlidXRlcyI7Tzo0MToiRGFycnlsZGVjb2RlXENhcnRcSXRlbUF0dHJpYnV0ZUNvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6MTp7czo1OiJpbWFnZSI7czoyNzoicHJvZHVjdC1pbWFnZXMvQ0FSVkEtNzUuanBnIjt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjEwOiJjb25kaXRpb25zIjthOjA6e319czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO3M6OToiACoAY29uZmlnIjthOjY6e3M6MTQ6ImZvcm1hdF9udW1iZXJzIjtiOjA7czo4OiJkZWNpbWFscyI7aTowO3M6OToiZGVjX3BvaW50IjtzOjE6Ii4iO3M6MTM6InRob3VzYW5kc19zZXAiO3M6MToiLCI7czo3OiJzdG9yYWdlIjtOO3M6NjoiZXZlbnRzIjtOO319fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czoxMToib3JkZXJfdG90YWwiO2Q6MzA1NTtzOjk6InRheF90b3RhbCI7ZDozMzM7czoxNDoic2hpcHBpbmdfdG90YWwiO2k6NTAwO3M6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJE92TFZ2RG55WTNmSkNPenBISGRtV085ZkJSRmZUd1B2a0dJS1VwU1pLQjVmcTI3cXRBbHhlIjt9', 1704912982),
('IOGXPx3ObrNZVd4ufDgnX0g5q3FcyhMVZSYKColm', 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTo5OntzOjY6Il90b2tlbiI7czo0MDoiUUo4VnZndUsxNVFYeGNKcU1hRFBhYzY4TDRzYTJvcTJhVkw1M3BGRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI3OiJodHRwOi8vbG9jYWxob3N0L0FsbCUyMHByb2plY3QvTmV3JTIwJTIwb2NyL09DUi1TWVNURU0tSU4tUEhBUk1BQ1ktRS1DT01NRVJDRS9PQ1ItU1lTVEVNLUlOLVBIQVJNQUNZLUUtQ09NTUVSQ0UvcHVibGljL2NoZWNrb3V0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MztzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRPdkxWdkRueVkzZkpDT3pwSEhkbVdPOWZCUkZmVHdQdmtHSUtVcFNaS0I1ZnEyN3F0QWx4ZSI7czoyNjoiNHlUbFRES3Uzb0pPZnpEX2NhcnRfaXRlbXMiO086MzI6IkRhcnJ5bGRlY29kZVxDYXJ0XENhcnRDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjE6e2k6MTQ7TzozMjoiRGFycnlsZGVjb2RlXENhcnRcSXRlbUNvbGxlY3Rpb24iOjM6e3M6ODoiACoAaXRlbXMiO2E6Njp7czoyOiJpZCI7aToxNDtzOjQ6Im5hbWUiO3M6NDoiTmFwYSI7czo1OiJwcmljZSI7aToxMTA7czo4OiJxdWFudGl0eSI7czoxOiIxIjtzOjEwOiJhdHRyaWJ1dGVzIjtPOjQxOiJEYXJyeWxkZWNvZGVcQ2FydFxJdGVtQXR0cmlidXRlQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YToxOntzOjU6ImltYWdlIjtzOjI0OiJwcm9kdWN0LWltYWdlcy9tY2xhdi5qcGciO31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6MTA6ImNvbmRpdGlvbnMiO2E6MDp7fX1zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7czo5OiIAKgBjb25maWciO2E6Njp7czoxNDoiZm9ybWF0X251bWJlcnMiO2I6MDtzOjg6ImRlY2ltYWxzIjtpOjA7czo5OiJkZWNfcG9pbnQiO3M6MToiLiI7czoxMzoidGhvdXNhbmRzX3NlcCI7czoxOiIsIjtzOjc6InN0b3JhZ2UiO047czo2OiJldmVudHMiO047fX19czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjExOiJvcmRlcl90b3RhbCI7ZDo2Mjc7czo5OiJ0YXhfdG90YWwiO2Q6MTc7czoxNDoic2hpcHBpbmdfdG90YWwiO2k6NTAwO30=', 1704911726);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mobile', 'well', 'sub-category-images/1.jpg', 1, '2022-07-18 06:33:23', '2022-07-18 06:33:23'),
(2, 1, 'Freeze', 'well', 'sub-category-images/1.jpg', 1, '2022-07-18 06:33:40', '2022-07-18 06:33:40'),
(3, 1, 'Woven', 'well', 'sub-category-images/1.jpg', 1, '2022-07-18 06:34:11', '2022-07-18 06:34:11'),
(4, 2, 'T Shirt', 'well', 'sub-category-images/1.jpg', 1, '2022-07-18 06:34:25', '2022-07-18 06:34:25'),
(5, 3, 'Lady', NULL, 'sub-category-images/p4.jpg', 1, '2022-07-25 07:22:25', '2022-07-25 07:22:25'),
(6, 4, 'sub category 2', NULL, 'sub-category-images/200901kalerkantho_jpg.jpg', 1, '2022-07-25 07:34:10', '2022-07-25 07:34:10'),
(7, 5, 'sub category 3', NULL, 'sub-category-images/200901kalerkantho_jpg.jpg', 1, '2022-07-25 07:34:21', '2022-07-25 07:34:21'),
(8, 6, 'sub category 4', NULL, 'sub-category-images/200901kalerkantho_jpg.jpg', 1, '2022-07-25 07:34:36', '2022-07-25 07:34:36'),
(9, 7, 'sub category 5', NULL, 'sub-category-images/200901kalerkantho_jpg.jpg', 1, '2022-07-25 07:34:51', '2022-07-25 07:34:51'),
(10, 8, 'sub category 6', NULL, 'sub-category-images/200901kalerkantho_jpg.jpg', 1, '2022-07-25 07:35:43', '2022-07-25 07:35:43'),
(11, 9, 'sub category 7', NULL, 'sub-category-images/200901kalerkantho_jpg.jpg', 1, '2022-07-25 07:35:59', '2022-07-25 07:35:59'),
(12, 10, 'Fridge', 'lorem', 'sub-category-images/download (2).jpg', 1, '2022-07-25 07:50:44', '2022-07-25 07:50:44'),
(13, 1, 'Topical medicines', 'Topical medicinesTopical medicinesTopical medicines', 'sub-category-images/b1.jpg', 1, '2022-10-17 11:16:12', '2022-10-17 11:16:12'),
(14, 10, 'Napa Ext', 'fhdzhthtdht', 'sub-category-images/f3.jpg', 1, '2022-10-17 11:23:56', '2022-10-17 11:23:56'),
(15, 7, 'Ad-din Pharmaceuticals Ltd.', 'Ad-din Pharmaceuticals Ltd.', 'sub-category-images/f6.jpg', 1, '2022-10-17 13:22:47', '2022-10-17 13:22:47'),
(16, 4, 'Napa', 'NapaNapaNapa', 'sub-category-images/napa-tablet.jpg', 1, '2022-10-17 13:23:08', '2022-10-17 13:23:08'),
(17, 6, 'Pharmaceuticals Ltd.', 'Pharmaceuticals Ltd.', 'sub-category-images/f5.jpg', 1, '2022-10-17 13:23:55', '2022-10-17 13:23:55'),
(18, 11, 'Couch Fabric', NULL, 'sub-category-images/Screenshot 2023-12-10 105659.png', 1, '2024-01-10 12:50:09', '2024-01-10 12:50:09');

-- --------------------------------------------------------

--
-- Table structure for table `sub_images`
--

CREATE TABLE `sub_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_images`
--

INSERT INTO `sub_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'product-sub-images/1644132575.jpg', '2022-07-20 07:48:05', '2022-07-20 07:48:05'),
(2, 1, 'product-sub-images/aHR0cHM6Ly93d3cuZGFpbHlqYW5ha2FudGhhLmNvbS9jbG91ZC11cGxvYWRzL2RlZmF1bHQvYXJ0aWNsZS1pbWFnZXMvMjAyMjA2LzE2NTUyNzY0MDhfMDYucG5n (1).jpg', '2022-07-20 07:48:05', '2022-07-20 07:48:05'),
(3, 1, 'product-sub-images/Untitled.png', '2022-07-20 07:48:05', '2022-07-20 07:48:05'),
(4, 1, 'product-sub-images/141207hasina.webp', '2022-07-20 07:48:06', '2022-07-20 07:48:06'),
(24, 3, 'product-sub-images/005024Student-03_kalerkantho_pic.jpg', '2022-07-25 07:16:37', '2022-07-25 07:16:37'),
(25, 3, 'product-sub-images/032242Alig_kalerkantho_pic.jpg', '2022-07-25 07:16:37', '2022-07-25 07:16:37'),
(26, 3, 'product-sub-images/1.jpg', '2022-07-25 07:16:37', '2022-07-25 07:16:37'),
(27, 3, 'product-sub-images/2.jpg', '2022-07-25 07:16:37', '2022-07-25 07:16:37'),
(28, 4, 'product-sub-images/p2.jpg', '2022-07-25 07:21:54', '2022-07-25 07:21:54'),
(29, 5, 'product-sub-images/p4.jpg', '2022-07-25 07:24:27', '2022-07-25 07:24:27'),
(30, 5, 'product-sub-images/p3.jpg', '2022-07-25 07:24:27', '2022-07-25 07:24:27'),
(31, 6, 'product-sub-images/sssse.jpg', '2022-07-25 07:28:32', '2022-07-25 07:28:32'),
(32, 6, 'product-sub-images/download.jpg', '2022-07-25 07:28:32', '2022-07-25 07:28:32'),
(54, 11, 'product-sub-images/close-up-generic-prep-medicine-tablets-boston-massachusetts-april-view-bottle-pills-pre-exposure-prophylaxis-to-protect-215888039.jpg', '2022-10-17 13:46:18', '2022-10-17 13:46:18'),
(55, 10, 'product-sub-images/Virux-400_l.jpg', '2022-10-17 13:49:50', '2022-10-17 13:49:50'),
(56, 9, 'product-sub-images/Entacyd Susp.jpg', '2022-10-17 13:55:09', '2022-10-17 13:55:09'),
(57, 8, 'product-sub-images/Virux-400_l.jpg', '2022-10-17 14:31:48', '2022-10-17 14:31:48'),
(58, 7, 'product-sub-images/Lumertam.jpg', '2022-10-17 14:40:55', '2022-10-17 14:40:55'),
(59, 13, 'product-sub-images/third-party-manufacturing-of-pharmaceuticals-drugs-500x500.jpg', '2022-10-17 14:44:00', '2022-10-17 14:44:00'),
(63, 14, 'product-sub-images/Lumertam.jpg', '2022-10-17 14:48:16', '2022-10-17 14:48:16'),
(66, 12, 'product-sub-images/napa-tablet.jpg', '2022-10-17 14:56:36', '2022-10-17 14:56:36');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `code`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pice', 'PIC', 'dfsdfsdf', 1, '2022-07-18 07:33:31', '2022-07-18 07:33:31'),
(2, 'Kg', 'KG', 'well', 1, '2022-07-18 07:33:45', '2022-07-18 07:33:45'),
(3, 'Packet', 'PKT', 'well', 1, '2022-07-18 07:33:58', '2022-07-18 07:33:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@admin.com', NULL, '$2y$10$nusiOOe4W2D8/8n8Itw8Ye9aQn1yHk/D2LfBtUBjdLQVHc4DzIGmC', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27 08:49:04', '2022-06-27 08:49:04'),
(2, 'Habibur Rahman', 'habib@gmail.com', NULL, '$2y$10$d.Zu11cd31xQa2yxcUMHo.ln3299IGsFvEWFq7prgmeXHAeAOQkUa', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-29 07:30:46', '2022-06-29 07:30:46'),
(3, 'Moon Store', 'superadmin@gmail.com', NULL, '$2y$10$OvLVvDnyY3fJCOzpHHdmWO9fBRFfTwPvkGIKUpSZKB5fq27qtAlxe', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-17 11:02:42', '2022-10-17 11:02:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_mobile_unique` (`mobile`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_code_unique` (`code`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_categories_name_unique` (`name`);

--
-- Indexes for table `sub_images`
--
ALTER TABLE `sub_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `units_name_unique` (`name`),
  ADD UNIQUE KEY `units_code_unique` (`code`);

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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sub_images`
--
ALTER TABLE `sub_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
