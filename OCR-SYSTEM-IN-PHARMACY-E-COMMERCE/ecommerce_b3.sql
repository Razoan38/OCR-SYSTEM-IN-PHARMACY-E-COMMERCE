-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2022 at 04:59 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_b3`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sony', 'asdasd', 'brand-images/3.png', 1, '2022-07-04 08:11:17', '2022-07-04 08:11:17'),
(3, 'zara', NULL, 'brand-images/aHR0cHM6Ly93d3cuZGFpbHlqYW5ha2FudGhhLmNvbS9jbG91ZC11cGxvYWRzL2RlZmF1bHQvYXJ0aWNsZS1pbWFnZXMvMjAyMjAxLzE2NDIzMTY0MzRfMTMucG5n.jpg', 1, '2022-07-25 07:20:36', '2022-07-25 07:20:36'),
(4, 'Walton', NULL, 'brand-images/093656kalerkantho_pic.jpg', 1, '2022-07-25 07:36:50', '2022-07-25 07:36:50'),
(5, 'BASIS', NULL, 'brand-images/093656kalerkantho_pic.jpg', 1, '2022-07-25 07:37:06', '2022-07-25 07:37:06'),
(6, 'WeDev', NULL, 'brand-images/093656kalerkantho_pic.jpg', 1, '2022-07-25 07:37:23', '2022-07-25 07:37:23'),
(7, 'Nexdecade', NULL, 'brand-images/093656kalerkantho_pic.jpg', 1, '2022-07-25 07:37:36', '2022-07-25 07:37:36'),
(8, 'Samsung', NULL, 'brand-images/1_samung-s6-edge-sell-hobe.jpg', 1, '2022-07-25 07:46:25', '2022-07-25 07:46:25');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', 'well', 'category-images/3.png', 1, '2022-07-18 06:32:41', '2022-07-18 06:32:41'),
(2, 'Man Fashion', 'well', 'category-images/3.png', 1, '2022-07-18 06:32:53', '2022-07-18 06:32:53'),
(3, 'Woman Fashion', 'Woman Fashion', 'category-images/1.jpg', 1, '2022-07-23 08:38:51', '2022-07-23 08:38:51'),
(4, 'আনস্টিচড', NULL, 'category-images/2.jpg', 1, '2022-07-25 07:31:18', '2022-07-25 07:31:18'),
(5, 'রেডিমেড', NULL, 'category-images/2.jpg', 1, '2022-07-25 07:31:39', '2022-07-25 07:31:39'),
(6, 'অরিজিনাল কালেকশন', NULL, 'category-images/2.jpg', 1, '2022-07-25 07:31:57', '2022-07-25 07:31:57'),
(7, 'রেপ্লিকা', NULL, 'category-images/2.jpg', 1, '2022-07-25 07:32:13', '2022-07-25 07:32:13'),
(8, 'দেশী বুটিক', NULL, 'category-images/2.jpg', 1, '2022-07-25 07:32:29', '2022-07-25 07:32:29'),
(9, 'শিফন/জর্জে', NULL, 'category-images/2.jpg', 1, '2022-07-25 07:32:42', '2022-07-25 07:32:42'),
(10, 'Fridge', 'fridge somporke kichu likho', 'category-images/download (2).jpg', 1, '2022-07-25 07:50:10', '2022-07-25 07:50:10');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `mobile`, `address`, `image`, `date_of_birth`, `nid`, `created_at`, `updated_at`) VALUES
(1, 'User', 'admin@admin.com', '$2y$10$nVpmullMFJk4RYktcoMc5O/bLcc.qFjCBGzUQnQZ4sIaVrcz4bP9W', '0171545613', NULL, NULL, NULL, NULL, '2022-08-02 08:46:49', '2022-08-02 08:46:49'),
(4, 'sadas dasdas dasd', 'use2123123r@user.com', '$2y$10$XMo6Cd.NLWOzkJhT.6x1OuJrYl4pVwWpOxODop1jsc2rbNCig/YPC', '213123123123', NULL, NULL, NULL, NULL, '2022-08-02 08:56:33', '2022-08-02 08:56:33');

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
  `delivery_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `order_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_timestamp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `payment_method` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_timestamp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_status` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `delivery_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_timestamp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_total`, `tax_total`, `shipping_total`, `delivery_address`, `order_status`, `order_date`, `order_timestamp`, `payment_status`, `payment_method`, `payment_date`, `payment_timestamp`, `transaction_id`, `delivery_status`, `delivery_date`, `delivery_timestamp`, `created_at`, `updated_at`) VALUES
(1, 1, 1.00, 1, 1, '1', 'Pending', '1', '1', 'Pending', '1', NULL, NULL, NULL, 'Pending', NULL, NULL, '2022-08-02 08:46:49', '2022-08-02 08:46:49'),
(2, 4, 63251.00, 8185, 500, 'asdasdasd', 'Pending', '2022-08-02', '1659398400', 'Pending', '1', NULL, NULL, NULL, 'Pending', NULL, NULL, '2022-08-02 08:56:33', '2022-08-02 08:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_image`, `product_price`, `product_qty`, `created_at`, `updated_at`) VALUES
(1, 2, 8, 'Product Name 4', 'product-images/1 (1).jpg', 152, 1, '2022-08-02 08:56:33', '2022-08-02 08:56:33'),
(2, 2, 12, 'Product Name 8', 'product-images/1_samsung-a21s.jpg', 54414, 1, '2022-08-02 08:56:33', '2022-08-02 08:56:33');

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
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `stock_amount` int(11) NOT NULL DEFAULT 0,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
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
(7, 4, 6, 4, 1, 'Product Name 3', 'kjka5564', 458, 15125, 15, 'lorem .......', '<div class=\"product-detail-header\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left; background-color: rgb(233, 234, 235); color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana; font-size: 14px;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><h2 style=\"padding: 0px; margin: 4px 0px 2px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; color: inherit; font-size: 15px;\">প্রোডাক্টের বিবরণ :&nbsp;<span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">সেমি ন্যারো ফিট জিন্স প্যান্ট ফর মেন</span></h2></div><div class=\"header-code-text\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; text-align: right; font-family: SolaimanLipi, Helvetica, Verdana; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px;\">ডিল কোড:</span>&nbsp;<span id=\"DealCodeLabel\" style=\"padding: 0px; margin: 0px;\">১৩৮২৭৯৯</span></div></div><div class=\"product-details-text-wrapper\" style=\"padding: 0px; margin: 10px 0px 20px; width: 907.188px; float: left; color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana; font-size: 14px;\"><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">স্টাইল: সেমি ন্যারো</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">ম্যাটেরিয়াল: ১০০% ডেনিম কটন</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">সাইজ: 28 - 40 (এশিয়ান মেজারমেন্ট)</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">ফ্যাশনেবল ও আরামদায়ক</span></div></div><h3 style=\"padding: 0px; margin: 20px 0px 18.1406px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); font-size: 14px;\"><span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">সেমি ন্যারো ফিট জিন্স প্যান্ট ফর মেন</span>&nbsp;কিনুন বাংলাদেশের সেরা দামে</h3><div class=\"product-specification-container\" style=\"padding: 0px; margin: 0px 0px 18.1406px; color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana; font-size: 14px;\"><span class=\"product-specification-head\" style=\"padding: 0px; margin: 0px 0px 10px; width: 907.188px; float: left; background-color: rgb(233, 234, 235);\"><h2 style=\"padding: 0px; margin: 10px 0px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; color: inherit; font-size: 15px;\"><span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">সেমি ন্যারো ফিট জিন্স প্যান্ট ফর মেন</span>&nbsp;- Product Specification</h2></span><div class=\"product-detail-header-wrapper\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-weight: 700; color: rgb(0, 0, 0);\">ব্র্যান্ড :</span><span id=\"BrandNameInProuductDetails\" style=\"padding: 0px; margin: 0px;\"></span></div><div class=\"header-code-text\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; text-align: right; font-family: SolaimanLipi, Helvetica, Verdana; color: rgb(93, 90, 90);\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-size: 15px; font-weight: 700; color: rgb(0, 0, 0);\">ডিল কোড:&nbsp;</span><span id=\"DealCodeInProuductDetails\" style=\"padding: 0px; margin: 0px;\">১৩৮২৭৯৯</span></div></div><div class=\"product-detail-header-wrapper\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-weight: 700; color: rgb(0, 0, 0);\">বৈশিষ্ট্যসমূহ :</span><span class=\"feautures-wrapper\" style=\"padding: 0px; margin: 0px;\"><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 445.594px; float: left; font-size: 14px; line-height: 27px;\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">প্রযোজ্য নয়</span></div></span></div><div class=\"header-code-text\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; text-align: right; font-family: SolaimanLipi, Helvetica, Verdana; color: rgb(93, 90, 90);\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-size: 15px; font-weight: 700; color: rgb(0, 0, 0);\">মডেল :</span><span id=\"ModelNo\" style=\"padding: 0px; margin: 0px;\"><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 445.594px; float: left; line-height: 27px;\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">প্রযোজ্য নয়</span></div></span></div></div><div class=\"product-specification-text-wrapper\" style=\"padding: 0px; margin: 9.0625px 0px 0px;\"></div><div class=\"product-detail-header-wrapper\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-weight: 700; color: rgb(0, 0, 0);\">প্যাকেটে যা থাকছে :</span></div></div><div class=\"packets-includes-product-wrapper\" style=\"padding: 0px; margin: 0px;\"><span class=\"packets-includes-product-text\" style=\"padding: 0px; margin: 0px 0px 0px 10px;\">সেমি ন্যারো ফিট জিন্স প্যান্ট ফর মেন</span></div></div>', 'product-images/p2.jpg', 0, 1, '2022-07-25 07:39:13', '2022-07-25 07:39:13'),
(8, 6, 8, 7, 1, 'Product Name 4', 'jakj545', 2555, 152, 15, 'lorem.........', '<div class=\"product-detail-header\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left; background-color: rgb(233, 234, 235); color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana; font-size: 14px;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><h2 style=\"padding: 0px; margin: 4px 0px 2px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; color: inherit; font-size: 15px;\">প্রোডাক্টের বিবরণ :&nbsp;<span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">সেমি ন্যারো ফিট জিন্স প্যান্ট ফর মেন</span></h2></div><div class=\"header-code-text\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; text-align: right; font-family: SolaimanLipi, Helvetica, Verdana; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px;\">ডিল কোড:</span>&nbsp;<span id=\"DealCodeLabel\" style=\"padding: 0px; margin: 0px;\">১৩৮২৭৯৯</span></div></div><div class=\"product-details-text-wrapper\" style=\"padding: 0px; margin: 10px 0px 20px; width: 907.188px; float: left; color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana; font-size: 14px;\"><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">স্টাইল: সেমি ন্যারো</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">ম্যাটেরিয়াল: ১০০% ডেনিম কটন</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">সাইজ: 28 - 40 (এশিয়ান মেজারমেন্ট)</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">ফ্যাশনেবল ও আরামদায়ক</span></div></div><h3 style=\"padding: 0px; margin: 20px 0px 18.1406px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); font-size: 14px;\"><span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">সেমি ন্যারো ফিট জিন্স প্যান্ট ফর মেন</span>&nbsp;কিনুন বাংলাদেশের সেরা দামে</h3><div class=\"product-specification-container\" style=\"padding: 0px; margin: 0px 0px 18.1406px; color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana; font-size: 14px;\"><span class=\"product-specification-head\" style=\"padding: 0px; margin: 0px 0px 10px; width: 907.188px; float: left; background-color: rgb(233, 234, 235);\"><h2 style=\"padding: 0px; margin: 10px 0px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; color: inherit; font-size: 15px;\"><span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">সেমি ন্যারো ফিট জিন্স প্যান্ট ফর মেন</span>&nbsp;- Product Specification</h2></span><div class=\"product-detail-header-wrapper\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-weight: 700; color: rgb(0, 0, 0);\">ব্র্যান্ড :</span><span id=\"BrandNameInProuductDetails\" style=\"padding: 0px; margin: 0px;\"></span></div><div class=\"header-code-text\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; text-align: right; font-family: SolaimanLipi, Helvetica, Verdana; color: rgb(93, 90, 90);\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-size: 15px; font-weight: 700; color: rgb(0, 0, 0);\">ডিল কোড:&nbsp;</span><span id=\"DealCodeInProuductDetails\" style=\"padding: 0px; margin: 0px;\">১৩৮২৭৯৯</span></div></div><div class=\"product-detail-header-wrapper\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-weight: 700; color: rgb(0, 0, 0);\">বৈশিষ্ট্যসমূহ :</span><span class=\"feautures-wrapper\" style=\"padding: 0px; margin: 0px;\"><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 445.594px; float: left; font-size: 14px; line-height: 27px;\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">প্রযোজ্য নয়</span></div></span></div><div class=\"header-code-text\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; text-align: right; font-family: SolaimanLipi, Helvetica, Verdana; color: rgb(93, 90, 90);\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-size: 15px; font-weight: 700; color: rgb(0, 0, 0);\">মডেল :</span><span id=\"ModelNo\" style=\"padding: 0px; margin: 0px;\"><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 445.594px; float: left; line-height: 27px;\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">প্রযোজ্য নয়</span></div></span></div></div><div class=\"product-specification-text-wrapper\" style=\"padding: 0px; margin: 9.0625px 0px 0px;\"></div><div class=\"product-detail-header-wrapper\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-weight: 700; color: rgb(0, 0, 0);\">প্যাকেটে যা থাকছে :</span></div></div><div class=\"packets-includes-product-wrapper\" style=\"padding: 0px; margin: 0px;\"><span class=\"packets-includes-product-text\" style=\"padding: 0px; margin: 0px 0px 0px 10px;\">সেমি ন্যারো ফিট জিন্স প্যান্ট ফর মেন</span></div></div>', 'product-images/1 (1).jpg', 0, 1, '2022-07-25 07:40:52', '2022-07-25 07:40:52'),
(9, 7, 9, 6, 1, 'Product Name 5', 'ha45435', 24, 454545, 156120, 'ajjajlkajok joikjakjalklknlkanh', '<div class=\"product-detail-header\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left; background-color: rgb(233, 234, 235); color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana; font-size: 14px;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><h2 style=\"padding: 0px; margin: 4px 0px 2px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; color: inherit; font-size: 15px;\">প্রোডাক্টের বিবরণ :&nbsp;<span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">সেমি ন্যারো ফিট জিন্স প্যান্ট ফর মেন</span></h2></div><div class=\"header-code-text\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; text-align: right; font-family: SolaimanLipi, Helvetica, Verdana; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px;\">ডিল কোড:</span>&nbsp;<span id=\"DealCodeLabel\" style=\"padding: 0px; margin: 0px;\">১৩৮২৭৯৯</span></div></div><div class=\"product-details-text-wrapper\" style=\"padding: 0px; margin: 10px 0px 20px; width: 907.188px; float: left; color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana; font-size: 14px;\"><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">স্টাইল: সেমি ন্যারো</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">ম্যাটেরিয়াল: ১০০% ডেনিম কটন</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">সাইজ: 28 - 40 (এশিয়ান মেজারমেন্ট)</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">ফ্যাশনেবল ও আরামদায়ক</span></div></div><h3 style=\"padding: 0px; margin: 20px 0px 18.1406px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); font-size: 14px;\"><span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">সেমি ন্যারো ফিট জিন্স প্যান্ট ফর মেন</span>&nbsp;কিনুন বাংলাদেশের সেরা দামে</h3><div class=\"product-specification-container\" style=\"padding: 0px; margin: 0px 0px 18.1406px; color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana; font-size: 14px;\"><span class=\"product-specification-head\" style=\"padding: 0px; margin: 0px 0px 10px; width: 907.188px; float: left; background-color: rgb(233, 234, 235);\"><h2 style=\"padding: 0px; margin: 10px 0px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; color: inherit; font-size: 15px;\"><span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">সেমি ন্যারো ফিট জিন্স প্যান্ট ফর মেন</span>&nbsp;- Product Specification</h2></span><div class=\"product-detail-header-wrapper\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-weight: 700; color: rgb(0, 0, 0);\">ব্র্যান্ড :</span><span id=\"BrandNameInProuductDetails\" style=\"padding: 0px; margin: 0px;\"></span></div><div class=\"header-code-text\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; text-align: right; font-family: SolaimanLipi, Helvetica, Verdana; color: rgb(93, 90, 90);\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-size: 15px; font-weight: 700; color: rgb(0, 0, 0);\">ডিল কোড:&nbsp;</span><span id=\"DealCodeInProuductDetails\" style=\"padding: 0px; margin: 0px;\">১৩৮২৭৯৯</span></div></div><div class=\"product-detail-header-wrapper\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-weight: 700; color: rgb(0, 0, 0);\">বৈশিষ্ট্যসমূহ :</span><span class=\"feautures-wrapper\" style=\"padding: 0px; margin: 0px;\"><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 445.594px; float: left; font-size: 14px; line-height: 27px;\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">প্রযোজ্য নয়</span></div></span></div><div class=\"header-code-text\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; text-align: right; font-family: SolaimanLipi, Helvetica, Verdana; color: rgb(93, 90, 90);\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-size: 15px; font-weight: 700; color: rgb(0, 0, 0);\">মডেল :</span><span id=\"ModelNo\" style=\"padding: 0px; margin: 0px;\"><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 445.594px; float: left; line-height: 27px;\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">প্রযোজ্য নয়</span></div></span></div></div><div class=\"product-specification-text-wrapper\" style=\"padding: 0px; margin: 9.0625px 0px 0px;\"></div><div class=\"product-detail-header-wrapper\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-weight: 700; color: rgb(0, 0, 0);\">প্যাকেটে যা থাকছে :</span></div></div><div class=\"packets-includes-product-wrapper\" style=\"padding: 0px; margin: 0px;\"><span class=\"packets-includes-product-text\" style=\"padding: 0px; margin: 0px 0px 0px 10px;\">সেমি ন্যারো ফিট জিন্স প্যান্ট ফর মেন</span></div></div>', 'product-images/s1_new-good-looking-denim-jeans-pant-for-men.jpg', 0, 1, '2022-07-25 07:42:15', '2022-07-25 07:42:15'),
(10, 9, 11, 5, 1, 'Product Name 6', '544akjh', 485454, 45454, 15454, 'akljklamlkmlkj lkjkjkajk kj', '<div class=\"product-detail-header\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left; background-color: rgb(233, 234, 235);\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><h2 style=\"padding: 0px; margin: 4px 0px 2px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; color: inherit; font-size: 15px;\">প্রোডাক্টের বিবরণ :&nbsp;<span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">ডেনিম প্যান্ট ফর মেন</span></h2></div><div class=\"header-code-text\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; text-align: right; font-size: 14px; font-family: SolaimanLipi, Helvetica, Verdana; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px;\">ডিল কোড:</span>&nbsp;<span id=\"DealCodeLabel\" style=\"padding: 0px; margin: 0px;\">১৩৮৩০২৬</span></div></div><div class=\"product-details-text-wrapper\" style=\"padding: 0px; margin: 10px 0px 20px; width: 907.188px; float: left;\"><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; font-size: 14px; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">JEANS FOR MEN</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; font-size: 14px; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">STILIST AND MSAMT COLLECTION</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; font-size: 14px; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">MADE IN BANGLADESG</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; font-size: 14px; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">SIZE 28,29,30,31,32,33.34.35.36.37.38</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; font-size: 14px; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">MADE IN BANGLADESH</span></div></div><h3 style=\"padding: 0px; margin: 20px 0px 18.1406px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; color: inherit; font-size: 14px;\"><span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">ডেনিম প্যান্ট ফর মেন&nbsp;</span>কিনুন বাংলাদেশের সেরা দামে</h3><div class=\"product-specification-container\" style=\"padding: 0px; margin: 0px 0px 18.1406px;\"><span class=\"product-specification-head\" style=\"padding: 0px; margin: 0px 0px 10px; width: 907.188px; float: left; background-color: rgb(233, 234, 235); color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana; font-size: 14px;\"><h2 style=\"padding: 0px; margin: 10px 0px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; color: inherit; font-size: 15px;\"><span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">ডেনিম প্যান্ট ফর মেন&nbsp;</span>- Product Specification</h2></span><div class=\"product-detail-header-wrapper\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left; color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana; font-size: 14px;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-weight: 700; color: rgb(0, 0, 0);\">ব্র্যান্ড :</span><span id=\"BrandNameInProuductDetails\" style=\"padding: 0px; margin: 0px;\"></span></div><div class=\"header-code-text\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; text-align: right; font-family: SolaimanLipi, Helvetica, Verdana; color: rgb(93, 90, 90);\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-size: 15px; font-weight: 700; color: rgb(0, 0, 0);\">ডিল কোড:&nbsp;</span><span id=\"DealCodeInProuductDetails\" style=\"padding: 0px; margin: 0px;\">১৩৮৩০২৬</span></div></div><div class=\"product-detail-header-wrapper\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left; color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana; font-size: 14px;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-weight: 700; color: rgb(0, 0, 0);\">বৈশিষ্ট্যসমূহ :</span><span class=\"feautures-wrapper\" style=\"padding: 0px; margin: 0px;\"><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 445.594px; float: left; font-size: 14px; line-height: 27px;\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">প্রযোজ্য নয়</span></div></span></div><div class=\"header-code-text\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; text-align: right; font-family: SolaimanLipi, Helvetica, Verdana; color: rgb(93, 90, 90);\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-size: 15px; font-weight: 700; color: rgb(0, 0, 0);\">মডেল :</span><span id=\"ModelNo\" style=\"padding: 0px; margin: 0px;\"><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 445.594px; float: left; line-height: 27px;\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">প্রযোজ্য নয়</span></div></span></div></div><div class=\"product-specification-text-wrapper\" style=\"padding: 0px; margin: 9.0625px 0px 0px; color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana; font-size: 14px;\"></div><div class=\"product-detail-header-wrapper\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left; color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana; font-size: 14px;\"></div></div>', 'product-images/1_denim-pant-for-men.jpg', 0, 1, '2022-07-25 07:43:52', '2022-07-25 07:43:52');
INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `code`, `regular_price`, `selling_price`, `stock_amount`, `short_description`, `long_description`, `image`, `hit_count`, `status`, `created_at`, `updated_at`) VALUES
(11, 1, 1, 8, 1, 'Product Name 7', 'ka4748674', 5445, 4545, 145, 'lorem', '<p><span style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\">Here are some tips on how to stay safe while making transactions:</span><br style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\"><br style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\"><span style=\"font-weight: bolder; color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\">1)</span><span style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\">&nbsp; Do all kinds of transactions in your area. Meet the seller directly, verify the product thoroughly and then pay the price when fully satisfied.</span><br style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\"><span style=\"font-weight: bolder; color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\">2)</span><span style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\">&nbsp;Exchange both product and money at the same time.</span><br style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\"><span style=\"font-weight: bolder; color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\">3)</span><span style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\">&nbsp;&nbsp;</span><span style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px; text-decoration-line: underline;\">Instructions for buyers:</span><span style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\"></span><br style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\"><span style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\">A) Do not make any financial transaction before you have the product in your hand.If so, talk to the seller using your instincts and common sense.</span><br style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\"><span style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\">B)Refrain from disclosing your financial information.</span><br style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\"><span style=\"font-weight: bolder; color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\">4)</span><span style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\">&nbsp;&nbsp;</span><span style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px; text-decoration-line: underline;\">General Instructions for Seller:</span><span style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\"></span><br style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\"><span style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\">A) Do not send any product without receiving the money. Talk to the buyer using your instincts.</span><br style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\"><br style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\"><span style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\">* All types of transactions between buyer and seller will be done by buyer and seller in their respective responsibilities. Ajker Deal authorities are not obligated to take any responsibility of the transaction.</span><br></p>', 'product-images/1_samung-s6-edge-sell-hobe.jpg', 0, 1, '2022-07-25 07:47:19', '2022-07-25 07:47:19'),
(12, 1, 1, 8, 1, 'Product Name 8', 'ajkjj5', 545264, 54414, 65, 'lorem .........', '<p><span style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\">Here are some tips on how to stay safe while making transactions:</span><br style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\"><br style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\"><span style=\"font-weight: bolder; color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\">1)</span><span style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\">&nbsp; Do all kinds of transactions in your area. Meet the seller directly, verify the product thoroughly and then pay the price when fully satisfied.</span><br style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\"><span style=\"font-weight: bolder; color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\">2)</span><span style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\">&nbsp;Exchange both product and money at the same time.</span><br style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\"><span style=\"font-weight: bolder; color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\">3)</span><span style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\">&nbsp;&nbsp;</span><span style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px; text-decoration-line: underline;\">Instructions for buyers:</span><span style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\"></span><br style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\"><span style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\">A) Do not make any financial transaction before you have the product in your hand.If so, talk to the seller using your instincts and common sense.</span><br style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\"><span style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\">B)Refrain from disclosing your financial information.</span><br style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\"><span style=\"font-weight: bolder; color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\">4)</span><span style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\">&nbsp;&nbsp;</span><span style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px; text-decoration-line: underline;\">General Instructions for Seller:</span><span style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\"></span><br style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\"><span style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\">A) Do not send any product without receiving the money. Talk to the buyer using your instincts.</span><br style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\"><br style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\"><span style=\"color: rgb(33, 37, 41); font-family: SolaimanLipi, fontawesome; font-size: 16px;\">* All types of transactions between buyer and seller will be done by buyer and seller in their respective responsibilities. Ajker Deal authorities are not obligated to take any responsibility of the transaction.</span><br></p>', 'product-images/1_samsung-a21s.jpg', 0, 1, '2022-07-25 07:48:17', '2022-07-25 07:48:17'),
(13, 10, 12, 4, 1, 'Product Name 9', 'skajk5474', 504451, 48921461, 10, 'lorem', '<p><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">Number of Doors 1</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">Door Type Single</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">Defrosting Type Frost Free</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">Refrigeratror Features</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">Number of Shelves 2</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">Material Used for Shelves Toughened Glass</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">Colours Available Platinum Inox (SP)</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">Large Bottle Shelf with Spill Guard</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">Convenience Features</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">Door Lock</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">Deodourising</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">Dimensions</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">Dimensions (W x D x H) (mm) 675 x 715 x 1715 mm</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">Approximate Net Weight (Kgs) 59.5</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">More Features</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">Other Features Cool Pack</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">– Ice Max</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">– Easy Slide Out</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">– Moist Fresh Zone</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">– LED Light</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">– Multi Flow</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">– Chilled Room</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">– Medicine Box</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">– Glass Shelf</span><br></p>', 'product-images/images.jpg', 0, 1, '2022-07-25 07:52:48', '2022-07-25 07:52:48'),
(14, 10, 12, 4, 1, 'Product Name 51454', '5shakjn', 5014126, 455425, 18, 'lorem', '<p><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">Number of Doors 1</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">Door Type Single</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">Defrosting Type Frost Free</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">Refrigeratror Features</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">Number of Shelves 2</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">Material Used for Shelves Toughened Glass</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">Colours Available Platinum Inox (SP)</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">Large Bottle Shelf with Spill Guard</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">Convenience Features</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">Door Lock</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">Deodourising</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">Dimensions</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">Dimensions (W x D x H) (mm) 675 x 715 x 1715 mm</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">Approximate Net Weight (Kgs) 59.5</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">More Features</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">Other Features Cool Pack</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">– Ice Max</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">– Easy Slide Out</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">– Moist Fresh Zone</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">– LED Light</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">– Multi Flow</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">– Chilled Room</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">– Medicine Box</span><br style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\"><span style=\"color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif;\">– Glass Shelf</span><br></p>', 'product-images/images.jpg', 0, 1, '2022-07-25 07:54:03', '2022-07-25 07:54:03');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('pZKUJYSLHr2xmmhqgfPgX2Ih1jm0jZezroIDz87f', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiWW1iUzZxUXQxMk1EaGlzWjVOUTFSZ3Jyb1pORmw0TXVhMGFPNXg0YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly9sb2NhbGhvc3QvZWNvbW1lcmNlLWIzL3B1YmxpYy9jaGVja291dCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MjY6IjR5VGxUREt1M29KT2Z6RF9jYXJ0X2l0ZW1zIjtPOjMyOiJEYXJyeWxkZWNvZGVcQ2FydFxDYXJ0Q29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YToyOntpOjg7TzozMjoiRGFycnlsZGVjb2RlXENhcnRcSXRlbUNvbGxlY3Rpb24iOjM6e3M6ODoiACoAaXRlbXMiO2E6Njp7czoyOiJpZCI7aTo4O3M6NDoibmFtZSI7czoxNDoiUHJvZHVjdCBOYW1lIDQiO3M6NToicHJpY2UiO2k6MTUyO3M6ODoicXVhbnRpdHkiO3M6MToiMSI7czoxMDoiYXR0cmlidXRlcyI7Tzo0MToiRGFycnlsZGVjb2RlXENhcnRcSXRlbUF0dHJpYnV0ZUNvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6MTp7czo1OiJpbWFnZSI7czoyNDoicHJvZHVjdC1pbWFnZXMvMSAoMSkuanBnIjt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjEwOiJjb25kaXRpb25zIjthOjA6e319czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO3M6OToiACoAY29uZmlnIjthOjY6e3M6MTQ6ImZvcm1hdF9udW1iZXJzIjtiOjA7czo4OiJkZWNpbWFscyI7aTowO3M6OToiZGVjX3BvaW50IjtzOjE6Ii4iO3M6MTM6InRob3VzYW5kc19zZXAiO3M6MToiLCI7czo3OiJzdG9yYWdlIjtOO3M6NjoiZXZlbnRzIjtOO319aToxMjtPOjMyOiJEYXJyeWxkZWNvZGVcQ2FydFxJdGVtQ29sbGVjdGlvbiI6Mzp7czo4OiIAKgBpdGVtcyI7YTo2OntzOjI6ImlkIjtpOjEyO3M6NDoibmFtZSI7czoxNDoiUHJvZHVjdCBOYW1lIDgiO3M6NToicHJpY2UiO2k6NTQ0MTQ7czo4OiJxdWFudGl0eSI7czoxOiIxIjtzOjEwOiJhdHRyaWJ1dGVzIjtPOjQxOiJEYXJyeWxkZWNvZGVcQ2FydFxJdGVtQXR0cmlidXRlQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YToxOntzOjU6ImltYWdlIjtzOjMzOiJwcm9kdWN0LWltYWdlcy8xX3NhbXN1bmctYTIxcy5qcGciO31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6MTA6ImNvbmRpdGlvbnMiO2E6MDp7fX1zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7czo5OiIAKgBjb25maWciO2E6Njp7czoxNDoiZm9ybWF0X251bWJlcnMiO2I6MDtzOjg6ImRlY2ltYWxzIjtpOjA7czo5OiJkZWNfcG9pbnQiO3M6MToiLiI7czoxMzoidGhvdXNhbmRzX3NlcCI7czoxOiIsIjtzOjc6InN0b3JhZ2UiO047czo2OiJldmVudHMiO047fX19czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjExOiJvcmRlcl90b3RhbCI7ZDo2MzI1MTtzOjk6InRheF90b3RhbCI7ZDo4MTg1O3M6MTQ6InNoaXBwaW5nX3RvdGFsIjtpOjUwMDt9', 1659452193);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(12, 10, 'Fridge', 'lorem', 'sub-category-images/download (2).jpg', 1, '2022-07-25 07:50:44', '2022-07-25 07:50:44');

-- --------------------------------------------------------

--
-- Table structure for table `sub_images`
--

CREATE TABLE `sub_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
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
(33, 7, 'product-sub-images/p2.jpg', '2022-07-25 07:39:13', '2022-07-25 07:39:13'),
(34, 7, 'product-sub-images/p1.jpg', '2022-07-25 07:39:13', '2022-07-25 07:39:13'),
(35, 8, 'product-sub-images/1 (1).jpg', '2022-07-25 07:40:52', '2022-07-25 07:40:52'),
(36, 8, 'product-sub-images/p2.jpg', '2022-07-25 07:40:52', '2022-07-25 07:40:52'),
(37, 8, 'product-sub-images/p1.jpg', '2022-07-25 07:40:52', '2022-07-25 07:40:52'),
(38, 9, 'product-sub-images/s1_new-good-looking-denim-jeans-pant-for-men.jpg', '2022-07-25 07:42:15', '2022-07-25 07:42:15'),
(39, 9, 'product-sub-images/1 (1).jpg', '2022-07-25 07:42:15', '2022-07-25 07:42:15'),
(40, 9, 'product-sub-images/p2.jpg', '2022-07-25 07:42:15', '2022-07-25 07:42:15'),
(41, 9, 'product-sub-images/p1.jpg', '2022-07-25 07:42:15', '2022-07-25 07:42:15'),
(42, 10, 'product-sub-images/1_denim-pant-for-men.jpg', '2022-07-25 07:43:52', '2022-07-25 07:43:52'),
(43, 10, 'product-sub-images/s1_new-good-looking-denim-jeans-pant-for-men.jpg', '2022-07-25 07:43:52', '2022-07-25 07:43:52'),
(44, 10, 'product-sub-images/1 (1).jpg', '2022-07-25 07:43:52', '2022-07-25 07:43:52'),
(45, 11, 'product-sub-images/1_samung-s6-edge-sell-hobe.jpg', '2022-07-25 07:47:19', '2022-07-25 07:47:19'),
(46, 11, 'product-sub-images/1_samsung-a21s.jpg', '2022-07-25 07:47:19', '2022-07-25 07:47:19'),
(47, 12, 'product-sub-images/1_samung-s6-edge-sell-hobe.jpg', '2022-07-25 07:48:18', '2022-07-25 07:48:18'),
(48, 12, 'product-sub-images/1_samsung-a21s.jpg', '2022-07-25 07:48:18', '2022-07-25 07:48:18'),
(49, 14, 'product-sub-images/images.jpg', '2022-07-25 07:54:03', '2022-07-25 07:54:03'),
(50, 14, 'product-sub-images/download (1).jpg', '2022-07-25 07:54:03', '2022-07-25 07:54:03');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@admin.com', NULL, '$2y$10$nusiOOe4W2D8/8n8Itw8Ye9aQn1yHk/D2LfBtUBjdLQVHc4DzIGmC', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27 08:49:04', '2022-06-27 08:49:04'),
(2, 'Habibur Rahman', 'habib@gmail.com', NULL, '$2y$10$d.Zu11cd31xQa2yxcUMHo.ln3299IGsFvEWFq7prgmeXHAeAOQkUa', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-29 07:30:46', '2022-06-29 07:30:46');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sub_images`
--
ALTER TABLE `sub_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
