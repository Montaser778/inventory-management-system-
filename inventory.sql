-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2022 at 05:58 PM
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
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(5, 'Cement', 1, 2, NULL, '2022-04-17 15:50:21', NULL),
(6, 'LED TV', 1, 2, NULL, '2022-04-17 15:50:28', NULL),
(7, 'Smart Phone', 1, 2, NULL, '2022-04-17 15:50:34', NULL),
(8, 'Steel', 1, 2, NULL, '2022-04-17 15:50:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `customer_image`, `mobile_no`, `email`, `address`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Hasan2', 'upload/customer/1730296226351952.jpg', '01711444555', 'hasan1@gmail.com', 'India11', 1, 2, 2, '2022-04-16 13:34:20', '2022-04-16 13:57:51'),
(2, 'Moni', 'upload/customer/1730294797907431.png', '0175555555', 'moni@gmail.com', 'USA', 1, 2, NULL, '2022-04-16 13:35:08', NULL),
(4, 'Ariyan', 'upload/customer/1730393878547859.jpg', '0175566999', 'airyan@gmail.com', 'Uttara Usa', 1, 2, NULL, '2022-04-17 15:49:59', NULL),
(5, 'Joni', NULL, '01755666666', 'jhoni@gmail.com', NULL, 1, NULL, NULL, '2022-04-24 15:01:23', '2022-04-24 15:01:23');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE IF NOT EXISTS `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=Pending, 1=Approved',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_no`, `date`, `description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, '2', '2022-04-24', '3 mobile', 1, 2, 2, '2022-04-24 15:04:59', '2022-04-25 15:04:26'),
(3, '3', '2022-04-24', 'evertyting is done', 0, 2, NULL, '2022-04-24 16:39:50', '2022-04-24 16:39:50'),
(4, '4', '2022-04-24', 'dsfsadf', 1, 2, 2, '2022-04-24 16:41:04', '2022-04-25 15:05:49'),
(5, '5', '2022-04-28', 'asdfsdafdf', 1, 2, 2, '2022-04-28 00:30:02', '2022-04-28 00:30:26');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE IF NOT EXISTS `invoice_details` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `selling_qty` double DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  `selling_price` double DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `date`, `invoice_id`, `category_id`, `product_id`, `selling_qty`, `unit_price`, `selling_price`, `status`, `created_at`, `updated_at`) VALUES
(3, '2022-04-24', 2, 7, 8, 1, 1000, 1000, 1, '2022-04-24 15:04:59', '2022-04-24 15:04:59'),
(4, '2022-04-24', 2, 7, 9, 2, 2000, 4000, 1, '2022-04-24 15:04:59', '2022-04-24 15:04:59'),
(5, '2022-04-24', 2, 7, 10, 3, 3000, 9000, 1, '2022-04-24 15:04:59', '2022-04-24 15:04:59'),
(6, '2022-04-24', 3, 8, 3, 2, 500, 1000, 1, '2022-04-24 16:39:50', '2022-04-24 16:39:50'),
(7, '2022-04-24', 4, 8, 4, 5, 100, 500, 1, '2022-04-24 16:41:04', '2022-04-24 16:41:04'),
(8, '2022-04-28', 5, 5, 16, 5, 200, 1000, 1, '2022-04-28 00:30:02', '2022-04-28 00:30:26');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_16_094302_create_suppliers_table', 2),
(6, '2022_04_16_181230_create_customers_table', 3),
(7, '2022_04_16_202829_create_units_table', 4),
(8, '2022_04_17_055455_create_categories_table', 5),
(9, '2022_04_17_194251_create_products_table', 6),
(10, '2022_04_18_184636_create_purchases_table', 7),
(11, '2022_04_23_204340_create_invoices_table', 8),
(12, '2022_04_23_204653_create_invoice_details_table', 8),
(13, '2022_04_23_204725_create_payments_table', 8),
(14, '2022_04_23_204757_create_payment_details_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `paid_status` varchar(51) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `due_amount` double DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `invoice_id`, `customer_id`, `paid_status`, `paid_amount`, `due_amount`, `total_amount`, `discount_amount`, `created_at`, `updated_at`) VALUES
(2, 2, 1, 'partial_paid', 10000, 3000, 13000, 1000, '2022-04-24 15:04:59', '2022-05-01 08:26:07'),
(3, 3, 1, 'full_paid', 900, 0, 900, 100, '2022-04-24 16:39:50', '2022-04-24 16:39:50'),
(4, 4, 4, 'partial_paid', 200, 200, 400, 100, '2022-04-24 16:41:04', '2022-04-30 03:39:19'),
(5, 5, 5, 'full_paid', 900, 0, 900, 100, '2022-04-28 00:30:02', '2022-04-28 00:30:02');

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE IF NOT EXISTS `payment_details` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) DEFAULT NULL,
  `current_paid_amount` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`id`, `invoice_id`, `current_paid_amount`, `date`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 2, 5000, '2022-04-24', NULL, '2022-04-24 15:04:59', '2022-04-24 15:04:59'),
(3, 3, 900, '2022-04-24', NULL, '2022-04-24 16:39:50', '2022-04-24 16:39:50'),
(4, 4, 100, '2022-04-24', NULL, '2022-04-24 16:41:04', '2022-04-24 16:41:04'),
(5, 5, 900, '2022-04-28', NULL, '2022-04-28 00:30:02', '2022-04-28 00:30:02'),
(6, 4, 100, '2022-04-29', 2, '2022-04-30 03:39:19', '2022-04-30 03:39:19'),
(7, 2, 4000, '2022-04-29', 2, '2022-04-30 03:40:57', '2022-04-30 03:40:57'),
(8, 2, 1000, '2022-05-01', 2, '2022-05-01 08:26:07', '2022-05-01 08:26:07');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` double NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `supplier_id`, `unit_id`, `category_id`, `name`, `quantity`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(3, 4, 1, 8, 'Bosundora Steel', 0, 1, 2, NULL, '2022-04-17 15:51:11', NULL),
(4, 5, 1, 8, 'KSRM Steel', 2, 1, 2, NULL, '2022-04-17 15:51:25', '2022-04-25 15:05:49'),
(5, 4, 2, 5, 'Bosundora Cement', 9, 1, 2, NULL, '2022-04-17 15:51:45', '2022-04-23 00:12:45'),
(6, 7, 2, 5, 'Shah Cement', 4, 1, 2, NULL, '2022-04-17 15:52:25', '2022-04-23 00:12:38'),
(7, 8, 2, 5, 'Madina Cement', 5, 1, 2, NULL, '2022-04-17 15:52:43', '2022-04-23 00:12:51'),
(8, 6, 1, 7, 'Walton Mobile w52', 4, 1, 2, NULL, '2022-04-17 15:53:00', '2022-04-25 15:04:26'),
(9, 6, 1, 7, 'Walton Mobile w55', 1, 1, 2, NULL, '2022-04-17 15:53:19', '2022-04-25 15:04:26'),
(10, 6, 1, 7, 'Walton Mobile w60', 7, 1, 2, NULL, '2022-04-23 11:32:22', '2022-04-25 15:04:26'),
(11, 7, 2, 5, 'Crown Cement', 0, 1, 2, NULL, '2022-04-23 11:33:08', NULL),
(12, 5, 2, 8, 'KSRM Top Steel', 0, 1, 2, NULL, '2022-04-23 11:33:40', NULL),
(13, 9, 1, 7, 'REDMI Note 10S', 0, 1, 2, NULL, '2022-04-23 11:36:46', NULL),
(14, 9, 1, 7, 'REDMI Note 20S', 0, 1, 2, NULL, '2022-04-23 11:37:15', NULL),
(15, 9, 1, 7, 'REDMI Note 30S', 0, 1, 2, NULL, '2022-04-23 11:37:28', NULL),
(16, 7, 2, 5, 'Test Product', 15, 1, 2, NULL, '2022-04-28 00:26:58', '2022-04-28 00:30:26');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE IF NOT EXISTS `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `purchase_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buying_qty` double NOT NULL,
  `unit_price` double NOT NULL,
  `buying_price` double NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=Pending, 1=Approved',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `supplier_id`, `category_id`, `product_id`, `purchase_no`, `date`, `description`, `buying_qty`, `unit_price`, `buying_price`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 4, 5, 5, 'ea-256', '2022-04-13', 'Nice Product', 2, 200, 400, 1, 2, NULL, '2022-04-19 03:49:48', '2022-04-23 00:12:45'),
(2, 5, 8, 4, 'ea-256', '2022-04-13', 'Uniq Product', 5, 300, 1500, 1, 2, NULL, '2022-04-19 03:49:48', '2022-04-19 04:44:20'),
(5, 5, 8, 3, 'ea 4444', '2022-04-07', 'this is nice mobile', 4, 200, 800, 0, 2, NULL, '2022-04-19 04:46:21', '2022-04-19 04:46:21'),
(6, 4, 5, 5, 'ea 4444', '2022-04-07', 'New Product', 4, 300, 1200, 1, 2, NULL, '2022-04-19 04:46:21', '2022-04-23 00:12:28'),
(7, 6, 7, 8, 'ea-2656', '2022-04-22', NULL, 5, 2300, 11500, 1, 2, NULL, '2022-04-23 00:09:39', '2022-04-23 00:12:22'),
(8, 6, 7, 9, 'ea-2656', '2022-04-22', NULL, 3, 2000, 6000, 1, 2, NULL, '2022-04-23 00:09:39', '2022-04-23 00:12:16'),
(9, 7, 5, 5, 'ea-2356', '2022-04-19', 'Nice Cement', 3, 2000, 6000, 1, 2, NULL, '2022-04-23 00:10:49', '2022-04-23 00:12:33'),
(10, 7, 5, 6, 'ea-2356', '2022-04-19', 'Nice Cement', 4, 3000, 12000, 1, 2, NULL, '2022-04-23 00:10:49', '2022-04-23 00:12:38'),
(11, 7, 5, 7, 'ea-2356', '2022-04-19', 'Nice Cement', 5, 4000, 20000, 1, 2, NULL, '2022-04-23 00:10:49', '2022-04-23 00:12:51'),
(12, 5, 8, 3, 'ea-6523', '2022-04-20', 'Nice Steel', 3, 3000, 9000, 0, 2, NULL, '2022-04-23 00:12:05', '2022-04-23 00:12:05'),
(13, 5, 8, 4, 'ea-6523', '2022-04-20', 'Nice Steel', 2, 2000, 4000, 1, 2, NULL, '2022-04-23 00:12:05', '2022-04-23 14:16:11'),
(14, 6, 7, 8, 'ea-2655', '2022-04-17', 'nice mobile', 3, 230, 690, 0, 2, NULL, '2022-04-23 00:14:11', '2022-04-23 00:14:11'),
(15, 6, 7, 8, 'ea-2655', '2022-04-17', 'nice mobile', 2, 330, 660, 0, 2, NULL, '2022-04-23 00:14:11', '2022-04-23 00:14:11'),
(16, 6, 7, 10, 'ea4344', '2022-04-18', 'New Mobile', 10, 500, 5000, 1, 2, NULL, '2022-04-25 15:02:53', '2022-04-25 15:03:34'),
(17, 7, 5, 16, 'ea 2323', '2022-04-27', 'Test Prr', 20, 200, 4000, 1, 2, NULL, '2022-04-28 00:27:55', '2022-04-28 00:28:14');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE IF NOT EXISTS `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `mobile_no`, `email`, `address`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(4, 'Bosundora', '017115566699', 'bosundora@gmail.com', 'Puran Platon', 1, 2, NULL, '2022-04-17 15:45:59', NULL),
(5, 'KSRM', '01775556669', 'ksrm@gmail.com', 'New Bazar Dhaka', 1, 2, NULL, '2022-04-17 15:46:32', NULL),
(6, 'Walton', '017558899', 'walton@gmail.com', 'Gulshan link Road', 1, 2, NULL, '2022-04-17 15:47:27', NULL),
(7, 'Shah', '018656598', 'shah@gmail.com', 'South Goran Khilgha', 1, 2, NULL, '2022-04-17 15:48:09', NULL),
(8, 'Madina', '019686852', 'madian@gmail.com', 'Section 1 uttara housing', 1, 2, NULL, '2022-04-17 15:48:56', NULL),
(9, 'REDMI', '0175689555', 'redmi@gmail.com', 'Nobab Hat Dhaka', 1, 2, NULL, '2022-04-23 11:36:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE IF NOT EXISTS `units` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'PCG', 1, 2, NULL, '2022-04-16 14:41:11', NULL),
(2, 'KG', 1, 2, NULL, '2022-04-16 14:42:02', NULL),
(3, 'GM', 1, 2, 2, '2022-04-16 14:42:11', '2022-04-16 14:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `username`, `profile_image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'User', 'user@gmail.com', '2022-03-09 17:16:01', '$2y$10$rGET1JC4RHIml.EboWuABOxzgNGUB9EQZLTQsjOf2NkkKiOKlCEOi', 'user', '202203112055download.jpg', 'AEe7IjaEFf1qlITAqy3Ehgh0KQKtWPb7AFtyXynJ7IECGEaNKLlcXczBWYsS', '2022-03-09 16:27:03', '2022-03-11 15:08:45'),
(2, 'Kazi', 'kazi@gmail.com', '2022-03-09 17:14:32', '$2y$10$cdhHGJTOuPvl5jIlTKInWuk57U0fOnWuTpX8S4IU47H1jOYiMTa4C', 'kazi', '202203112033ariyan.jpg', NULL, '2022-03-09 17:12:44', '2022-03-11 15:57:21'),
(4, 'Demo', 'demo@gmail.com', '2022-03-09 17:54:03', '$2y$10$Ne1R842eJJw7VpVZ.jv31ulN12pHgAVKvx9JiB1nNfABYU/EwbvVy', 'demo', NULL, NULL, '2022-03-09 17:53:48', '2022-03-09 17:54:03'),
(5, 'TEST', 'test@gmail.com', '2022-03-10 14:14:10', '$2y$10$6pvyEf0zI1lnLrZLA8f2sO36IaTsRJizUrpT9Tp1IrZKRlZlCAYEO', 'test', NULL, NULL, '2022-03-10 13:52:07', '2022-03-10 14:14:10');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
