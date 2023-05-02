-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 02, 2023 at 05:01 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fashion`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_book`
--

DROP TABLE IF EXISTS `address_book`;
CREATE TABLE IF NOT EXISTS `address_book` (
  `address_book_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `entry_gender` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `entry_company` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_firstname` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `entry_lastname` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `entry_street_address` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `entry_suburb` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_postcode` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `entry_city` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `entry_state` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_country_id` int(11) NOT NULL DEFAULT 0,
  `entry_zone_id` int(11) NOT NULL DEFAULT 0,
  `entry_latitude` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_longitude` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_phone` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`address_book_id`),
  KEY `idx_address_book_customers_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `address_book`
--

INSERT INTO `address_book` (`address_book_id`, `user_id`, `entry_gender`, `customers_id`, `entry_company`, `entry_firstname`, `entry_lastname`, `entry_street_address`, `entry_suburb`, `entry_postcode`, `entry_city`, `entry_state`, `entry_country_id`, `entry_zone_id`, `entry_latitude`, `entry_longitude`, `entry_phone`) VALUES
(1, 7, NULL, 7, NULL, 'bhogilal', 'Doe', 'chaluji pandeyji', NULL, '000000', 'navri', NULL, 99, -1, NULL, NULL, ''),
(2, 9, NULL, 9, NULL, 'bhavin', 'vealni', '12. home', NULL, '360004', 'rajkot', NULL, 99, -1, NULL, NULL, ''),
(3, 9, '', 9, '', 'Mitali', 'Mehtaq', 'Swastic Society', '', '36000', 'rajkot', '', 99, 193, NULL, NULL, '1415253698'),
(4, 11, '', 11, '', 'Vishal', 'Patel', '55 Om Villa', '', '390025', 'Vadodara', '', 99, 193, NULL, NULL, '9904067823');

-- --------------------------------------------------------

--
-- Table structure for table `alert_settings`
--

DROP TABLE IF EXISTS `alert_settings`;
CREATE TABLE IF NOT EXISTS `alert_settings` (
  `alert_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_customer_email` tinyint(1) NOT NULL DEFAULT 0,
  `create_customer_notification` tinyint(1) NOT NULL DEFAULT 0,
  `order_status_email` tinyint(1) NOT NULL DEFAULT 0,
  `order_status_notification` tinyint(1) NOT NULL DEFAULT 0,
  `new_product_email` tinyint(1) NOT NULL DEFAULT 0,
  `new_product_notification` tinyint(1) NOT NULL DEFAULT 0,
  `forgot_email` tinyint(1) NOT NULL DEFAULT 0,
  `forgot_notification` tinyint(1) NOT NULL DEFAULT 0,
  `news_email` tinyint(1) NOT NULL DEFAULT 0,
  `news_notification` tinyint(1) NOT NULL DEFAULT 0,
  `contact_us_email` tinyint(1) NOT NULL DEFAULT 0,
  `contact_us_notification` tinyint(1) NOT NULL DEFAULT 0,
  `order_email` tinyint(1) NOT NULL DEFAULT 0,
  `order_notification` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`alert_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `alert_settings`
--

INSERT INTO `alert_settings` (`alert_id`, `create_customer_email`, `create_customer_notification`, `order_status_email`, `order_status_notification`, `new_product_email`, `new_product_notification`, `forgot_email`, `forgot_notification`, `news_email`, `news_notification`, `contact_us_email`, `contact_us_notification`, `order_email`, `order_notification`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `api_calls_list`
--

DROP TABLE IF EXISTS `api_calls_list`;
CREATE TABLE IF NOT EXISTS `api_calls_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nonce` text COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `device_id` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
CREATE TABLE IF NOT EXISTS `banners` (
  `banners_id` int(11) NOT NULL AUTO_INCREMENT,
  `banners_title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `banners_url` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `banners_image` text COLLATE utf8_unicode_ci NOT NULL,
  `banners_group` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `banners_html_text` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `expires_impressions` int(11) DEFAULT 0,
  `expires_date` datetime DEFAULT NULL,
  `date_scheduled` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `type` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `banners_slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `languages_id` int(11) NOT NULL,
  PRIMARY KEY (`banners_id`),
  KEY `idx_banners_group` (`banners_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners_history`
--

DROP TABLE IF EXISTS `banners_history`;
CREATE TABLE IF NOT EXISTS `banners_history` (
  `banners_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `banners_id` int(11) NOT NULL,
  `banners_shown` int(11) NOT NULL DEFAULT 0,
  `banners_clicked` int(11) NOT NULL DEFAULT 0,
  `banners_history_date` datetime NOT NULL,
  PRIMARY KEY (`banners_history_id`),
  KEY `idx_banners_history_banners_id` (`banners_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `block_ips`
--

DROP TABLE IF EXISTS `block_ips`;
CREATE TABLE IF NOT EXISTS `block_ips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `categories_id` int(11) NOT NULL AUTO_INCREMENT,
  `categories_image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `categories_icon` text COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `sort_order` int(11) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `categories_slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `categories_status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`categories_id`),
  KEY `idx_categories_parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_image`, `categories_icon`, `parent_id`, `sort_order`, `date_added`, `last_modified`, `categories_slug`, `categories_status`, `created_at`, `updated_at`) VALUES
(1, '258', '257', 0, NULL, NULL, NULL, 'men-s', 1, '2019-09-19 02:38:12', '2019-10-01 05:27:00'),
(2, '260', '259', 0, NULL, NULL, NULL, 'women-s', 1, '2019-09-19 02:40:26', '2019-10-01 05:27:26'),
(3, '262', '261', 0, NULL, NULL, NULL, 'kid-s', 1, '2019-09-19 02:40:47', '2019-10-01 05:28:48'),
(4, '263', '264', 3, NULL, NULL, NULL, 'boy-s-clothing', 1, '2019-09-19 02:42:48', '2019-10-01 05:29:13'),
(5, '266', '265', 3, NULL, NULL, NULL, 'girl-s-clothing', 1, '2019-09-19 02:43:12', '2019-10-01 05:29:46'),
(6, '268', '267', 3, NULL, NULL, NULL, 'kid-s-shoes', 1, '2019-09-19 02:43:52', '2019-10-01 05:30:09'),
(7, '270', '269', 1, NULL, NULL, NULL, 'men-s-accessories', 1, '2019-09-19 02:48:22', '2019-10-01 05:30:34'),
(8, '272', '271', 1, NULL, NULL, NULL, 'men-s-jeans', 1, '2019-09-19 02:49:14', '2019-10-01 05:30:46'),
(9, '274', '273', 1, NULL, NULL, NULL, 'men-s-shirts', 1, '2019-09-19 02:50:19', '2019-10-01 05:31:17'),
(10, '276', '275', 1, NULL, NULL, NULL, 'men-s-shoes', 1, '2019-09-19 02:50:38', '2019-10-01 05:31:27'),
(11, '278', '277', 2, NULL, NULL, NULL, 'women-s-accessories', 1, '2019-09-19 03:00:13', '2019-10-01 05:31:57'),
(12, '279', '280', 2, NULL, NULL, NULL, 'women-s-bottoms', 1, '2019-09-19 03:00:45', '2019-10-01 05:32:10'),
(13, '282', '281', 2, NULL, NULL, NULL, 'women-s-tops', 1, '2019-09-19 03:01:30', '2019-10-01 05:32:39'),
(14, '284', '283', 2, NULL, NULL, NULL, 'women-s-winter-wear', 1, '2019-09-19 03:01:54', '2019-10-01 05:32:50'),
(15, '286', '285', 2, NULL, NULL, NULL, 'women-s-shoes', 1, '2019-09-19 03:02:17', '2019-10-01 05:33:12'),
(16, '426', '425', 0, NULL, NULL, NULL, 'house-hold', 1, '2019-09-25 05:59:59', '2019-10-01 05:33:24'),
(17, '6', '7', 16, NULL, NULL, NULL, 'house-hold-1', 1, '2020-03-20 06:07:49', NULL),
(18, '6', '7', 17, NULL, NULL, NULL, 'house-hold-1-1', 1, '2020-03-20 06:08:35', NULL),
(19, '6', '7', 18, NULL, NULL, NULL, 'house-hold-1-1-1', 1, '2020-03-20 06:09:19', NULL),
(23, '545', '545', 0, NULL, NULL, NULL, 'truffle-cake', 1, '2021-06-22 05:31:22', NULL),
(24, '550', '547', 0, NULL, NULL, NULL, 'cosmetic', 1, '2021-08-26 00:20:36', '2021-08-27 20:58:13');

-- --------------------------------------------------------

--
-- Table structure for table `categories_description`
--

DROP TABLE IF EXISTS `categories_description`;
CREATE TABLE IF NOT EXISTS `categories_description` (
  `categories_description_id` int(11) NOT NULL AUTO_INCREMENT,
  `categories_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `categories_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`categories_description_id`),
  KEY `idx_categories_name` (`categories_name`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories_description`
--

INSERT INTO `categories_description` (`categories_description_id`, `categories_id`, `language_id`, `categories_name`) VALUES
(1, 1, 1, 'Mens'),
(2, 2, 1, 'Womens'),
(3, 3, 1, 'Kids'),
(4, 4, 1, 'Boys Clothing'),
(5, 5, 1, 'Girls Clothing'),
(6, 6, 1, 'Kids Shoes'),
(7, 7, 1, 'Mens Accessories'),
(8, 8, 1, 'Mens Jeans'),
(9, 9, 1, 'Mens Shirts'),
(10, 10, 1, 'Mens Shoes'),
(11, 11, 1, 'Womens Accessories'),
(12, 12, 1, 'Womens Bottoms'),
(13, 13, 1, 'Womens Tops'),
(14, 14, 1, 'Womens Winter Wear'),
(15, 15, 1, 'Womens Shoes'),
(16, 16, 1, 'House Hold'),
(17, 1, 4, 'ملك الرجال'),
(18, 2, 4, 'للنساء'),
(19, 3, 4, 'أطفال'),
(20, 4, 4, 'ملابس الصبي'),
(21, 5, 4, 'ملابس الفتاة'),
(22, 6, 4, 'أحذية الأطفال'),
(23, 7, 4, 'اكسسوارات رجالية'),
(24, 8, 4, 'جينز للرجال'),
(25, 9, 4, 'قمصان رجالية'),
(26, 10, 4, 'احذية رجالية'),
(27, 11, 4, 'اكسسوارات نسائية'),
(28, 12, 4, 'قيعان النساء'),
(29, 13, 4, 'قمم المرأة'),
(30, 14, 4, 'ملابس الشتاء للمرأة'),
(31, 15, 4, 'أحذية المرأة'),
(32, 16, 4, 'منزل عقد'),
(33, 17, 1, 'House Hold 1'),
(34, 17, 4, 'House Hold 1'),
(35, 18, 1, 'House Hold 1.1'),
(36, 18, 4, 'House Hold 1.1'),
(37, 19, 1, 'House Hold 1.1.1'),
(38, 19, 4, 'House Hold 1.1.1'),
(42, 23, 1, 'Truffle  Cake'),
(43, 24, 1, 'Cosmetic');

-- --------------------------------------------------------

--
-- Table structure for table `categories_role`
--

DROP TABLE IF EXISTS `categories_role`;
CREATE TABLE IF NOT EXISTS `categories_role` (
  `categories_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `categories_ids` text COLLATE utf8_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  PRIMARY KEY (`categories_role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `compare`
--

DROP TABLE IF EXISTS `compare`;
CREATE TABLE IF NOT EXISTS `compare` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_ids` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `constant_banners`
--

DROP TABLE IF EXISTS `constant_banners`;
CREATE TABLE IF NOT EXISTS `constant_banners` (
  `banners_id` int(11) NOT NULL AUTO_INCREMENT,
  `banners_title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `banners_url` text COLLATE utf8_unicode_ci NOT NULL,
  `banners_image` text COLLATE utf8_unicode_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `languages_id` int(11) NOT NULL,
  `type` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`banners_id`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `constant_banners`
--

INSERT INTO `constant_banners` (`banners_id`, `banners_title`, `banners_url`, `banners_image`, `date_added`, `status`, `languages_id`, `type`) VALUES
(1, '1', '/shop', '14', '2020-04-01 15:01:56', 1, 1, '1'),
(2, '2', '/shop', '15', '2020-04-01 15:03:34', 1, 1, '2'),
(3, 'banner1', '/shop', '444', '2019-09-08 18:43:34', 1, 1, '3'),
(4, 'banner1', '/shop', '445', '2019-09-08 18:43:42', 1, 1, '4'),
(5, 'banner1', '/shop', '446', '2019-09-08 18:44:15', 1, 1, '5'),
(6, 'banner2_3_4', '/shop', '28', '2019-09-10 08:50:55', 1, 1, '6'),
(7, 'banner2_3_4', '/shop', '29', '2019-09-10 08:54:18', 1, 1, '7'),
(8, 'banner2_3_4', '/shop', '30', '2019-09-10 08:54:28', 1, 1, '8'),
(9, 'banner2_3_4', '/shop', '31', '2019-09-10 08:54:38', 1, 1, '9'),
(10, 'banner5_6', '/shop', '32', '2019-09-10 09:31:13', 1, 1, '10'),
(11, 'banner5_6', '/shop', '33', '2019-09-10 09:31:24', 1, 1, '11'),
(12, 'banner5_6', '/shop', '34', '2019-09-10 09:31:35', 1, 1, '12'),
(13, 'banner5_6', '/shop', '35', '2019-09-10 09:32:18', 1, 1, '13'),
(14, 'banner5_6', '/shop', '36', '2019-09-10 09:32:28', 1, 1, '14'),
(15, 'banner7_8', '/shop', '38', '2019-09-10 09:52:02', 1, 1, '15'),
(16, 'banner7_8', '/shop', '37', '2019-09-10 09:52:29', 1, 1, '16'),
(17, 'banner7_8', '/shop', '39', '2019-09-10 09:47:56', 1, 1, '17'),
(18, 'banner7_8', '/shop', '40', '2019-09-10 09:48:05', 1, 1, '18'),
(19, 'banner9', '/shop', '41', '2019-09-10 10:19:03', 1, 1, '19'),
(20, 'banner9', '/shop', '42', '2019-09-10 10:19:13', 1, 1, '20'),
(21, 'banner10_11_12', '/shop', '44', '2019-09-10 10:26:12', 1, 1, '21'),
(22, 'banner10_11_12', '/shop', '43', '2019-09-10 10:26:30', 1, 1, '22'),
(23, 'banner10_11_12', '/shop', '45', '2019-09-10 10:26:41', 1, 1, '23'),
(24, 'banner10_11_12', '/shop', '46', '2019-09-10 10:26:54', 1, 1, '24'),
(25, 'banner13_14_15', '/shop', '47', '2019-09-10 11:01:09', 1, 1, '25'),
(26, 'banner13_14_15', '/shop', '48', '2019-09-10 11:01:27', 1, 1, '26'),
(27, 'banner13_14_15', '/shop', '49', '2019-09-10 11:02:12', 1, 1, '27'),
(28, 'banner13_14_15', '/shop', '536', '2019-09-10 11:02:23', 1, 1, '28'),
(29, 'banner13_14_15', '/shop', '51', '2019-09-10 11:02:36', 1, 1, '29'),
(30, 'banner16_17', '/shop', '52', '2019-09-10 11:19:45', 1, 1, '30'),
(31, 'banner16_17', '/shop', '53', '2019-09-10 11:19:58', 1, 1, '31'),
(32, 'banner16_17', '/shop', '54', '2019-09-10 11:21:00', 1, 1, '32'),
(33, 'banner18_19', '/shop', '55', '2019-09-10 11:30:35', 1, 1, '33'),
(34, 'banner18_19', '/shop', '56', '2019-09-10 11:30:49', 1, 1, '34'),
(35, 'banner18_19', '/shop', '57', '2019-09-10 11:31:04', 1, 1, '35'),
(36, 'banner18_19', '/shop', '58', '2019-09-10 11:31:20', 1, 1, '36'),
(37, 'banner18_19', '/shop', '59', '2019-09-10 11:31:54', 1, 1, '37'),
(38, 'banner18_19', '/shop', '60', '2019-09-10 11:32:06', 1, 1, '38'),
(39, 'ad_banner1', '/shop', '13', '2019-09-11 06:17:45', 1, 1, '39'),
(40, 'ad_banner2', '/shop', '12', '2019-09-11 06:17:58', 1, 1, '40'),
(41, 'style0', '/shop', '484', '2019-09-26 08:09:15', 1, 4, '1'),
(42, 'style0', '/shop', '531', '2019-09-08 18:43:25', 1, 4, '2'),
(43, 'banner1', '/shop', '444', '2019-09-08 18:43:34', 1, 4, '3'),
(44, 'banner1', '/shop', '445', '2019-09-08 18:43:42', 1, 4, '4'),
(45, 'banner1', '/shop', '446', '2019-09-08 18:44:15', 1, 4, '5'),
(46, 'banner2_3_4', '/shop', '499', '2019-09-10 08:50:55', 1, 4, '6'),
(47, 'banner2_3_4', '/shop', '500', '2019-09-10 08:54:18', 1, 4, '7'),
(48, 'banner2_3_4', '/shop', '501', '2019-09-10 08:54:28', 1, 4, '8'),
(49, 'banner2_3_4', '/shop', '502', '2019-09-10 08:54:38', 1, 4, '9'),
(50, 'banner5_6', '/shop', '503', '2019-09-10 09:31:13', 1, 4, '10'),
(51, 'banner5_6', '/shop', '504', '2019-09-10 09:31:24', 1, 4, '11'),
(52, 'banner5_6', '/shop', '505', '2019-09-10 09:31:35', 1, 4, '12'),
(53, 'banner5_6', '/shop', '506', '2019-09-10 09:32:18', 1, 4, '13'),
(54, 'banner5_6', '/shop', '507', '2019-09-10 09:32:28', 1, 4, '14'),
(55, 'banner7_8', '/shop', '509', '2019-09-10 09:52:02', 1, 4, '15'),
(56, 'banner7_8', '/shop', '508', '2019-09-10 09:52:29', 1, 4, '16'),
(57, 'banner7_8', '/shop', '510', '2019-09-10 09:47:56', 1, 4, '17'),
(58, 'banner7_8', '/shop', '511', '2019-09-10 09:48:05', 1, 4, '18'),
(59, 'banner9', '/shop', '512', '2019-09-10 10:19:03', 1, 4, '19'),
(60, 'banner9', '/shop', '513', '2019-09-10 10:19:13', 1, 4, '20'),
(61, 'banner10_11_12', '/shop', '515', '2019-09-10 10:26:12', 1, 4, '21'),
(62, 'banner10_11_12', '/shop', '514', '2019-09-10 10:26:30', 1, 4, '22'),
(63, 'banner10_11_12', '/shop', '517', '2019-09-10 10:26:41', 1, 4, '23'),
(64, 'banner10_11_12', '/shop', '516', '2019-09-10 10:26:54', 1, 4, '24'),
(65, 'banner13_14_15', '/shop', '519', '2019-09-10 11:01:09', 1, 4, '25'),
(66, 'banner13_14_15', '/shop', '518', '2019-09-10 11:01:27', 1, 4, '26'),
(67, 'banner13_14_15', '/shop', '520', '2019-09-10 11:02:12', 1, 4, '27'),
(68, 'banner13_14_15', '/shop', '521', '2019-09-10 11:02:23', 1, 4, '28'),
(69, 'banner13_14_15', '/shop', '522', '2019-09-10 11:02:36', 1, 4, '29'),
(70, 'banner16_17', '/shop', '496', '2019-09-10 11:19:45', 1, 4, '30'),
(71, 'banner16_17', '/shop', '497', '2019-09-10 11:19:58', 1, 4, '31'),
(72, 'banner16_17', '/shop', '498', '2019-09-10 11:21:00', 1, 4, '32'),
(73, 'banner18_19', '/shop', '523', '2019-09-10 11:30:35', 1, 4, '33'),
(74, 'banner18_19', '/shop', '524', '2019-09-10 11:30:49', 1, 4, '34'),
(75, 'banner18_19', '/shop', '526', '2019-09-10 11:31:04', 1, 4, '35'),
(76, 'banner18_19', '/shop', '525', '2019-09-10 11:31:20', 1, 4, '36'),
(77, 'banner18_19', '/shop', '527', '2019-09-10 11:31:54', 1, 4, '37'),
(78, 'banner18_19', '/shop', '528', '2019-09-10 11:32:06', 1, 4, '38'),
(79, 'ad_banner1', '/shop', '530', '2019-09-11 06:17:45', 1, 4, '39'),
(80, 'ad_banner2', '/shop', '529', '2019-09-11 06:17:58', 1, 4, '40'),
(81, 'ad_banner3', '/shop', '12', '2020-02-26 02:10:11', 1, 1, '41');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `countries_id` int(11) NOT NULL AUTO_INCREMENT,
  `countries_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `countries_iso_code_2` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `countries_iso_code_3` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `address_format_id` int(11) NOT NULL,
  `country_code` int(11) DEFAULT NULL,
  PRIMARY KEY (`countries_id`),
  KEY `IDX_COUNTRIES_NAME` (`countries_name`)
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`countries_id`, `countries_name`, `countries_iso_code_2`, `countries_iso_code_3`, `address_format_id`, `country_code`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', 1, NULL),
(2, 'Albania', 'AL', 'ALB', 1, NULL),
(3, 'Algeria', 'DZ', 'DZA', 1, NULL),
(4, 'American Samoa', 'AS', 'ASM', 1, NULL),
(5, 'Andorra', 'AD', 'AND', 1, NULL),
(6, 'Angola', 'AO', 'AGO', 1, NULL),
(7, 'Anguilla', 'AI', 'AIA', 1, NULL),
(8, 'Antarctica', 'AQ', 'ATA', 1, NULL),
(9, 'Antigua and Barbuda', 'AG', 'ATG', 1, NULL),
(10, 'Argentina', 'AR', 'ARG', 1, NULL),
(11, 'Armenia', 'AM', 'ARM', 1, NULL),
(12, 'Aruba', 'AW', 'ABW', 1, NULL),
(13, 'Australia', 'AU', 'AUS', 1, NULL),
(14, 'Austria', 'AT', 'AUT', 5, NULL),
(15, 'Azerbaijan', 'AZ', 'AZE', 1, NULL),
(16, 'Bahamas', 'BS', 'BHS', 1, NULL),
(17, 'Bahrain', 'BH', 'BHR', 1, NULL),
(18, 'Bangladesh', 'BD', 'BGD', 1, NULL),
(19, 'Barbados', 'BB', 'BRB', 1, NULL),
(20, 'Belarus', 'BY', 'BLR', 1, NULL),
(21, 'Belgium', 'BE', 'BEL', 1, NULL),
(22, 'Belize', 'BZ', 'BLZ', 1, NULL),
(23, 'Benin', 'BJ', 'BEN', 1, NULL),
(24, 'Bermuda', 'BM', 'BMU', 1, NULL),
(25, 'Bhutan', 'BT', 'BTN', 1, NULL),
(26, 'Bolivia', 'BO', 'BOL', 1, NULL),
(27, 'Bosnia and Herzegowina', 'BA', 'BIH', 1, NULL),
(28, 'Botswana', 'BW', 'BWA', 1, NULL),
(29, 'Bouvet Island', 'BV', 'BVT', 1, NULL),
(30, 'Brazil', 'BR', 'BRA', 1, NULL),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', 1, NULL),
(32, 'Brunei Darussalam', 'BN', 'BRN', 1, NULL),
(33, 'Bulgaria', 'BG', 'BGR', 1, NULL),
(34, 'Burkina Faso', 'BF', 'BFA', 1, NULL),
(35, 'Burundi', 'BI', 'BDI', 1, NULL),
(36, 'Cambodia', 'KH', 'KHM', 1, NULL),
(37, 'Cameroon', 'CM', 'CMR', 1, NULL),
(38, 'Canada', 'CA', 'CAN', 1, NULL),
(39, 'Cape Verde', 'CV', 'CPV', 1, NULL),
(40, 'Cayman Islands', 'KY', 'CYM', 1, NULL),
(41, 'Central African Republic', 'CF', 'CAF', 1, NULL),
(42, 'Chad', 'TD', 'TCD', 1, NULL),
(43, 'Chile', 'CL', 'CHL', 1, NULL),
(44, 'China', 'CN', 'CHN', 1, NULL),
(45, 'Christmas Island', 'CX', 'CXR', 1, NULL),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', 1, NULL),
(47, 'Colombia', 'CO', 'COL', 1, NULL),
(48, 'Comoros', 'KM', 'COM', 1, NULL),
(49, 'Congo', 'CG', 'COG', 1, NULL),
(50, 'Cook Islands', 'CK', 'COK', 1, NULL),
(51, 'Costa Rica', 'CR', 'CRI', 1, NULL),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', 1, NULL),
(53, 'Croatia', 'HR', 'HRV', 1, NULL),
(54, 'Cuba', 'CU', 'CUB', 1, NULL),
(55, 'Cyprus', 'CY', 'CYP', 1, NULL),
(56, 'Czech Republic', 'CZ', 'CZE', 1, NULL),
(57, 'Denmark', 'DK', 'DNK', 1, NULL),
(58, 'Djibouti', 'DJ', 'DJI', 1, NULL),
(59, 'Dominica', 'DM', 'DMA', 1, NULL),
(60, 'Dominican Republic', 'DO', 'DOM', 1, NULL),
(61, 'East Timor', 'TP', 'TMP', 1, NULL),
(62, 'Ecuador', 'EC', 'ECU', 1, NULL),
(63, 'Egypt', 'EG', 'EGY', 1, NULL),
(64, 'El Salvador', 'SV', 'SLV', 1, NULL),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', 1, NULL),
(66, 'Eritrea', 'ER', 'ERI', 1, NULL),
(67, 'Estonia', 'EE', 'EST', 1, NULL),
(68, 'Ethiopia', 'ET', 'ETH', 1, NULL),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', 1, NULL),
(70, 'Faroe Islands', 'FO', 'FRO', 1, NULL),
(71, 'Fiji', 'FJ', 'FJI', 1, NULL),
(72, 'Finland', 'FI', 'FIN', 1, NULL),
(73, 'France', 'FR', 'FRA', 1, NULL),
(74, 'France, Metropolitan', 'FX', 'FXX', 1, NULL),
(75, 'French Guiana', 'GF', 'GUF', 1, NULL),
(76, 'French Polynesia', 'PF', 'PYF', 1, NULL),
(77, 'French Southern Territories', 'TF', 'ATF', 1, NULL),
(78, 'Gabon', 'GA', 'GAB', 1, NULL),
(79, 'Gambia', 'GM', 'GMB', 1, NULL),
(80, 'Georgia', 'GE', 'GEO', 1, NULL),
(81, 'Germany', 'DE', 'DEU', 5, NULL),
(82, 'Ghana', 'GH', 'GHA', 1, NULL),
(83, 'Gibraltar', 'GI', 'GIB', 1, NULL),
(84, 'Greece', 'GR', 'GRC', 1, NULL),
(85, 'Greenland', 'GL', 'GRL', 1, NULL),
(86, 'Grenada', 'GD', 'GRD', 1, NULL),
(87, 'Guadeloupe', 'GP', 'GLP', 1, NULL),
(88, 'Guam', 'GU', 'GUM', 1, NULL),
(89, 'Guatemala', 'GT', 'GTM', 1, NULL),
(90, 'Guinea', 'GN', 'GIN', 1, NULL),
(91, 'Guinea-bissau', 'GW', 'GNB', 1, NULL),
(92, 'Guyana', 'GY', 'GUY', 1, NULL),
(93, 'Haiti', 'HT', 'HTI', 1, NULL),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', 1, NULL),
(95, 'Honduras', 'HN', 'HND', 1, NULL),
(96, 'Hong Kong', 'HK', 'HKG', 1, NULL),
(97, 'Hungary', 'HU', 'HUN', 1, NULL),
(98, 'Iceland', 'IS', 'ISL', 1, NULL),
(99, 'India', 'IN', 'IND', 1, NULL),
(100, 'Indonesia', 'ID', 'IDN', 1, NULL),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', 1, NULL),
(102, 'Iraq', 'IQ', 'IRQ', 1, NULL),
(103, 'Ireland', 'IE', 'IRL', 1, NULL),
(104, 'Israel', 'IL', 'ISR', 1, NULL),
(105, 'Italy', 'IT', 'ITA', 1, NULL),
(106, 'Jamaica', 'JM', 'JAM', 1, NULL),
(107, 'Japan', 'JP', 'JPN', 1, NULL),
(108, 'Jordan', 'JO', 'JOR', 1, NULL),
(109, 'Kazakhstan', 'KZ', 'KAZ', 1, NULL),
(110, 'Kenya', 'KE', 'KEN', 1, NULL),
(111, 'Kiribati', 'KI', 'KIR', 1, NULL),
(112, 'Korea, Democratic People\'s Republic of', 'KP', 'PRK', 1, NULL),
(113, 'Korea, Republic of', 'KR', 'KOR', 1, NULL),
(114, 'Kuwait', 'KW', 'KWT', 1, NULL),
(115, 'Kyrgyzstan', 'KG', 'KGZ', 1, NULL),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', 1, NULL),
(117, 'Latvia', 'LV', 'LVA', 1, NULL),
(118, 'Lebanon', 'LB', 'LBN', 1, NULL),
(119, 'Lesotho', 'LS', 'LSO', 1, NULL),
(120, 'Liberia', 'LR', 'LBR', 1, NULL),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', 1, NULL),
(122, 'Liechtenstein', 'LI', 'LIE', 1, NULL),
(123, 'Lithuania', 'LT', 'LTU', 1, NULL),
(124, 'Luxembourg', 'LU', 'LUX', 1, NULL),
(125, 'Macau', 'MO', 'MAC', 1, NULL),
(126, 'Macedonia, The Former Yugoslav Republic of', 'MK', 'MKD', 1, NULL),
(127, 'Madagascar', 'MG', 'MDG', 1, NULL),
(128, 'Malawi', 'MW', 'MWI', 1, NULL),
(129, 'Malaysia', 'MY', 'MYS', 1, NULL),
(130, 'Maldives', 'MV', 'MDV', 1, NULL),
(131, 'Mali', 'ML', 'MLI', 1, NULL),
(132, 'Malta', 'MT', 'MLT', 1, NULL),
(133, 'Marshall Islands', 'MH', 'MHL', 1, NULL),
(134, 'Martinique', 'MQ', 'MTQ', 1, NULL),
(135, 'Mauritania', 'MR', 'MRT', 1, NULL),
(136, 'Mauritius', 'MU', 'MUS', 1, NULL),
(137, 'Mayotte', 'YT', 'MYT', 1, NULL),
(138, 'Mexico', 'MX', 'MEX', 1, NULL),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', 1, NULL),
(140, 'Moldova, Republic of', 'MD', 'MDA', 1, NULL),
(141, 'Monaco', 'MC', 'MCO', 1, NULL),
(142, 'Mongolia', 'MN', 'MNG', 1, NULL),
(143, 'Montserrat', 'MS', 'MSR', 1, NULL),
(144, 'Morocco', 'MA', 'MAR', 1, NULL),
(145, 'Mozambique', 'MZ', 'MOZ', 1, NULL),
(146, 'Myanmar', 'MM', 'MMR', 1, NULL),
(147, 'Namibia', 'NA', 'NAM', 1, NULL),
(148, 'Nauru', 'NR', 'NRU', 1, NULL),
(149, 'Nepal', 'NP', 'NPL', 1, NULL),
(150, 'Netherlands', 'NL', 'NLD', 1, NULL),
(151, 'Netherlands Antilles', 'AN', 'ANT', 1, NULL),
(152, 'New Caledonia', 'NC', 'NCL', 1, NULL),
(153, 'New Zealand', 'NZ', 'NZL', 1, NULL),
(154, 'Nicaragua', 'NI', 'NIC', 1, NULL),
(155, 'Niger', 'NE', 'NER', 1, NULL),
(156, 'Nigeria', 'NG', 'NGA', 1, NULL),
(157, 'Niue', 'NU', 'NIU', 1, NULL),
(158, 'Norfolk Island', 'NF', 'NFK', 1, NULL),
(159, 'Northern Mariana Islands', 'MP', 'MNP', 1, NULL),
(160, 'Norway', 'NO', 'NOR', 1, NULL),
(161, 'Oman', 'OM', 'OMN', 1, NULL),
(162, 'Pakistan', 'PK', 'PAK', 1, NULL),
(163, 'Palau', 'PW', 'PLW', 1, NULL),
(164, 'Panama', 'PA', 'PAN', 1, NULL),
(165, 'Papua New Guinea', 'PG', 'PNG', 1, NULL),
(166, 'Paraguay', 'PY', 'PRY', 1, NULL),
(167, 'Peru', 'PE', 'PER', 1, NULL),
(168, 'Philippines', 'PH', 'PHL', 1, NULL),
(169, 'Pitcairn', 'PN', 'PCN', 1, NULL),
(170, 'Poland', 'PL', 'POL', 1, NULL),
(171, 'Portugal', 'PT', 'PRT', 1, NULL),
(172, 'Puerto Rico', 'PR', 'PRI', 1, NULL),
(173, 'Qatar', 'QA', 'QAT', 1, NULL),
(174, 'Reunion', 'RE', 'REU', 1, NULL),
(175, 'Romania', 'RO', 'ROM', 1, NULL),
(176, 'Russian Federation', 'RU', 'RUS', 1, NULL),
(177, 'Rwanda', 'RW', 'RWA', 1, NULL),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', 1, NULL),
(179, 'Saint Lucia', 'LC', 'LCA', 1, NULL),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 1, NULL),
(181, 'Samoa', 'WS', 'WSM', 1, NULL),
(182, 'San Marino', 'SM', 'SMR', 1, NULL),
(183, 'Sao Tome and Principe', 'ST', 'STP', 1, NULL),
(184, 'Saudi Arabia', 'SA', 'SAU', 1, NULL),
(185, 'Senegal', 'SN', 'SEN', 1, NULL),
(186, 'Seychelles', 'SC', 'SYC', 1, NULL),
(187, 'Sierra Leone', 'SL', 'SLE', 1, NULL),
(188, 'Singapore', 'SG', 'SGP', 4, NULL),
(189, 'Slovakia (Slovak Republic)', 'SK', 'SVK', 1, NULL),
(190, 'Slovenia', 'SI', 'SVN', 1, NULL),
(191, 'Solomon Islands', 'SB', 'SLB', 1, NULL),
(192, 'Somalia', 'SO', 'SOM', 1, NULL),
(193, 'South Africa', 'ZA', 'ZAF', 1, NULL),
(194, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 1, NULL),
(195, 'Spain', 'ES', 'ESP', 3, NULL),
(196, 'Sri Lanka', 'LK', 'LKA', 1, NULL),
(197, 'St. Helena', 'SH', 'SHN', 1, NULL),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', 1, NULL),
(199, 'Sudan', 'SD', 'SDN', 1, NULL),
(200, 'Suriname', 'SR', 'SUR', 1, NULL),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', 1, NULL),
(202, 'Swaziland', 'SZ', 'SWZ', 1, NULL),
(203, 'Sweden', 'SE', 'SWE', 1, NULL),
(204, 'Switzerland', 'CH', 'CHE', 1, NULL),
(205, 'Syrian Arab Republic', 'SY', 'SYR', 1, NULL),
(206, 'Taiwan', 'TW', 'TWN', 1, NULL),
(207, 'Tajikistan', 'TJ', 'TJK', 1, NULL),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', 1, NULL),
(209, 'Thailand', 'TH', 'THA', 1, NULL),
(210, 'Togo', 'TG', 'TGO', 1, NULL),
(211, 'Tokelau', 'TK', 'TKL', 1, NULL),
(212, 'Tonga', 'TO', 'TON', 1, NULL),
(213, 'Trinidad and Tobago', 'TT', 'TTO', 1, NULL),
(214, 'Tunisia', 'TN', 'TUN', 1, NULL),
(215, 'Turkey', 'TR', 'TUR', 1, NULL),
(216, 'Turkmenistan', 'TM', 'TKM', 1, NULL),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', 1, NULL),
(218, 'Tuvalu', 'TV', 'TUV', 1, NULL),
(219, 'Uganda', 'UG', 'UGA', 1, NULL),
(220, 'Ukraine', 'UA', 'UKR', 1, NULL),
(221, 'United Arab Emirates', 'AE', 'ARE', 1, NULL),
(222, 'United Kingdom', 'GB', 'GBR', 1, NULL),
(223, 'United States', 'US', 'USA', 2, NULL),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', 1, NULL),
(225, 'Uruguay', 'UY', 'URY', 1, NULL),
(226, 'Uzbekistan', 'UZ', 'UZB', 1, NULL),
(227, 'Vanuatu', 'VU', 'VUT', 1, NULL),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', 1, NULL),
(229, 'Venezuela', 'VE', 'VEN', 1, NULL),
(230, 'Viet Nam', 'VN', 'VNM', 1, NULL),
(231, 'Virgin Islands (British)', 'VG', 'VGB', 1, NULL),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', 1, NULL),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', 1, NULL),
(234, 'Western Sahara', 'EH', 'ESH', 1, NULL),
(235, 'Yemen', 'YE', 'YEM', 1, NULL),
(236, 'Yugoslavia', 'YU', 'YUG', 1, NULL),
(237, 'Zaire', 'ZR', 'ZAR', 1, NULL),
(238, 'Zambia', 'ZM', 'ZMB', 1, NULL),
(239, 'Zimbabwe', 'ZW', 'ZWE', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
CREATE TABLE IF NOT EXISTS `coupons` (
  `coupans_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Options: fixed_cart, percent, fixed_product and percent_product. Default: fixed_cart.',
  `amount` int(11) NOT NULL,
  `expiry_date` datetime NOT NULL,
  `usage_count` int(11) NOT NULL,
  `individual_use` tinyint(1) NOT NULL DEFAULT 0,
  `product_ids` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `exclude_product_ids` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `usage_limit_per_user` int(11) DEFAULT NULL,
  `limit_usage_to_x_items` int(11) NOT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `product_categories` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `excluded_product_categories` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `exclude_sale_items` tinyint(1) NOT NULL DEFAULT 0,
  `minimum_amount` decimal(10,2) NOT NULL,
  `maximum_amount` decimal(10,2) NOT NULL,
  `email_restrictions` text COLLATE utf8_unicode_ci NOT NULL,
  `used_by` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`coupans_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupans_id`, `code`, `date_created`, `date_modified`, `description`, `discount_type`, `amount`, `expiry_date`, `usage_count`, `individual_use`, `product_ids`, `exclude_product_ids`, `usage_limit`, `usage_limit_per_user`, `limit_usage_to_x_items`, `free_shipping`, `product_categories`, `excluded_product_categories`, `exclude_sale_items`, `minimum_amount`, `maximum_amount`, `email_restrictions`, `used_by`, `created_at`, `updated_at`) VALUES
(1, 'NDR6', NULL, NULL, '20% Discount Voucher', 'percent', 500, '2021-09-30 00:00:00', 0, 1, '1,2,3,4,5,10,13,15', '', NULL, NULL, 0, 1, '4,5,13', '', 0, '1000.00', '5000.00', '', '', '2021-09-02 01:49:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE IF NOT EXISTS `currencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `symbol_left` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `symbol_right` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `decimal_point` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thousands_point` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `decimal_places` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `value` double(13,8) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_current` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_currencies_code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_point`, `thousands_point`, `decimal_places`, `created_at`, `updated_at`, `value`, `is_default`, `status`, `is_current`) VALUES
(1, 'Indian Rupees', 'INR', '₹', '', NULL, NULL, '2', '2021-03-13 22:19:10', '2021-03-13 22:19:10', 1.00000000, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `currency_record`
--

DROP TABLE IF EXISTS `currency_record`;
CREATE TABLE IF NOT EXISTS `currency_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `currency_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=171 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currency_record`
--

INSERT INTO `currency_record` (`id`, `code`, `currency_name`) VALUES
(1, 'AED', 'United Arab Emirates Dirham'),
(2, 'AFN', 'Afghan Afghani'),
(3, 'ALL', 'Albanian Lek'),
(4, 'AMD', 'Armenian Dram'),
(5, 'ANG', 'Netherlands Antillean Guilder'),
(6, 'AOA', 'Angolan Kwanza'),
(7, 'ARS', 'Argentine Peso'),
(8, 'AUD', 'Australian Dollar'),
(9, 'AWG', 'Aruban Florin'),
(10, 'AZN', 'Azerbaijani Manat'),
(11, 'BAM', 'Bosnia-Herzegovina Convertible Mark'),
(12, 'BBD', 'Barbadian Dollar'),
(13, 'BDT', 'Bangladeshi Taka'),
(14, 'BGN', 'Bulgarian Lev'),
(15, 'BHD', 'Bahraini Dinar'),
(16, 'BIF', 'Burundian Franc'),
(17, 'BMD', 'Bermudan Dollar'),
(18, 'BND', 'Brunei Dollar'),
(19, 'BOB', 'Bolivian Boliviano'),
(20, 'BRL', 'Brazilian Real'),
(21, 'BSD', 'Bahamian Dollar'),
(22, 'BTC', 'Bitcoin'),
(23, 'BTN', 'Bhutanese Ngultrum'),
(24, 'BWP', 'Botswanan Pula'),
(25, 'BYN', 'Belarusian Ruble'),
(26, 'BZD', 'Belize Dollar'),
(27, 'CAD', 'Canadian Dollar'),
(28, 'CDF', 'Congolese Franc'),
(29, 'CHF', 'Swiss Franc'),
(30, 'CLF', 'Chilean Unit of Account (UF)'),
(31, 'CLP', 'Chilean Peso'),
(32, 'CNH', 'Chinese Yuan (Offshore)'),
(33, 'CNY', 'Chinese Yuan'),
(34, 'COP', 'Colombian Peso'),
(35, 'CRC', 'Costa Rican Colón'),
(36, 'CUC', 'Cuban Convertible Peso'),
(37, 'CUP', 'Cuban Peso'),
(38, 'CVE', 'Cape Verdean Escudo'),
(39, 'CZK', 'Czech Republic Koruna'),
(40, 'DJF', 'Djiboutian Franc'),
(41, 'DKK', 'Danish Krone'),
(42, 'DOP', 'Dominican Peso'),
(43, 'DZD', 'Algerian Dinar'),
(44, 'EGP', 'Egyptian Pound'),
(45, 'ERN', 'Eritrean Nakfa'),
(46, 'ETB', 'Ethiopian Birr'),
(47, 'EUR', 'Euro'),
(48, 'FJD', 'Fijian Dollar'),
(49, 'FKP', 'Falkland Islands Pound'),
(50, 'GBP', 'British Pound Sterling'),
(51, 'GEL', 'Georgian Lari'),
(52, 'GGP', 'Guernsey Pound'),
(53, 'GHS', 'Ghanaian Cedi'),
(54, 'GIP', 'Gibraltar Pound'),
(55, 'GMD', 'Gambian Dalasi'),
(56, 'GNF', 'Guinean Franc'),
(57, 'GTQ', 'Guatemalan Quetzal'),
(58, 'GYD', 'Guyanaese Dollar'),
(59, 'HKD', 'Hong Kong Dollar'),
(60, 'HNL', 'Honduran Lempira'),
(61, 'HRK', 'Croatian Kuna'),
(62, 'HTG', 'Haitian Gourde'),
(63, 'HUF', 'Hungarian Forint'),
(64, 'IDR', 'Indonesian Rupiah'),
(65, 'ILS', 'Israeli New Sheqel'),
(66, 'IMP', 'Manx pound'),
(67, 'INR', 'Indian Rupee'),
(68, 'IQD', 'Iraqi Dinar'),
(69, 'IRR', 'Iranian Rial'),
(70, 'ISK', 'Icelandic Króna'),
(71, 'JEP', 'Jersey Pound'),
(72, 'JMD', 'Jamaican Dollar'),
(73, 'JOD', 'Jordanian Dinar'),
(74, 'JPY', 'Japanese Yen'),
(75, 'KES', 'Kenyan Shilling'),
(76, 'KGS', 'Kyrgystani Som'),
(77, 'KHR', 'Cambodian Riel'),
(78, 'KMF', 'Comorian Franc'),
(79, 'KPW', 'North Korean Won'),
(80, 'KRW', 'South Korean Won'),
(81, 'KWD', 'Kuwaiti Dinar'),
(82, 'KYD', 'Cayman Islands Dollar'),
(83, 'KZT', 'Kazakhstani Tenge'),
(84, 'LAK', 'Laotian Kip'),
(85, 'LBP', 'Lebanese Pound'),
(86, 'LKR', 'Sri Lankan Rupee'),
(87, 'LRD', 'Liberian Dollar'),
(88, 'LSL', 'Lesotho Loti'),
(89, 'LYD', 'Libyan Dinar'),
(90, 'MAD', 'Moroccan Dirham'),
(91, 'MDL', 'Moldovan Leu'),
(92, 'MGA', 'Malagasy Ariary'),
(93, 'MKD', 'Macedonian Denar'),
(94, 'MMK', 'Myanma Kyat'),
(95, 'MNT', 'Mongolian Tugrik'),
(96, 'MOP', 'Macanese Pataca'),
(97, 'MRO', 'Mauritanian Ouguiya (pre-2018)'),
(98, 'MRU', 'Mauritanian Ouguiya'),
(99, 'MUR', 'Mauritian Rupee'),
(100, 'MVR', 'Maldivian Rufiyaa'),
(101, 'MWK', 'Malawian Kwacha'),
(102, 'MXN', 'Mexican Peso'),
(103, 'MYR', 'Malaysian Ringgit'),
(104, 'MZN', 'Mozambican Metical'),
(105, 'NAD', 'Namibian Dollar'),
(106, 'NGN', 'Nigerian Naira'),
(107, 'NIO', 'Nicaraguan Córdoba'),
(108, 'NOK', 'Norwegian Krone'),
(109, 'NPR', 'Nepalese Rupee'),
(110, 'NZD', 'New Zealand Dollar'),
(111, 'OMR', 'Omani Rial'),
(112, 'PAB', 'Panamanian Balboa'),
(113, 'PEN', 'Peruvian Nuevo Sol'),
(114, 'PGK', 'Papua New Guinean Kina'),
(115, 'PHP', 'Philippine Peso'),
(116, 'PKR', 'Pakistani Rupee'),
(117, 'PLN', 'Polish Zloty'),
(118, 'PYG', 'Paraguayan Guarani'),
(119, 'QAR', 'Qatari Rial'),
(120, 'RON', 'Romanian Leu'),
(121, 'RSD', 'Serbian Dinar'),
(122, 'RUB', 'Russian Ruble'),
(123, 'RWF', 'Rwandan Franc'),
(124, 'SAR', 'Saudi Riyal'),
(125, 'SBD', 'Solomon Islands Dollar'),
(126, 'SCR', 'Seychellois Rupee'),
(127, 'SDG', 'Sudanese Pound'),
(128, 'SEK', 'Swedish Krona'),
(129, 'SGD', 'Singapore Dollar'),
(130, 'SHP', 'Saint Helena Pound'),
(131, 'SLL', 'Sierra Leonean Leone'),
(132, 'SOS', 'Somali Shilling'),
(133, 'SRD', 'Surinamese Dollar'),
(134, 'SSP', 'South Sudanese Pound'),
(135, 'STD', 'São Tomé and Príncipe Dobra (pre-2018)'),
(136, 'STN', 'São Tomé and Príncipe Dobra'),
(137, 'SVC', 'Salvadoran Colón'),
(138, 'SYP', 'Syrian Pound'),
(139, 'SZL', 'Swazi Lilangeni'),
(140, 'THB', 'Thai Baht'),
(141, 'TJS', 'Tajikistani Somoni'),
(142, 'TMT', 'Turkmenistani Manat'),
(143, 'TND', 'Tunisian Dinar'),
(144, 'TOP', 'Tongan Pa\'anga'),
(145, 'TRY', 'Turkish Lira'),
(146, 'TTD', 'Trinidad and Tobago Dollar'),
(147, 'TWD', 'New Taiwan Dollar'),
(148, 'TZS', 'Tanzanian Shilling'),
(149, 'UAH', 'Ukrainian Hryvnia'),
(150, 'UGX', 'Ugandan Shilling'),
(151, 'USD', 'United States Dollar'),
(152, 'UYU', 'Uruguayan Peso'),
(153, 'UZS', 'Uzbekistan Som'),
(154, 'VEF', 'Venezuelan Bolívar Fuerte'),
(155, 'VND', 'Vietnamese Dong'),
(156, 'VUV', 'Vanuatu Vatu'),
(157, 'WST', 'Samoan Tala'),
(158, 'XAF', 'CFA Franc BEAC'),
(159, 'XAG', 'Silver Ounce'),
(160, 'XAU', 'Gold Ounce'),
(161, 'XCD', 'East Caribbean Dollar'),
(162, 'XDR', 'Special Drawing Rights'),
(163, 'XOF', 'CFA Franc BCEAO'),
(164, 'XPD', 'Palladium Ounce'),
(165, 'XPF', 'CFP Franc'),
(166, 'XPT', 'Platinum Ounce'),
(167, 'YER', 'Yemeni Rial'),
(168, 'ZAR', 'South African Rand'),
(169, 'ZMW', 'Zambian Kwacha'),
(170, 'ZWL', 'Zimbabwean Dollar');

-- --------------------------------------------------------

--
-- Table structure for table `current_theme`
--

DROP TABLE IF EXISTS `current_theme`;
CREATE TABLE IF NOT EXISTS `current_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `top_offer` int(11) NOT NULL,
  `header` int(11) NOT NULL,
  `carousel` int(11) NOT NULL,
  `banner` int(11) NOT NULL,
  `footer` int(11) NOT NULL,
  `product_section_order` text COLLATE utf8_unicode_ci NOT NULL,
  `cart` int(11) NOT NULL,
  `news` int(11) NOT NULL,
  `detail` int(11) NOT NULL,
  `shop` int(11) NOT NULL,
  `contact` int(11) NOT NULL,
  `login` int(11) NOT NULL,
  `transitions` int(11) NOT NULL,
  `banner_two` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `current_theme`
--

INSERT INTO `current_theme` (`id`, `top_offer`, `header`, `carousel`, `banner`, `footer`, `product_section_order`, `cart`, `news`, `detail`, `shop`, `contact`, `login`, `transitions`, `banner_two`) VALUES
(1, 1, 1, 1, 1, 1, '[{\"id\":10,\"name\":\"Second Ad Section\",\"order\":1,\"file_name\":\"sec_ad_banner\",\"status\":1,\"image\":\"images\\/prototypes\\/sec_ad_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/sec_ad_section-cross.jpg\",\"alt\":\"Second Ad Section\"},{\"id\":5,\"name\":\"Categories\",\"order\":2,\"file_name\":\"categories\",\"status\":1,\"image\":\"images\\/prototypes\\/categories.jpg\",\"disabled_image\":\"images\\/prototypes\\/categories-cross.jpg\",\"alt\":\"Categories\"},{\"id\":1,\"name\":\"Banner Section\",\"order\":3,\"file_name\":\"banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/banner_section.jpg\",\"alt\":\"Banner Section\"},{\"id\":9,\"name\":\"Top Selling\",\"order\":4,\"file_name\":\"top\",\"status\":1,\"image\":\"images\\/prototypes\\/top.jpg\",\"disabled_image\":\"images\\/prototypes\\/top-cross.jpg\",\"alt\":\"Top Selling\"},{\"id\":8,\"name\":\"Newest Product Section\",\"order\":5,\"file_name\":\"newest_product\",\"status\":1,\"image\":\"images\\/prototypes\\/newest_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/newest_product-cross.jpg\",\"alt\":\"Newest Product Section\"},{\"id\":11,\"name\":\"Tab Products View\",\"order\":6,\"file_name\":\"tab\",\"status\":1,\"image\":\"images\\/prototypes\\/tab.jpg\",\"disabled_image\":\"images\\/prototypes\\/tab-cross.jpg\",\"alt\":\"Tab Products View\"},{\"id\":3,\"name\":\"Special Products Section\",\"order\":7,\"file_name\":\"special\",\"status\":1,\"image\":\"images\\/prototypes\\/special_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/special_product-cross.jpg\",\"alt\":\"Special Products Section\"},{\"id\":2,\"name\":\"Flash Sale Section\",\"order\":8,\"file_name\":\"flash_sale_section\",\"status\":1,\"image\":\"images\\/prototypes\\/flash_sale_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/flash_sale_section-cross.jpg\",\"alt\":\"Flash Sale Section\"},{\"id\":4,\"name\":\"Ad Section\",\"order\":9,\"file_name\":\"ad_banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/ad_banner_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/ad_banner_section-cross.jpg\",\"alt\":\"Ad Section\"},{\"id\":6,\"name\":\"Blog Section\",\"order\":10,\"file_name\":\"blog_section\",\"status\":1,\"image\":\"images\\/prototypes\\/blog_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/blog_section-cross.jpg\",\"alt\":\"Blog Section\"},{\"id\":7,\"name\":\"Info Boxes\",\"order\":11,\"file_name\":\"info_boxes\",\"status\":1,\"image\":\"images\\/prototypes\\/info_boxes.jpg\",\"disabled_image\":\"images\\/prototypes\\/info_boxes-cross.jpg\",\"alt\":\"Info Boxes\"}]', 1, 1, 1, 1, 1, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `customers_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `customers_fax` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_newsletter` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_id_tiwilo` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers_basket`
--

DROP TABLE IF EXISTS `customers_basket`;
CREATE TABLE IF NOT EXISTS `customers_basket` (
  `customers_basket_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_id` int(11) NOT NULL,
  `products_id` text COLLATE utf8_unicode_ci NOT NULL,
  `customers_basket_quantity` int(11) NOT NULL,
  `final_price` decimal(15,2) DEFAULT NULL,
  `customers_basket_date_added` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_order` tinyint(1) NOT NULL DEFAULT 0,
  `session_id` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`customers_basket_id`),
  KEY `idx_customers_basket_customers_id` (`customers_id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers_basket`
--

INSERT INTO `customers_basket` (`customers_basket_id`, `customers_id`, `products_id`, `customers_basket_quantity`, `final_price`, `customers_basket_date_added`, `is_order`, `session_id`) VALUES
(1, 3, '10', 1, '28.00', '2021-03-14', 0, 'lKwHEr9QPypDe7nEWsYINKXITUrFIJ2sQwLqSHxk'),
(5, 0, '32', 1, '81.00', '2021-03-20', 0, '0RAK2DUPNHZZFpoJ61EX9VnDUWimC43CPlR7JSHi'),
(6, 4, '32', 1, '81.00', '2021-03-20', 0, '0RAK2DUPNHZZFpoJ61EX9VnDUWimC43CPlR7JSHi'),
(24, 9, '28', 1, '92.00', '2021-03-25', 1, 'KYNVuBZm4z8b7d6JTp0gURe9vX7aHmMcfRGDOEpI'),
(8, 5, '32', 1, '81.00', '2021-03-20', 0, '0RAK2DUPNHZZFpoJ61EX9VnDUWimC43CPlR7JSHi'),
(9, 0, '10', 1, '28.00', '2021-03-22', 0, 'FYjUO7VFbRi2j5Z1FTa1O8C1nxCaz0XFb9auU97c'),
(17, 0, '32', 1, '81.00', '2021-03-24', 0, 'sAqcyyrB8qkT4akkfFk3P36cp7NgxyzU801uZOXw'),
(16, 7, '13', 5, '34.00', '2021-03-22', 0, 'emBYHXumtkoqReWwZOTUZe0c2wPEPjioKeeq0QZA'),
(12, 0, '32', 1, '81.00', '2021-03-22', 0, 'APAUceCgRPv0Rp1zFzlmEt9Cf9sGYxHfWBOeyM53'),
(14, 7, '7', 7, '25.00', '2021-03-22', 0, 'emBYHXumtkoqReWwZOTUZe0c2wPEPjioKeeq0QZA'),
(18, 6, '28', 1, '92.00', '2021-03-24', 0, 'UnrIxi6HfDvbcCKyz5YYEtm8I3ZgG02FWZsHjwK9'),
(19, 6, '28', 1, '92.00', '2021-03-24', 0, 'UnrIxi6HfDvbcCKyz5YYEtm8I3ZgG02FWZsHjwK9'),
(21, 9, '32', 1, '81.00', '2021-03-24', 1, 'Z8Ot9hesx3NYP5Q9R7jDGV8VlLy1rAL17YPa7rUr'),
(23, 9, '13', 1, '34.00', '2021-03-24', 1, 'Q5qoZgPKv8SxCrVyKUcg3zNN4XsbQCEe4jUkOMXS'),
(25, 9, '28', 1, '92.00', '2021-03-25', 1, '1qdchcfGLwi68Ed2KTsk4zV8fYNNCCjlK1f5k5w1'),
(26, 9, '32', 1, '81.00', '2021-03-25', 1, '1qdchcfGLwi68Ed2KTsk4zV8fYNNCCjlK1f5k5w1'),
(28, 9, '13', 2, '34.00', '2021-03-25', 1, '1qdchcfGLwi68Ed2KTsk4zV8fYNNCCjlK1f5k5w1'),
(29, 0, '7', 1, '25.00', '2021-03-25', 0, 'XX087LMklouTq9SAti8WDPUc4P2AMI8lCWx1LX5Z'),
(30, 9, '32', 1, '81.00', '2021-03-28', 1, 'yf62sWcO011bSUcyull3YHRikXpnaUwvCGucWaIs'),
(31, 9, '32', 1, '81.00', '2021-03-28', 1, 'eBKg8gPtiKeoOOCOfh9uu1GKWnh05PhFaRyI2d4P'),
(32, 10, '32', 1, '81.00', '2021-03-28', 1, 'El1q3YTCkBH47wdCZBo0RuLNCQDGUx1tvXdn79tg'),
(33, 0, '28', 1, '92.00', '2021-04-13', 0, 'Tomh2R4iHSGDj9jVWwMaC9koCJKQnhPE8SmdeHAe'),
(34, 0, '32', 1, '81.00', '2021-04-14', 0, 'mfx5H0K9a1V92jpwC8Oh7h2l1zP1YZp8WXv6pzf8'),
(36, 0, '32', 1, '81.00', '2021-04-15', 0, 'Oz4bYruKD2ziYJ3q42fz54ZOaNu16HnhanikigI4'),
(37, 0, '32', 1, '81.00', '2021-04-20', 0, '8kBHzjJCFw1BErEvylO09LC8GBdc02KlGSDmRzEb'),
(38, 0, '32', 1, '81.00', '2021-04-20', 0, '1asgSbqfiBLDNM3SDAtIfuKVyyZgQRo3ThLXvwl9'),
(39, 0, '7', 1, '25.00', '2021-04-29', 0, 'tLqczIppwOeCL5Eg63BSSX8RkR3yGMu79Wvj6mz8'),
(41, 11, '4', 2, '90.00', '2021-05-15', 0, 'eqVi6IbHXEIqBT81WiFxDlV4uxnEUXHOHIp9CVL8'),
(43, 0, '10', 1, '28.00', '2021-06-11', 0, 'fNgt9GQtdgmMkjhmB7OMTsZCvn8Ofv3NBXdr0d0Y'),
(44, 0, '7', 1, '25.00', '2021-07-17', 0, '9PcsCFhd7yYJDp5cOzvJqjQ4rmQPTnxnT3xUMKEh'),
(45, 0, '32', 1, '81.00', '2021-07-24', 0, 'iSrVAaTUMe4rjE6OvTfeAHVjWj1JfHm9jMlQrhHv'),
(46, 0, '28', 1, '92.00', '2021-07-30', 0, '4l8s7CovZYeEkm2LhDhVFlvKGwKTo8YziAe7IPWc'),
(47, 0, '7', 1, '25.00', '2021-08-20', 0, 'SBSUYKFONvRfAgVGa2NLHuBueww1SttsPn79R5ER'),
(48, 0, '38', 1, '140.00', '2021-08-26', 0, '192kcjVbl8sDvPAQjGu2wMjBg69GerQdqNwAY8p6'),
(50, 0, '40', 100, '220.00', '2021-09-03', 0, 'vy1Wr1iLRoR8WxNN1yYO39PJi9vIxTvAkQIbSgCf'),
(51, 12, '13', 3, '34.00', '2021-09-21', 1, '5nocd8p6GlRwvudaUe4ZOy57snf6OJrDVyCvGU3o'),
(52, 0, '13', 1, '34.00', '2021-10-05', 0, 'fWlFNjbPmiZd7Oi0lAK7yZ3DfJuWNTnRvcBOjY8F'),
(53, 0, '13', 1, '34.00', '2021-10-05', 0, 'ctyeYiRKaJukJK9fME2Ftn94FOkLrCu6Hk19Mwj7'),
(54, 0, '7', 1, '25.00', '2021-10-12', 0, 'ssVYPxOizVdInM2sUbFjHNJ0yq5RqUAkxRymwV4M'),
(55, 0, '28', 1, '92.00', '2021-10-13', 0, 'gAx69bgcUextoXtdtmb6L3mqCiy7pzwH3k9hDzGq'),
(56, 0, '10', 1, '28.00', '2021-11-17', 0, 'T1DDElBVi1UiLOuyQXAyXWm3TnCf53EnymG0lKLp'),
(57, 0, '28', 1, '92.00', '2021-12-08', 0, 'tJyvoLzpdl86DAibmXDnmTt3NLOtCDe5sg7WjuZP'),
(58, 0, '13', 1, '34.00', '2021-12-21', 0, 'INYAimOU2Zdz4BqX7h0pfEti4m4HUoaLyJcIIq7U'),
(59, 0, '13', 1, '34.00', '2021-12-27', 0, '1ZACM0OlZqqJhZOEdTbTdJaCPNzKRsVigfSvGNTw'),
(60, 0, '1', 1, '85.00', '2022-01-14', 0, 'ix4IZO4FuLnVNeRaIfWWyZYWVfEwoVP3dRfOc4KM'),
(61, 0, '13', 2, '34.00', '2022-02-04', 0, 'L44fnW2eC4P4U8jRNEZoNVxJGUXgCyDUl1m2najV'),
(62, 0, '13', 1, '34.00', '2022-02-23', 0, 'uY3N0KEk03beUMhxOSkouQ3mierb8603fQgxPL6p'),
(63, 0, '10', 1, '28.00', '2022-03-07', 0, '6EuoLSGn2QQ8WqM6XZK3L3lkKbARk7j0KQm4Afc7'),
(64, 0, '39', 1, '41390.00', '2022-03-12', 0, 'HItv7UmK8M5lg37ocs568LNOFa8asHu0LNcBfHIs'),
(65, 0, '7', 1, '25.00', '2022-03-23', 0, 'wPihqEkHGD8XCNFMnzaijQVst2Nb5PM0lscCpTTs'),
(66, 0, '39', 1, '41390.00', '2022-04-21', 0, 'bbeBjdLskxs7rSykcdLBnGNjDtyNr66aGSHQEGKY'),
(67, 0, '7', 1, '25.00', '2022-05-02', 0, 'mgNJ57PRB73hef3NuIUkfRUh8zY05CFx5qjFYeLi'),
(69, 0, '39', 1, '41390.00', '2022-06-11', 0, 'YPMVcuP1wguNO5Z11FihvJ3PCr6Oujgr0i4R5Zhy'),
(70, 0, '7', 1, '25.00', '2022-07-28', 0, 'juZESLTZIzqe0H03GecXvNmaPOavaRsSkb72obCw'),
(71, 0, '28', 2, '92.00', '2022-08-23', 0, 'odpYeZAOuYoKzsYu9FkKoK4hNqm52bg1fGySZC3H'),
(72, 0, '13', 1, '34.00', '2022-08-25', 0, 'pfCpCuE5qZnuVSL5Hy52klNnDyDMTPxeOgDvat9L'),
(73, 0, '28', 1, '92.00', '2022-11-09', 0, 'J8VZDDlojVsmW3LPM4UiRzloywFloRVzfMWRJLiU'),
(74, 0, '28', 2, '92.00', '2023-03-02', 0, 'Cl1DbNx9NFA9qn2hcqOvBxZg8PGQCYJYiGznS7C6');

-- --------------------------------------------------------

--
-- Table structure for table `customers_basket_attributes`
--

DROP TABLE IF EXISTS `customers_basket_attributes`;
CREATE TABLE IF NOT EXISTS `customers_basket_attributes` (
  `customers_basket_attributes_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_basket_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `products_id` text COLLATE utf8_unicode_ci NOT NULL,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_id` int(11) NOT NULL,
  `session_id` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`customers_basket_attributes_id`),
  KEY `idx_customers_basket_att_customers_id` (`customers_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers_basket_attributes`
--

INSERT INTO `customers_basket_attributes` (`customers_basket_attributes_id`, `customers_basket_id`, `customers_id`, `products_id`, `products_options_id`, `products_options_values_id`, `session_id`) VALUES
(3, 18, 6, '28', 2, 5, 'UnrIxi6HfDvbcCKyz5YYEtm8I3ZgG02FWZsHjwK9'),
(2, 16, 7, '13', 2, 5, 'emBYHXumtkoqReWwZOTUZe0c2wPEPjioKeeq0QZA'),
(4, 19, 6, '28', 2, 6, 'UnrIxi6HfDvbcCKyz5YYEtm8I3ZgG02FWZsHjwK9'),
(7, 24, 9, '28', 2, 5, 'KYNVuBZm4z8b7d6JTp0gURe9vX7aHmMcfRGDOEpI'),
(6, 23, 9, '13', 2, 8, 'Q5qoZgPKv8SxCrVyKUcg3zNN4XsbQCEe4jUkOMXS'),
(8, 25, 9, '28', 2, 5, '1qdchcfGLwi68Ed2KTsk4zV8fYNNCCjlK1f5k5w1'),
(9, 28, 9, '13', 2, 5, '1qdchcfGLwi68Ed2KTsk4zV8fYNNCCjlK1f5k5w1'),
(10, 33, 0, '28', 2, 6, 'Tomh2R4iHSGDj9jVWwMaC9koCJKQnhPE8SmdeHAe'),
(12, 41, 11, '4', 1, 1, 'eqVi6IbHXEIqBT81WiFxDlV4uxnEUXHOHIp9CVL8'),
(13, 46, 0, '28', 2, 5, '4l8s7CovZYeEkm2LhDhVFlvKGwKTo8YziAe7IPWc'),
(14, 51, 0, '13', 2, 5, '5nocd8p6GlRwvudaUe4ZOy57snf6OJrDVyCvGU3o'),
(15, 52, 0, '13', 2, 5, 'fWlFNjbPmiZd7Oi0lAK7yZ3DfJuWNTnRvcBOjY8F'),
(16, 53, 0, '13', 2, 5, 'ctyeYiRKaJukJK9fME2Ftn94FOkLrCu6Hk19Mwj7'),
(17, 55, 0, '28', 2, 5, 'gAx69bgcUextoXtdtmb6L3mqCiy7pzwH3k9hDzGq'),
(18, 57, 0, '28', 2, 6, 'tJyvoLzpdl86DAibmXDnmTt3NLOtCDe5sg7WjuZP'),
(19, 58, 0, '13', 2, 5, 'INYAimOU2Zdz4BqX7h0pfEti4m4HUoaLyJcIIq7U'),
(20, 59, 0, '13', 2, 5, '1ZACM0OlZqqJhZOEdTbTdJaCPNzKRsVigfSvGNTw'),
(21, 61, 0, '13', 2, 5, 'L44fnW2eC4P4U8jRNEZoNVxJGUXgCyDUl1m2najV'),
(22, 62, 0, '13', 2, 5, 'uY3N0KEk03beUMhxOSkouQ3mierb8603fQgxPL6p'),
(23, 71, 0, '28', 2, 5, 'odpYeZAOuYoKzsYu9FkKoK4hNqm52bg1fGySZC3H'),
(24, 72, 0, '13', 2, 5, 'pfCpCuE5qZnuVSL5Hy52klNnDyDMTPxeOgDvat9L'),
(25, 73, 0, '28', 2, 5, 'J8VZDDlojVsmW3LPM4UiRzloywFloRVzfMWRJLiU'),
(26, 74, 0, '28', 2, 5, 'Cl1DbNx9NFA9qn2hcqOvBxZg8PGQCYJYiGznS7C6');

-- --------------------------------------------------------

--
-- Table structure for table `customers_info`
--

DROP TABLE IF EXISTS `customers_info`;
CREATE TABLE IF NOT EXISTS `customers_info` (
  `customers_info_id` int(11) NOT NULL,
  `customers_info_date_of_last_logon` datetime DEFAULT NULL,
  `customers_info_number_of_logons` int(11) DEFAULT NULL,
  `customers_info_date_account_created` datetime DEFAULT NULL,
  `customers_info_date_account_last_modified` datetime DEFAULT NULL,
  `global_product_notifications` int(11) DEFAULT 0,
  PRIMARY KEY (`customers_info_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
CREATE TABLE IF NOT EXISTS `devices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `device_type` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `ram` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `processor` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_os` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latittude` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_model` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `operating_system` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `browser_info` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_notify` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale`
--

DROP TABLE IF EXISTS `flash_sale`;
CREATE TABLE IF NOT EXISTS `flash_sale` (
  `flash_sale_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `flash_sale_products_price` decimal(15,2) NOT NULL,
  `flash_sale_date_added` int(11) NOT NULL,
  `flash_sale_last_modified` int(11) NOT NULL,
  `flash_start_date` int(11) NOT NULL,
  `flash_expires_date` int(11) NOT NULL,
  `flash_status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`flash_sale_id`),
  KEY `products_id` (`products_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flash_sale`
--

INSERT INTO `flash_sale` (`flash_sale_id`, `products_id`, `flash_sale_products_price`, `flash_sale_date_added`, `flash_sale_last_modified`, `flash_start_date`, `flash_expires_date`, `flash_status`, `created_at`, `updated_at`) VALUES
(1, 38, '120.00', 0, 0, 1629892800, 1630152000, 1, '2021-08-26 01:01:23', NULL),
(2, 40, '220.00', 0, 0, 1630579500, 1630838700, 1, '2021-09-03 00:11:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `flate_rate`
--

DROP TABLE IF EXISTS `flate_rate`;
CREATE TABLE IF NOT EXISTS `flate_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flate_rate` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `currency` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flate_rate`
--

INSERT INTO `flate_rate` (`id`, `flate_rate`, `currency`) VALUES
(1, '11', 'INR');

-- --------------------------------------------------------

--
-- Table structure for table `front_end_theme_content`
--

DROP TABLE IF EXISTS `front_end_theme_content`;
CREATE TABLE IF NOT EXISTS `front_end_theme_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `top_offers` text COLLATE utf8_unicode_ci NOT NULL,
  `headers` text COLLATE utf8_unicode_ci NOT NULL,
  `carousels` text COLLATE utf8_unicode_ci NOT NULL,
  `banners` text COLLATE utf8_unicode_ci NOT NULL,
  `footers` text COLLATE utf8_unicode_ci NOT NULL,
  `product_section_order` text COLLATE utf8_unicode_ci NOT NULL,
  `cart` text COLLATE utf8_unicode_ci NOT NULL,
  `news` text COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci NOT NULL,
  `shop` text COLLATE utf8_unicode_ci NOT NULL,
  `contact` text COLLATE utf8_unicode_ci NOT NULL,
  `login` text COLLATE utf8_unicode_ci NOT NULL,
  `transitions` text COLLATE utf8_unicode_ci NOT NULL,
  `banners_two` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `front_end_theme_content`
--

INSERT INTO `front_end_theme_content` (`id`, `top_offers`, `headers`, `carousels`, `banners`, `footers`, `product_section_order`, `cart`, `news`, `detail`, `shop`, `contact`, `login`, `transitions`, `banners_two`) VALUES
(1, '', '[\n{\n\"id\": 1,\n\"name\": \"Header One\",\n\"image\": \"images/prototypes/header1.jpg\",\n\"alt\" : \"header One\" \n},\n{\n\"id\": 2,\n\"name\": \"Header Two\",\n\"image\": \"images/prototypes/header2.jpg\",\n\"alt\" : \"header Two\" \n},\n{\n\"id\": 3,\n\"name\": \"Header Three\",\n\"image\": \"images/prototypes/header3.jpg\",\n\"alt\" : \"header Three\" \n},\n{\n\"id\": 4,\n\"name\": \"Header Four\",\n\"image\": \"images/prototypes/header4.jpg\",\n\"alt\" : \"header Four\" \n},\n{\n\"id\": 5,\n\"name\": \"Header Five\",\n\"image\": \"images/prototypes/header5.jpg\",\n\"alt\" : \"header Five\" \n},\n{\n\"id\": 6,\n\"name\": \"Header Six\",\n\"image\": \"images/prototypes/header6.jpg\",\n\"alt\" : \"header Six\" \n},\n{\n\"id\": 7,\n\"name\": \"Header Seven\",\n\"image\": \"images/prototypes/header7.jpg\",\n\"alt\" : \"header Seven\" \n},\n{\n\"id\": 8,\n\"name\": \"Header Eight\",\n\"image\": \"images/prototypes/header8.jpg\",\n\"alt\" : \"header Eight\" \n},\n{\n\"id\": 9,\n\"name\": \"Header Nine\",\n\"image\": \"images/prototypes/header9.jpg\",\n\"alt\" : \"header Nine\" \n},\n{\n\"id\": 10,\n\"name\": \"Header Ten\",\n\"image\": \"images/prototypes/header10.jpg\",\n\"alt\" : \"header Ten\" \n}\n]', '[\n{\n\"id\": 1,\n\"name\": \"Bootstrap Carousel Content Full Screen\",\n\"image\": \"images/prototypes/carousal1.jpg\",\n\"alt\": \"Bootstrap Carousel Content Full Screen\"\n},\n{\n\"id\": 2,\n\"name\": \"Bootstrap Carousel Content Full Width\",\n\"image\": \"images/prototypes/carousal2.jpg\",\n\"alt\": \"Bootstrap Carousel Content Full Width\"\n},\n{\n\"id\": 3,\n\"name\": \"Bootstrap Carousel Content with Left Banner\",\n\"image\": \"images/prototypes/carousal3.jpg\",\n\"alt\": \"Bootstrap Carousel Content with Left Banner\"\n},\n{\n\"id\": 4,\n\"name\": \"Bootstrap Carousel Content with Navigation\",\n\"image\": \"images/prototypes/carousal4.jpg\",\n\"alt\": \"Bootstrap Carousel Content with Navigation\"\n},\n{\n\"id\": 5,\n\"name\": \"Bootstrap Carousel Content with Right Banner\",\n\"image\": \"images/prototypes/carousal5.jpg\",\n\"alt\": \"Bootstrap Carousel Content with Right Banner\"\n}\n]', '[\n{\n\"id\": 1,\n\"name\": \"Banner One\",\n\"image\": \"images/prototypes/banner1.jpg\",\n\"alt\": \"Banner One\"\n},\n{\n\"id\": 2,\n\"name\": \"Banner Two\",\n\"image\": \"images/prototypes/banner2.jpg\",\n\"alt\": \"Banner Two\"\n},\n{\n\"id\": 3,\n\"name\": \"Banner Three\",\n\"image\": \"images/prototypes/banner3.jpg\",\n\"alt\": \"Banner Three\"\n},\n{\n\"id\": 4,\n\"name\": \"Banner Four\",\n\"image\": \"images/prototypes/banner4.jpg\",\n\"alt\": \"Banner Four\"\n},\n{\n\"id\": 5,\n\"name\": \"Banner Five\",\n\"image\": \"images/prototypes/banner5.jpg\",\n\"alt\": \"Banner Five\"\n},\n{\n\"id\": 6,\n\"name\": \"Banner Six\",\n\"image\": \"images/prototypes/banner6.jpg\",\n\"alt\": \"Banner Six\"\n},\n{\n\"id\": 7,\n\"name\": \"Banner Seven\",\n\"image\": \"images/prototypes/banner7.jpg\",\n\"alt\": \"Banner Seven\"\n},\n{\n\"id\": 8,\n\"name\": \"Banner Eight\",\n\"image\": \"images/prototypes/banner8.jpg\",\n\"alt\": \"Banner Eight\"\n},\n{\n\"id\": 9,\n\"name\": \"Banner Nine\",\n\"image\": \"images/prototypes/banner9.jpg\",\n\"alt\": \"Banner Nine\"\n},\n{\n\"id\": 10,\n\"name\": \"Banner Ten\",\n\"image\": \"images/prototypes/banner10.jpg\",\n\"alt\": \"Banner Ten\"\n},\n{\n\"id\": 11,\n\"name\": \"Banner Eleven\",\n\"image\": \"images/prototypes/banner11.jpg\",\n\"alt\": \"Banner Eleven\"\n},\n{\n\"id\": 12,\n\"name\": \"Banner Twelve\",\n\"image\": \"images/prototypes/banner12.jpg\",\n\"alt\": \"Banner Twelve\"\n},\n{\n\"id\": 13,\n\"name\": \"Banner Thirteen\",\n\"image\": \"images/prototypes/banner13.jpg\",\n\"alt\": \"Banner Thirteen\"\n},\n{\n\"id\": 14,\n\"name\": \"Banner Fourteen\",\n\"image\": \"images/prototypes/banner14.jpg\",\n\"alt\": \"Banner Fourteen\"\n},\n{\n\"id\": 15,\n\"name\": \"Banner Fifteen\",\n\"image\": \"images/prototypes/banner15.jpg\",\n\"alt\": \"Banner Fifteen\"\n},\n{\n\"id\": 16,\n\"name\": \"Banner Sixteen\",\n\"image\": \"images/prototypes/banner16.jpg\",\n\"alt\": \"Banner Sixteen\"\n},\n{\n\"id\": 17,\n\"name\": \"Banner Seventeen\",\n\"image\": \"images/prototypes/banner17.jpg\",\n\"alt\": \"Banner Seventeen\"\n},\n{\n\"id\": 18,\n\"name\": \"Banner Eighteen\",\n\"image\": \"images/prototypes/banner18.jpg\",\n\"alt\": \"Banner Eighteen\"\n},\n{\n\"id\": 19,\n\"name\": \"Banner Nineteen\",\n\"image\": \"images/prototypes/banner19.jpg\",\n\"alt\": \"Banner Nineteen\"\n}\n]', '[\n{\n\"id\": 1,\n\"name\": \"Footer One\",\n\"image\": \"images/prototypes/footer1.png\",\n\"alt\" : \"Footer One\"\n},\n{\n\"id\": 2,\n\"name\": \"Footer Two\",\n\"image\": \"images/prototypes/footer2.png\",\n\"alt\" : \"Footer Two\"\n},\n{\n\"id\": 3,\n\"name\": \"Footer Three\",\n\"image\": \"images/prototypes/footer3.png\",\n\"alt\" : \"Footer Three\"\n},\n{\n\"id\": 4,\n\"name\": \"Footer Four\",\n\"image\": \"images/prototypes/footer4.png\",\n\"alt\" : \"Footer Four\"\n},\n{\n\"id\": 5,\n\"name\": \"Footer Five\",\n\"image\": \"images/prototypes/footer5.png\",\n\"alt\" : \"Footer Five\"\n},\n{\n\"id\": 6,\n\"name\": \"Footer Six\",\n\"image\": \"images/prototypes/footer6.png\",\n\"alt\" : \"Footer Six\"\n},\n{\n\"id\": 7,\n\"name\": \"Footer Seven\",\n\"image\": \"images/prototypes/footer7.png\",\n\"alt\" : \"Footer Seven\"\n},\n{\n\"id\": 8,\n\"name\": \"Footer Eight\",\n\"image\": \"images/prototypes/footer8.png\",\n\"alt\" : \"Footer Eight\"\n},\n{\n\"id\": 9,\n\"name\": \"Footer Nine\",\n\"image\": \"images/prototypes/footer9.png\",\n\"alt\" : \"Footer Nine\"\n},\n{\n\"id\": 10,\n\"name\": \"Footer Ten\",\n\"image\": \"images/prototypes/footer10.png\",\n\"alt\" : \"Footer Ten\"\n}\n]', '[{\n                    \"id\": 10,\n                    \"name\": \"Second Ad Section\",\n                    \"order\": 1,\n                    \"file_name\": \"sec_ad_banner\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/sec_ad_section.jpg\",\n                    \"disabled_image\": \"images\\/prototypes\\/sec_ad_section-cross.jpg\",\n                    \"alt\": \"Second Ad Section\"\n                }, {\n                    \"id\": 5,\n                    \"name\": \"Categories\",\n                    \"order\": 2,\n                    \"file_name\": \"categories\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/categories.jpg\",\n                    \"disabled_image\": \"images\\/prototypes\\/categories-cross.jpg\",\n                    \"alt\": \"Categories\"\n                }, {\n                    \"id\": 1,\n                    \"name\": \"Banner Section\",\n                    \"order\": 3,\n                    \"file_name\": \"banner_section\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/banner_section.jpg\",\n                    \"alt\": \"Banner Section\"\n                }, {\n                    \"id\": 9,\n                    \"name\": \"Top Selling\",\n                    \"order\": 4,\n                    \"file_name\": \"top\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/top.jpg\",\n                    \"disabled_image\": \"images\\/prototypes\\/top-cross.jpg\",\n                    \"alt\": \"Top Selling\"\n                }, {\n                    \"id\": 8,\n                    \"name\": \"Newest Product Section\",\n                    \"order\": 5,\n                    \"file_name\": \"newest_product\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/newest_product.jpg\",\n                    \"disabled_image\": \"images\\/prototypes\\/newest_product-cross.jpg\",\n                    \"alt\": \"Newest Product Section\"\n                }, {\n                    \"id\": 11,\n                    \"name\": \"Tab Products View\",\n                    \"order\": 6,\n                    \"file_name\": \"tab\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/tab.jpg\",\n                    \"disabled_image\": \"images\\/prototypes\\/tab-cross.jpg\",\n                    \"alt\": \"Tab Products View\"\n                }, {\n                    \"id\": 3,\n                    \"name\": \"Special Products Section\",\n                    \"order\": 7,\n                    \"file_name\": \"special\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/special_product.jpg\",\n                    \"disabled_image\": \"images\\/prototypes\\/special_product-cross.jpg\",\n                    \"alt\": \"Special Products Section\"\n                }, {\n                    \"id\": 2,\n                    \"name\": \"Flash Sale Section\",\n                    \"order\": 8,\n                    \"file_name\": \"flash_sale_section\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/flash_sale_section.jpg\",\n                    \"disabled_image\": \"images\\/prototypes\\/flash_sale_section-cross.jpg\",\n                    \"alt\": \"Flash Sale Section\"\n                }, {\n                    \"id\": 4,\n                    \"name\": \"Ad Section\",\n                    \"order\": 9,\n                    \"file_name\": \"ad_banner_section\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/ad_banner_section.jpg\",\n                    \"disabled_image\": \"images\\/prototypes\\/ad_banner_section-cross.jpg\",\n                    \"alt\": \"Ad Section\"\n                }, {\n                    \"id\": 6,\n                    \"name\": \"Blog Section\",\n                    \"order\": 10,\n                    \"file_name\": \"blog_section\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/blog_section.jpg\",\n                    \"disabled_image\": \"images\\/prototypes\\/blog_section-cross.jpg\",\n                    \"alt\": \"Blog Section\"\n                }, {\n                    \"id\": 12,\n                    \"name\": \"Banner 2 Section\",\n                    \"order\": 11,\n                    \"file_name\": \"banner_two_section\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/sec_ad_section.jpg\",\n                    \"disabled_image\": \"images\\/prototypes\\/sec_ad_section-cross.jpg\",\n                    \"alt\": \"Banner 2 Section\"\n                }, {\n                    \"id\": 7,\n                    \"name\": \"Info Boxes\",\n                    \"order\": 12,\n                    \"file_name\": \"info_boxes\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/info_boxes.jpg\",\n                    \"disabled_image\": \"images\\/prototypes\\/info_boxes-cross.jpg\",\n                    \"alt\": \"Info Boxes\"\n                }]\n                ', '[      {         \"id\":1,       \"name\":\"Cart One\"    },    {         \"id\":2,       \"name\":\"Cart Two\"    }     ]', '[      {         \"id\":1,       \"name\":\"News One\"    },    {         \"id\":2,       \"name\":\"News Two\"    }     ]', '[  \n{  \n\"id\":1,\n\"name\":\"Product Detail Page One\"\n},\n{  \n\"id\":2,\n\"name\":\"Product Detail Page Two\"\n},\n{  \n\"id\":3,\n\"name\":\"Product Detail Page Three\"\n},\n{  \n\"id\":4,\n\"name\":\"Product Detail Page Four\"\n},\n{  \n\"id\":5,\n\"name\":\"Product Detail Page Five\"\n},\n{  \n\"id\":6,\n\"name\":\"Product Detail Page Six\"\n}\n\n]', '[      {         \"id\":1,       \"name\":\"Shop Page One\"    },    {         \"id\":2,       \"name\":\"Shop Page Two\"    },    {         \"id\":3,       \"name\":\"Shop Page Three\"    },    {         \"id\":4,       \"name\":\"Shop Page Four\"    },    {         \"id\":5,       \"name\":\"Shop Page Five\"    }     ]', '[      {         \"id\":1,       \"name\":\"Contact Page One\"    },    {         \"id\":2,       \"name\":\"Contact Page Two\"    } ]', '[      {         \"id\":1,       \"name\":\"Login Page One\"    },    {         \"id\":2,       \"name\":\"Login Page Two\"    } ]', '[ { \"id\":1, \"name\":\"Transition Zoomin\" }, { \"id\":2, \"name\":\"Transition Flashing\" }, { \"id\":3, \"name\":\"Transition Shine\" }, { \"id\":4, \"name\":\"Transition Circle\" }, { \"id\":5, \"name\":\"Transition Opacity\" } ]', '[ { \"id\": 1, \"name\": \"Banner One\", \"image\": \"images/prototypes/banner1.jpg\", \"alt\": \"Banner One\" }, { \"id\": 2, \"name\": \"Banner Two\", \"image\": \"images/prototypes/banner2.jpg\", \"alt\": \"Banner Two\" }, { \"id\": 3, \"name\": \"Banner Three\", \"image\": \"images/prototypes/banner3.jpg\", \"alt\": \"Banner Three\" }, { \"id\": 4, \"name\": \"Banner Four\", \"image\": \"images/prototypes/banner4.jpg\", \"alt\": \"Banner Four\" }, { \"id\": 5, \"name\": \"Banner Five\", \"image\": \"images/prototypes/banner5.jpg\", \"alt\": \"Banner Five\" }, { \"id\": 6, \"name\": \"Banner Six\", \"image\": \"images/prototypes/banner6.jpg\", \"alt\": \"Banner Six\" }, { \"id\": 7, \"name\": \"Banner Seven\", \"image\": \"images/prototypes/banner7.jpg\", \"alt\": \"Banner Seven\" }, { \"id\": 8, \"name\": \"Banner Eight\", \"image\": \"images/prototypes/banner8.jpg\", \"alt\": \"Banner Eight\" }, { \"id\": 9, \"name\": \"Banner Nine\", \"image\": \"images/prototypes/banner9.jpg\", \"alt\": \"Banner Nine\" }, { \"id\": 10, \"name\": \"Banner Ten\", \"image\": \"images/prototypes/banner10.jpg\", \"alt\": \"Banner Ten\" }, { \"id\": 11, \"name\": \"Banner Eleven\", \"image\": \"images/prototypes/banner11.jpg\", \"alt\": \"Banner Eleven\" }, { \"id\": 12, \"name\": \"Banner Twelve\", \"image\": \"images/prototypes/banner12.jpg\", \"alt\": \"Banner Twelve\" }, { \"id\": 13, \"name\": \"Banner Thirteen\", \"image\": \"images/prototypes/banner13.jpg\", \"alt\": \"Banner Thirteen\" }, { \"id\": 14, \"name\": \"Banner Fourteen\", \"image\": \"images/prototypes/banner14.jpg\", \"alt\": \"Banner Fourteen\" }, { \"id\": 15, \"name\": \"Banner Fifteen\", \"image\": \"images/prototypes/banner15.jpg\", \"alt\": \"Banner Fifteen\" }, { \"id\": 16, \"name\": \"Banner Sixteen\", \"image\": \"images/prototypes/banner16.jpg\", \"alt\": \"Banner Sixteen\" }, { \"id\": 17, \"name\": \"Banner Seventeen\", \"image\": \"images/prototypes/banner17.jpg\", \"alt\": \"Banner Seventeen\" }, { \"id\": 18, \"name\": \"Banner Eighteen\", \"image\": \"images/prototypes/banner18.jpg\", \"alt\": \"Banner Eighteen\" }, { \"id\": 19, \"name\": \"Banner Nineteen\", \"image\": \"images/prototypes/banner19.jpg\", \"alt\": \"Banner Nineteen\" } ]');

-- --------------------------------------------------------

--
-- Table structure for table `geo_zones`
--

DROP TABLE IF EXISTS `geo_zones`;
CREATE TABLE IF NOT EXISTS `geo_zones` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `geo_zone_description` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_banners`
--

DROP TABLE IF EXISTS `home_banners`;
CREATE TABLE IF NOT EXISTS `home_banners` (
  `home_banners_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `banner_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `text` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`home_banners_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home_banners`
--

INSERT INTO `home_banners` (`home_banners_id`, `banner_name`, `language_id`, `text`, `image`, `created_at`, `updated_at`) VALUES
(1, 'banners_1', 1, '<div class=\\\"parallax-banner-text\\\">\r\n        <h2> SNEAKER</h2>\r\n        <h4>Couples Footwear</h4>\r\n        <div class=\\\"hover-link\\\">\r\n          <a href=\\\"/shop\\\" class=\\\"btn btn-secondary swipe-to-top\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"bottom\\\" title=\\\"\\\" data-original-title=\\\"View All Range\\\">View All Range</a>\r\n        </div>  \r\n      </div>', 554, '2021-08-27 22:04:26', '2021-08-27 22:04:26'),
(2, 'banners_2', 1, '<div class=\\\"parallax-banner-text\\\">\r\n        <h2> TRENDING</h2>\r\n        <h4>Fashion Wear</h4>\r\n        <div class=\\\"hover-link\\\">\r\n          <a href=\\\"/shop\\\" class=\\\"btn btn-secondary swipe-to-top\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"bottom\\\" title=\\\"\\\" data-original-title=\\\"View All Range\\\">View All Range</a>\r\n        </div>  \r\n      </div>', 12, '2021-08-27 22:04:26', '2021-08-27 22:04:26'),
(3, 'banners_3', 1, '<div class=\\\"parallax-banner-text\\\">\r\n        <h2> BIG SALE</h2>\r\n        <h4>Women Clothing</h4>\r\n        <div class=\\\"hover-link\\\">\r\n          <a href=\\\"/shop\\\" class=\\\"btn btn-secondary swipe-to-top\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"bottom\\\" title=\\\"\\\" data-original-title=\\\"Shop Now\\\">Shop Now</a>\r\n        </div>  \r\n      </div>', 539, '2021-08-27 22:04:26', '2021-08-27 22:04:26'),
(4, 'banners_1', 4, '<div class=\\\"parallax-banner-text\\\">\r\n        <h2> حذاء رياضة</h2>\r\n        <h4>أحذية الأزواج</h4>\r\n        <div class=\\\"hover-link\\\">\r\n          <a href=\\\"/shop\\\" class=\\\"btn btn-secondary swipe-to-top\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"bottom\\\" title=\\\"\\\" data-original-title=\\\"\\\">عرض كل المدى</a>\r\n        </div>  \r\n      </div>', 13, '2020-04-02 06:21:35', '2020-04-02 06:21:35'),
(5, 'banners_2', 4, '<div class=\\\"parallax-banner-text\\\">\r\n        <h2> حذاء رياضة</h2>\r\n        <h4>أحذية الأزواج</h4>\r\n        <div class=\\\"hover-link\\\">\r\n          <a href=\\\"/shop\\\" class=\\\"btn btn-secondary swipe-to-top\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"bottom\\\" title=\\\"\\\" data-original-title=\\\"\\\">عرض كل المدى</a>\r\n        </div>  \r\n      </div>', 12, '2020-04-02 06:21:35', '2020-04-02 06:21:35'),
(6, 'banners_3', 4, '<div class=\\\"parallax-banner-text\\\">\r\n        <h2> حذاء رياضة</h2>\r\n        <h4>أحذية الأزواج</h4>\r\n        <div class=\\\"hover-link\\\">\r\n          <a href=\\\"/shop\\\" class=\\\"btn btn-secondary swipe-to-top\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"bottom\\\" title=\\\"\\\" data-original-title=\\\"\\\">عرض كل المدى</a>\r\n        </div>  \r\n      </div>', 539, '2020-04-02 06:21:35', '2020-04-02 06:21:35');

-- --------------------------------------------------------

--
-- Table structure for table `http_call_record`
--

DROP TABLE IF EXISTS `http_call_record`;
CREATE TABLE IF NOT EXISTS `http_call_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ping_time` datetime DEFAULT NULL,
  `difference_from_previous` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=558 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'IbHQO10809.jpg', 1, NULL, NULL, NULL),
(3, 'XUF1110211.png', 1, NULL, NULL, NULL),
(4, '0S9Uj10711.png', 1, NULL, NULL, NULL),
(5, '49YbL10411.png', 1, NULL, NULL, NULL),
(6, 'CaFTE08806.png', 1, NULL, NULL, NULL),
(7, 'VMd4l08506.png', 1, NULL, NULL, NULL),
(8, 'VYuRY08406.png', 1, NULL, NULL, NULL),
(9, '6whCt08506.jpg', 1, NULL, NULL, NULL),
(10, 'WJUPV08506.jpg', 1, NULL, NULL, NULL),
(11, 'e7eWv08306.jpg', 1, NULL, NULL, NULL),
(12, 'Yit5K08206.jpg', 1, NULL, NULL, NULL),
(13, 'btHwa08706.jpg', 1, NULL, NULL, NULL),
(14, 'YMYem08206.jpg', 1, NULL, NULL, NULL),
(15, 'UGx6208106.jpg', 1, NULL, NULL, NULL),
(16, 'bxnJY08206.jpg', 1, NULL, NULL, NULL),
(17, 'Lzysd08606.jpg', 1, NULL, NULL, NULL),
(18, 'iOCyM08406.jpg', 1, NULL, NULL, NULL),
(19, 'nKtCS10408.jpg', 1, NULL, NULL, NULL),
(20, '1rpGI10408.jpg', 1, NULL, NULL, NULL),
(21, 'fuZZQ10908.jpg', 1, NULL, NULL, NULL),
(22, 'nFwns10208.jpg', 1, NULL, NULL, NULL),
(23, 'S7egL10508.jpg', 1, NULL, NULL, NULL),
(24, '6HK8810808.jpg', 1, NULL, NULL, NULL),
(25, 'lHhLc10508.jpg', 1, NULL, NULL, NULL),
(26, 'FAQXJ10808.jpg', 1, NULL, NULL, NULL),
(27, 'qeaXb10708.jpg', 1, NULL, NULL, NULL),
(28, 'pc7OR10108.jpg', 1, NULL, NULL, NULL),
(29, '4iGAB10408.jpg', 1, NULL, NULL, NULL),
(30, 'MImPw10908.jpg', 1, NULL, NULL, NULL),
(31, 'X2FFc10408.jpg', 1, NULL, NULL, NULL),
(32, 'RDy6w10209.jpg', 1, NULL, NULL, NULL),
(33, 'BD0pB10609.jpg', 1, NULL, NULL, NULL),
(34, 'TiZmT10609.jpg', 1, NULL, NULL, NULL),
(35, 'gvSzZ10609.jpg', 1, NULL, NULL, NULL),
(36, 'ZskKH10209.jpg', 1, NULL, NULL, NULL),
(37, 'HHMIU10209.jpg', 1, NULL, NULL, NULL),
(38, 'i6m8Y10109.jpg', 1, NULL, NULL, NULL),
(39, 'G5JbM10109.jpg', 1, NULL, NULL, NULL),
(40, 'lDYLZ10109.jpg', 1, NULL, NULL, NULL),
(41, 'a9gid10810.jpg', 1, NULL, NULL, NULL),
(42, 'FBsl810310.jpg', 1, NULL, NULL, NULL),
(43, 'TQHh910310.jpg', 1, NULL, NULL, NULL),
(44, 'KdvHm10610.jpg', 1, NULL, NULL, NULL),
(45, 'CSPTw10810.jpg', 1, NULL, NULL, NULL),
(46, 'w1bCe10710.jpg', 1, NULL, NULL, NULL),
(47, 'Jn03g10811.jpg', 1, NULL, NULL, NULL),
(48, 'UD1eE10411.jpg', 1, NULL, NULL, NULL),
(49, 'nFx9F10711.jpg', 1, NULL, NULL, NULL),
(50, 'ZKyEe10811.jpg', 1, NULL, NULL, NULL),
(51, 'YVab810211.jpg', 1, NULL, NULL, NULL),
(52, 'UJELm10511.jpg', 1, NULL, NULL, NULL),
(53, 'JrqCh10411.jpg', 1, NULL, NULL, NULL),
(54, 'gwULS10411.jpg', 1, NULL, NULL, NULL),
(55, 'PWvbj10711.jpg', 1, NULL, NULL, NULL),
(56, 'mU1fw10111.jpg', 1, NULL, NULL, NULL),
(57, 'sUXLY10711.jpg', 1, NULL, NULL, NULL),
(58, 't2tHr10911.jpg', 1, NULL, NULL, NULL),
(59, 'grG9M10611.jpg', 1, NULL, NULL, NULL),
(60, 'nCUtL10811.jpg', 1, NULL, NULL, NULL),
(61, 'Im3MP10612.jpg', 1, NULL, NULL, NULL),
(62, 'L2KRw10412.jpg', 1, NULL, NULL, NULL),
(63, 'bfwnd10612.jpg', 1, NULL, NULL, NULL),
(64, 'ZGVQ310912.png', 1, NULL, NULL, NULL),
(65, 'IVJos10612.png', 1, NULL, NULL, NULL),
(66, 'K0RzI10912.png', 1, NULL, NULL, NULL),
(67, 'GMndX10212.png', 1, NULL, NULL, NULL),
(68, '92UoU10912.png', 1, NULL, NULL, NULL),
(69, 'R913310312.png', 1, NULL, NULL, NULL),
(70, 'Sq0yK10912.png', 1, NULL, NULL, NULL),
(71, 'Ytqae10412.png', 1, NULL, NULL, NULL),
(72, 'A0KBI10412.png', 1, NULL, NULL, NULL),
(73, 'f5l5x10612.png', 1, NULL, NULL, NULL),
(74, 'T5v1s10612.png', 1, NULL, NULL, NULL),
(75, 'nyisU10112.png', 1, NULL, NULL, NULL),
(76, 'UioPp10612.png', 1, NULL, NULL, NULL),
(77, 'Xx8nL10712.png', 1, NULL, NULL, NULL),
(78, 'iKgxC10712.png', 1, NULL, NULL, NULL),
(79, 'IocF910112.png', 1, NULL, NULL, NULL),
(80, 'X3byA10112.png', 1, NULL, NULL, NULL),
(81, '1o0wF10812.png', 1, NULL, NULL, NULL),
(82, 'VODK910712.png', 1, NULL, NULL, NULL),
(257, 'A1S9C19708.png', 1, NULL, NULL, NULL),
(258, 'IhmdY19708.jpg', 1, NULL, NULL, NULL),
(259, '20nV819208.png', 1, NULL, NULL, NULL),
(260, '3DDqm19808.jpg', 1, NULL, NULL, NULL),
(261, 'Ma53619508.png', 1, NULL, NULL, NULL),
(262, '1N5lx19108.jpg', 1, NULL, NULL, NULL),
(263, 'm67vJ19608.jpg', 1, NULL, NULL, NULL),
(264, 'onxBS19208.png', 1, NULL, NULL, NULL),
(265, 'Epkb419908.png', 1, NULL, NULL, NULL),
(266, 'yq7Uj19908.jpg', 1, NULL, NULL, NULL),
(267, '4Cg3c19608.png', 1, NULL, NULL, NULL),
(268, 'cXJMf19808.jpg', 1, NULL, NULL, NULL),
(269, '0hsWz19508.png', 1, NULL, NULL, NULL),
(270, '0PIiD19808.jpg', 1, NULL, NULL, NULL),
(271, 'ldLJf19208.png', 1, NULL, NULL, NULL),
(272, 'jRHM719108.jpg', 1, NULL, NULL, NULL),
(273, 'I1gzM19408.png', 1, NULL, NULL, NULL),
(274, 'JCyV619708.jpg', 1, NULL, NULL, NULL),
(275, 'HVCxT19108.png', 1, NULL, NULL, NULL),
(276, 'PLELY19408.jpg', 1, NULL, NULL, NULL),
(277, 'BoeDL19408.png', 1, NULL, NULL, NULL),
(278, 'CLmuf19708.jpg', 1, NULL, NULL, NULL),
(279, 'ZVy6T19808.jpg', 1, NULL, NULL, NULL),
(280, 'wYb7s19908.png', 1, NULL, NULL, NULL),
(281, 'XdnOS19308.png', 1, NULL, NULL, NULL),
(282, 'jdXhv19208.jpg', 1, NULL, NULL, NULL),
(283, '4LFTq19608.png', 1, NULL, NULL, NULL),
(284, 'KbJoX19608.jpg', 1, NULL, NULL, NULL),
(285, '3YJgr19308.png', 1, NULL, NULL, NULL),
(286, 'sDlxw19408.jpg', 1, NULL, NULL, NULL),
(287, 'LXeLb19908.jpg', 1, NULL, NULL, NULL),
(288, 'uhwNl19708.jpg', 1, NULL, NULL, NULL),
(289, 'A8tpH19408.jpg', 1, NULL, NULL, NULL),
(290, 'i0ux819508.jpg', 1, NULL, NULL, NULL),
(291, 'WqoFo19208.jpg', 1, NULL, NULL, NULL),
(292, 'AHbI419308.jpg', 1, NULL, NULL, NULL),
(293, 'a455C19308.jpg', 1, NULL, NULL, NULL),
(294, 'wPXR419508.jpg', 1, NULL, NULL, NULL),
(295, 'yiOVx19908.jpg', 1, NULL, NULL, NULL),
(296, 'xoOJv19608.jpg', 1, NULL, NULL, NULL),
(297, 'MfQ4H19108.jpg', 1, NULL, NULL, NULL),
(298, 'Ldxgn19609.jpg', 1, NULL, NULL, NULL),
(299, 'EH8cD19409.jpg', 1, NULL, NULL, NULL),
(300, '9j0ay19709.jpg', 1, NULL, NULL, NULL),
(301, 'pCDlz19109.jpg', 1, NULL, NULL, NULL),
(302, '9xygZ19809.jpg', 1, NULL, NULL, NULL),
(303, 'DSMOD19709.jpg', 1, NULL, NULL, NULL),
(304, 'ORnu519309.jpg', 1, NULL, NULL, NULL),
(305, 'aOtwc19909.jpg', 1, NULL, NULL, NULL),
(306, '6YsTj19909.jpg', 1, NULL, NULL, NULL),
(307, 'mXDLS19409.jpg', 1, NULL, NULL, NULL),
(308, 'OT0oU19309.jpg', 1, NULL, NULL, NULL),
(309, 'dgrQM19109.jpg', 1, NULL, NULL, NULL),
(310, 'pwD0319609.jpg', 1, NULL, NULL, NULL),
(311, 'toR1u19909.jpg', 1, NULL, NULL, NULL),
(312, 'DkrSs19810.jpg', 1, NULL, NULL, NULL),
(313, 'g6Owy19810.jpg', 1, NULL, NULL, NULL),
(314, 'KnBr519710.jpg', 1, NULL, NULL, NULL),
(315, 'TWvJK19410.jpg', 1, NULL, NULL, NULL),
(316, '7LsVG19310.jpg', 1, NULL, NULL, NULL),
(317, 'YLMOh19210.jpg', 1, NULL, NULL, NULL),
(318, '0kXac19210.jpg', 1, NULL, NULL, NULL),
(319, 'tJqpf19810.jpg', 1, NULL, NULL, NULL),
(320, 'WCd6y19910.jpg', 1, NULL, NULL, NULL),
(321, 'O4Zbk19710.jpg', 1, NULL, NULL, NULL),
(322, 'JUSJa19210.jpg', 1, NULL, NULL, NULL),
(323, 'n4Gmy19810.jpg', 1, NULL, NULL, NULL),
(324, '8mjRf19210.jpg', 1, NULL, NULL, NULL),
(325, 'I4Pux19210.jpg', 1, NULL, NULL, NULL),
(326, '0sKGd19310.jpg', 1, NULL, NULL, NULL),
(327, 'l1xuY19110.jpg', 1, NULL, NULL, NULL),
(328, '9LpEr19110.jpg', 1, NULL, NULL, NULL),
(329, 'nsvRx19410.jpg', 1, NULL, NULL, NULL),
(330, '7n3HJ19410.jpg', 1, NULL, NULL, NULL),
(331, 'vx6QW19610.jpg', 1, NULL, NULL, NULL),
(332, 'e8tKu19210.jpg', 1, NULL, NULL, NULL),
(333, 'iDMNz19310.jpg', 1, NULL, NULL, NULL),
(334, 'doDBr19210.jpg', 1, NULL, NULL, NULL),
(335, 'b4lEc19910.jpg', 1, NULL, NULL, NULL),
(336, 'Xwlth19610.jpg', 1, NULL, NULL, NULL),
(337, 'luQnk19210.jpg', 1, NULL, NULL, NULL),
(338, '6h8UU19710.jpg', 1, NULL, NULL, NULL),
(339, 'viEGg19911.jpg', 1, NULL, NULL, NULL),
(340, '2Ggn319911.jpg', 1, NULL, NULL, NULL),
(341, 'm0yNj19911.jpg', 1, NULL, NULL, NULL),
(342, 'Dzd2519111.jpg', 1, NULL, NULL, NULL),
(343, '1ig7319811.jpg', 1, NULL, NULL, NULL),
(344, 'iTQ7j19211.jpg', 1, NULL, NULL, NULL),
(345, 'TSTeu19611.jpg', 1, NULL, NULL, NULL),
(346, '72L9l19911.jpg', 1, NULL, NULL, NULL),
(347, 'mWix319411.jpg', 1, NULL, NULL, NULL),
(348, 'hi3PN19511.jpg', 1, NULL, NULL, NULL),
(349, 'i8sDd19911.jpg', 1, NULL, NULL, NULL),
(350, 'phUDg19511.jpg', 1, NULL, NULL, NULL),
(351, '3jHHY19511.jpg', 1, NULL, NULL, NULL),
(352, '9fyvN19411.jpg', 1, NULL, NULL, NULL),
(353, 'HxGza19611.jpg', 1, NULL, NULL, NULL),
(354, 'nJ44l19411.jpg', 1, NULL, NULL, NULL),
(355, 'nQlqE19511.jpg', 1, NULL, NULL, NULL),
(356, 'swNSy19911.jpg', 1, NULL, NULL, NULL),
(357, 'sMdMm19611.jpg', 1, NULL, NULL, NULL),
(358, 'mr5Yt19211.jpg', 1, NULL, NULL, NULL),
(359, 'cbPj519211.jpg', 1, NULL, NULL, NULL),
(360, 'csgAQ19111.jpg', 1, NULL, NULL, NULL),
(361, 'rfEnb19911.jpg', 1, NULL, NULL, NULL),
(362, '52rY219211.jpg', 1, NULL, NULL, NULL),
(363, 'YvzxH19111.jpg', 1, NULL, NULL, NULL),
(364, '36jAr19511.jpg', 1, NULL, NULL, NULL),
(365, '0Ygma19611.jpg', 1, NULL, NULL, NULL),
(366, 'z3bmL19111.jpg', 1, NULL, NULL, NULL),
(367, 'yPQ6h19111.jpg', 1, NULL, NULL, NULL),
(368, 'I8Kak19711.jpg', 1, NULL, NULL, NULL),
(369, '3P1Yv19211.jpg', 1, NULL, NULL, NULL),
(370, 'FMst219511.jpg', 1, NULL, NULL, NULL),
(371, 'MwDiB19411.jpg', 1, NULL, NULL, NULL),
(372, 'T5YSn19111.jpg', 1, NULL, NULL, NULL),
(373, 'XxPsZ19411.jpg', 1, NULL, NULL, NULL),
(374, 'FCnb919311.jpg', 1, NULL, NULL, NULL),
(375, 'j7Tq119211.jpg', 1, NULL, NULL, NULL),
(376, '2WDAU19811.jpg', 1, NULL, NULL, NULL),
(377, 'JoP4W19611.jpg', 1, NULL, NULL, NULL),
(378, '3MBuE19511.jpg', 1, NULL, NULL, NULL),
(379, '3Z4tF19611.jpg', 1, NULL, NULL, NULL),
(380, 'boehz19211.jpg', 1, NULL, NULL, NULL),
(381, 'nb2iB19311.jpg', 1, NULL, NULL, NULL),
(382, 'N9rcj19811.jpg', 1, NULL, NULL, NULL),
(383, 'qbKF719611.jpg', 1, NULL, NULL, NULL),
(384, 'J2XYc19411.jpg', 1, NULL, NULL, NULL),
(385, 'OAQ7919311.jpg', 1, NULL, NULL, NULL),
(386, 'AHkbG19811.jpg', 1, NULL, NULL, NULL),
(387, 'LRiDA19411.jpg', 1, NULL, NULL, NULL),
(388, 'QWlDN19611.jpg', 1, NULL, NULL, NULL),
(389, 'VEodV19811.jpg', 1, NULL, NULL, NULL),
(390, 'mjyBU19111.jpg', 1, NULL, NULL, NULL),
(391, 'QL8Lj19911.jpg', 1, NULL, NULL, NULL),
(392, 'Ticne19811.jpg', 1, NULL, NULL, NULL),
(393, '1sjR619111.jpg', 1, NULL, NULL, NULL),
(394, 'cv1rs19611.jpg', 1, NULL, NULL, NULL),
(395, 'MVmBl19211.jpg', 1, NULL, NULL, NULL),
(396, 'TLetF19511.jpg', 1, NULL, NULL, NULL),
(397, 'XMnpu19311.jpg', 1, NULL, NULL, NULL),
(398, 'WbV9019511.jpg', 1, NULL, NULL, NULL),
(399, 'U01j519111.jpg', 1, NULL, NULL, NULL),
(400, 'AEP0C19311.jpg', 1, NULL, NULL, NULL),
(401, 'n9FE219911.jpg', 1, NULL, NULL, NULL),
(402, 'CEOYM19611.jpg', 1, NULL, NULL, NULL),
(403, 'VHCwl19811.jpg', 1, NULL, NULL, NULL),
(404, 'dMNk819711.jpg', 1, NULL, NULL, NULL),
(405, '64a7R19711.jpg', 1, NULL, NULL, NULL),
(406, 'v3tvW19111.jpg', 1, NULL, NULL, NULL),
(407, '5PC3y19811.jpg', 1, NULL, NULL, NULL),
(408, 'U3hD619711.jpg', 1, NULL, NULL, NULL),
(409, 'EbCku19411.jpg', 1, NULL, NULL, NULL),
(410, 'kWSbk19511.jpg', 1, NULL, NULL, NULL),
(411, 'LIhLe19311.jpg', 1, NULL, NULL, NULL),
(412, 'K7HHF19111.jpg', 1, NULL, NULL, NULL),
(413, '4sd9A19111.jpg', 1, NULL, NULL, NULL),
(414, 'HmhjH19711.jpg', 1, NULL, NULL, NULL),
(415, 'lCzZV19811.jpg', 1, NULL, NULL, NULL),
(416, 'MgCKq19711.jpg', 1, NULL, NULL, NULL),
(417, 'ol2sB24311.jpg', 1, NULL, NULL, NULL),
(418, 'NySmM24311.jpg', 1, NULL, NULL, NULL),
(419, '5xN6v24411.jpg', 1, NULL, NULL, NULL),
(420, 'CWYQi24511.jpg', 1, NULL, NULL, NULL),
(421, 'laefk24511.jpg', 1, NULL, NULL, NULL),
(422, '6ykQ424511.jpg', 1, NULL, NULL, NULL),
(423, 'BAG2K24312.jpg', 1, NULL, NULL, NULL),
(424, 'wG9GE24612.jpg', 1, NULL, NULL, NULL),
(425, 'iRgnE25611.png', 1, NULL, NULL, NULL),
(426, 'ifpU725811.jpg', 1, NULL, NULL, NULL),
(427, 'rzdmu25612.png', 1, NULL, NULL, NULL),
(428, 'uNZd125612.png', 1, NULL, NULL, NULL),
(430, 'blSUS27710.jpg', 1, NULL, NULL, NULL),
(431, 'vURED27710.jpg', 1, NULL, NULL, NULL),
(432, 'Ft15D27610.jpg', 1, NULL, NULL, NULL),
(433, 'ILNqR27110.jpg', 1, NULL, NULL, NULL),
(434, 'oSENw27310.jpg', 1, NULL, NULL, NULL),
(435, 'g96za27410.jpg', 1, NULL, NULL, NULL),
(436, 'yVA2Q27110.jpg', 1, NULL, NULL, NULL),
(437, 'vDsMN27610.jpg', 1, NULL, NULL, NULL),
(438, 'rL6XQ27310.jpg', 1, NULL, NULL, NULL),
(439, 'A1s7V27110.jpg', 1, NULL, NULL, NULL),
(440, 'mo6Yk27410.jpg', 1, NULL, NULL, NULL),
(441, 'cUhfM27110.jpg', 1, NULL, NULL, NULL),
(442, '8EBLr27610.jpg', 1, NULL, NULL, NULL),
(443, 'c449I27810.jpg', 1, NULL, NULL, NULL),
(444, 'reUJM27310.jpg', 1, NULL, NULL, NULL),
(445, 'ciRFe27710.jpg', 1, NULL, NULL, NULL),
(446, '2nx0h27410.jpg', 1, NULL, NULL, NULL),
(447, 'CLA2s27610.jpg', 1, NULL, NULL, NULL),
(448, 'qotAc27710.jpg', 1, NULL, NULL, NULL),
(449, 'souUX27810.jpg', 1, NULL, NULL, NULL),
(450, 'z3Qtc27512.png', 1, NULL, NULL, NULL),
(451, 'y74yW01108.jpg', 1, NULL, NULL, NULL),
(452, 'gTr9301908.jpg', 1, NULL, NULL, NULL),
(453, '4A9AD01801.jpg', 1, NULL, NULL, NULL),
(454, 'ZPmjN01301.jpg', 1, NULL, NULL, NULL),
(455, 'ypwlO01601.jpg', 1, NULL, NULL, NULL),
(456, 'YAaqM01901.jpg', 1, NULL, NULL, NULL),
(457, 'LTvGM01301.jpg', 1, NULL, NULL, NULL),
(458, '8zBL302407.png', 1, NULL, NULL, NULL),
(459, 'kzLG219201.jpg', 1, NULL, NULL, NULL),
(460, '4wDb519601.jpg', 1, NULL, NULL, NULL),
(461, 'roLuh19801.jpg', 1, NULL, NULL, NULL),
(462, '7OI5e19501.jpg', 1, NULL, NULL, NULL),
(463, 'SHVFB19501.jpg', 1, NULL, NULL, NULL),
(464, 'dn1K219901.jpg', 1, NULL, NULL, NULL),
(495, 'jzm9Z19603.jpg', 1, NULL, NULL, NULL),
(494, 'JiDWS19303.jpg', 1, NULL, NULL, NULL),
(493, 'VXmx319303.jpg', 1, NULL, NULL, NULL),
(492, '7zlLI19903.jpg', 1, NULL, NULL, NULL),
(491, 'U361f19603.jpg', 1, NULL, NULL, NULL),
(490, 'IjJ4x19202.jpg', 1, NULL, NULL, NULL),
(489, 'aqK6Q19402.jpg', 1, NULL, NULL, NULL),
(488, 'Apd1i19902.jpg', 1, NULL, NULL, NULL),
(487, 'e8Uh519302.jpg', 1, NULL, NULL, NULL),
(486, 'sQWL719202.jpg', 1, NULL, NULL, NULL),
(485, 'i0UZO19402.jpg', 1, NULL, NULL, NULL),
(484, 'gt4aI19102.jpg', 1, NULL, NULL, NULL),
(483, 'RE0II19402.jpg', 1, NULL, NULL, NULL),
(496, 'ZGQzk20811.jpg', 1, NULL, NULL, NULL),
(497, 'NpNrm20611.jpg', 1, NULL, NULL, NULL),
(498, 'XPgIC20911.jpg', 1, NULL, NULL, NULL),
(499, 'VmtxP20911.jpg', 1, NULL, NULL, NULL),
(500, 'QAdqa20111.jpg', 1, NULL, NULL, NULL),
(501, 'wQGHA20911.jpg', 1, NULL, NULL, NULL),
(502, 'R0yLD20611.jpg', 1, NULL, NULL, NULL),
(503, 'GKLNM20111.jpg', 1, NULL, NULL, NULL),
(504, 'zm4sn20811.jpg', 1, NULL, NULL, NULL),
(505, 'ug42t20411.jpg', 1, NULL, NULL, NULL),
(506, '21hNs20511.jpg', 1, NULL, NULL, NULL),
(507, 'cgm7r20911.jpg', 1, NULL, NULL, NULL),
(508, 'BdrR320111.jpg', 1, NULL, NULL, NULL),
(509, '228jM20511.jpg', 1, NULL, NULL, NULL),
(510, 'L1lXk20111.jpg', 1, NULL, NULL, NULL),
(511, 'GrSV020311.jpg', 1, NULL, NULL, NULL),
(512, 'gOyKf20211.jpg', 1, NULL, NULL, NULL),
(513, 'fj2pW20711.jpg', 1, NULL, NULL, NULL),
(514, '8pXSd20211.jpg', 1, NULL, NULL, NULL),
(515, 'dMGvd20411.jpg', 1, NULL, NULL, NULL),
(516, '6DbzH20711.jpg', 1, NULL, NULL, NULL),
(517, '2lM7y20211.jpg', 1, NULL, NULL, NULL),
(518, 'kgVrx20811.jpg', 1, NULL, NULL, NULL),
(519, 'XCslh20311.jpg', 1, NULL, NULL, NULL),
(520, '9dgQ020511.jpg', 1, NULL, NULL, NULL),
(521, 'pZ1bH20411.jpg', 1, NULL, NULL, NULL),
(522, 'xl9k720411.jpg', 1, NULL, NULL, NULL),
(523, '7cNGq20711.jpg', 1, NULL, NULL, NULL),
(524, 'qcLGW20311.jpg', 1, NULL, NULL, NULL),
(525, 'uatVd20111.jpg', 1, NULL, NULL, NULL),
(526, '2segQ20911.jpg', 1, NULL, NULL, NULL),
(527, 'dbzAF20511.jpg', 1, NULL, NULL, NULL),
(528, 'ruFRW20511.jpg', 1, NULL, NULL, NULL),
(529, '8qJMb20712.jpg', 1, NULL, NULL, NULL),
(530, '4kD3S20412.jpg', 1, NULL, NULL, NULL),
(531, 'FbFX320512.jpg', 1, NULL, NULL, NULL),
(532, 'xv5F720212.jpg', 1, NULL, NULL, NULL),
(533, 'WDeDC20512.jpg', 1, NULL, NULL, NULL),
(534, '287xt20312.jpg', 1, NULL, NULL, NULL),
(535, 'kp7IT19104.jpg', 1, NULL, NULL, NULL),
(536, 'dYoZ120612.jpg', 1, NULL, NULL, NULL),
(537, 'ianfk25812.png', 1, NULL, NULL, NULL),
(538, 'FuDHg25712.png', 1, NULL, NULL, NULL),
(539, '5t74g02911.jpg', 1, NULL, NULL, NULL),
(540, 'zCrH522712.jpg', 2, NULL, NULL, NULL),
(541, 'gwcnC23802.jpeg', 2, NULL, NULL, NULL),
(542, 'l3RaK23202.jpg', 2, NULL, NULL, NULL),
(543, '5GiCu23502.jpg', 2, NULL, NULL, NULL),
(544, 'owB1f05101.png', 1, NULL, NULL, NULL),
(545, 'FmVYN13111.png', 1, NULL, NULL, NULL),
(546, 'AYFEx22811.jpg', 1, NULL, NULL, NULL),
(547, '1KJps26705.png', 2, NULL, NULL, NULL),
(548, 'uVDlF26605.jpg', 2, NULL, NULL, NULL),
(549, 'UzwgX26105.jpg', 2, NULL, NULL, NULL),
(550, 'uDvE826205.jpg', 2, NULL, NULL, NULL),
(551, '5HDPR26206.jpg', 2, NULL, NULL, NULL),
(552, 'MtsCE28202.jpg', 2, NULL, NULL, NULL),
(553, 'LjRQr28803.jpg', 2, NULL, NULL, NULL),
(554, 'hdPUp28503.jpg', 2, NULL, NULL, NULL),
(555, 'iwt1228803.jpg', 2, NULL, NULL, NULL),
(556, 'iJykv03605.jpg', 2, NULL, NULL, NULL),
(557, '2K7BU14606.jpg', 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `image_categories`
--

DROP TABLE IF EXISTS `image_categories`;
CREATE TABLE IF NOT EXISTS `image_categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image_id` int(10) UNSIGNED NOT NULL,
  `image_type` enum('ACTUAL','THUMBNAIL','LARGE','MEDIUM') COLLATE utf8_unicode_ci NOT NULL,
  `height` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=728 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `image_categories`
--

INSERT INTO `image_categories` (`id`, `image_id`, `image_type`, `height`, `width`, `path`, `created_at`, `updated_at`) VALUES
(1, 1, 'ACTUAL', 20, 30, 'images/media/2020/12/IbHQO10809.jpg', NULL, NULL),
(7, 6, 'ACTUAL', 273, 240, 'images/media/2020/12/CaFTE08806.png', NULL, NULL),
(8, 7, 'ACTUAL', 64, 64, 'images/media/2020/12/VMd4l08506.png', NULL, NULL),
(9, 8, 'ACTUAL', 164, 161, 'images/media/2020/12/VYuRY08406.png', NULL, NULL),
(10, 9, 'ACTUAL', 277, 370, 'images/media/2020/12/6whCt08506.jpg', NULL, NULL),
(11, 10, 'ACTUAL', 277, 370, 'images/media/2020/12/WJUPV08506.jpg', NULL, NULL),
(12, 11, 'ACTUAL', 278, 370, 'images/media/2020/12/e7eWv08306.jpg', NULL, NULL),
(13, 12, 'ACTUAL', 430, 1599, 'images/media/2020/12/Yit5K08206.jpg', NULL, NULL),
(14, 13, 'ACTUAL', 236, 1171, 'images/media/2020/12/btHwa08706.jpg', NULL, NULL),
(15, 14, 'ACTUAL', 177, 369, 'images/media/2020/12/YMYem08206.jpg', NULL, NULL),
(16, 15, 'ACTUAL', 179, 369, 'images/media/2020/12/UGx6208106.jpg', NULL, NULL),
(17, 16, 'ACTUAL', 418, 833, 'images/media/2020/12/bxnJY08206.jpg', NULL, NULL),
(18, 17, 'ACTUAL', 418, 834, 'images/media/2020/12/Lzysd08606.jpg', NULL, NULL),
(19, 18, 'ACTUAL', 418, 834, 'images/media/2020/12/iOCyM08406.jpg', NULL, NULL),
(20, 19, 'ACTUAL', 425, 1600, 'images/media/2020/12/nKtCS10408.jpg', NULL, NULL),
(21, 20, 'ACTUAL', 425, 1600, 'images/media/2020/12/1rpGI10408.jpg', NULL, NULL),
(22, 21, 'ACTUAL', 425, 1600, 'images/media/2020/12/fuZZQ10908.jpg', NULL, NULL),
(23, 22, 'ACTUAL', 421, 1170, 'images/media/2020/12/nFwns10208.jpg', NULL, NULL),
(24, 23, 'ACTUAL', 421, 1170, 'images/media/2020/12/S7egL10508.jpg', NULL, NULL),
(25, 24, 'ACTUAL', 421, 1170, 'images/media/2020/12/6HK8810808.jpg', NULL, NULL),
(26, 25, 'ACTUAL', 418, 833, 'images/media/2020/12/lHhLc10508.jpg', NULL, NULL),
(27, 26, 'ACTUAL', 418, 834, 'images/media/2020/12/FAQXJ10808.jpg', NULL, NULL),
(28, 27, 'ACTUAL', 418, 834, 'images/media/2020/12/qeaXb10708.jpg', NULL, NULL),
(29, 28, 'ACTUAL', 298, 769, 'images/media/2020/12/pc7OR10108.jpg', NULL, NULL),
(30, 29, 'ACTUAL', 548, 370, 'images/media/2020/12/4iGAB10408.jpg', NULL, NULL),
(31, 30, 'ACTUAL', 217, 366, 'images/media/2020/12/MImPw10908.jpg', NULL, NULL),
(32, 31, 'ACTUAL', 217, 366, 'images/media/2020/12/X2FFc10408.jpg', NULL, NULL),
(33, 32, 'ACTUAL', 228, 269, 'images/media/2020/12/RDy6w10209.jpg', NULL, NULL),
(34, 33, 'ACTUAL', 228, 269, 'images/media/2020/12/BD0pB10609.jpg', NULL, NULL),
(35, 34, 'ACTUAL', 228, 268, 'images/media/2020/12/TiZmT10609.jpg', NULL, NULL),
(36, 35, 'ACTUAL', 229, 269, 'images/media/2020/12/gvSzZ10609.jpg', NULL, NULL),
(37, 36, 'ACTUAL', 489, 569, 'images/media/2020/12/ZskKH10209.jpg', NULL, NULL),
(38, 37, 'ACTUAL', 211, 270, 'images/media/2020/12/HHMIU10209.jpg', NULL, NULL),
(39, 38, 'ACTUAL', 452, 571, 'images/media/2020/12/i6m8Y10109.jpg', NULL, NULL),
(40, 39, 'ACTUAL', 211, 270, 'images/media/2020/12/G5JbM10109.jpg', NULL, NULL),
(41, 40, 'ACTUAL', 211, 570, 'images/media/2020/12/lDYLZ10109.jpg', NULL, NULL),
(42, 41, 'ACTUAL', 297, 568, 'images/media/2020/12/a9gid10810.jpg', NULL, NULL),
(43, 42, 'ACTUAL', 298, 567, 'images/media/2020/12/FBsl810310.jpg', NULL, NULL),
(44, 43, 'ACTUAL', 211, 270, 'images/media/2020/12/TQHh910310.jpg', NULL, NULL),
(45, 44, 'ACTUAL', 451, 570, 'images/media/2020/12/KdvHm10610.jpg', NULL, NULL),
(46, 45, 'ACTUAL', 210, 270, 'images/media/2020/12/CSPTw10810.jpg', NULL, NULL),
(47, 46, 'ACTUAL', 451, 270, 'images/media/2020/12/w1bCe10710.jpg', NULL, NULL),
(48, 47, 'ACTUAL', 490, 370, 'images/media/2020/12/Jn03g10811.jpg', NULL, NULL),
(49, 48, 'ACTUAL', 230, 370, 'images/media/2020/12/UD1eE10411.jpg', NULL, NULL),
(50, 49, 'ACTUAL', 230, 370, 'images/media/2020/12/nFx9F10711.jpg', NULL, NULL),
(51, 50, 'ACTUAL', 230, 370, 'images/media/2020/12/ZKyEe10811.jpg', NULL, NULL),
(52, 51, 'ACTUAL', 230, 370, 'images/media/2020/12/YVab810211.jpg', NULL, NULL),
(53, 52, 'ACTUAL', 259, 770, 'images/media/2020/12/UJELm10511.jpg', NULL, NULL),
(54, 53, 'ACTUAL', 258, 770, 'images/media/2020/12/JrqCh10411.jpg', NULL, NULL),
(55, 54, 'ACTUAL', 547, 370, 'images/media/2020/12/gwULS10411.jpg', NULL, NULL),
(56, 55, 'ACTUAL', 208, 465, 'images/media/2020/12/PWvbj10711.jpg', NULL, NULL),
(57, 56, 'ACTUAL', 208, 465, 'images/media/2020/12/mU1fw10111.jpg', NULL, NULL),
(58, 57, 'ACTUAL', 210, 270, 'images/media/2020/12/sUXLY10711.jpg', NULL, NULL),
(59, 58, 'ACTUAL', 210, 270, 'images/media/2020/12/t2tHr10911.jpg', NULL, NULL),
(60, 59, 'ACTUAL', 210, 370, 'images/media/2020/12/grG9M10611.jpg', NULL, NULL),
(61, 60, 'ACTUAL', 210, 370, 'images/media/2020/12/nCUtL10811.jpg', NULL, NULL),
(62, 61, 'ACTUAL', 418, 885, 'images/media/2020/12/Im3MP10612.jpg', NULL, NULL),
(63, 62, 'ACTUAL', 418, 885, 'images/media/2020/12/L2KRw10412.jpg', NULL, NULL),
(64, 63, 'ACTUAL', 418, 885, 'images/media/2020/12/bfwnd10612.jpg', NULL, NULL),
(65, 64, 'ACTUAL', 64, 64, 'images/media/2020/12/ZGVQ310912.png', NULL, NULL),
(66, 65, 'ACTUAL', 64, 64, 'images/media/2020/12/IVJos10612.png', NULL, NULL),
(67, 66, 'ACTUAL', 64, 64, 'images/media/2020/12/K0RzI10912.png', NULL, NULL),
(68, 67, 'ACTUAL', 64, 64, 'images/media/2020/12/GMndX10212.png', NULL, NULL),
(69, 68, 'ACTUAL', 64, 64, 'images/media/2020/12/92UoU10912.png', NULL, NULL),
(70, 69, 'ACTUAL', 64, 64, 'images/media/2020/12/R913310312.png', NULL, NULL),
(71, 70, 'ACTUAL', 64, 64, 'images/media/2020/12/Sq0yK10912.png', NULL, NULL),
(72, 71, 'ACTUAL', 64, 64, 'images/media/2020/12/Ytqae10412.png', NULL, NULL),
(73, 72, 'ACTUAL', 64, 64, 'images/media/2020/12/A0KBI10412.png', NULL, NULL),
(74, 73, 'ACTUAL', 64, 64, 'images/media/2020/12/f5l5x10612.png', NULL, NULL),
(75, 74, 'ACTUAL', 273, 240, 'images/media/2020/12/T5v1s10612.png', NULL, NULL),
(76, 75, 'ACTUAL', 273, 240, 'images/media/2020/12/nyisU10112.png', NULL, NULL),
(77, 76, 'ACTUAL', 273, 240, 'images/media/2020/12/UioPp10612.png', NULL, NULL),
(78, 77, 'ACTUAL', 273, 240, 'images/media/2020/12/Xx8nL10712.png', NULL, NULL),
(79, 78, 'ACTUAL', 273, 240, 'images/media/2020/12/iKgxC10712.png', NULL, NULL),
(80, 79, 'ACTUAL', 273, 240, 'images/media/2020/12/IocF910112.png', NULL, NULL),
(81, 80, 'ACTUAL', 273, 240, 'images/media/2020/12/X3byA10112.png', NULL, NULL),
(82, 81, 'ACTUAL', 273, 240, 'images/media/2020/12/1o0wF10812.png', NULL, NULL),
(83, 82, 'ACTUAL', 273, 240, 'images/media/2020/12/VODK910712.png', NULL, NULL),
(258, 257, 'ACTUAL', 64, 64, 'images/media/2020/12/A1S9C19708.png', NULL, NULL),
(259, 258, 'ACTUAL', 284, 250, 'images/media/2020/12/IhmdY19708.jpg', NULL, NULL),
(260, 259, 'ACTUAL', 64, 64, 'images/media/2020/12/20nV819208.png', NULL, NULL),
(261, 260, 'ACTUAL', 284, 250, 'images/media/2020/12/3DDqm19808.jpg', NULL, NULL),
(262, 261, 'ACTUAL', 64, 64, 'images/media/2020/12/Ma53619508.png', NULL, NULL),
(263, 262, 'ACTUAL', 284, 250, 'images/media/2020/12/1N5lx19108.jpg', NULL, NULL),
(264, 263, 'ACTUAL', 284, 250, 'images/media/2020/12/m67vJ19608.jpg', NULL, NULL),
(265, 264, 'ACTUAL', 64, 64, 'images/media/2020/12/onxBS19208.png', NULL, NULL),
(266, 265, 'ACTUAL', 64, 64, 'images/media/2020/12/Epkb419908.png', NULL, NULL),
(267, 266, 'ACTUAL', 284, 250, 'images/media/2020/12/yq7Uj19908.jpg', NULL, NULL),
(268, 267, 'ACTUAL', 64, 64, 'images/media/2020/12/4Cg3c19608.png', NULL, NULL),
(269, 268, 'ACTUAL', 284, 250, 'images/media/2020/12/cXJMf19808.jpg', NULL, NULL),
(270, 269, 'ACTUAL', 64, 64, 'images/media/2020/12/0hsWz19508.png', NULL, NULL),
(271, 270, 'ACTUAL', 284, 250, 'images/media/2020/12/0PIiD19808.jpg', NULL, NULL),
(272, 271, 'ACTUAL', 64, 64, 'images/media/2020/12/ldLJf19208.png', NULL, NULL),
(273, 272, 'ACTUAL', 284, 250, 'images/media/2020/12/jRHM719108.jpg', NULL, NULL),
(274, 273, 'ACTUAL', 64, 64, 'images/media/2020/12/I1gzM19408.png', NULL, NULL),
(275, 274, 'ACTUAL', 284, 250, 'images/media/2020/12/JCyV619708.jpg', NULL, NULL),
(276, 275, 'ACTUAL', 64, 64, 'images/media/2020/12/HVCxT19108.png', NULL, NULL),
(277, 276, 'ACTUAL', 284, 250, 'images/media/2020/12/PLELY19408.jpg', NULL, NULL),
(278, 277, 'ACTUAL', 64, 64, 'images/media/2020/12/BoeDL19408.png', NULL, NULL),
(279, 278, 'ACTUAL', 284, 250, 'images/media/2020/12/CLmuf19708.jpg', NULL, NULL),
(280, 279, 'ACTUAL', 284, 250, 'images/media/2020/12/ZVy6T19808.jpg', NULL, NULL),
(281, 280, 'ACTUAL', 64, 64, 'images/media/2020/12/wYb7s19908.png', NULL, NULL),
(282, 281, 'ACTUAL', 64, 64, 'images/media/2020/12/XdnOS19308.png', NULL, NULL),
(283, 282, 'ACTUAL', 284, 250, 'images/media/2020/12/jdXhv19208.jpg', NULL, NULL),
(284, 283, 'ACTUAL', 64, 64, 'images/media/2020/12/4LFTq19608.png', NULL, NULL),
(285, 284, 'ACTUAL', 284, 250, 'images/media/2020/12/KbJoX19608.jpg', NULL, NULL),
(286, 285, 'ACTUAL', 64, 64, 'images/media/2020/12/3YJgr19308.png', NULL, NULL),
(287, 286, 'ACTUAL', 284, 250, 'images/media/2020/12/sDlxw19408.jpg', NULL, NULL),
(288, 287, 'ACTUAL', 1024, 1024, 'images/media/2020/12/LXeLb19908.jpg', NULL, NULL),
(289, 288, 'ACTUAL', 1024, 1024, 'images/media/2020/12/uhwNl19708.jpg', NULL, NULL),
(290, 289, 'ACTUAL', 1024, 1024, 'images/media/2020/12/A8tpH19408.jpg', NULL, NULL),
(291, 290, 'ACTUAL', 1024, 1024, 'images/media/2020/12/i0ux819508.jpg', NULL, NULL),
(292, 291, 'ACTUAL', 1024, 1024, 'images/media/2020/12/WqoFo19208.jpg', NULL, NULL),
(293, 292, 'ACTUAL', 1024, 1024, 'images/media/2020/12/AHbI419308.jpg', NULL, NULL),
(294, 293, 'ACTUAL', 1024, 1024, 'images/media/2020/12/a455C19308.jpg', NULL, NULL),
(295, 294, 'ACTUAL', 1024, 1024, 'images/media/2020/12/wPXR419508.jpg', NULL, NULL),
(296, 295, 'ACTUAL', 1024, 1024, 'images/media/2020/12/yiOVx19908.jpg', NULL, NULL),
(297, 296, 'ACTUAL', 1024, 1024, 'images/media/2020/12/xoOJv19608.jpg', NULL, NULL),
(298, 297, 'ACTUAL', 1024, 1024, 'images/media/2020/12/MfQ4H19108.jpg', NULL, NULL),
(299, 298, 'ACTUAL', 1024, 1024, 'images/media/2020/12/Ldxgn19609.jpg', NULL, NULL),
(300, 299, 'ACTUAL', 1024, 1024, 'images/media/2020/12/EH8cD19409.jpg', NULL, NULL),
(301, 300, 'ACTUAL', 1024, 1024, 'images/media/2020/12/9j0ay19709.jpg', NULL, NULL),
(302, 301, 'ACTUAL', 1024, 1024, 'images/media/2020/12/pCDlz19109.jpg', NULL, NULL),
(303, 302, 'ACTUAL', 1024, 1024, 'images/media/2020/12/9xygZ19809.jpg', NULL, NULL),
(304, 303, 'ACTUAL', 1024, 1024, 'images/media/2020/12/DSMOD19709.jpg', NULL, NULL),
(305, 304, 'ACTUAL', 1024, 1024, 'images/media/2020/12/ORnu519309.jpg', NULL, NULL),
(306, 305, 'ACTUAL', 1024, 1024, 'images/media/2020/12/aOtwc19909.jpg', NULL, NULL),
(307, 306, 'ACTUAL', 1024, 1024, 'images/media/2020/12/6YsTj19909.jpg', NULL, NULL),
(308, 307, 'ACTUAL', 1024, 1024, 'images/media/2020/12/mXDLS19409.jpg', NULL, NULL),
(309, 308, 'ACTUAL', 1024, 1024, 'images/media/2020/12/OT0oU19309.jpg', NULL, NULL),
(310, 309, 'ACTUAL', 1024, 1024, 'images/media/2020/12/dgrQM19109.jpg', NULL, NULL),
(311, 310, 'ACTUAL', 1024, 1024, 'images/media/2020/12/pwD0319609.jpg', NULL, NULL),
(312, 311, 'ACTUAL', 1024, 1024, 'images/media/2020/12/toR1u19909.jpg', NULL, NULL),
(313, 312, 'ACTUAL', 1024, 1024, 'images/media/2020/12/DkrSs19810.jpg', NULL, NULL),
(314, 313, 'ACTUAL', 1024, 1024, 'images/media/2020/12/g6Owy19810.jpg', NULL, NULL),
(315, 314, 'ACTUAL', 1024, 1024, 'images/media/2020/12/KnBr519710.jpg', NULL, NULL),
(316, 315, 'ACTUAL', 1024, 1024, 'images/media/2020/12/TWvJK19410.jpg', NULL, NULL),
(317, 316, 'ACTUAL', 1024, 1024, 'images/media/2020/12/7LsVG19310.jpg', NULL, NULL),
(318, 317, 'ACTUAL', 1024, 1024, 'images/media/2020/12/YLMOh19210.jpg', NULL, NULL),
(319, 318, 'ACTUAL', 1024, 1024, 'images/media/2020/12/0kXac19210.jpg', NULL, NULL),
(320, 319, 'ACTUAL', 1024, 1024, 'images/media/2020/12/tJqpf19810.jpg', NULL, NULL),
(321, 320, 'ACTUAL', 1024, 1024, 'images/media/2020/12/WCd6y19910.jpg', NULL, NULL),
(322, 321, 'ACTUAL', 1024, 1024, 'images/media/2020/12/O4Zbk19710.jpg', NULL, NULL),
(323, 322, 'ACTUAL', 1024, 1024, 'images/media/2020/12/JUSJa19210.jpg', NULL, NULL),
(324, 323, 'ACTUAL', 1024, 1024, 'images/media/2020/12/n4Gmy19810.jpg', NULL, NULL),
(325, 324, 'ACTUAL', 1024, 1024, 'images/media/2020/12/8mjRf19210.jpg', NULL, NULL),
(326, 325, 'ACTUAL', 1024, 1024, 'images/media/2020/12/I4Pux19210.jpg', NULL, NULL),
(327, 326, 'ACTUAL', 1024, 1024, 'images/media/2020/12/0sKGd19310.jpg', NULL, NULL),
(328, 327, 'ACTUAL', 1024, 1024, 'images/media/2020/12/l1xuY19110.jpg', NULL, NULL),
(329, 328, 'ACTUAL', 1024, 1024, 'images/media/2020/12/9LpEr19110.jpg', NULL, NULL),
(330, 329, 'ACTUAL', 1024, 1024, 'images/media/2020/12/nsvRx19410.jpg', NULL, NULL),
(331, 330, 'ACTUAL', 1024, 1024, 'images/media/2020/12/7n3HJ19410.jpg', NULL, NULL),
(332, 331, 'ACTUAL', 1024, 1024, 'images/media/2020/12/vx6QW19610.jpg', NULL, NULL),
(333, 332, 'ACTUAL', 1024, 1024, 'images/media/2020/12/e8tKu19210.jpg', NULL, NULL),
(334, 333, 'ACTUAL', 1024, 1024, 'images/media/2020/12/iDMNz19310.jpg', NULL, NULL),
(335, 334, 'ACTUAL', 1024, 1024, 'images/media/2020/12/doDBr19210.jpg', NULL, NULL),
(336, 335, 'ACTUAL', 1024, 1024, 'images/media/2020/12/b4lEc19910.jpg', NULL, NULL),
(337, 336, 'ACTUAL', 1024, 1024, 'images/media/2020/12/Xwlth19610.jpg', NULL, NULL),
(338, 337, 'ACTUAL', 1024, 1024, 'images/media/2020/12/luQnk19210.jpg', NULL, NULL),
(339, 338, 'ACTUAL', 1024, 1024, 'images/media/2020/12/6h8UU19710.jpg', NULL, NULL),
(340, 339, 'ACTUAL', 1024, 1024, 'images/media/2020/12/viEGg19911.jpg', NULL, NULL),
(341, 340, 'ACTUAL', 1024, 1024, 'images/media/2020/12/2Ggn319911.jpg', NULL, NULL),
(342, 341, 'ACTUAL', 1024, 1024, 'images/media/2020/12/m0yNj19911.jpg', NULL, NULL),
(343, 342, 'ACTUAL', 1024, 1024, 'images/media/2020/12/Dzd2519111.jpg', NULL, NULL),
(344, 343, 'ACTUAL', 1024, 1024, 'images/media/2020/12/1ig7319811.jpg', NULL, NULL),
(345, 344, 'ACTUAL', 1024, 1024, 'images/media/2020/12/iTQ7j19211.jpg', NULL, NULL),
(346, 345, 'ACTUAL', 1024, 1024, 'images/media/2020/12/TSTeu19611.jpg', NULL, NULL),
(347, 346, 'ACTUAL', 1024, 1024, 'images/media/2020/12/72L9l19911.jpg', NULL, NULL),
(348, 347, 'ACTUAL', 1024, 1024, 'images/media/2020/12/mWix319411.jpg', NULL, NULL),
(349, 348, 'ACTUAL', 1024, 1024, 'images/media/2020/12/hi3PN19511.jpg', NULL, NULL),
(350, 349, 'ACTUAL', 1024, 1024, 'images/media/2020/12/i8sDd19911.jpg', NULL, NULL),
(351, 350, 'ACTUAL', 1024, 1024, 'images/media/2020/12/phUDg19511.jpg', NULL, NULL),
(352, 351, 'ACTUAL', 1024, 1024, 'images/media/2020/12/3jHHY19511.jpg', NULL, NULL),
(353, 352, 'ACTUAL', 1024, 1024, 'images/media/2020/12/9fyvN19411.jpg', NULL, NULL),
(354, 353, 'ACTUAL', 1024, 1024, 'images/media/2020/12/HxGza19611.jpg', NULL, NULL),
(355, 354, 'ACTUAL', 1024, 1024, 'images/media/2020/12/nJ44l19411.jpg', NULL, NULL),
(356, 355, 'ACTUAL', 1024, 1024, 'images/media/2020/12/nQlqE19511.jpg', NULL, NULL),
(357, 356, 'ACTUAL', 1024, 1024, 'images/media/2020/12/swNSy19911.jpg', NULL, NULL),
(358, 357, 'ACTUAL', 1024, 1024, 'images/media/2020/12/sMdMm19611.jpg', NULL, NULL),
(359, 358, 'ACTUAL', 1024, 1024, 'images/media/2020/12/mr5Yt19211.jpg', NULL, NULL),
(360, 359, 'ACTUAL', 1024, 1024, 'images/media/2020/12/cbPj519211.jpg', NULL, NULL),
(361, 360, 'ACTUAL', 1024, 1024, 'images/media/2020/12/csgAQ19111.jpg', NULL, NULL),
(362, 361, 'ACTUAL', 1024, 1024, 'images/media/2020/12/rfEnb19911.jpg', NULL, NULL),
(363, 362, 'ACTUAL', 1024, 1024, 'images/media/2020/12/52rY219211.jpg', NULL, NULL),
(364, 363, 'ACTUAL', 1024, 1024, 'images/media/2020/12/YvzxH19111.jpg', NULL, NULL),
(365, 364, 'ACTUAL', 1024, 1024, 'images/media/2020/12/36jAr19511.jpg', NULL, NULL),
(366, 365, 'ACTUAL', 1024, 1024, 'images/media/2020/12/0Ygma19611.jpg', NULL, NULL),
(367, 366, 'ACTUAL', 1024, 1024, 'images/media/2020/12/z3bmL19111.jpg', NULL, NULL),
(368, 367, 'ACTUAL', 1024, 1024, 'images/media/2020/12/yPQ6h19111.jpg', NULL, NULL),
(369, 368, 'ACTUAL', 1024, 1024, 'images/media/2020/12/I8Kak19711.jpg', NULL, NULL),
(370, 369, 'ACTUAL', 1024, 1024, 'images/media/2020/12/3P1Yv19211.jpg', NULL, NULL),
(371, 370, 'ACTUAL', 1024, 1024, 'images/media/2020/12/FMst219511.jpg', NULL, NULL),
(372, 371, 'ACTUAL', 1024, 1024, 'images/media/2020/12/MwDiB19411.jpg', NULL, NULL),
(373, 372, 'ACTUAL', 1024, 1024, 'images/media/2020/12/T5YSn19111.jpg', NULL, NULL),
(374, 373, 'ACTUAL', 1024, 1024, 'images/media/2020/12/XxPsZ19411.jpg', NULL, NULL),
(375, 374, 'ACTUAL', 1024, 1024, 'images/media/2020/12/FCnb919311.jpg', NULL, NULL),
(376, 375, 'ACTUAL', 1024, 1024, 'images/media/2020/12/j7Tq119211.jpg', NULL, NULL),
(377, 376, 'ACTUAL', 1024, 1024, 'images/media/2020/12/2WDAU19811.jpg', NULL, NULL),
(378, 377, 'ACTUAL', 1024, 1024, 'images/media/2020/12/JoP4W19611.jpg', NULL, NULL),
(379, 378, 'ACTUAL', 1024, 1024, 'images/media/2020/12/3MBuE19511.jpg', NULL, NULL),
(380, 379, 'ACTUAL', 1024, 1024, 'images/media/2020/12/3Z4tF19611.jpg', NULL, NULL),
(381, 380, 'ACTUAL', 1024, 1024, 'images/media/2020/12/boehz19211.jpg', NULL, NULL),
(382, 381, 'ACTUAL', 1024, 1024, 'images/media/2020/12/nb2iB19311.jpg', NULL, NULL),
(383, 382, 'ACTUAL', 1024, 1024, 'images/media/2020/12/N9rcj19811.jpg', NULL, NULL),
(384, 383, 'ACTUAL', 1024, 1024, 'images/media/2020/12/qbKF719611.jpg', NULL, NULL),
(385, 384, 'ACTUAL', 1024, 1024, 'images/media/2020/12/J2XYc19411.jpg', NULL, NULL),
(386, 385, 'ACTUAL', 1024, 1024, 'images/media/2020/12/OAQ7919311.jpg', NULL, NULL),
(387, 386, 'ACTUAL', 1024, 1024, 'images/media/2020/12/AHkbG19811.jpg', NULL, NULL),
(388, 387, 'ACTUAL', 1024, 1024, 'images/media/2020/12/LRiDA19411.jpg', NULL, NULL),
(389, 388, 'ACTUAL', 1024, 1024, 'images/media/2020/12/QWlDN19611.jpg', NULL, NULL),
(390, 389, 'ACTUAL', 1024, 1024, 'images/media/2020/12/VEodV19811.jpg', NULL, NULL),
(391, 390, 'ACTUAL', 1024, 1024, 'images/media/2020/12/mjyBU19111.jpg', NULL, NULL),
(392, 391, 'ACTUAL', 1024, 1024, 'images/media/2020/12/QL8Lj19911.jpg', NULL, NULL),
(393, 392, 'ACTUAL', 1024, 1024, 'images/media/2020/12/Ticne19811.jpg', NULL, NULL),
(394, 393, 'ACTUAL', 1024, 1024, 'images/media/2020/12/1sjR619111.jpg', NULL, NULL),
(395, 394, 'ACTUAL', 1024, 1024, 'images/media/2020/12/cv1rs19611.jpg', NULL, NULL),
(396, 395, 'ACTUAL', 1024, 1024, 'images/media/2020/12/MVmBl19211.jpg', NULL, NULL),
(397, 396, 'ACTUAL', 1024, 1024, 'images/media/2020/12/TLetF19511.jpg', NULL, NULL),
(398, 397, 'ACTUAL', 1024, 1024, 'images/media/2020/12/XMnpu19311.jpg', NULL, NULL),
(399, 398, 'ACTUAL', 1024, 1024, 'images/media/2020/12/WbV9019511.jpg', NULL, NULL),
(400, 399, 'ACTUAL', 1024, 1024, 'images/media/2020/12/U01j519111.jpg', NULL, NULL),
(401, 400, 'ACTUAL', 1024, 1024, 'images/media/2020/12/AEP0C19311.jpg', NULL, NULL),
(402, 401, 'ACTUAL', 1024, 1024, 'images/media/2020/12/n9FE219911.jpg', NULL, NULL),
(403, 402, 'ACTUAL', 1024, 1024, 'images/media/2020/12/CEOYM19611.jpg', NULL, NULL),
(404, 403, 'ACTUAL', 1024, 1024, 'images/media/2020/12/VHCwl19811.jpg', NULL, NULL),
(405, 404, 'ACTUAL', 1024, 1024, 'images/media/2020/12/dMNk819711.jpg', NULL, NULL),
(406, 405, 'ACTUAL', 1024, 1024, 'images/media/2020/12/64a7R19711.jpg', NULL, NULL),
(407, 406, 'ACTUAL', 1024, 1024, 'images/media/2020/12/v3tvW19111.jpg', NULL, NULL),
(408, 407, 'ACTUAL', 1024, 1024, 'images/media/2020/12/5PC3y19811.jpg', NULL, NULL),
(409, 408, 'ACTUAL', 1024, 1024, 'images/media/2020/12/U3hD619711.jpg', NULL, NULL),
(410, 409, 'ACTUAL', 1024, 1024, 'images/media/2020/12/EbCku19411.jpg', NULL, NULL),
(411, 410, 'ACTUAL', 1024, 1024, 'images/media/2020/12/kWSbk19511.jpg', NULL, NULL),
(412, 411, 'ACTUAL', 1024, 1024, 'images/media/2020/12/LIhLe19311.jpg', NULL, NULL),
(413, 412, 'ACTUAL', 1024, 1024, 'images/media/2020/12/K7HHF19111.jpg', NULL, NULL),
(414, 413, 'ACTUAL', 1024, 1024, 'images/media/2020/12/4sd9A19111.jpg', NULL, NULL),
(415, 414, 'ACTUAL', 1024, 1024, 'images/media/2020/12/HmhjH19711.jpg', NULL, NULL),
(416, 415, 'ACTUAL', 1024, 1024, 'images/media/2020/12/lCzZV19811.jpg', NULL, NULL),
(417, 416, 'ACTUAL', 1024, 1024, 'images/media/2020/12/MgCKq19711.jpg', NULL, NULL),
(418, 417, 'ACTUAL', 1024, 1024, 'images/media/2020/12/ol2sB24311.jpg', NULL, NULL),
(419, 418, 'ACTUAL', 1024, 1024, 'images/media/2020/12/NySmM24311.jpg', NULL, NULL),
(420, 419, 'ACTUAL', 1024, 1024, 'images/media/2020/12/5xN6v24411.jpg', NULL, NULL),
(421, 420, 'ACTUAL', 1024, 1024, 'images/media/2020/12/CWYQi24511.jpg', NULL, NULL),
(422, 421, 'ACTUAL', 1024, 1024, 'images/media/2020/12/laefk24511.jpg', NULL, NULL),
(423, 422, 'ACTUAL', 1024, 1024, 'images/media/2020/12/6ykQ424511.jpg', NULL, NULL),
(424, 423, 'ACTUAL', 1024, 1024, 'images/media/2020/12/BAG2K24312.jpg', NULL, NULL),
(425, 424, 'ACTUAL', 1024, 1024, 'images/media/2020/12/wG9GE24612.jpg', NULL, NULL),
(426, 425, 'ACTUAL', 64, 64, 'images/media/2020/12/iRgnE25611.png', NULL, NULL),
(427, 426, 'ACTUAL', 284, 250, 'images/media/2020/12/ifpU725811.jpg', NULL, NULL),
(428, 427, 'ACTUAL', 768, 1366, 'images/media/2020/12/rzdmu25612.png', NULL, NULL),
(429, 428, 'ACTUAL', 768, 1366, 'images/media/2020/12/uNZd125612.png', NULL, NULL),
(431, 430, 'ACTUAL', 421, 1170, 'images/media/2020/12/blSUS27710.jpg', NULL, NULL),
(432, 431, 'ACTUAL', 421, 1170, 'images/media/2020/12/vURED27710.jpg', NULL, NULL),
(433, 432, 'ACTUAL', 421, 1170, 'images/media/2020/12/Ft15D27610.jpg', NULL, NULL),
(434, 433, 'ACTUAL', 421, 1600, 'images/media/2020/12/ILNqR27110.jpg', NULL, NULL),
(435, 434, 'ACTUAL', 421, 1600, 'images/media/2020/12/oSENw27310.jpg', NULL, NULL),
(436, 435, 'ACTUAL', 421, 1600, 'images/media/2020/12/g96za27410.jpg', NULL, NULL),
(437, 436, 'ACTUAL', 387, 770, 'images/media/2020/12/yVA2Q27110.jpg', NULL, NULL),
(438, 437, 'ACTUAL', 387, 770, 'images/media/2020/12/vDsMN27610.jpg', NULL, NULL),
(439, 438, 'ACTUAL', 387, 770, 'images/media/2020/12/rL6XQ27310.jpg', NULL, NULL),
(440, 439, 'ACTUAL', 418, 885, 'images/media/2020/12/A1s7V27110.jpg', NULL, NULL),
(441, 440, 'ACTUAL', 418, 885, 'images/media/2020/12/mo6Yk27410.jpg', NULL, NULL),
(442, 441, 'ACTUAL', 418, 885, 'images/media/2020/12/cUhfM27110.jpg', NULL, NULL),
(443, 442, 'ACTUAL', 179, 370, 'images/media/2020/12/8EBLr27610.jpg', NULL, NULL),
(444, 443, 'ACTUAL', 179, 370, 'images/media/2020/12/c449I27810.jpg', NULL, NULL),
(445, 444, 'ACTUAL', 277, 370, 'images/media/2020/12/reUJM27310.jpg', NULL, NULL),
(446, 445, 'ACTUAL', 277, 370, 'images/media/2020/12/ciRFe27710.jpg', NULL, NULL),
(447, 446, 'ACTUAL', 277, 370, 'images/media/2020/12/2nx0h27410.jpg', NULL, NULL),
(448, 447, 'ACTUAL', 240, 370, 'images/media/2020/12/CLA2s27610.jpg', NULL, NULL),
(449, 448, 'ACTUAL', 240, 370, 'images/media/2020/12/qotAc27710.jpg', NULL, NULL),
(450, 449, 'ACTUAL', 240, 370, 'images/media/2020/12/souUX27810.jpg', NULL, NULL),
(451, 450, 'ACTUAL', 270, 693, 'images/media/2020/12/z3Qtc27512.png', NULL, NULL),
(452, 451, 'ACTUAL', 446, 728, 'images/media/2020/12/y74yW01108.jpg', NULL, NULL),
(453, 452, 'ACTUAL', 20, 30, 'images/media/2020/12/gTr9301908.jpg', NULL, NULL),
(454, 453, 'ACTUAL', 421, 1600, 'images/media/2020/12/4A9AD01801.jpg', NULL, NULL),
(455, 454, 'ACTUAL', 421, 1600, 'images/media/2020/12/ZPmjN01301.jpg', NULL, NULL),
(456, 455, 'ACTUAL', 421, 1600, 'images/media/2020/12/ypwlO01601.jpg', NULL, NULL),
(457, 456, 'ACTUAL', 220, 370, 'images/media/2020/12/YAaqM01901.jpg', NULL, NULL),
(458, 457, 'ACTUAL', 220, 370, 'images/media/2020/12/LTvGM01301.jpg', NULL, NULL),
(459, 458, 'ACTUAL', 512, 512, 'images/media/2020/12/8zBL302407.png', NULL, NULL),
(460, 459, 'ACTUAL', 425, 1600, 'images/media/2020/12/kzLG219201.jpg', NULL, NULL),
(461, 460, 'ACTUAL', 425, 1600, 'images/media/2020/12/4wDb519601.jpg', NULL, NULL),
(462, 459, 'THUMBNAIL', 40, 150, 'images/media/2020/12/thumbnail1582120480kzLG219201.jpg', NULL, NULL),
(463, 460, 'THUMBNAIL', 40, 150, 'images/media/2020/12/thumbnail15821204804wDb519601.jpg', NULL, NULL),
(464, 459, 'MEDIUM', 106, 400, 'images/media/2020/12/medium1582120480kzLG219201.jpg', NULL, NULL),
(465, 460, 'MEDIUM', 106, 400, 'images/media/2020/12/medium15821204804wDb519601.jpg', NULL, NULL),
(466, 459, 'LARGE', 239, 900, 'images/media/2020/12/large1582120480kzLG219201.jpg', NULL, NULL),
(467, 460, 'LARGE', 239, 900, 'images/media/2020/12/large15821204804wDb519601.jpg', NULL, NULL),
(468, 461, 'ACTUAL', 425, 1600, 'images/media/2020/12/roLuh19801.jpg', NULL, NULL),
(469, 461, 'THUMBNAIL', 40, 150, 'images/media/2020/12/thumbnail1582120482roLuh19801.jpg', NULL, NULL),
(470, 461, 'MEDIUM', 106, 400, 'images/media/2020/12/medium1582120482roLuh19801.jpg', NULL, NULL),
(471, 461, 'LARGE', 239, 900, 'images/media/2020/12/large1582120482roLuh19801.jpg', NULL, NULL),
(472, 462, 'ACTUAL', 421, 1170, 'images/media/2020/12/7OI5e19501.jpg', NULL, NULL),
(473, 462, 'THUMBNAIL', 54, 150, 'images/media/2020/12/thumbnail15821204927OI5e19501.jpg', NULL, NULL),
(474, 462, 'MEDIUM', 144, 400, 'images/media/2020/12/medium15821204937OI5e19501.jpg', NULL, NULL),
(475, 462, 'LARGE', 324, 900, 'images/media/2020/12/large15821204937OI5e19501.jpg', NULL, NULL),
(476, 463, 'ACTUAL', 421, 1170, 'images/media/2020/12/SHVFB19501.jpg', NULL, NULL),
(477, 463, 'THUMBNAIL', 54, 150, 'images/media/2020/12/thumbnail1582120493SHVFB19501.jpg', NULL, NULL),
(478, 463, 'MEDIUM', 144, 400, 'images/media/2020/12/medium1582120494SHVFB19501.jpg', NULL, NULL),
(479, 463, 'LARGE', 324, 900, 'images/media/2020/12/large1582120494SHVFB19501.jpg', NULL, NULL),
(480, 464, 'ACTUAL', 421, 1170, 'images/media/2020/12/dn1K219901.jpg', NULL, NULL),
(481, 464, 'THUMBNAIL', 54, 150, 'images/media/2020/12/thumbnail1582120496dn1K219901.jpg', NULL, NULL),
(482, 464, 'MEDIUM', 144, 400, 'images/media/2020/12/medium1582120496dn1K219901.jpg', NULL, NULL),
(483, 464, 'LARGE', 324, 900, 'images/media/2020/12/large1582120496dn1K219901.jpg', NULL, NULL),
(559, 494, 'ACTUAL', 418, 833, 'images/media/2020/12/JiDWS19303.jpg', NULL, NULL),
(558, 493, 'ACTUAL', 418, 834, 'images/media/2020/12/VXmx319303.jpg', NULL, NULL),
(557, 492, 'THUMBNAIL', 72, 150, 'images/media/2020/12/thumbnail15821245307zlLI19903.jpg', NULL, NULL),
(556, 491, 'THUMBNAIL', 73, 150, 'images/media/2020/12/thumbnail1582124530U361f19603.jpg', NULL, NULL),
(555, 492, 'ACTUAL', 177, 369, 'images/media/2020/12/7zlLI19903.jpg', NULL, NULL),
(554, 491, 'ACTUAL', 179, 369, 'images/media/2020/12/U361f19603.jpg', NULL, NULL),
(553, 490, 'MEDIUM', 189, 400, 'images/media/2020/12/medium1582123325IjJ4x19202.jpg', NULL, NULL),
(552, 490, 'THUMBNAIL', 71, 150, 'images/media/2020/12/thumbnail1582123325IjJ4x19202.jpg', NULL, NULL),
(551, 490, 'ACTUAL', 418, 885, 'images/media/2020/12/IjJ4x19202.jpg', NULL, NULL),
(550, 489, 'MEDIUM', 189, 400, 'images/media/2020/12/medium1582123325aqK6Q19402.jpg', NULL, NULL),
(549, 489, 'THUMBNAIL', 71, 150, 'images/media/2020/12/thumbnail1582123325aqK6Q19402.jpg', NULL, NULL),
(548, 488, 'MEDIUM', 189, 400, 'images/media/2020/12/medium1582123325Apd1i19902.jpg', NULL, NULL),
(547, 489, 'ACTUAL', 418, 885, 'images/media/2020/12/aqK6Q19402.jpg', NULL, NULL),
(544, 487, 'MEDIUM', 200, 400, 'images/media/2020/12/medium1582123057e8Uh519302.jpg', NULL, NULL),
(545, 488, 'ACTUAL', 418, 885, 'images/media/2020/12/Apd1i19902.jpg', NULL, NULL),
(546, 488, 'THUMBNAIL', 71, 150, 'images/media/2020/12/thumbnail1582123325Apd1i19902.jpg', NULL, NULL),
(543, 487, 'THUMBNAIL', 75, 150, 'images/media/2020/12/thumbnail1582123057e8Uh519302.jpg', NULL, NULL),
(542, 487, 'ACTUAL', 418, 834, 'images/media/2020/12/e8Uh519302.jpg', NULL, NULL),
(541, 486, 'MEDIUM', 200, 400, 'images/media/2020/12/medium1582123056sQWL719202.jpg', NULL, NULL),
(540, 486, 'THUMBNAIL', 75, 150, 'images/media/2020/12/thumbnail1582123056sQWL719202.jpg', NULL, NULL),
(537, 485, 'THUMBNAIL', 75, 150, 'images/media/2020/12/thumbnail1582123056i0UZO19402.jpg', NULL, NULL),
(539, 486, 'ACTUAL', 418, 834, 'images/media/2020/12/sQWL719202.jpg', NULL, NULL),
(538, 485, 'MEDIUM', 201, 400, 'images/media/2020/12/medium1582123056i0UZO19402.jpg', NULL, NULL),
(536, 485, 'ACTUAL', 418, 833, 'images/media/2020/12/i0UZO19402.jpg', NULL, NULL),
(533, 483, 'THUMBNAIL', 73, 150, 'images/media/2020/12/thumbnail1582123055RE0II19402.jpg', NULL, NULL),
(534, 484, 'ACTUAL', 177, 369, 'images/media/2020/12/gt4aI19102.jpg', NULL, NULL),
(535, 484, 'THUMBNAIL', 72, 150, 'images/media/2020/12/thumbnail1582123055gt4aI19102.jpg', NULL, NULL),
(532, 483, 'ACTUAL', 179, 369, 'images/media/2020/12/RE0II19402.jpg', NULL, NULL),
(560, 493, 'THUMBNAIL', 75, 150, 'images/media/2020/12/thumbnail1582124531VXmx319303.jpg', NULL, NULL),
(561, 494, 'THUMBNAIL', 75, 150, 'images/media/2020/12/thumbnail1582124531JiDWS19303.jpg', NULL, NULL),
(562, 493, 'MEDIUM', 200, 400, 'images/media/2020/12/medium1582124531VXmx319303.jpg', NULL, NULL),
(563, 494, 'MEDIUM', 201, 400, 'images/media/2020/12/medium1582124531JiDWS19303.jpg', NULL, NULL),
(564, 495, 'ACTUAL', 418, 834, 'images/media/2020/12/jzm9Z19603.jpg', NULL, NULL),
(565, 495, 'THUMBNAIL', 75, 150, 'images/media/2020/12/thumbnail1582124532jzm9Z19603.jpg', NULL, NULL),
(566, 495, 'MEDIUM', 200, 400, 'images/media/2020/12/medium1582124532jzm9Z19603.jpg', NULL, NULL),
(567, 496, 'ACTUAL', 259, 770, 'images/media/2020/12/ZGQzk20811.jpg', NULL, NULL),
(568, 497, 'ACTUAL', 258, 770, 'images/media/2020/12/NpNrm20611.jpg', NULL, NULL),
(569, 497, 'THUMBNAIL', 50, 150, 'images/media/2020/12/thumbnail1582198137NpNrm20611.jpg', NULL, NULL),
(570, 496, 'THUMBNAIL', 50, 150, 'images/media/2020/12/thumbnail1582198137ZGQzk20811.jpg', NULL, NULL),
(571, 496, 'MEDIUM', 135, 400, 'images/media/2020/12/medium1582198137ZGQzk20811.jpg', NULL, NULL),
(572, 497, 'MEDIUM', 134, 400, 'images/media/2020/12/medium1582198137NpNrm20611.jpg', NULL, NULL),
(573, 498, 'ACTUAL', 548, 370, 'images/media/2020/12/XPgIC20911.jpg', NULL, NULL),
(574, 498, 'THUMBNAIL', 150, 101, 'images/media/2020/12/thumbnail1582198138XPgIC20911.jpg', NULL, NULL),
(575, 498, 'MEDIUM', 400, 270, 'images/media/2020/12/medium1582198138XPgIC20911.jpg', NULL, NULL),
(576, 499, 'ACTUAL', 297, 770, 'images/media/2020/12/VmtxP20911.jpg', NULL, NULL),
(577, 500, 'ACTUAL', 547, 370, 'images/media/2020/12/QAdqa20111.jpg', NULL, NULL),
(578, 499, 'THUMBNAIL', 58, 150, 'images/media/2020/12/thumbnail1582198509VmtxP20911.jpg', NULL, NULL),
(579, 500, 'THUMBNAIL', 150, 101, 'images/media/2020/12/thumbnail1582198509QAdqa20111.jpg', NULL, NULL),
(580, 499, 'MEDIUM', 154, 400, 'images/media/2020/12/medium1582198509VmtxP20911.jpg', NULL, NULL),
(581, 500, 'MEDIUM', 400, 271, 'images/media/2020/12/medium1582198509QAdqa20111.jpg', NULL, NULL),
(582, 501, 'ACTUAL', 220, 370, 'images/media/2020/12/wQGHA20911.jpg', NULL, NULL),
(583, 502, 'ACTUAL', 220, 370, 'images/media/2020/12/R0yLD20611.jpg', NULL, NULL),
(584, 501, 'THUMBNAIL', 89, 150, 'images/media/2020/12/thumbnail1582198510wQGHA20911.jpg', NULL, NULL),
(585, 502, 'THUMBNAIL', 89, 150, 'images/media/2020/12/thumbnail1582198510R0yLD20611.jpg', NULL, NULL),
(586, 503, 'ACTUAL', 230, 270, 'images/media/2020/12/GKLNM20111.jpg', NULL, NULL),
(587, 503, 'THUMBNAIL', 128, 150, 'images/media/2020/12/thumbnail1582198670GKLNM20111.jpg', NULL, NULL),
(588, 504, 'ACTUAL', 230, 270, 'images/media/2020/12/zm4sn20811.jpg', NULL, NULL),
(589, 504, 'THUMBNAIL', 128, 150, 'images/media/2020/12/thumbnail1582198670zm4sn20811.jpg', NULL, NULL),
(590, 505, 'ACTUAL', 230, 270, 'images/media/2020/12/ug42t20411.jpg', NULL, NULL),
(591, 505, 'THUMBNAIL', 128, 150, 'images/media/2020/12/thumbnail1582198671ug42t20411.jpg', NULL, NULL),
(592, 506, 'ACTUAL', 230, 270, 'images/media/2020/12/21hNs20511.jpg', NULL, NULL),
(593, 506, 'THUMBNAIL', 128, 150, 'images/media/2020/12/thumbnail158219867121hNs20511.jpg', NULL, NULL),
(594, 507, 'ACTUAL', 490, 569, 'images/media/2020/12/cgm7r20911.jpg', NULL, NULL),
(595, 507, 'THUMBNAIL', 129, 150, 'images/media/2020/12/thumbnail1582198672cgm7r20911.jpg', NULL, NULL),
(596, 507, 'MEDIUM', 344, 400, 'images/media/2020/12/medium1582198672cgm7r20911.jpg', NULL, NULL),
(597, 508, 'ACTUAL', 211, 270, 'images/media/2020/12/BdrR320111.jpg', NULL, NULL),
(598, 508, 'THUMBNAIL', 117, 150, 'images/media/2020/12/thumbnail1582198790BdrR320111.jpg', NULL, NULL),
(599, 509, 'ACTUAL', 452, 570, 'images/media/2020/12/228jM20511.jpg', NULL, NULL),
(600, 510, 'ACTUAL', 211, 270, 'images/media/2020/12/L1lXk20111.jpg', NULL, NULL),
(601, 510, 'THUMBNAIL', 117, 150, 'images/media/2020/12/thumbnail1582198791L1lXk20111.jpg', NULL, NULL),
(602, 509, 'THUMBNAIL', 119, 150, 'images/media/2020/12/thumbnail1582198791228jM20511.jpg', NULL, NULL),
(603, 509, 'MEDIUM', 317, 400, 'images/media/2020/12/medium1582198791228jM20511.jpg', NULL, NULL),
(604, 511, 'ACTUAL', 211, 570, 'images/media/2020/12/GrSV020311.jpg', NULL, NULL),
(605, 511, 'THUMBNAIL', 56, 150, 'images/media/2020/12/thumbnail1582198792GrSV020311.jpg', NULL, NULL),
(606, 511, 'MEDIUM', 148, 400, 'images/media/2020/12/medium1582198792GrSV020311.jpg', NULL, NULL),
(607, 512, 'ACTUAL', 298, 567, 'images/media/2020/12/gOyKf20211.jpg', NULL, NULL),
(608, 512, 'THUMBNAIL', 79, 150, 'images/media/2020/12/thumbnail1582198889gOyKf20211.jpg', NULL, NULL),
(609, 513, 'ACTUAL', 298, 566, 'images/media/2020/12/fj2pW20711.jpg', NULL, NULL),
(610, 512, 'MEDIUM', 210, 400, 'images/media/2020/12/medium1582198889gOyKf20211.jpg', NULL, NULL),
(611, 513, 'THUMBNAIL', 79, 150, 'images/media/2020/12/thumbnail1582198889fj2pW20711.jpg', NULL, NULL),
(612, 513, 'MEDIUM', 211, 400, 'images/media/2020/12/medium1582198889fj2pW20711.jpg', NULL, NULL),
(613, 514, 'ACTUAL', 211, 270, 'images/media/2020/12/8pXSd20211.jpg', NULL, NULL),
(614, 514, 'THUMBNAIL', 117, 150, 'images/media/2020/12/thumbnail15821990078pXSd20211.jpg', NULL, NULL),
(615, 515, 'ACTUAL', 451, 569, 'images/media/2020/12/dMGvd20411.jpg', NULL, NULL),
(616, 515, 'THUMBNAIL', 119, 150, 'images/media/2020/12/thumbnail1582199007dMGvd20411.jpg', NULL, NULL),
(617, 515, 'MEDIUM', 317, 400, 'images/media/2020/12/medium1582199007dMGvd20411.jpg', NULL, NULL),
(618, 516, 'ACTUAL', 451, 270, 'images/media/2020/12/6DbzH20711.jpg', NULL, NULL),
(619, 516, 'THUMBNAIL', 150, 90, 'images/media/2020/12/thumbnail15821990086DbzH20711.jpg', NULL, NULL),
(620, 516, 'MEDIUM', 400, 239, 'images/media/2020/12/medium15821990086DbzH20711.jpg', NULL, NULL),
(621, 517, 'ACTUAL', 211, 270, 'images/media/2020/12/2lM7y20211.jpg', NULL, NULL),
(622, 517, 'THUMBNAIL', 117, 150, 'images/media/2020/12/thumbnail15821990082lM7y20211.jpg', NULL, NULL),
(623, 518, 'ACTUAL', 230, 370, 'images/media/2020/12/kgVrx20811.jpg', NULL, NULL),
(624, 518, 'THUMBNAIL', 93, 150, 'images/media/2020/12/thumbnail1582199127kgVrx20811.jpg', NULL, NULL),
(625, 519, 'ACTUAL', 488, 368, 'images/media/2020/12/XCslh20311.jpg', NULL, NULL),
(626, 519, 'THUMBNAIL', 150, 113, 'images/media/2020/12/thumbnail1582199127XCslh20311.jpg', NULL, NULL),
(627, 519, 'MEDIUM', 400, 302, 'images/media/2020/12/medium1582199127XCslh20311.jpg', NULL, NULL),
(628, 520, 'ACTUAL', 230, 370, 'images/media/2020/12/9dgQ020511.jpg', NULL, NULL),
(629, 520, 'THUMBNAIL', 93, 150, 'images/media/2020/12/thumbnail15821991289dgQ020511.jpg', NULL, NULL),
(630, 521, 'ACTUAL', 230, 370, 'images/media/2020/12/pZ1bH20411.jpg', NULL, NULL),
(631, 521, 'THUMBNAIL', 93, 150, 'images/media/2020/12/thumbnail1582199128pZ1bH20411.jpg', NULL, NULL),
(632, 522, 'ACTUAL', 230, 370, 'images/media/2020/12/xl9k720411.jpg', NULL, NULL),
(633, 522, 'THUMBNAIL', 93, 150, 'images/media/2020/12/thumbnail1582199129xl9k720411.jpg', NULL, NULL),
(634, 523, 'ACTUAL', 211, 470, 'images/media/2020/12/7cNGq20711.jpg', NULL, NULL),
(635, 523, 'THUMBNAIL', 67, 150, 'images/media/2020/12/thumbnail15821993277cNGq20711.jpg', NULL, NULL),
(636, 523, 'MEDIUM', 180, 400, 'images/media/2020/12/medium15821993277cNGq20711.jpg', NULL, NULL),
(637, 524, 'ACTUAL', 210, 468, 'images/media/2020/12/qcLGW20311.jpg', NULL, NULL),
(638, 524, 'THUMBNAIL', 67, 150, 'images/media/2020/12/thumbnail1582199327qcLGW20311.jpg', NULL, NULL),
(639, 524, 'MEDIUM', 179, 400, 'images/media/2020/12/medium1582199327qcLGW20311.jpg', NULL, NULL),
(640, 525, 'ACTUAL', 210, 272, 'images/media/2020/12/uatVd20111.jpg', NULL, NULL),
(641, 525, 'THUMBNAIL', 116, 150, 'images/media/2020/12/thumbnail1582199328uatVd20111.jpg', NULL, NULL),
(642, 526, 'ACTUAL', 211, 270, 'images/media/2020/12/2segQ20911.jpg', NULL, NULL),
(643, 526, 'THUMBNAIL', 117, 150, 'images/media/2020/12/thumbnail15821993282segQ20911.jpg', NULL, NULL),
(644, 527, 'ACTUAL', 211, 369, 'images/media/2020/12/dbzAF20511.jpg', NULL, NULL),
(645, 527, 'THUMBNAIL', 86, 150, 'images/media/2020/12/thumbnail1582199329dbzAF20511.jpg', NULL, NULL),
(646, 528, 'ACTUAL', 210, 369, 'images/media/2020/12/ruFRW20511.jpg', NULL, NULL),
(647, 528, 'THUMBNAIL', 85, 150, 'images/media/2020/12/thumbnail1582199330ruFRW20511.jpg', NULL, NULL),
(648, 529, 'ACTUAL', 430, 1599, 'images/media/2020/12/8qJMb20712.jpg', NULL, NULL),
(649, 529, 'THUMBNAIL', 40, 150, 'images/media/2020/12/thumbnail15822003748qJMb20712.jpg', NULL, NULL),
(650, 530, 'ACTUAL', 236, 1171, 'images/media/2020/12/4kD3S20412.jpg', NULL, NULL),
(651, 530, 'THUMBNAIL', 30, 150, 'images/media/2020/12/thumbnail15822003754kD3S20412.jpg', NULL, NULL),
(652, 530, 'MEDIUM', 81, 400, 'images/media/2020/12/medium15822003754kD3S20412.jpg', NULL, NULL),
(653, 530, 'LARGE', 181, 900, 'images/media/2020/12/large15822003754kD3S20412.jpg', NULL, NULL),
(654, 531, 'ACTUAL', 179, 369, 'images/media/2020/12/FbFX320512.jpg', NULL, NULL),
(655, 531, 'THUMBNAIL', 73, 150, 'images/media/2020/12/thumbnail1582201134FbFX320512.jpg', NULL, NULL),
(656, 532, 'ACTUAL', 418, 834, 'images/media/2020/12/xv5F720212.jpg', NULL, NULL),
(657, 533, 'ACTUAL', 418, 833, 'images/media/2020/12/WDeDC20512.jpg', NULL, NULL),
(658, 532, 'THUMBNAIL', 75, 150, 'images/media/2020/12/thumbnail1582201251xv5F720212.jpg', NULL, NULL),
(659, 533, 'THUMBNAIL', 75, 150, 'images/media/2020/12/thumbnail1582201251WDeDC20512.jpg', NULL, NULL),
(660, 532, 'MEDIUM', 200, 400, 'images/media/2020/12/medium1582201251xv5F720212.jpg', NULL, NULL),
(661, 533, 'MEDIUM', 201, 400, 'images/media/2020/12/medium1582201251WDeDC20512.jpg', NULL, NULL),
(662, 534, 'ACTUAL', 418, 834, 'images/media/2020/12/287xt20312.jpg', NULL, NULL),
(663, 534, 'THUMBNAIL', 75, 150, 'images/media/2020/12/thumbnail1582201252287xt20312.jpg', NULL, NULL),
(664, 534, 'MEDIUM', 200, 400, 'images/media/2020/12/medium1582201252287xt20312.jpg', NULL, NULL),
(665, 535, 'ACTUAL', 885, 1673, 'images/media/2020/12/kp7IT19104.jpg', NULL, NULL),
(666, 535, 'THUMBNAIL', 79, 150, 'images/media/2020/12/thumbnail1584636420kp7IT19104.jpg', NULL, NULL),
(667, 535, 'MEDIUM', 212, 400, 'images/media/2020/12/medium1584636420kp7IT19104.jpg', NULL, NULL),
(668, 535, 'LARGE', 476, 900, 'images/media/2020/12/large1584636420kp7IT19104.jpg', NULL, NULL),
(669, 536, 'ACTUAL', 230, 370, 'images/media/2020/12/dYoZ120612.jpg', NULL, NULL),
(670, 536, 'THUMBNAIL', 93, 150, 'images/media/2020/12/thumbnail1584706724dYoZ120612.jpg', NULL, NULL),
(671, 537, 'ACTUAL', 43, 172, 'images/media/2020/12/ianfk25812.png', NULL, NULL),
(672, 537, 'THUMBNAIL', 38, 150, 'images/media/2020/12/thumbnail1585137994ianfk25812.png', NULL, NULL),
(673, 538, 'ACTUAL', 16, 16, 'images/media/2020/12/FuDHg25712.png', NULL, NULL),
(674, 539, 'ACTUAL', 885, 1673, 'images/media/2020/12/5t74g02911.jpg', NULL, NULL),
(675, 539, 'THUMBNAIL', 79, 150, 'images/media/2020/12/thumbnail15858260845t74g02911.jpg', NULL, NULL),
(676, 539, 'MEDIUM', 212, 400, 'images/media/2020/12/medium15858260855t74g02911.jpg', NULL, NULL),
(677, 539, 'LARGE', 476, 900, 'images/media/2020/12/large15858260855t74g02911.jpg', NULL, NULL),
(678, 540, 'ACTUAL', 640, 502, 'images/media/2021/03/zCrH522712.jpg', NULL, NULL),
(679, 540, 'THUMBNAIL', 150, 118, 'images/media/2021/03/thumbnail1616415173zCrH522712.jpg', NULL, '2021-03-22 06:43:05'),
(680, 540, 'MEDIUM', 400, 314, 'images/media/2021/03/medium1616415173zCrH522712.jpg', NULL, '2021-03-22 06:43:08'),
(681, 541, 'ACTUAL', 416, 416, 'images/media/2021/03/gwcnC23802.jpeg', NULL, NULL),
(682, 541, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1616510565gwcnC23802.jpeg', NULL, NULL),
(683, 541, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1616510565gwcnC23802.jpeg', NULL, NULL),
(684, 542, 'ACTUAL', 522, 522, 'images/media/2021/03/l3RaK23202.jpg', NULL, NULL),
(685, 542, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1616510565l3RaK23202.jpg', NULL, NULL),
(686, 542, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1616510565l3RaK23202.jpg', NULL, NULL),
(687, 543, 'ACTUAL', 522, 522, 'images/media/2021/03/5GiCu23502.jpg', NULL, NULL),
(688, 543, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail16165105655GiCu23502.jpg', NULL, NULL),
(689, 543, 'MEDIUM', 400, 400, 'images/media/2021/03/medium16165105655GiCu23502.jpg', NULL, NULL),
(690, 544, 'ACTUAL', 358, 358, 'images/media/2021/04/owB1f05101.png', NULL, NULL),
(691, 544, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617628740owB1f05101.png', NULL, NULL),
(692, 545, 'ACTUAL', 100, 144, 'images/media/2021/04/FmVYN13111.png', NULL, NULL),
(693, 546, 'ACTUAL', 225, 225, 'images/media/2021/06/AYFEx22811.jpg', NULL, NULL),
(694, 546, 'THUMBNAIL', 150, 150, 'images/media/2021/06/thumbnail1624359802AYFEx22811.jpg', NULL, NULL),
(695, 547, 'ACTUAL', 1050, 917, 'images/media/2021/08/1KJps26705.png', NULL, NULL),
(696, 547, 'THUMBNAIL', 150, 131, 'images/media/2021/08/thumbnail16299568171KJps26705.png', NULL, NULL),
(697, 547, 'MEDIUM', 400, 349, 'images/media/2021/08/medium16299568171KJps26705.png', NULL, NULL),
(698, 548, 'ACTUAL', 490, 655, 'images/media/2021/08/uVDlF26605.jpg', NULL, NULL),
(699, 548, 'THUMBNAIL', 112, 150, 'images/media/2021/08/thumbnail1629956837uVDlF26605.jpg', NULL, NULL),
(700, 548, 'MEDIUM', 299, 400, 'images/media/2021/08/medium1629956837uVDlF26605.jpg', NULL, NULL),
(701, 549, 'ACTUAL', 490, 655, 'images/media/2021/08/UzwgX26105.jpg', NULL, NULL),
(702, 549, 'THUMBNAIL', 112, 150, 'images/media/2021/08/thumbnail1629956841UzwgX26105.jpg', NULL, NULL),
(703, 549, 'MEDIUM', 299, 400, 'images/media/2021/08/medium1629956841UzwgX26105.jpg', NULL, NULL),
(704, 550, 'ACTUAL', 500, 500, 'images/media/2021/08/uDvE826205.jpg', NULL, NULL),
(705, 550, 'THUMBNAIL', 150, 150, 'images/media/2021/08/thumbnail1629956914uDvE826205.jpg', NULL, NULL),
(706, 550, 'MEDIUM', 400, 400, 'images/media/2021/08/medium1629956915uDvE826205.jpg', NULL, NULL),
(707, 551, 'ACTUAL', 500, 500, 'images/media/2021/08/5HDPR26206.jpg', NULL, NULL),
(708, 551, 'THUMBNAIL', 150, 150, 'images/media/2021/08/thumbnail16299577355HDPR26206.jpg', NULL, NULL),
(709, 551, 'MEDIUM', 400, 400, 'images/media/2021/08/medium16299577355HDPR26206.jpg', NULL, NULL),
(710, 552, 'ACTUAL', 436, 679, 'images/media/2021/08/MtsCE28202.jpg', NULL, NULL),
(711, 552, 'THUMBNAIL', 96, 150, 'images/media/2021/08/thumbnail1630162716MtsCE28202.jpg', NULL, NULL),
(712, 552, 'MEDIUM', 257, 400, 'images/media/2021/08/medium1630162716MtsCE28202.jpg', NULL, NULL),
(713, 553, 'ACTUAL', 512, 1920, 'images/media/2021/08/LjRQr28803.jpg', NULL, NULL),
(714, 553, 'THUMBNAIL', 40, 150, 'images/media/2021/08/thumbnail1630164589LjRQr28803.jpg', NULL, NULL),
(715, 553, 'MEDIUM', 107, 400, 'images/media/2021/08/medium1630164589LjRQr28803.jpg', NULL, NULL),
(716, 553, 'LARGE', 240, 900, 'images/media/2021/08/large1630164589LjRQr28803.jpg', NULL, '2021-08-27 21:59:49'),
(717, 554, 'ACTUAL', 550, 740, 'images/media/2021/08/hdPUp28503.jpg', NULL, NULL),
(718, 554, 'THUMBNAIL', 111, 150, 'images/media/2021/08/thumbnail1630164831hdPUp28503.jpg', NULL, NULL),
(719, 554, 'MEDIUM', 297, 400, 'images/media/2021/08/medium1630164831hdPUp28503.jpg', NULL, NULL),
(720, 555, 'ACTUAL', 550, 740, 'images/media/2021/08/iwt1228803.jpg', NULL, NULL),
(721, 555, 'THUMBNAIL', 111, 150, 'images/media/2021/08/thumbnail1630164920iwt1228803.jpg', NULL, NULL),
(722, 555, 'MEDIUM', 297, 400, 'images/media/2021/08/medium1630164920iwt1228803.jpg', NULL, NULL),
(723, 556, 'ACTUAL', 500, 650, 'images/media/2021/09/iJykv03605.jpg', NULL, NULL),
(724, 556, 'THUMBNAIL', 115, 150, 'images/media/2021/09/thumbnail1630646941iJykv03605.jpg', NULL, NULL),
(725, 556, 'MEDIUM', 308, 400, 'images/media/2021/09/medium1630646941iJykv03605.jpg', NULL, NULL),
(726, 557, 'ACTUAL', 225, 225, 'images/media/2022/12/2K7BU14606.jpg', NULL, NULL),
(727, 557, 'THUMBNAIL', 150, 150, 'images/media/2022/12/thumbnail16710007592K7BU14606.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
CREATE TABLE IF NOT EXISTS `inventory` (
  `inventory_ref_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL,
  `added_date` int(11) NOT NULL,
  `reference_code` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `purchase_price` decimal(10,2) NOT NULL,
  `stock_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`inventory_ref_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventory_ref_id`, `admin_id`, `added_date`, `reference_code`, `stock`, `products_id`, `purchase_price`, `stock_type`, `created_at`, `updated_at`) VALUES
(1, 2, 0, 'tesafdsfff', 100, 10, '5000.00', 'in', '2021-03-14 06:00:51', '2021-03-14 11:30:51'),
(2, 2, 0, NULL, 5, 32, '1.00', 'in', '2021-03-18 01:41:11', '2021-03-18 07:11:11'),
(3, 2, 0, '1000', 10, 4, '1000.00', 'in', '2021-03-20 01:14:52', '2021-03-20 06:44:52'),
(4, 2, 0, '1000', 10, 1, '1000.00', 'in', '2021-03-22 06:25:36', '2021-03-22 11:55:36'),
(5, 2, 0, '1000', 2147483647, 1, '99999999.99', 'in', '2021-03-22 06:26:00', '2021-03-22 11:56:00'),
(6, 2, 0, '100', 2147483647, 7, '10000.00', 'in', '2021-03-22 06:26:40', '2021-03-22 11:56:40'),
(7, 2, 0, '1000', 2147483647, 13, '99999999.99', 'in', '2021-03-22 06:28:39', '2021-03-22 11:58:39'),
(8, 2, 0, '52525', 2147483647, 13, '1000.00', 'in', '2021-03-22 06:30:34', '2021-03-22 12:00:34'),
(9, 2, 0, 'bulk_upload', 10, 33, '1499.00', 'in', '2021-03-23 14:42:45', '2021-03-23 14:42:45'),
(10, 2, 0, 'bulk_upload', 20, 34, '3000.00', 'in', '2021-03-23 14:42:45', '2021-03-23 14:42:45'),
(11, 2, 0, 'bulk_upload', 20, 35, '3599.00', 'in', '2021-03-23 14:42:45', '2021-03-23 14:42:45'),
(12, 2, 0, NULL, 10, 28, '50.00', 'in', '2021-03-24 04:20:56', '2021-03-24 09:50:56'),
(13, 2, 0, NULL, 5, 28, '50.00', 'in', '2021-03-24 04:21:37', '2021-03-24 09:51:37'),
(14, 0, 1616644235, '', 1, 32, '0.00', 'out', '2021-03-25 03:50:35', '2021-03-25 03:50:35'),
(15, 0, 1616644235, '', 1, 28, '0.00', 'out', '2021-03-25 03:50:35', '2021-03-25 03:50:35'),
(16, 0, 1616644235, '', 1, 13, '0.00', 'out', '2021-03-25 03:50:35', '2021-03-25 03:50:35'),
(17, 0, 1616652920, '', 1, 32, '0.00', 'out', '2021-03-25 06:15:20', '2021-03-25 06:15:20'),
(18, 0, 1616652920, '', 1, 28, '0.00', 'out', '2021-03-25 06:15:20', '2021-03-25 06:15:20'),
(19, 0, 1616690984, '', 2, 13, '0.00', 'out', '2021-03-25 16:49:44', '2021-03-25 16:49:44'),
(20, 0, 1616900748, '', 1, 32, '0.00', 'out', '2021-03-28 03:05:48', '2021-03-28 03:05:48'),
(21, 0, 1616947549, '', 1, 32, '0.00', 'out', '2021-03-28 16:05:49', '2021-03-28 16:05:49'),
(22, 0, 1616947796, '', 1, 32, '0.00', 'out', '2021-03-28 16:09:56', '2021-03-28 16:09:56'),
(23, 2, 0, NULL, 1, 32, '0.00', 'in', '2021-04-13 06:06:53', '2021-04-13 11:36:53'),
(24, 2, 0, NULL, 1, 28, '0.00', 'in', '2021-04-13 06:06:53', '2021-04-13 11:36:53'),
(25, 2, 0, NULL, 1, 13, '0.00', 'in', '2021-04-13 06:06:53', '2021-04-13 11:36:53'),
(26, 2, 0, NULL, 40, 38, '50.00', 'in', '2021-08-26 00:55:49', '2021-08-26 06:25:49'),
(27, 2, 0, NULL, 5, 39, '35000.00', 'in', '2021-08-27 21:43:42', '2021-08-28 15:13:42'),
(28, 2, 0, NULL, 500, 40, '200.00', 'in', '2021-09-03 00:12:37', '2021-09-03 05:42:37'),
(29, 0, 1632224585, '', 3, 13, '0.00', 'out', '2021-09-21 11:43:05', '2021-09-21 11:43:05');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_detail`
--

DROP TABLE IF EXISTS `inventory_detail`;
CREATE TABLE IF NOT EXISTS `inventory_detail` (
  `inventory_ref_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `inventory_detail`
--

INSERT INTO `inventory_detail` (`inventory_ref_id`, `products_id`, `attribute_id`) VALUES
(3, 4, 1),
(7, 13, 13),
(8, 13, 11),
(12, 28, 20),
(13, 28, 21),
(15, 28, 20),
(16, 13, 13),
(18, 28, 20),
(19, 13, 11),
(24, 28, 9),
(25, 13, 13),
(29, 13, 11);

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

DROP TABLE IF EXISTS `labels`;
CREATE TABLE IF NOT EXISTS `labels` (
  `label_id` int(11) NOT NULL AUTO_INCREMENT,
  `label_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`label_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1118 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`label_id`, `label_name`) VALUES
(1, 'I\'ve forgotten my password?'),
(2, 'Creating an account means you’re okay with shopify\'s Terms of Service, Privacy Policy'),
(872, 'Login with'),
(873, 'or'),
(874, 'Email'),
(875, 'Password'),
(876, 'Register'),
(877, 'Forgot Password'),
(878, 'Send'),
(879, 'About Us'),
(880, 'Categories'),
(881, 'Contact Us'),
(882, 'Name'),
(883, 'Your Messsage'),
(884, 'Please connect to the internet'),
(885, 'Recently Viewed'),
(886, 'Products are available.'),
(887, 'Top Seller'),
(888, 'Special Deals'),
(889, 'Most Liked'),
(890, 'All Categories'),
(891, 'Deals'),
(892, 'REMOVE'),
(893, 'Intro'),
(894, 'Skip Intro'),
(895, 'Got It!'),
(896, 'Order Detail'),
(897, 'Price Detail'),
(898, 'Total'),
(899, 'Sub Total'),
(900, 'Shipping'),
(901, 'Product Details'),
(902, 'New'),
(903, 'Out of Stock'),
(904, 'In Stock'),
(905, 'Add to Cart'),
(906, 'ADD TO CART'),
(907, 'Product Description'),
(908, 'Techincal details'),
(909, 'OFF'),
(910, 'No Products Found'),
(911, 'Reset Filters'),
(912, 'Search'),
(913, 'Main Categories'),
(914, 'Sub Categories'),
(915, 'Shipping method'),
(916, 'Thank You'),
(917, 'Thank you for shopping with us.'),
(918, 'My Orders'),
(919, 'Continue Shopping'),
(920, 'Favourite'),
(921, 'Your wish List is empty'),
(922, 'Continue Adding'),
(923, 'Explore'),
(924, 'Word Press Post Detail'),
(925, 'Go Back'),
(926, 'Top Sellers'),
(927, 'News'),
(928, 'Enter keyword'),
(929, 'Settings'),
(930, 'Shop'),
(931, 'Reset'),
(932, 'Select Language'),
(933, 'OUT OF STOCK'),
(934, 'Newest'),
(935, 'Refund Policy'),
(936, 'Privacy Policy'),
(937, 'Term and Services'),
(938, 'Skip'),
(939, 'Top Dishes'),
(940, 'Recipe of Day'),
(941, 'Food Categories'),
(942, 'Coupon Code'),
(943, 'Coupon Amount'),
(944, 'coupon code'),
(945, 'Coupon'),
(946, 'Note to the buyer'),
(947, 'Explore More'),
(948, 'All'),
(949, 'A - Z'),
(950, 'Z - A'),
(951, 'Price : high - low'),
(952, 'Price : low - high'),
(953, 'Special Products'),
(954, 'Sort Products'),
(955, 'Cancel'),
(956, 'most liked'),
(957, 'special'),
(958, 'top seller'),
(959, 'newest'),
(960, 'Likes'),
(961, 'My Account'),
(962, 'Mobile'),
(963, 'Date of Birth'),
(964, 'Update'),
(965, 'Current Password'),
(966, 'New Password'),
(967, 'Change Password'),
(968, 'Customer Orders'),
(969, 'Order Status'),
(970, 'Orders ID'),
(971, 'Product Price'),
(972, 'No. of Products'),
(973, 'Date'),
(974, 'Customer Address'),
(975, 'Please add your new shipping address for the futher processing of the your order'),
(976, 'Add new Address'),
(977, 'Create an Account'),
(978, 'First Name'),
(979, 'Last Name'),
(980, 'Already Memeber?'),
(981, 'Billing Info'),
(982, 'Address'),
(983, 'Phone'),
(984, 'Same as Shipping Address'),
(985, 'Next'),
(986, 'Order'),
(987, 'Billing Address'),
(988, 'Shipping Method'),
(989, 'Products'),
(990, 'SubTotal'),
(991, 'Products Price'),
(992, 'Tax'),
(993, 'Shipping Cost'),
(994, 'Order Notes'),
(995, 'Payment'),
(996, 'Card Number'),
(997, 'Expiration Date'),
(998, 'Expiration'),
(999, 'Error: invalid card number!'),
(1000, 'Error: invalid expiry date!'),
(1001, 'Error: invalid cvc number!'),
(1002, 'Continue'),
(1003, 'My Cart'),
(1004, 'Your cart is empty'),
(1005, 'continue shopping'),
(1006, 'Price'),
(1007, 'Quantity'),
(1008, 'by'),
(1009, 'View'),
(1010, 'Remove'),
(1011, 'Proceed'),
(1012, 'Shipping Address'),
(1013, 'Country'),
(1014, 'other'),
(1015, 'Zone'),
(1016, 'City'),
(1017, 'Post code'),
(1018, 'State'),
(1019, 'Update Address'),
(1020, 'Save Address'),
(1021, 'Login & Register'),
(1022, 'Please login or create an account for free'),
(1023, 'Log Out'),
(1024, 'My Wish List'),
(1025, 'Filters'),
(1026, 'Price Range'),
(1027, 'Close'),
(1028, 'Apply'),
(1029, 'Clear'),
(1030, 'Menu'),
(1031, 'Home'),
(1033, 'Creating an account means you’re okay with our'),
(1034, 'Login'),
(1035, 'Turn on/off Local Notifications'),
(1036, 'Turn on/off Notifications'),
(1037, 'Change Language'),
(1038, 'Official Website'),
(1039, 'Rate Us'),
(1040, 'Share'),
(1041, 'Edit Profile'),
(1042, 'A percentage discount for the entire cart'),
(1043, 'A fixed total discount for the entire cart'),
(1044, 'A fixed total discount for selected products only'),
(1045, 'A percentage discount for selected products only'),
(1047, 'Network Connected Reloading Data'),
(1048, 'Sort by'),
(1049, 'Flash Sale'),
(1050, 'ok'),
(1051, 'Number'),
(1052, 'Expire Month'),
(1053, 'Expire Year'),
(1054, 'Payment Method'),
(1055, 'Status'),
(1056, 'And'),
(1057, 'cccc'),
(1058, 'Shop More'),
(1059, 'Me'),
(1060, 'View All'),
(1061, 'Featured'),
(1062, 'Shop Now'),
(1063, 'New Arrivals'),
(1064, 'Sort'),
(1065, 'Help & Support'),
(1066, 'Select Currency'),
(1067, 'Your Price'),
(1068, 'Billing'),
(1069, 'Ship to a different address?'),
(1070, 'Method'),
(1071, 'Summary'),
(1072, 'Discount'),
(1073, 'Error in initialization, maybe PayPal isnt supported or something else'),
(1074, 'Alert'),
(1075, 'Your Wishlist is Empty'),
(1076, 'Press heart icon on products to add them in wishlist'),
(1077, 'Wishlist'),
(1078, 'All Items'),
(1079, 'Account Info'),
(1080, 'You Must Be Logged in to use this Feature!'),
(1081, 'Remove from Wishlist'),
(1082, 'Sign Up'),
(1083, 'Reset Password'),
(1084, 'Invalid email or password'),
(1085, 'Recent Searches'),
(1086, 'Add to Wishlist'),
(1087, 'Discover Latest Trends'),
(1088, 'Add To My Wishlist'),
(1089, 'Start Shoping'),
(1090, 'A Smart Shopping Experience'),
(1091, 'Addresses'),
(1092, 'Account'),
(1093, 'DETAILS'),
(1094, 'Dark Mode'),
(1095, 'Enter a description'),
(1096, 'Grocery Store'),
(1097, 'Post Comment'),
(1098, 'Rate and write a review'),
(1099, 'Ratings & Reviews'),
(1100, 'Write a review'),
(1101, 'Your Rating'),
(1102, 'rating'),
(1103, 'rating and review'),
(1104, 'Coupon Codes List'),
(1105, 'Custom Orders'),
(1106, 'Ecommerce'),
(1107, 'Featured Products'),
(1108, 'House Hold 1'),
(1109, 'Newest Products'),
(1110, 'On Sale Products'),
(1111, 'Braintree'),
(1112, 'Hyperpay'),
(1113, 'Instamojo'),
(1114, 'PayTm'),
(1115, 'Paypal'),
(1116, 'Razor Pay'),
(1117, 'Stripe');

-- --------------------------------------------------------

--
-- Table structure for table `label_value`
--

DROP TABLE IF EXISTS `label_value`;
CREATE TABLE IF NOT EXISTS `label_value` (
  `label_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `label_value` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `label_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`label_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1828 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `label_value`
--

INSERT INTO `label_value` (`label_value_id`, `label_value`, `language_id`, `label_id`) VALUES
(1297, 'Home', 1, 1031),
(1298, 'Menu', 1, 1030),
(1299, 'Clear', 1, 1029),
(1300, 'Apply', 1, 1028),
(1301, 'Close', 1, 1027),
(1302, 'Price Range', 1, 1026),
(1303, 'Filters', 1, 1025),
(1304, 'My Wish List', 1, 1024),
(1305, 'Log Out', 1, 1023),
(1306, 'Please login or create an account for free', 1, 1022),
(1307, 'login & Register', 1, 1021),
(1308, 'Save Address', 1, 1020),
(1309, 'State', 1, 1018),
(1310, 'Update Address', 1, 1019),
(1311, 'Post code', 1, 1017),
(1312, 'City', 1, 1016),
(1313, 'Zone', 1, 1015),
(1314, 'other', 1, 1014),
(1315, 'Country', 1, 1013),
(1316, 'Shipping Address', 1, 1012),
(1317, 'Proceed', 1, 1011),
(1318, 'Remove', 1, 1010),
(1319, 'by', 1, 1008),
(1320, 'View', 1, 1009),
(1321, 'Quantity', 1, 1007),
(1322, 'Price', 1, 1006),
(1323, 'continue shopping', 1, 1005),
(1324, 'Your cart is empty', 1, 1004),
(1325, 'My Cart', 1, 1003),
(1326, 'Continue', 1, 1002),
(1327, 'Error: invalid cvc number!', 1, 1001),
(1328, 'Error: invalid expiry date!', 1, 1000),
(1329, 'Error: invalid card number!', 1, 999),
(1330, 'Expiration', 1, 998),
(1331, 'Expiration Date', 1, 997),
(1332, 'Card Number', 1, 996),
(1333, 'Payment', 1, 995),
(1334, 'Order Notes', 1, 994),
(1335, 'Shipping Cost', 1, 993),
(1336, 'Tax', 1, 992),
(1337, 'Products Price', 1, 991),
(1338, 'SubTotal', 1, 990),
(1339, 'Products', 1, 989),
(1340, 'Shipping Method', 1, 988),
(1341, 'Billing Address', 1, 987),
(1342, 'Order', 1, 986),
(1343, 'Next', 1, 985),
(1344, 'Same as Shipping Address', 1, 984),
(1345, 'Billing Info', 1, 981),
(1346, 'Address', 1, 982),
(1347, 'Phone', 1, 983),
(1348, 'Already Memeber?', 1, 980),
(1349, 'Last Name', 1, 979),
(1350, 'First Name', 1, 978),
(1351, 'Create an Account', 1, 977),
(1352, 'Add new Address', 1, 976),
(1353, 'Please add your new shipping address for the futher processing of the your order', 1, 975),
(1354, 'Order Status', 1, 969),
(1355, 'Orders ID', 1, 970),
(1356, 'Product Price', 1, 971),
(1357, 'No. of Products', 1, 972),
(1358, 'Date', 1, 973),
(1359, 'Customer Address', 1, 974),
(1360, 'Customer Orders', 1, 968),
(1361, 'Change Password', 1, 967),
(1362, 'New Password', 1, 966),
(1363, 'Current Password', 1, 965),
(1364, 'Update', 1, 964),
(1365, 'Date of Birth', 1, 963),
(1366, 'Mobile', 1, 962),
(1367, 'My Account', 1, 961),
(1368, 'Likes', 1, 960),
(1369, 'Newest', 1, 959),
(1370, 'Top Seller', 1, 958),
(1371, 'Special', 1, 957),
(1372, 'Most Liked', 1, 956),
(1373, 'Cancel', 1, 955),
(1374, 'Sort Products', 1, 954),
(1375, 'Special Products', 1, 953),
(1376, 'Price : low - high', 1, 952),
(1377, 'Price : high - low', 1, 951),
(1378, 'Z - A', 1, 950),
(1379, 'A - Z', 1, 949),
(1380, 'All', 1, 948),
(1381, 'Explore More', 1, 947),
(1382, 'Note to the buyer', 1, 946),
(1383, 'Coupon', 1, 945),
(1384, 'coupon code', 1, 944),
(1385, 'Coupon Amount', 1, 943),
(1386, 'Coupon Code', 1, 942),
(1387, 'Food Categories', 1, 941),
(1388, 'Recipe of Day', 1, 940),
(1389, 'Top Dishes', 1, 939),
(1390, 'Skip', 1, 938),
(1391, 'Term and Services', 1, 937),
(1392, 'Privacy Policy', 1, 936),
(1393, 'Refund Policy', 1, 935),
(1394, 'Newest', 1, 934),
(1395, 'OUT OF STOCK', 1, 933),
(1396, 'Select Language', 1, 932),
(1397, 'Reset', 1, 931),
(1398, 'Shop', 1, 930),
(1399, 'Settings', 1, 929),
(1400, 'Enter keyword', 1, 928),
(1401, 'News', 1, 927),
(1402, 'Top Sellers', 1, 926),
(1403, 'Go Back', 1, 925),
(1404, 'Word Press Post Detail', 1, 924),
(1405, 'Explore', 1, 923),
(1406, 'Continue Adding', 1, 922),
(1407, 'Your wish List is empty', 1, 921),
(1408, 'Favourite', 1, 920),
(1409, 'Continue Shopping', 1, 919),
(1410, 'My Orders', 1, 918),
(1411, 'Thank you for shopping with us.', 1, 917),
(1412, 'Thank You', 1, 916),
(1413, 'Shipping method', 1, 915),
(1414, 'Sub Categories', 1, 914),
(1415, 'Main Categories', 1, 913),
(1416, 'Search', 1, 912),
(1417, 'Reset Filters', 1, 911),
(1418, 'No Products Found', 1, 910),
(1419, 'OFF', 1, 909),
(1420, 'Techincal details', 1, 908),
(1421, 'Product Description', 1, 907),
(1422, 'ADD TO CART', 1, 906),
(1423, 'Add to Cart', 1, 905),
(1424, 'In Stock', 1, 904),
(1425, 'Out of Stock', 1, 903),
(1426, 'New', 1, 902),
(1427, 'Product Details', 1, 901),
(1428, 'Shipping', 1, 900),
(1429, 'Sub Total', 1, 899),
(1430, 'Total', 1, 898),
(1431, 'Price Detail', 1, 897),
(1432, 'Order Detail', 1, 896),
(1433, 'Got It!', 1, 895),
(1434, 'Skip Intro', 1, 894),
(1435, 'Intro', 1, 893),
(1436, 'REMOVE', 1, 892),
(1437, 'Deals', 1, 891),
(1438, 'All Categories', 1, 890),
(1439, 'Most Liked', 1, 889),
(1440, 'Special Deals', 1, 888),
(1441, 'Top Seller', 1, 887),
(1442, 'Products are available.', 1, 886),
(1443, 'Recently Viewed', 1, 885),
(1444, 'Please connect to the internet', 1, 884),
(1445, 'Contact Us', 1, 881),
(1446, 'Name', 1, 882),
(1447, 'Your Message', 1, 883),
(1448, 'Categories', 1, 880),
(1449, 'About Us', 1, 879),
(1450, 'Send', 1, 878),
(1451, 'Forgot Password', 1, 877),
(1452, 'Register', 1, 876),
(1453, 'Password', 1, 875),
(1454, 'Email', 1, 874),
(1455, 'or', 1, 873),
(1456, 'Login with', 1, 872),
(1457, 'Creating an account means you\'re okay with shopify\'s Terms of Service, Privacy Policy', 1, 2),
(1458, 'I\'ve forgotten my password?', 1, 1),
(1459, NULL, 1, NULL),
(1462, 'Creating an account means you’re okay with our', 1, 1033),
(1465, 'Login', 1, 1034),
(1468, 'Turn on/off Local Notifications', 1, 1035),
(1471, 'Turn on/off Notifications', 1, 1036),
(1474, 'Change Language', 1, 1037),
(1477, 'Official Website', 1, 1038),
(1480, 'Rate Us', 1, 1039),
(1483, 'Share', 1, 1040),
(1486, 'Edit Profile', 1, 1041),
(1489, 'A percentage discount for the entire cart', 1, 1042),
(1492, 'A fixed total discount for the entire cart', 1, 1043),
(1495, 'A fixed total discount for selected products only', 1, 1044),
(1498, 'A percentage discount for selected products only', 1, 1045),
(1501, 'Network Connected Reloading Data', 1, 1047),
(1503, 'Sort by', 1, 1048),
(1505, 'Flash Sale', 1, 1049),
(1507, 'ok', 1, 1050),
(1509, 'Number', 1, 1051),
(1511, 'Expire Month', 1, 1052),
(1513, 'Expire Year', 1, 1053),
(1515, 'Payment Method', 1, 1054),
(1517, 'Status', 1, 1055),
(1519, 'And', 1, 1056),
(1520, 'نسيت كلمة المرور الخاصة بي؟', 4, 1),
(1521, 'إن إنشاء حساب يعني موافقتك على شروط الخدمة وسياسة الخصوصية', 4, 2),
(1522, 'تسجيل الدخول مع', 4, 872),
(1523, 'أو', 4, 873),
(1524, 'البريد الإلكتروني', 4, 874),
(1525, 'كلمه السر', 4, 875),
(1526, 'تسجيل', 4, 876),
(1527, 'هل نسيت كلمة المرور', 4, 877),
(1528, 'إرسال', 4, 878),
(1529, 'معلومات عنا', 4, 879),
(1530, 'التصنيفات', 4, 880),
(1531, 'اتصل بنا', 4, 881),
(1532, 'اسم', 4, 882),
(1533, 'رسالتك', 4, 883),
(1534, 'يرجى الاتصال بالإنترنت', 4, 884),
(1535, 'شوهدت مؤخرا', 4, 885),
(1536, 'المنتجات المتاحة.', 4, 886),
(1537, 'أعلى بائع', 4, 887),
(1538, 'صفقة خاصة', 4, 888),
(1539, 'الأكثر إعجابا', 4, 889),
(1540, 'جميع الفئات', 4, 890),
(1541, 'صفقات', 4, 891),
(1542, 'إزالة', 4, 892),
(1543, 'مقدمة', 4, 893),
(1544, 'تخطي المقدمة', 4, 894),
(1545, 'فهمتك!', 4, 895),
(1546, 'تفاصيل الطلب', 4, 896),
(1547, 'سعر التفاصيل', 4, 897),
(1548, 'مجموع', 4, 898),
(1549, 'المجموع الفرعي', 4, 899),
(1550, 'الشحن', 4, 900),
(1551, 'تفاصيل المنتج', 4, 901),
(1552, 'جديد', 4, 902),
(1553, 'إنتهى من المخزن', 4, 903),
(1554, 'في المخزن', 4, 904),
(1555, 'أضف إلى السلة', 4, 905),
(1556, 'أضف إلى السلة', 4, 906),
(1557, 'وصف المنتج', 4, 907),
(1558, 'تفاصيل تقنية', 4, 908),
(1559, 'إيقاف', 4, 909),
(1560, 'لا توجد منتجات', 4, 910),
(1561, 'إعادة تعيين المرشحات', 4, 911),
(1562, 'بحث', 4, 912),
(1563, 'الفئات الرئيسية', 4, 913),
(1564, 'الفئات الفرعية', 4, 914),
(1565, 'طريقة الشحن', 4, 915),
(1566, 'شكرا جزيلا', 4, 916),
(1567, 'شكرا للتسوق معنا.', 4, 917),
(1568, 'طلباتي', 4, 918),
(1569, 'مواصلة التسوق', 4, 919),
(1570, NULL, 4, NULL),
(1571, 'مفضل', 4, 920),
(1572, 'قائمة رغباتك فارغة', 4, 921),
(1573, 'متابعة الإضافة', 4, 922),
(1574, 'يكتشف', 4, 923),
(1575, 'وورد بوست التفاصيل', 4, 924),
(1576, 'عد', 4, 925),
(1577, 'أفضل البائعين', 4, 926),
(1578, 'أخبار', 4, 927),
(1579, 'أدخل الكلمة المفتاحية', 4, 928),
(1580, 'الإعدادات', 4, 929),
(1581, 'متجر', 4, 930),
(1582, 'إعادة تعيين', 4, 931),
(1583, 'اختار اللغة', 4, 932),
(1584, 'إنتهى من المخزن', 4, 933),
(1585, 'الأحدث', 4, 934),
(1586, 'سياسة الاسترجاع', 4, 935),
(1587, 'سياسة خاصة', 4, 936),
(1588, 'مصطلح والخدمات', 4, 937),
(1589, 'تخطى', 4, 938),
(1590, 'أطباق الأعلى', 4, 939),
(1591, 'وصفة اليوم', 4, 940),
(1592, 'فئات الغذاء', 4, 941),
(1593, 'رمز الكوبون', 4, 942),
(1594, 'مبلغ القسيمة', 4, 943),
(1595, 'رمز الكوبون', 4, 944),
(1596, 'كوبون', 4, 945),
(1597, 'ملاحظة للمشتري', 4, 946),
(1598, 'استكشاف المزيد', 4, 947),
(1599, 'الكل', 4, 948),
(1600, 'أ - ي', 4, 949),
(1601, 'ي - أ', 4, 950),
(1602, 'السعر مرتفع منخفض', 4, 951),
(1603, 'سعر منخفض مرتفع', 4, 952),
(1604, 'المنتجات الخاصة', 4, 953),
(1605, 'فرز المنتجات', 4, 954),
(1606, 'إلغاء', 4, 955),
(1607, 'الأكثر إعجابا', 4, 956),
(1608, 'خاص', 4, 957),
(1609, 'أعلى بائع', 4, 958),
(1610, 'الأحدث', 4, 959),
(1611, 'الإعجابات', 4, 960),
(1612, 'حسابي', 4, 961),
(1613, 'التليفون المحمول', 4, 962),
(1614, 'تاريخ الولادة', 4, 963),
(1615, 'تحديث', 4, 964),
(1616, 'كلمة المرور الحالية', 4, 965),
(1617, 'كلمة سر جديدة', 4, 966),
(1618, 'تغيير كلمة المرور', 4, 967),
(1619, 'طلبات العملاء', 4, 968),
(1620, 'حالة الطلب', 4, 969),
(1621, 'معرف الطلبات', 4, 970),
(1622, 'سعر المنتج', 4, 971),
(1623, 'عدد المنتجات', 4, 972),
(1624, 'تاريخ', 4, 973),
(1625, 'عنوان العميل', 4, 974),
(1626, 'يرجى إضافة عنوان الشحن الجديد لمزيد من المعالجة لطلبك', 4, 975),
(1627, 'إضافة عنوان جديد', 4, 976),
(1628, 'انشئ حساب', 4, 977),
(1629, 'الاسم الاول', 4, 978),
(1630, 'الكنية', 4, 979),
(1631, 'هل أنت عضو بالفعل؟', 4, 980),
(1632, 'معلومات الفواتير', 4, 981),
(1633, 'عنوان', 4, 982),
(1634, 'هاتف', 4, 983),
(1635, 'نفس عنوان الشحن', 4, 984),
(1636, 'التالى', 4, 985),
(1637, 'طلب', 4, 986),
(1638, 'عنوان وصول الفواتير', 4, 987),
(1639, 'طريقة الشحن', 4, 988),
(1640, 'منتجات', 4, 989),
(1641, 'حاصل الجمع', 4, 990),
(1642, 'سعر المنتجات', 4, 991),
(1643, 'ضريبة', 4, 992),
(1644, 'تكلفة الشحن', 4, 993),
(1645, 'ترتيب ملاحظات', 4, 994),
(1646, 'دفع', 4, 995),
(1647, 'رقم البطاقة', 4, 996),
(1648, 'تاريخ الإنتهاء', 4, 997),
(1649, 'انتهاء الصلاحية', 4, 998),
(1650, 'خطأ: رقم البطاقة غير صالح!', 4, 999),
(1651, 'خطأ: تاريخ انتهاء الصلاحية غير صحيح!', 4, 1000),
(1652, 'خطأ: رقم cvc غير صالح!', 4, 1001),
(1653, 'استمر', 4, 1002),
(1654, 'سلتي', 4, 1003),
(1655, 'عربة التسوق فارغة', 4, 1004),
(1656, 'مواصلة التسوق', 4, 1005),
(1657, 'السعر', 4, 1006),
(1658, 'كمية', 4, 1007),
(1659, 'بواسطة', 4, 1008),
(1660, 'رأي', 4, 1009),
(1661, 'إزالة', 4, 1010),
(1662, 'تقدم', 4, 1011),
(1663, 'عنوان الشحن', 4, 1012),
(1664, 'بلد', 4, 1013),
(1665, 'آخر', 4, 1014),
(1666, 'منطقة', 4, 1015),
(1667, 'مدينة', 4, 1016),
(1668, 'الرمز البريدي', 4, 1017),
(1669, 'حالة', 4, 1018),
(1670, 'تحديث العنوان', 4, 1019),
(1671, 'حفظ العنوان', 4, 1020),
(1672, 'دخولتسجيل', 4, 1021),
(1673, 'يرجى تسجيل الدخول أو إنشاء حساب مجانا', 4, 1022),
(1674, 'تسجيل خروج', 4, 1023),
(1675, 'قائمة امنياتي', 4, 1024),
(1676, 'مرشحات', 4, 1025),
(1677, 'نطاق السعر', 4, 1026),
(1678, 'قريب', 4, 1027),
(1679, 'تطبيق', 4, 1028),
(1680, 'واضح', 4, 1029),
(1681, 'قائمة طعام', 4, 1030),
(1682, 'الصفحة الرئيسية', 4, 1031),
(1683, 'إن إنشاء حساب يعني أنك بخير من خلال موقعنا', 4, 1033),
(1684, 'تسجيل الدخول', 4, 1034),
(1685, 'تشغيل / إيقاف الإشعارات', 4, 1035),
(1686, 'تشغيل / إيقاف الإشعارات', 4, 1036),
(1687, 'تغيير اللغة', 4, 1037),
(1688, 'الموقع الرسمي', 4, 1038),
(1689, 'قيمنا', 4, 1039),
(1690, 'شارك', 4, 1040),
(1691, 'تعديل الملف الشخصي', 4, 1041),
(1692, 'خصم النسبة المئوية للسلة بأكملها', 4, 1042),
(1693, 'خصم إجمالي ثابت للعربة بأكملها', 4, 1043),
(1694, 'خصم إجمالي ثابت للمنتجات المحددة فقط', 4, 1044),
(1695, 'خصم النسبة المئوية للمنتجات المختارة فقط', 4, 1045),
(1696, 'شبكة متصلة إعادة تحميل البيانات', 4, 1047),
(1697, 'صنف حسب', 4, 1048),
(1698, 'بيع مفاجئ', 4, 1049),
(1699, 'حسنا', 4, 1050),
(1700, 'رقم', 4, 1051),
(1701, 'انتهاء الشهر', 4, 1052),
(1702, 'انتهاء السنة', 4, 1053),
(1703, 'طريقة الدفع او السداد', 4, 1054),
(1704, 'الحالة', 4, 1055),
(1705, 'و', 4, 1056),
(1706, 'cccc', 1, 1057),
(1707, 'cccc', 4, 1057),
(1708, 'Shop More', 1, 1058),
(1709, 'عربي', 4, 1058),
(1710, 'Discount', 1, 1072),
(1711, 'خصم', 4, 1072),
(1712, 'Error in initialization, maybe PayPal isnt supported or something else', 1, 1073),
(1713, 'خطأ في التهيئة ، ربما لا يتم دعم PayPal أو أي شيء آخر', 4, 1073),
(1714, 'Alert', 1, 1074),
(1715, 'إنذار', 4, 1074),
(1716, 'Your Wishlist is Empty', 1, 1075),
(1717, 'قائمة رغباتك فارغة', 4, 1075),
(1718, 'Press heart icon on products to add them in wishlist', 1, 1076),
(1719, 'اضغط على أيقونة القلب على المنتجات لإضافتها إلى قائمة الرغبات', 4, 1076),
(1720, 'Wishlist', 1, 1077),
(1721, 'قائمة الرغبات', 4, 1077),
(1722, 'All Items', 1, 1078),
(1723, 'كل الاشياء', 4, 1078),
(1724, 'Account Info', 1, 1079),
(1725, 'معلومات الحساب', 4, 1079),
(1726, 'You Must Be Logged in to use this Feature!', 1, 1080),
(1727, 'يجب عليك تسجيل الدخول لاستخدام هذه الميزة!', 4, 1080),
(1728, 'Remove from Wishlist', 1, 1081),
(1729, 'إزالة من قائمة الرغبات', 4, 1081),
(1730, 'Sign Up', 1, 1082),
(1731, 'سجل', 4, 1082),
(1732, 'Reset Password', 1, 1083),
(1733, 'إعادة تعيين كلمة المرور', 4, 1083),
(1734, 'Invalid email or password', 1, 1084),
(1735, 'البريد الإلكتروني أو كلمة السر خاطئة', 4, 1084),
(1736, 'Recent Searches', 1, 1085),
(1737, 'عمليات البحث الأخيرة', 4, 1085),
(1738, 'Add to Wishlist', 1, 1086),
(1739, 'أضف إلى قائمة الامنيات', 4, 1086),
(1740, 'Discover Latest Trends', 1, 1087),
(1741, 'اكتشف أحدث الاتجاهات', 4, 1087),
(1742, 'Add To My Wishlist', 1, 1088),
(1743, 'أضف إلى قائمة أمنياتي', 4, 1088),
(1744, 'Start Shoping', 1, 1089),
(1745, 'ابدأ التسوق', 4, 1089),
(1746, 'A Smart Shopping Experience', 1, 1090),
(1747, 'تجربة تسوق ذكية', 4, 1090),
(1748, 'Addresses', 1, 1091),
(1749, 'عناوين', 4, 1091),
(1750, 'Account', 1, 1092),
(1751, 'الحساب', 4, 1092),
(1752, 'DETAILS', 1, 1093),
(1753, 'تفاصيل', 4, 1093),
(1754, 'Dark Mode', 1, 1094),
(1755, 'الوضع الداكن', 4, 1094),
(1756, 'Enter a description', 1, 1095),
(1757, 'أدخل وصفًا', 4, 1095),
(1758, 'Grocery Store', 1, 1096),
(1759, 'بقالة', 4, 1096),
(1760, 'Post Comment', 1, 1097),
(1761, 'أضف تعليقا', 4, 1097),
(1762, 'Rate and write a review', 1, 1098),
(1763, 'تقييم وكتابة مراجعة', 4, 1098),
(1764, 'Ratings & Reviews', 1, 1099),
(1765, 'التقييمات والمراجعات', 4, 1099),
(1766, 'Write a review', 1, 1100),
(1767, 'أكتب مراجعة', 4, 1100),
(1768, 'Your Rating', 1, 1101),
(1769, 'تقييمك', 4, 1101),
(1770, 'rating', 1, 1102),
(1771, 'تقييم', 4, 1102),
(1772, 'rating and review', 1, 1103),
(1773, 'تصنيف ومراجعة', 4, 1103),
(1774, 'Coupon Codes List', 1, 1104),
(1775, 'قائمة رموز القسيمة', 4, 1104),
(1776, 'Custom Orders', 1, 1105),
(1777, 'أوامر مخصصة', 4, 1105),
(1778, 'Ecommerce', 1, 1106),
(1779, 'التجارة الإلكترونية', 4, 1106),
(1780, 'Featured Products', 1, 1107),
(1781, 'منتجات مميزة', 4, 1107),
(1782, 'House Hold 1', 1, 1108),
(1783, 'المنزل عقد 1', 4, 1108),
(1784, 'Newest Products', 1, 1109),
(1785, 'أحدث المنتجات', 4, 1109),
(1786, 'On Sale Products', 1, 1110),
(1787, 'المنتجات المعروضة للبيع', 4, 1110),
(1788, 'Braintree', 1, 1111),
(1789, 'برينتري', 4, 1111),
(1790, 'Hyperpay', 1, 1112),
(1791, 'Hyperpay', 4, 1112),
(1792, 'Instamojo', 1, 1113),
(1793, 'Instamojo', 4, 1113),
(1794, 'PayTm', 1, 1114),
(1795, 'PayTm', 4, 1114),
(1796, 'Paypal', 1, 1115),
(1797, 'باي بال', 4, 1115),
(1798, 'Razor Pay', 1, 1116),
(1799, 'الحلاقة الدفع', 4, 1116),
(1800, 'Stripe', 1, 1117),
(1801, 'شريط', 4, 1117),
(1802, 'Me', 1, 1059),
(1803, 'أنا', 4, 1059),
(1804, 'View All', 1, 1060),
(1805, 'عرض الكل', 4, 1060),
(1806, 'Featured', 1, 1061),
(1807, 'متميز', 4, 1061),
(1808, 'Shop Now', 1, 1062),
(1809, 'تسوق الآن', 4, 1062),
(1810, 'New Arrivals', 1, 1063),
(1811, 'الوافدون الجدد', 4, 1063),
(1812, 'Sort', 1, 1064),
(1813, 'فرز', 4, 1064),
(1814, 'Help & Support', 1, 1065),
(1815, 'ساعد لدعم', 4, 1065),
(1816, 'Select Currency', 1, 1066),
(1817, 'اختر العملة', 4, 1066),
(1818, 'Your Price', 1, 1067),
(1819, 'السعر الخاص', 4, 1067),
(1820, 'Billing', 1, 1068),
(1821, 'الفواتير', 4, 1068),
(1822, 'Ship to a different address?', 1, 1069),
(1823, 'هل تريد الشحن إلى عنوان مختلف؟', 4, 1069),
(1824, 'Method', 1, 1070),
(1825, 'طريقة', 4, 1070),
(1826, 'Summary', 1, 1071),
(1827, 'ملخص', 4, 1071);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `languages_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` char(6) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `directory` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `direction` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_default` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`languages_id`),
  KEY `IDX_LANGUAGES_NAME` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`languages_id`, `name`, `code`, `image`, `directory`, `sort_order`, `direction`, `status`, `is_default`) VALUES
(1, 'English', 'en', '118', NULL, 1, 'ltr', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `liked_products`
--

DROP TABLE IF EXISTS `liked_products`;
CREATE TABLE IF NOT EXISTS `liked_products` (
  `like_id` int(11) NOT NULL AUTO_INCREMENT,
  `liked_products_id` int(11) NOT NULL,
  `liked_customers_id` int(11) NOT NULL,
  `date_liked` datetime DEFAULT NULL,
  PRIMARY KEY (`like_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `liked_products`
--

INSERT INTO `liked_products` (`like_id`, `liked_products_id`, `liked_customers_id`, `date_liked`) VALUES
(4, 36, 9, '2021-03-24 12:17:45'),
(3, 19, 7, '2021-03-22 11:44:16');

-- --------------------------------------------------------

--
-- Table structure for table `manage_min_max`
--

DROP TABLE IF EXISTS `manage_min_max`;
CREATE TABLE IF NOT EXISTS `manage_min_max` (
  `min_max_id` int(11) NOT NULL AUTO_INCREMENT,
  `min_level` int(11) NOT NULL,
  `max_level` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `inventory_ref_id` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`min_max_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manage_min_max`
--

INSERT INTO `manage_min_max` (`min_max_id`, `min_level`, `max_level`, `products_id`, `inventory_ref_id`) VALUES
(1, 1, 2, 13, '8'),
(2, 1, 2, 13, '8');

-- --------------------------------------------------------

--
-- Table structure for table `manage_role`
--

DROP TABLE IF EXISTS `manage_role`;
CREATE TABLE IF NOT EXISTS `manage_role` (
  `manage_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_types_id` tinyint(1) NOT NULL DEFAULT 0,
  `dashboard_view` tinyint(1) NOT NULL DEFAULT 0,
  `manufacturer_view` tinyint(1) NOT NULL DEFAULT 0,
  `manufacturer_create` tinyint(1) NOT NULL DEFAULT 0,
  `manufacturer_update` tinyint(1) NOT NULL DEFAULT 0,
  `manufacturer_delete` tinyint(1) NOT NULL DEFAULT 0,
  `categories_view` tinyint(1) NOT NULL DEFAULT 0,
  `categories_create` tinyint(1) NOT NULL DEFAULT 0,
  `categories_update` tinyint(1) NOT NULL DEFAULT 0,
  `categories_delete` tinyint(1) NOT NULL DEFAULT 0,
  `products_view` tinyint(1) NOT NULL DEFAULT 0,
  `products_create` tinyint(1) NOT NULL DEFAULT 0,
  `products_update` tinyint(1) NOT NULL DEFAULT 0,
  `products_delete` tinyint(1) NOT NULL DEFAULT 0,
  `news_view` tinyint(1) NOT NULL DEFAULT 0,
  `news_create` tinyint(1) NOT NULL DEFAULT 0,
  `news_update` tinyint(1) NOT NULL DEFAULT 0,
  `news_delete` tinyint(1) NOT NULL DEFAULT 0,
  `customers_view` tinyint(1) NOT NULL DEFAULT 0,
  `customers_create` tinyint(1) NOT NULL DEFAULT 0,
  `customers_update` tinyint(1) NOT NULL DEFAULT 0,
  `customers_delete` tinyint(1) NOT NULL DEFAULT 0,
  `tax_location_view` tinyint(1) NOT NULL DEFAULT 0,
  `tax_location_create` tinyint(1) NOT NULL DEFAULT 0,
  `tax_location_update` tinyint(1) NOT NULL DEFAULT 0,
  `tax_location_delete` tinyint(1) NOT NULL DEFAULT 0,
  `coupons_view` tinyint(1) NOT NULL DEFAULT 0,
  `coupons_create` tinyint(1) NOT NULL DEFAULT 0,
  `coupons_update` tinyint(1) NOT NULL DEFAULT 0,
  `coupons_delete` tinyint(1) NOT NULL DEFAULT 0,
  `notifications_view` tinyint(1) NOT NULL DEFAULT 0,
  `notifications_send` tinyint(1) NOT NULL DEFAULT 0,
  `orders_view` tinyint(1) NOT NULL DEFAULT 0,
  `orders_confirm` tinyint(1) NOT NULL DEFAULT 0,
  `shipping_methods_view` tinyint(1) NOT NULL DEFAULT 0,
  `shipping_methods_update` tinyint(1) NOT NULL DEFAULT 0,
  `payment_methods_view` tinyint(1) NOT NULL DEFAULT 0,
  `payment_methods_update` tinyint(1) NOT NULL DEFAULT 0,
  `reports_view` tinyint(1) NOT NULL DEFAULT 0,
  `website_setting_view` tinyint(1) NOT NULL DEFAULT 0,
  `website_setting_update` tinyint(1) NOT NULL DEFAULT 0,
  `application_setting_view` tinyint(1) NOT NULL DEFAULT 0,
  `application_setting_update` tinyint(1) NOT NULL DEFAULT 0,
  `general_setting_view` tinyint(1) NOT NULL DEFAULT 0,
  `general_setting_update` tinyint(1) NOT NULL DEFAULT 0,
  `manage_admins_view` tinyint(1) NOT NULL DEFAULT 0,
  `manage_admins_create` tinyint(1) NOT NULL DEFAULT 0,
  `manage_admins_update` tinyint(1) NOT NULL DEFAULT 0,
  `manage_admins_delete` tinyint(1) NOT NULL DEFAULT 0,
  `language_view` tinyint(1) NOT NULL DEFAULT 0,
  `language_create` tinyint(1) NOT NULL DEFAULT 0,
  `language_update` tinyint(1) NOT NULL DEFAULT 0,
  `language_delete` tinyint(1) NOT NULL DEFAULT 0,
  `profile_view` tinyint(1) NOT NULL DEFAULT 0,
  `profile_update` tinyint(1) NOT NULL DEFAULT 0,
  `admintype_view` tinyint(1) NOT NULL DEFAULT 0,
  `admintype_create` tinyint(1) NOT NULL DEFAULT 0,
  `admintype_update` tinyint(1) NOT NULL DEFAULT 0,
  `admintype_delete` tinyint(1) NOT NULL DEFAULT 0,
  `manage_admins_role` tinyint(1) NOT NULL DEFAULT 0,
  `add_media` tinyint(1) NOT NULL DEFAULT 0,
  `edit_media` tinyint(1) NOT NULL DEFAULT 0,
  `view_media` tinyint(1) NOT NULL DEFAULT 0,
  `delete_media` tinyint(1) NOT NULL DEFAULT 0,
  `edit_management` tinyint(1) NOT NULL DEFAULT 0,
  `reviews_view` tinyint(1) NOT NULL DEFAULT 0,
  `reviews_update` tinyint(1) NOT NULL DEFAULT 0,
  `currency_view` tinyint(1) NOT NULL DEFAULT 0,
  `currency_create` tinyint(1) NOT NULL DEFAULT 0,
  `currency_update` tinyint(1) NOT NULL DEFAULT 0,
  `currency_delete` tinyint(1) NOT NULL DEFAULT 0,
  `theme_setting` tinyint(1) NOT NULL DEFAULT 0,
  `check_for_pincode_view` tinyint(1) NOT NULL DEFAULT 0,
  `check_for_pincode_create` tinyint(1) NOT NULL DEFAULT 0,
  `check_for_pincode_update` tinyint(1) NOT NULL DEFAULT 0,
  `check_for_pincode_delete` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`manage_role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manage_role`
--

INSERT INTO `manage_role` (`manage_role_id`, `user_types_id`, `dashboard_view`, `manufacturer_view`, `manufacturer_create`, `manufacturer_update`, `manufacturer_delete`, `categories_view`, `categories_create`, `categories_update`, `categories_delete`, `products_view`, `products_create`, `products_update`, `products_delete`, `news_view`, `news_create`, `news_update`, `news_delete`, `customers_view`, `customers_create`, `customers_update`, `customers_delete`, `tax_location_view`, `tax_location_create`, `tax_location_update`, `tax_location_delete`, `coupons_view`, `coupons_create`, `coupons_update`, `coupons_delete`, `notifications_view`, `notifications_send`, `orders_view`, `orders_confirm`, `shipping_methods_view`, `shipping_methods_update`, `payment_methods_view`, `payment_methods_update`, `reports_view`, `website_setting_view`, `website_setting_update`, `application_setting_view`, `application_setting_update`, `general_setting_view`, `general_setting_update`, `manage_admins_view`, `manage_admins_create`, `manage_admins_update`, `manage_admins_delete`, `language_view`, `language_create`, `language_update`, `language_delete`, `profile_view`, `profile_update`, `admintype_view`, `admintype_create`, `admintype_update`, `admintype_delete`, `manage_admins_role`, `add_media`, `edit_media`, `view_media`, `delete_media`, `edit_management`, `reviews_view`, `reviews_update`, `currency_view`, `currency_create`, `currency_update`, `currency_delete`, `theme_setting`, `check_for_pincode_view`, `check_for_pincode_create`, `check_for_pincode_update`, `check_for_pincode_delete`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 11, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 12, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 13, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 14, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

DROP TABLE IF EXISTS `manufacturers`;
CREATE TABLE IF NOT EXISTS `manufacturers` (
  `manufacturers_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `manufacturer_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturers_slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_modified` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer_image` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`manufacturers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers_info`
--

DROP TABLE IF EXISTS `manufacturers_info`;
CREATE TABLE IF NOT EXISTS `manufacturers_info` (
  `manufacturers_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `manufacturers_url` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_clicked` int(11) NOT NULL DEFAULT 0,
  `date_last_click` datetime DEFAULT NULL,
  PRIMARY KEY (`manufacturers_id`,`languages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `sub_sort_order` int(11) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `external_link` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `sort_order`, `sub_sort_order`, `parent_id`, `type`, `external_link`, `link`, `page_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 0, 5, '/', '/', 0, 1, NULL, NULL),
(18, 22, 2, 0, 2, 'about-us', 'about-us', 0, 1, NULL, NULL),
(19, 23, 4, 0, 2, 'privacy-policy', 'privacy-policy', 0, 1, NULL, NULL),
(22, 25, NULL, 0, 5, 'contact', '/contact', 0, 1, NULL, NULL),
(23, 2, NULL, 0, 3, '', '#', 0, 1, NULL, NULL),
(24, 3, NULL, 23, 3, '', 'men-s', 0, 1, NULL, NULL),
(25, 4, NULL, 24, 3, '', 'men-s-accessories', 0, 1, NULL, NULL),
(26, 5, NULL, 24, 3, '', 'men-s-jeans', 0, 1, NULL, NULL),
(27, 6, NULL, 24, 3, '', 'men-s-shirts', 0, 1, NULL, NULL),
(28, 7, NULL, 24, 3, '', 'men-s-shoes', 0, 1, NULL, NULL),
(29, 8, NULL, 23, 3, '', 'women-s', 0, 1, NULL, NULL),
(30, 9, NULL, 29, 3, '', 'women-s-accessories', 0, 1, NULL, NULL),
(31, 10, NULL, 29, 3, '', 'women-s-bottoms', 0, 1, NULL, NULL),
(32, 11, NULL, 29, 3, '', 'women-s-tops', 0, 1, NULL, NULL),
(33, 12, NULL, 29, 3, '', 'women-s-winter-wear', 0, 1, NULL, NULL),
(34, 13, NULL, 29, 3, '', 'women-s-shoes', 0, 1, NULL, NULL),
(35, 14, NULL, 23, 3, '', 'kid-s', 0, 1, NULL, NULL),
(36, 15, NULL, 35, 3, '', 'boy-s-clothing', 0, 1, NULL, NULL),
(37, 16, NULL, 35, 3, '', 'girl-s-clothing', 0, 1, NULL, NULL),
(38, 17, NULL, 35, 3, '', 'kid-s-shoes', 0, 1, NULL, NULL),
(39, 18, NULL, 23, 3, '', 'house-hold', 0, 1, NULL, NULL),
(40, 19, NULL, 39, 3, '', 'house-hold-1', 0, 1, NULL, NULL),
(41, 20, NULL, 40, 3, '', 'house-hold-1-1', 0, 1, NULL, NULL),
(42, 21, NULL, 41, 3, '', 'house-hold-1-1-1', 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_translation`
--

DROP TABLE IF EXISTS `menu_translation`;
CREATE TABLE IF NOT EXISTS `menu_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `menu_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_translation`
--

INSERT INTO `menu_translation` (`id`, `menu_id`, `language_id`, `menu_name`) VALUES
(2, 1, 1, 'Home'),
(3, 1, 4, 'منزل'),
(33, 18, 1, 'About Us'),
(34, 18, 4, 'معلومات عنا'),
(35, 19, 1, 'Privacy Policy'),
(36, 19, 4, 'سياسة خاصة'),
(41, 22, 1, 'Contact Us'),
(42, 22, 4, 'اتصل بنا'),
(43, 23, 1, 'Catalog'),
(44, 24, 1, 'Mens'),
(45, 25, 1, 'Mens Accessories'),
(46, 26, 1, 'Mens Jeans'),
(47, 27, 1, 'Mens Shirts'),
(48, 28, 1, 'Mens Shoes'),
(49, 29, 1, 'Womens'),
(50, 30, 1, 'Womens Accessories'),
(51, 31, 1, 'Womens Bottoms'),
(52, 32, 1, 'Womens Tops'),
(53, 33, 1, 'Womens Winter Wear'),
(54, 34, 1, 'Womens Shoes'),
(55, 35, 1, 'Kids'),
(56, 36, 1, 'Boys Clothing'),
(57, 37, 1, 'Girls Clothing'),
(58, 38, 1, 'Kids Shoes'),
(59, 39, 1, 'House Hold'),
(60, 40, 1, 'House Hold 1'),
(61, 41, 1, 'House Hold 1.1'),
(62, 42, 1, 'House Hold 1.1.1');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_09_24_122557_create_address_book_table', 1),
(2, '2019_09_24_122557_create_alert_settings_table', 1),
(3, '2019_09_24_122557_create_api_calls_list_table', 1),
(4, '2019_09_24_122557_create_banners_history_table', 1),
(5, '2019_09_24_122557_create_banners_table', 1),
(6, '2019_09_24_122557_create_block_ips_table', 1),
(7, '2019_09_24_122557_create_categories_description_table', 1),
(8, '2019_09_24_122557_create_categories_role_table', 1),
(9, '2019_09_24_122557_create_categories_table', 1),
(10, '2019_09_24_122557_create_compare_table', 1),
(11, '2019_09_24_122557_create_constant_banners_table', 1),
(12, '2019_09_24_122557_create_countries_table', 1),
(13, '2019_09_24_122557_create_coupons_table', 1),
(14, '2019_09_24_122557_create_currencies_table', 1),
(15, '2019_09_24_122557_create_currency_record_table', 1),
(16, '2019_09_24_122557_create_current_theme_table', 1),
(17, '2019_09_24_122557_create_customers_basket_attributes_table', 1),
(18, '2019_09_24_122557_create_customers_basket_table', 1),
(19, '2019_09_24_122557_create_customers_info_table', 1),
(20, '2019_09_24_122557_create_customers_table', 1),
(21, '2019_09_24_122557_create_devices_table', 1),
(22, '2019_09_24_122557_create_flash_sale_table', 1),
(23, '2019_09_24_122557_create_flate_rate_table', 1),
(24, '2019_09_24_122557_create_front_end_theme_content_table', 1),
(25, '2019_09_24_122557_create_geo_zones_table', 1),
(26, '2019_09_24_122557_create_http_call_record_table', 1),
(27, '2019_09_24_122557_create_image_categories_table', 1),
(28, '2019_09_24_122557_create_images_table', 1),
(29, '2019_09_24_122557_create_inventory_detail_table', 1),
(30, '2019_09_24_122557_create_inventory_table', 1),
(31, '2019_09_24_122557_create_label_value_table', 1),
(32, '2019_09_24_122557_create_labels_table', 1),
(33, '2019_09_24_122557_create_languages_table', 1),
(34, '2019_09_24_122557_create_liked_products_table', 1),
(35, '2019_09_24_122557_create_manage_min_max_table', 1),
(36, '2019_09_24_122557_create_manage_role_table', 1),
(37, '2019_09_24_122557_create_manufacturers_info_table', 1),
(38, '2019_09_24_122557_create_manufacturers_table', 1),
(39, '2019_09_24_122557_create_news_categories_description_table', 1),
(40, '2019_09_24_122557_create_news_categories_table', 1),
(41, '2019_09_24_122557_create_news_description_table', 1),
(42, '2019_09_24_122557_create_news_table', 1),
(43, '2019_09_24_122557_create_news_to_news_categories_table', 1),
(44, '2019_09_24_122557_create_orders_products_attributes_table', 1),
(45, '2019_09_24_122557_create_orders_products_table', 1),
(46, '2019_09_24_122557_create_orders_status_description_table', 1),
(47, '2019_09_24_122557_create_orders_status_history_table', 1),
(48, '2019_09_24_122557_create_orders_status_table', 1),
(49, '2019_09_24_122557_create_orders_table', 1),
(50, '2019_09_24_122557_create_orders_total_table', 1),
(51, '2019_09_24_122557_create_pages_description_table', 1),
(52, '2019_09_24_122557_create_pages_table', 1),
(53, '2019_09_24_122557_create_payment_description_table', 1),
(54, '2019_09_24_122557_create_payment_methods_detail_table', 1),
(55, '2019_09_24_122557_create_payment_methods_table', 1),
(56, '2019_09_24_122557_create_permissions_table', 1),
(57, '2019_09_24_122557_create_products_attributes_table', 1),
(58, '2019_09_24_122557_create_products_description_table', 1),
(59, '2019_09_24_122557_create_products_images_table', 1),
(60, '2019_09_24_122557_create_products_options_descriptions_table', 1),
(61, '2019_09_24_122557_create_products_options_table', 1),
(62, '2019_09_24_122557_create_products_options_values_descriptions_table', 1),
(63, '2019_09_24_122557_create_products_options_values_table', 1),
(64, '2019_09_24_122557_create_products_shipping_rates_table', 1),
(65, '2019_09_24_122557_create_products_table', 1),
(66, '2019_09_24_122557_create_products_to_categories_table', 1),
(67, '2019_09_24_122557_create_reviews_description_table', 1),
(68, '2019_09_24_122557_create_reviews_table', 1),
(69, '2019_09_24_122557_create_sessions_table', 1),
(70, '2019_09_24_122557_create_settings_table', 1),
(71, '2019_09_24_122557_create_shipping_description_table', 1),
(72, '2019_09_24_122557_create_shipping_methods_table', 1),
(73, '2019_09_24_122557_create_sliders_images_table', 1),
(74, '2019_09_24_122557_create_specials_table', 1),
(75, '2019_09_24_122557_create_tax_class_table', 1),
(76, '2019_09_24_122557_create_tax_rates_table', 1),
(77, '2019_09_24_122557_create_units_descriptions_table', 1),
(78, '2019_09_24_122557_create_units_table', 1),
(79, '2019_09_24_122557_create_ups_shipping_table', 1),
(80, '2019_09_24_122557_create_user_to_address_table', 1),
(81, '2019_09_24_122557_create_user_types_table', 1),
(82, '2019_09_24_122557_create_users_table', 1),
(83, '2019_09_24_122557_create_whos_online_table', 1),
(84, '2019_09_24_122557_create_zones_table', 1),
(85, '2019_09_24_122557_create_zones_to_geo_zones_table', 1),
(86, '2019_12_11_070737_create_menus_table', 1),
(87, '2019_12_11_070821_create_menu_translation_table', 1),
(88, '2020_02_04_121358_top_offers', 1),
(89, '2020_03_25_141022_create_home_banners', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_date_added` datetime NOT NULL,
  `news_last_modified` datetime DEFAULT NULL,
  `news_status` tinyint(1) NOT NULL,
  `is_feature` tinyint(1) NOT NULL DEFAULT 0,
  `news_slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`news_id`),
  KEY `idx_products_date_added` (`news_date_added`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_image`, `news_date_added`, `news_last_modified`, `news_status`, `is_feature`, `news_slug`, `created_at`, `updated_at`) VALUES
(1, '419', '2020-04-05 01:10:00', NULL, 1, 1, 'world-business-news', '2019-09-18 05:47:41', '2020-03-31 23:42:31'),
(2, '420', '2020-04-05 01:10:00', NULL, 1, 0, 'witn-news', '2019-09-18 05:53:26', '2019-10-01 06:55:20'),
(3, '421', '2020-04-05 01:10:00', NULL, 1, 0, 'stock-exchange', '2019-09-24 06:32:25', '2019-10-01 06:55:44'),
(4, '447', '2020-04-05 01:10:00', NULL, 1, 1, 'manufacturing-tools', '2019-09-24 06:33:19', '2019-10-01 06:56:07'),
(5, '449', '2020-04-05 01:10:00', NULL, 1, 1, 'fashion-week', '2019-09-24 07:01:11', '2019-10-01 06:56:45'),
(6, '448', '2020-04-05 01:10:00', NULL, 1, 1, 'world-wide-networking', '2019-09-24 07:03:17', '2019-10-01 06:57:01');

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

DROP TABLE IF EXISTS `news_categories`;
CREATE TABLE IF NOT EXISTS `news_categories` (
  `categories_id` int(11) NOT NULL AUTO_INCREMENT,
  `categories_image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `categories_icon` text COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `sort_order` int(11) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `news_categories_slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `categories_status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`categories_id`),
  KEY `idx_categories_parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_categories`
--

INSERT INTO `news_categories` (`categories_id`, `categories_image`, `categories_icon`, `parent_id`, `sort_order`, `date_added`, `last_modified`, `news_categories_slug`, `categories_status`, `created_at`, `updated_at`) VALUES
(3, '417', '', 0, 1, NULL, '2020-04-01 05:10:03', 'tools-and-technology', 1, '2019-09-24 06:26:31', NULL),
(4, '418', '', 0, 4, NULL, '2020-04-01 05:10:27', 'business', 1, '2019-09-24 06:27:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news_categories_description`
--

DROP TABLE IF EXISTS `news_categories_description`;
CREATE TABLE IF NOT EXISTS `news_categories_description` (
  `categories_description_id` int(11) NOT NULL AUTO_INCREMENT,
  `categories_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `categories_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`categories_description_id`),
  KEY `idx_categories_name` (`categories_name`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_categories_description`
--

INSERT INTO `news_categories_description` (`categories_description_id`, `categories_id`, `language_id`, `categories_name`) VALUES
(3, 3, 1, 'Tools and Technology'),
(4, 4, 1, 'Business'),
(5, 3, 4, 'الأدوات والتكنولوجيا'),
(6, 4, 4, 'اعمال');

-- --------------------------------------------------------

--
-- Table structure for table `news_description`
--

DROP TABLE IF EXISTS `news_description`;
CREATE TABLE IF NOT EXISTS `news_description` (
  `language_id` int(11) NOT NULL DEFAULT 1,
  `news_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `news_id` int(11) NOT NULL,
  `news_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_url` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_viewed` int(11) DEFAULT 0,
  KEY `products_name` (`news_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_description`
--

INSERT INTO `news_description` (`language_id`, `news_name`, `news_id`, `news_description`, `news_url`, `news_viewed`) VALUES
(1, 'World Business', 1, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '0', 0),
(1, 'World Information Technology', 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '0', 0),
(1, 'Stock Exchange', 3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&amp;rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '0', 0),
(1, 'Why to choose this app for your Project?', 4, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&amp;rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '0', 0),
(1, 'Fashion Week', 5, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&amp;rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '0', 0),
(1, 'Tool and Technology', 6, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&amp;rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '0', 0),
(4, 'عالم الأعمال', 1, '<p>ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء. أم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم. ثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء. عرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل. مكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا. كان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل. حتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد. عدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات. كلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية. عن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء. أم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم. ثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء. عرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل. مكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا. كان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل. حتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد. عدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات. كلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية. عن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء. أم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم. ثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء. عرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل. مكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا. كان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل. حتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد. عدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات. كلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية. عن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.</p>', '0', 0),
(4, 'عالم تكنولوجيا المعلومات', 2, 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', '0', 0),
(4, 'تداول الاسهم', 3, 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', '0', 0),
(4, 'لماذا تختار هذا التطبيق لمشروعك؟', 4, 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', '0', 0),
(4, 'أسبوع الموضة', 5, 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', '0', 0),
(4, 'الأداة والتكنولوجيا', 6, 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `news_to_news_categories`
--

DROP TABLE IF EXISTS `news_to_news_categories`;
CREATE TABLE IF NOT EXISTS `news_to_news_categories` (
  `news_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`news_id`,`categories_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_to_news_categories`
--

INSERT INTO `news_to_news_categories` (`news_id`, `categories_id`, `created_at`, `updated_at`) VALUES
(1, 4, '2019-09-18 05:47:41', '2020-03-31 23:42:31'),
(2, 3, '2019-09-18 05:53:26', '2019-10-01 06:55:20'),
(3, 4, '2019-09-24 06:32:25', '2019-10-01 06:55:44'),
(4, 3, '2019-09-24 06:33:19', '2019-10-01 06:56:07'),
(5, 4, '2019-09-24 07:01:11', '2019-10-01 06:56:45'),
(6, 3, '2019-09-24 07:03:17', '2019-10-01 06:57:01');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `orders_id` int(11) NOT NULL AUTO_INCREMENT,
  `total_tax` decimal(7,2) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `customers_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `customers_company` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_street_address` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_suburb` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_city` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `customers_postcode` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `customers_state` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_country` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `customers_telephone` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `customers_address_format_id` int(11) DEFAULT NULL,
  `delivery_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_company` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_street_address` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_suburb` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_city` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_postcode` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_state` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_country` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_address_format_id` int(11) DEFAULT NULL,
  `billing_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `billing_company` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_street_address` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_suburb` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_city` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `billing_postcode` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `billing_state` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_country` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `billing_address_format_id` int(11) NOT NULL,
  `payment_method` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_owner` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_number` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_expires` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_purchased` datetime DEFAULT NULL,
  `orders_date_finished` datetime DEFAULT NULL,
  `currency` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_value` decimal(14,6) DEFAULT NULL,
  `order_price` decimal(10,2) NOT NULL,
  `shipping_cost` decimal(10,2) NOT NULL,
  `shipping_method` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_duration` int(11) DEFAULT NULL,
  `order_information` text COLLATE utf8_unicode_ci NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT 0,
  `coupon_code` text COLLATE utf8_unicode_ci NOT NULL,
  `coupon_amount` int(11) NOT NULL,
  `exclude_product_ids` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `product_categories` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `excluded_product_categories` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `product_ids` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `ordered_source` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1: Website, 2: App',
  `delivery_phone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_phone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_id` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`orders_id`),
  KEY `idx_orders_customers_id` (`customers_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orders_id`, `total_tax`, `customers_id`, `customers_name`, `customers_company`, `customers_street_address`, `customers_suburb`, `customers_city`, `customers_postcode`, `customers_state`, `customers_country`, `customers_telephone`, `email`, `customers_address_format_id`, `delivery_name`, `delivery_company`, `delivery_street_address`, `delivery_suburb`, `delivery_city`, `delivery_postcode`, `delivery_state`, `delivery_country`, `delivery_address_format_id`, `billing_name`, `billing_company`, `billing_street_address`, `billing_suburb`, `billing_city`, `billing_postcode`, `billing_state`, `billing_country`, `billing_address_format_id`, `payment_method`, `cc_type`, `cc_owner`, `cc_number`, `cc_expires`, `last_modified`, `date_purchased`, `orders_date_finished`, `currency`, `currency_value`, `order_price`, `shipping_cost`, `shipping_method`, `shipping_duration`, `order_information`, `is_seen`, `coupon_code`, `coupon_amount`, `exclude_product_ids`, `product_categories`, `excluded_product_categories`, `free_shipping`, `product_ids`, `ordered_source`, `delivery_phone`, `billing_phone`, `transaction_id`, `created_at`, `updated_at`) VALUES
(2, '0.00', 9, 'rtest test', NULL, 'test', '', 'test', '3640004', 'other', 'Taiwan', '', 'yesbhavin@gmail.com', NULL, 'rtest test', NULL, 'test', '', 'test', '3640004', 'other', 'Taiwan', NULL, 'rtest test', NULL, 'test', '', 'test', '3640004', 'other', 'Taiwan', 0, 'Cash on Delivery', '', '', '', '', '2021-03-25 06:15:20', '2021-03-25 06:15:20', NULL, '₹', NULL, '184.00', '11.00', 'flateRate', NULL, '[]', 1, '', 0, '', '', '', 0, '', 1, '959898868', '959898868', NULL, NULL, NULL),
(3, '0.00', 9, 'a a', NULL, NULL, '', 'ss', '3640004', 'other', 'India', '', 'yesbhavin@gmail.com', NULL, 'a a', NULL, NULL, '', 'ss', '3640004', 'other', 'India', NULL, 'a a', NULL, NULL, '', 'ss', '3640004', 'other', 'India', 0, 'Razor Pay', '', '', '', '', '2021-03-25 16:49:44', '2021-03-25 16:49:44', NULL, '₹', NULL, '79.00', '11.00', 'flateRate', NULL, '\"\"', 1, '', 0, '', '', '', 0, '', 1, '959898868', '959898868', NULL, NULL, NULL),
(4, '0.00', 9, 'Mitali Mehtaq', NULL, 'Swastic Society', '', 'rajkot', '36000', NULL, 'India', '', 'yesbhavin@gmail.com', NULL, 'Mitali Mehtaq', NULL, 'Swastic Society', '', 'rajkot', '36000', NULL, 'India', NULL, 'Mitali Mehtaq', NULL, 'Swastic Society', '', 'rajkot', '36000', NULL, 'India', 0, 'Razor Pay', '', '', '', '', '2021-03-28 03:05:48', '2021-03-28 03:05:48', NULL, '₹', NULL, '92.00', '11.00', 'flateRate', NULL, '\"\"', 1, '', 0, '', '', '', 0, '', 1, '1415253698', '1415253698', NULL, NULL, NULL),
(5, '0.00', 9, 'Mitali Mehtaq', NULL, 'Swastic Society', '', 'rajkot', '36000', NULL, 'India', '', 'yesbhavin@gmail.com', NULL, 'Mitali Mehtaq', NULL, 'Swastic Society', '', 'rajkot', '36000', NULL, 'India', NULL, 'Mitali Mehtaq', NULL, 'Swastic Society', '', 'rajkot', '36000', NULL, 'India', 0, 'Cash on Delivery', '', '', '', '', '2021-03-28 16:05:49', '2021-03-28 16:05:49', NULL, '₹', NULL, '92.00', '11.00', 'flateRate', NULL, '[]', 1, '', 0, '', '', '', 0, '', 1, '1415253698', '1415253698', NULL, NULL, NULL),
(6, '0.00', 10, 'qqaa aaaa', NULL, '1234s homes', '', 'rajko', '362211', NULL, 'India', '', 'ywss!@dx.com', NULL, 'qqaa aaaa', NULL, '1234s homes', '', 'rajko', '362211', NULL, 'India', NULL, 'qqaa aaaa', NULL, '1234s homes', '', 'rajko', '362211', NULL, 'India', 0, 'Cash on Delivery', '', '', '', '', '2021-03-28 16:09:56', '2021-03-28 16:09:56', NULL, '₹', NULL, '92.00', '11.00', 'flateRate', NULL, '[]', 0, '', 0, '', '', '', 0, '', 1, '1234555', '1234555', NULL, NULL, NULL),
(7, '0.00', 12, 'MOBIN VORA', NULL, '12121212', '', 'ANAN', '44444', NULL, 'India', '', '12A21S2', NULL, 'MOBIN VORA', NULL, '12121212', '', 'ANAN', '44444', NULL, 'India', NULL, 'MOBIN VORA', NULL, '12121212', '', 'ANAN', '44444', NULL, 'India', 0, 'Cash on Delivery', '', '', '', '', '2021-09-21 11:43:05', '2021-09-21 11:43:05', NULL, '₹', NULL, '113.00', '11.00', 'flateRate', NULL, '[]', 0, '', 0, '', '', '', 0, '', 1, '9*91919196', '9*91919196', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

DROP TABLE IF EXISTS `orders_products`;
CREATE TABLE IF NOT EXISTS `orders_products` (
  `orders_products_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_model` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `products_price` decimal(15,2) NOT NULL,
  `final_price` decimal(15,2) NOT NULL,
  `products_tax` decimal(7,0) NOT NULL,
  `products_quantity` int(11) NOT NULL,
  PRIMARY KEY (`orders_products_id`),
  KEY `idx_orders_products_orders_id` (`orders_id`),
  KEY `idx_orders_products_products_id` (`products_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_products`
--

INSERT INTO `orders_products` (`orders_products_id`, `orders_id`, `products_id`, `products_model`, `products_name`, `products_price`, `final_price`, `products_tax`, `products_quantity`) VALUES
(4, 2, 32, NULL, 'Straight long coat', '81.00', '81.00', '1', 1),
(5, 2, 28, NULL, 'Printed Rose Petal Shirt', '92.00', '92.00', '1', 1),
(6, 3, 13, NULL, 'Men Polo Casual Shirt', '34.00', '68.00', '1', 2),
(7, 4, 32, NULL, 'Straight long coat', '81.00', '81.00', '1', 1),
(8, 5, 32, NULL, 'Straight long coat', '81.00', '81.00', '1', 1),
(9, 6, 32, NULL, 'Straight long coat', '81.00', '81.00', '1', 1),
(10, 7, 13, NULL, 'Men Polo Casual Shirt', '34.00', '102.00', '1', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders_products_attributes`
--

DROP TABLE IF EXISTS `orders_products_attributes`;
CREATE TABLE IF NOT EXISTS `orders_products_attributes` (
  `orders_products_attributes_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `orders_products_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_options` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `products_options_values` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `options_values_price` decimal(15,2) NOT NULL,
  `price_prefix` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`orders_products_attributes_id`),
  KEY `idx_orders_products_att_orders_id` (`orders_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_products_attributes`
--

INSERT INTO `orders_products_attributes` (`orders_products_attributes_id`, `orders_id`, `orders_products_id`, `products_id`, `products_options`, `products_options_values`, `options_values_price`, `price_prefix`) VALUES
(1, 1, 2, 28, 'Size', 'Small', '0.00', '+'),
(2, 1, 3, 13, 'Size', 'XL', '0.00', '+'),
(3, 2, 5, 28, 'Size', 'Small', '0.00', '+'),
(4, 3, 6, 13, 'Size', 'Small', '0.00', '+'),
(5, 7, 10, 13, 'Size', 'Small', '0.00', '+');

-- --------------------------------------------------------

--
-- Table structure for table `orders_status`
--

DROP TABLE IF EXISTS `orders_status`;
CREATE TABLE IF NOT EXISTS `orders_status` (
  `orders_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `public_flag` int(11) DEFAULT 0,
  `downloads_flag` int(11) DEFAULT 0,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`orders_status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_status`
--

INSERT INTO `orders_status` (`orders_status_id`, `public_flag`, `downloads_flag`, `role_id`) VALUES
(1, 0, 0, 2),
(2, 0, 0, 2),
(3, 0, 0, 2),
(4, 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders_status_description`
--

DROP TABLE IF EXISTS `orders_status_description`;
CREATE TABLE IF NOT EXISTS `orders_status_description` (
  `orders_status_description_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_status_id` int(11) NOT NULL,
  `orders_status_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  PRIMARY KEY (`orders_status_description_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_status_description`
--

INSERT INTO `orders_status_description` (`orders_status_description_id`, `orders_status_id`, `orders_status_name`, `language_id`) VALUES
(1, 1, 'Pending', 1),
(2, 2, 'Completed', 1),
(3, 3, 'Cancel', 1),
(4, 4, 'Return', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_status_history`
--

DROP TABLE IF EXISTS `orders_status_history`;
CREATE TABLE IF NOT EXISTS `orders_status_history` (
  `orders_status_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `orders_status_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `customer_notified` int(11) DEFAULT 0,
  `comments` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`orders_status_history_id`),
  KEY `idx_orders_status_history_orders_id` (`orders_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_status_history`
--

INSERT INTO `orders_status_history` (`orders_status_history_id`, `orders_id`, `orders_status_id`, `date_added`, `customer_notified`, `comments`) VALUES
(1, 1, 1, '2021-03-25 03:50:35', 1, ''),
(2, 2, 1, '2021-03-25 06:15:20', 1, ''),
(3, 3, 1, '2021-03-25 04:49:44', 1, ''),
(4, 4, 1, '2021-03-28 03:05:48', 1, ''),
(5, 5, 1, '2021-03-28 04:05:49', 1, ''),
(6, 6, 1, '2021-03-28 04:09:56', 1, ''),
(7, 6, 3, '2021-03-28 04:11:35', 1, ''),
(8, 2, 2, '2021-04-15 11:12:20', 1, NULL),
(9, 3, 2, '2021-08-26 06:16:16', 1, 'done'),
(10, 4, 2, '2021-08-28 02:21:23', 1, NULL),
(11, 7, 1, '2021-09-21 11:43:05', 1, ''),
(12, 7, 3, '2021-09-21 11:43:37', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `orders_total`
--

DROP TABLE IF EXISTS `orders_total`;
CREATE TABLE IF NOT EXISTS `orders_total` (
  `orders_total_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `value` decimal(15,4) NOT NULL,
  `class` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`orders_total_id`),
  KEY `idx_orders_total_orders_id` (`orders_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `slug`, `status`, `type`) VALUES
(1, 'about-us', 1, 2),
(2, 'privacy-policy', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages_description`
--

DROP TABLE IF EXISTS `pages_description`;
CREATE TABLE IF NOT EXISTS `pages_description` (
  `page_description_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  PRIMARY KEY (`page_description_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages_description`
--

INSERT INTO `pages_description` (`page_description_id`, `name`, `description`, `language_id`, `page_id`) VALUES
(1, 'About Us', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1, 1),
(2, 'Privacy Policy', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `payment_description`
--

DROP TABLE IF EXISTS `payment_description`;
CREATE TABLE IF NOT EXISTS `payment_description` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_methods_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `sub_name_1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sub_name_2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_description`
--

INSERT INTO `payment_description` (`id`, `payment_methods_id`, `name`, `language_id`, `sub_name_1`, `sub_name_2`) VALUES
(1, 1, 'Braintree', 1, 'Credit Card', 'Paypal'),
(4, 2, 'Stripe', 1, '', ''),
(5, 3, 'Paypal', 1, '', ''),
(6, 4, 'Cash on Delivery', 1, '', ''),
(7, 5, 'Instamojo', 1, '', ''),
(8, 0, 'Cybersoure', 1, '', ''),
(9, 6, 'Hyperpay', 1, '', ''),
(10, 7, 'Razor Pay', 1, '', ''),
(11, 8, 'PayTm', 1, '', ''),
(12, 9, 'Direct Bank Transfer', 1, 'Make your payment directly into our bank account. Please use your Order ID as the payment reference.', ''),
(13, 10, 'Paystack', 1, '', ''),
(14, 11, 'Midtrans', 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
CREATE TABLE IF NOT EXISTS `payment_methods` (
  `payment_methods_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `environment` tinyint(1) NOT NULL DEFAULT 0,
  `visible` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`payment_methods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`payment_methods_id`, `payment_method`, `status`, `environment`, `visible`, `created_at`, `updated_at`) VALUES
(1, 'braintree', 0, 0, 0, '2019-09-18 11:10:13', '0000-00-00 00:00:00'),
(2, 'stripe', 0, 0, 0, '2019-09-18 11:26:17', '0000-00-00 00:00:00'),
(3, 'paypal', 0, 0, 0, '2019-09-18 11:26:04', '0000-00-00 00:00:00'),
(4, 'cash_on_delivery', 1, 0, 1, '2019-09-18 11:26:37', '0000-00-00 00:00:00'),
(5, 'instamojo', 0, 0, 0, '2019-09-18 11:27:23', '0000-00-00 00:00:00'),
(6, 'hyperpay', 0, 0, 0, '2019-09-18 11:26:44', '0000-00-00 00:00:00'),
(7, 'razor_pay', 1, 0, 1, '2019-09-18 11:26:44', '0000-00-00 00:00:00'),
(8, 'pay_tm', 0, 0, 0, '2019-09-18 11:26:44', '0000-00-00 00:00:00'),
(9, 'banktransfer', 0, 0, 0, '2019-09-18 11:26:44', '0000-00-00 00:00:00'),
(10, 'paystack', 0, 0, 0, '2019-09-18 11:26:44', '0000-00-00 00:00:00'),
(11, 'midtrans', 0, 0, 0, '2019-09-18 11:26:44', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods_detail`
--

DROP TABLE IF EXISTS `payment_methods_detail`;
CREATE TABLE IF NOT EXISTS `payment_methods_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_methods_id` int(11) NOT NULL,
  `key` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_methods_detail`
--

INSERT INTO `payment_methods_detail` (`id`, `payment_methods_id`, `key`, `value`) VALUES
(3, 1, 'merchant_id', ''),
(4, 1, 'public_key', ''),
(5, 1, 'private_key', ''),
(9, 2, 'secret_key', ''),
(10, 2, 'publishable_key', ''),
(15, 3, 'id', ''),
(18, 3, 'payment_currency', 'USD'),
(21, 5, 'api_key', ''),
(22, 5, 'auth_token', ''),
(23, 5, 'client_id', ''),
(24, 5, 'client_secret', ''),
(32, 6, 'userid', ''),
(33, 6, 'password', ''),
(34, 6, 'entityid', ''),
(35, 7, 'RAZORPAY_KEY', 'rzp_test_xDH74d48cwl8DF'),
(36, 7, 'RAZORPAY_SECRET', 'cr0H1BiQ20hVzhpHfHuNbGri'),
(37, 8, 'paytm_mid', ''),
(39, 8, 'paytm_key', 'w#'),
(40, 8, 'current_domain_name', ''),
(41, 9, 'account_name', ''),
(42, 9, 'account_number', ''),
(43, 9, 'bank_name', ''),
(44, 9, 'short_code', ''),
(45, 9, 'iban', ''),
(46, 9, 'swift', ''),
(47, 10, 'secret_key', ''),
(48, 10, 'public_key', ''),
(49, 11, 'merchant_id', ''),
(50, 11, 'server_key', ''),
(51, 11, 'client_key', '');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pincodes`
--

DROP TABLE IF EXISTS `pincodes`;
CREATE TABLE IF NOT EXISTS `pincodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pincode` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `products_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_sku` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `products_quantity` int(11) NOT NULL,
  `products_model` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_video_link` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_price` decimal(15,2) NOT NULL,
  `products_date_added` datetime NOT NULL,
  `products_last_modified` datetime DEFAULT NULL,
  `products_date_available` datetime DEFAULT NULL,
  `products_weight` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_weight_unit` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_status` tinyint(1) NOT NULL,
  `is_current` tinyint(1) NOT NULL,
  `products_tax_class_id` int(11) DEFAULT NULL,
  `manufacturers_id` int(11) DEFAULT NULL,
  `products_ordered` int(11) NOT NULL DEFAULT 0,
  `products_liked` int(11) NOT NULL,
  `low_limit` int(11) NOT NULL,
  `is_feature` tinyint(1) NOT NULL DEFAULT 0,
  `products_slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `products_type` int(11) NOT NULL DEFAULT 0,
  `products_min_order` int(11) NOT NULL DEFAULT 1,
  `products_max_stock` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`products_id`),
  KEY `idx_products_model` (`products_model`),
  KEY `idx_products_date_added` (`products_date_added`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `product_sku`, `products_quantity`, `products_model`, `products_image`, `products_video_link`, `products_price`, `products_date_added`, `products_last_modified`, `products_date_available`, `products_weight`, `products_weight_unit`, `products_status`, `is_current`, `products_tax_class_id`, `manufacturers_id`, `products_ordered`, `products_liked`, `low_limit`, `is_feature`, `products_slug`, `products_type`, `products_min_order`, `products_max_stock`, `created_at`, `updated_at`) VALUES
(1, '', 0, 'fresh', '412', NULL, '85.00', '2020-04-05 01:10:00', NULL, NULL, '0.500', NULL, 1, 1, 0, NULL, 0, 1, 0, 1, 'casual-tracksuit-children-boy', 0, 1, 0, '2019-09-17 05:36:27', '2019-10-01 06:47:25'),
(2, '', 0, 'fresh', '408', NULL, '60.00', '2020-04-05 01:10:00', NULL, NULL, '0.370', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'fashion-plaid-boy-clothing-set', 0, 1, 0, '2019-09-17 05:50:43', '2019-10-01 06:46:55'),
(3, '', 0, 'fresh', '405', NULL, '55.00', '2020-04-05 01:10:00', NULL, NULL, '0.800', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'cosplay-minnie-mouse-dress', 0, 1, 0, '2019-09-17 05:58:04', '2019-10-01 06:46:24'),
(4, '', 0, NULL, '400', NULL, '90.00', '2020-04-05 01:10:00', NULL, NULL, '1.00', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'princess-flower-girl-dress', 1, 1, 0, '2019-09-17 06:01:56', '2019-10-01 06:45:47'),
(5, '', 0, 'fresh', '395', NULL, '45.00', '2020-04-05 01:10:00', NULL, NULL, '0.200', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'casual-breathable-outdoor-kids-sneakers', 0, 1, 0, '2019-09-17 06:21:32', '2019-10-01 06:45:21'),
(6, '', 0, 'fresh', '390', NULL, '30.00', '2020-04-05 01:10:00', NULL, NULL, '0.150', NULL, 1, 1, 0, NULL, 0, 0, 0, 1, 'alloy-military-quartz-watch-man', 0, 1, 0, '2019-09-17 06:31:11', '2019-10-01 06:44:48'),
(7, '', -3, 'fresh', '385', NULL, '25.00', '2020-04-05 01:10:00', NULL, NULL, '0.125', NULL, 1, 1, 0, NULL, 3, 0, 0, 1, 'men-s-cotton-classic-baseball-cap', 0, 1, 0, '2019-09-17 06:48:31', '2020-04-02 05:42:24'),
(8, '', 0, 'fresh', '383', NULL, '32.00', '2020-04-05 01:10:00', NULL, NULL, '0.225', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'carrot-fitt-jeans', 1, 1, 0, '2019-09-17 06:54:49', '2019-10-01 06:40:52'),
(9, '', 0, 'fresh', '378', NULL, '15.00', '2020-04-05 01:10:00', NULL, NULL, '0.125', NULL, 1, 1, 0, NULL, 0, 0, 0, 1, 'casual-cotton-jeans-for-men', 0, 1, 0, '2019-09-17 07:00:05', '2019-10-01 06:39:48'),
(10, '', 0, 'fresh', '375', NULL, '28.00', '2020-04-05 01:10:00', NULL, NULL, '0.125', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'super-skinny-fitt-jeans', 0, 1, 0, '2019-09-17 07:09:51', '2019-10-01 06:37:51'),
(11, '', 0, 'fresh', '372', NULL, '21.00', '2020-04-05 01:10:00', NULL, NULL, '0.100', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'dotted-casual-shirt-for-men', 1, 1, 0, '2019-09-17 07:15:49', '2019-10-01 06:35:34'),
(12, '', 0, NULL, '367', NULL, '18.00', '2020-04-05 01:10:00', NULL, NULL, '0.100', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'juventus-henley-neck-tshirt', 0, 1, 0, '2019-09-17 07:20:49', '2019-10-01 06:34:50'),
(13, '', -2, NULL, '364', NULL, '34.00', '2020-04-05 01:10:00', NULL, NULL, '0.100', NULL, 1, 1, 0, NULL, 1, 0, 0, 0, 'men-polo-casual-shirt', 1, 1, 0, '2019-09-17 07:25:20', '2019-10-01 06:32:22'),
(14, '', 0, 'fresh', '359', NULL, '39.99', '2020-04-05 01:10:00', NULL, NULL, '0.450', NULL, 1, 1, 0, NULL, 0, 0, 0, 1, 'brock-knitted-mesh-casual-oxford-sneakers', 0, 1, 0, '2019-09-16 19:30:29', '2019-10-01 06:31:22'),
(15, '', 0, NULL, '355', NULL, '48.00', '2020-04-05 01:10:00', NULL, NULL, '0.350', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'light-man-lace-up-shoes', 0, 1, 0, '2019-09-16 19:33:15', '2019-10-01 06:30:03'),
(16, '', -1, NULL, '350', NULL, '52.00', '2020-04-05 01:10:00', NULL, NULL, '0.500', NULL, 1, 1, 0, NULL, 1, 0, 0, 0, 'mesh-breathable-men-s-sneakers', 0, 1, 0, '2019-09-16 19:37:07', '2019-10-01 06:29:13'),
(17, '', 0, NULL, '344', NULL, '19.00', '2020-04-05 01:10:00', NULL, NULL, '0.125', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'fashion-foldable-beach-sun-hat', 0, 1, 0, '2019-09-16 19:43:05', '2019-10-01 06:28:31'),
(18, '', 0, NULL, '339', NULL, '36.99', '2020-04-05 01:10:00', NULL, NULL, '0.200', NULL, 1, 1, 0, NULL, 0, 0, 0, 1, 'women-magnet-buckle-quartz-watch', 0, 1, 0, '2019-09-16 19:45:40', '2019-10-01 06:28:01'),
(19, '', 0, NULL, '337', NULL, '23.00', '2020-04-05 01:10:00', NULL, NULL, '0.100', NULL, 1, 1, 0, NULL, 0, 1, 0, 0, 'cotton-skirt-for-women', 0, 1, 0, '2019-09-16 19:50:25', '2019-10-01 06:27:29'),
(20, '', 0, NULL, '333', NULL, '90.00', '2019-09-18 07:10:39', NULL, NULL, '0.300', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'cotton-skirt-with-buttons', 0, 1, 0, '2019-09-16 19:53:37', '2019-10-01 06:26:36'),
(21, '', 0, NULL, '330', NULL, '77.00', '2019-09-18 07:10:39', NULL, NULL, '0.600', NULL, 1, 1, 0, NULL, 0, 0, 0, 1, 'mid-waist-culottes-pent', 1, 1, 0, '2019-09-16 20:26:06', '2019-10-01 06:25:45'),
(22, '', 0, NULL, '324', NULL, '96.00', '2019-09-18 07:10:39', NULL, NULL, '0.600', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'crystal-high-heels', 0, 1, 0, '2019-09-16 20:31:42', '2019-09-24 04:49:34'),
(24, '', 0, NULL, '319', NULL, '87.00', '2019-09-18 07:10:39', NULL, NULL, '0.550', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'party-dinner-shoes-woman', 1, 1, 0, '2019-09-16 20:41:17', '2019-10-01 06:25:03'),
(25, '', 0, NULL, '313', NULL, '73.00', '2019-09-18 07:10:39', NULL, NULL, '0.525', NULL, 1, 1, 0, NULL, 0, 0, 0, 1, 'women-pumps-ankle-strap', 0, 1, 0, '2019-09-16 20:45:09', '2019-10-01 06:24:23'),
(26, '', 0, 'fresh', '310', NULL, '105.00', '2019-09-18 07:10:39', NULL, NULL, '0.525', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'button-up-shoulder-top', 0, 1, 0, '2019-09-18 01:05:14', '2020-03-03 20:59:19'),
(27, '', 0, NULL, '307', NULL, '75.00', '2019-09-18 07:10:39', NULL, NULL, '0.400', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'double-tank-shirt-for-women', 0, 1, 0, '2019-09-18 01:10:38', '2019-10-01 06:23:00'),
(28, '', -1, NULL, '301', NULL, '92.00', '2019-09-18 07:10:39', NULL, NULL, '0.400', NULL, 1, 1, 0, NULL, 1, 0, 0, 0, 'printed-rose-petal-shirt', 1, 1, 0, '2019-09-18 01:15:49', '2019-10-01 06:22:07'),
(29, '', 0, NULL, '300', NULL, '79.00', '2019-09-18 07:10:39', NULL, NULL, '0.400', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'strip-knitwear-for-women', 0, 1, 0, '2019-09-18 01:20:40', '2019-10-01 06:21:36'),
(30, '', 0, NULL, '297', NULL, '130.00', '2019-09-18 07:10:39', NULL, NULL, '0.750', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'denim-jacket-reverse', 0, 1, 0, '2019-09-18 01:30:31', '2019-10-01 06:21:05'),
(31, '', 0, NULL, '292', NULL, '67.00', '2019-09-18 07:10:39', NULL, NULL, '0.800', NULL, 1, 1, NULL, NULL, 0, 1, 0, 0, 'quilted-gilet-hoodie', 1, 1, 0, '2019-09-18 01:35:41', '2021-07-24 06:43:15'),
(32, '', -1, NULL, '288', NULL, '81.00', '2019-09-18 07:10:39', NULL, NULL, '0.900', NULL, 1, 1, NULL, NULL, 4, 2, 0, 0, 'straight-long-coat', 1, 1, 1, '2019-09-18 01:40:39', '2021-07-24 06:41:27'),
(36, 'product1232223u', 0, NULL, '543', NULL, '9000.00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, 1, 0, 0, 'test', 1, 1, NULL, '2021-03-22 22:20:59', '2021-04-12 01:01:19'),
(37, 'cake0012q', 0, NULL, '546', NULL, '300.00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, 0, 0, 0, 'black-forest-cake', 1, 1, NULL, '2021-06-22 05:34:43', '2021-06-22 05:36:25'),
(38, '12345', 0, 'OXYSKIN', '551', NULL, '140.00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, 0, 0, 1, '24k-gold-srub', 0, 1, 10, '2021-08-26 00:44:40', '2021-08-26 01:01:23'),
(39, '123', 0, '(Copper Condenser, 185V ADS R32, White)', '552', NULL, '41390.00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, 0, 0, 0, 'voltas-1-5-ton-5-star-inverter-split-ac-copper-condenser-185v-ads-r32-white', 0, 1, NULL, '2021-08-27 21:40:45', '2021-09-02 01:42:24'),
(40, '12', 0, 'HEAT RES.', '556', NULL, '250.00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, 0, 0, 1, 'heat-resistant-modular-kitchen', 0, 100, NULL, '2021-09-03 00:11:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

DROP TABLE IF EXISTS `products_attributes`;
CREATE TABLE IF NOT EXISTS `products_attributes` (
  `products_attributes_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `options_id` int(11) NOT NULL,
  `options_values_id` int(11) NOT NULL,
  `options_values_price` decimal(15,2) NOT NULL,
  `price_prefix` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`products_attributes_id`),
  KEY `idx_products_attributes_products_id` (`products_id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`products_attributes_id`, `products_id`, `options_id`, `options_values_id`, `options_values_price`, `price_prefix`, `is_default`) VALUES
(1, 4, 1, 1, '0.00', '+', 1),
(2, 4, 1, 2, '0.00', '+', 1),
(3, 4, 1, 3, '0.00', '+', 1),
(4, 4, 1, 4, '0.00', '+', 1),
(5, 8, 3, 9, '0.00', '+', 1),
(6, 8, 3, 10, '0.00', '+', 1),
(7, 8, 3, 11, '0.00', '+', 1),
(8, 8, 3, 12, '0.00', '+', 1),
(9, 11, 2, 5, '0.00', '+', 1),
(10, 11, 2, 7, '0.00', '+', 1),
(11, 13, 2, 5, '0.00', '+', 1),
(12, 13, 2, 6, '0.00', '+', 1),
(13, 13, 2, 8, '0.00', '+', 1),
(14, 21, 1, 1, '0.00', '+', 1),
(15, 21, 1, 4, '0.00', '+', 1),
(19, 24, 1, 4, '0.00', '+', 1),
(18, 24, 1, 1, '0.00', '+', 1),
(20, 28, 2, 5, '0.00', '+', 1),
(21, 28, 2, 6, '0.00', '+', 1),
(22, 11, 3, 9, '0.00', '+', 1),
(23, 11, 3, 10, '0.00', '+', 1),
(24, 11, 2, 8, '100.00', '+', 0),
(25, 24, 2, 5, '0.00', '+', 1),
(33, 37, 4, 17, '700.00', '+', 0),
(32, 37, 4, 18, '500.00', '+', 0),
(31, 37, 4, 16, '300.00', '+', 0),
(30, 37, 4, 15, '0.00', '+', 0),
(35, 32, 1, 19, '0.00', '+', 1),
(36, 31, 1, 21, '0.00', '+', 1),
(37, 31, 1, 20, '0.00', '+', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_description`
--

DROP TABLE IF EXISTS `products_description`;
CREATE TABLE IF NOT EXISTS `products_description` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `products_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `products_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_url` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_viewed` int(11) DEFAULT 0,
  `products_left_banner` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_left_banner_start_date` int(11) DEFAULT NULL,
  `products_left_banner_expire_date` int(11) DEFAULT NULL,
  `products_right_banner` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_right_banner_start_date` int(11) DEFAULT NULL,
  `products_right_banner_expire_date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_name` (`products_name`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_description`
--

INSERT INTO `products_description` (`id`, `products_id`, `language_id`, `products_name`, `products_description`, `products_url`, `products_viewed`, `products_left_banner`, `products_left_banner_start_date`, `products_left_banner_expire_date`, `products_right_banner`, `products_right_banner_start_date`, `products_right_banner_expire_date`) VALUES
(1, 1, 1, 'Casual Tracksuit Children Boy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(2, 2, 1, 'Fashion Plaid Boy Clothing Set', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(3, 3, 1, 'Cosplay Minnie Mouse Dress', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(4, 4, 1, 'Princess Flower Girl Dress', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(5, 5, 1, 'Casual Breathable Outdoor Kids Sneakers', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(6, 6, 1, 'Alloy Military Quartz watch man', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(7, 7, 1, 'Mens Cotton Classic Baseball Cap', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(8, 8, 1, 'Carrot Fitt Jeans', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(9, 9, 1, 'Casual Cotton Jeans for Men', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, '161', 0, 0, '161', 0, 0),
(10, 10, 1, 'Super Skinny fitt Jeans', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, '163', 0, 0, '163', 0, 0),
(11, 11, 1, 'Dotted Casual Shirt for men', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(12, 12, 1, 'Juventus Henley Neck Tshirt', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(13, 13, 1, 'Men Polo Casual Shirt', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(14, 14, 1, 'Brock Knitted Mesh Casual Oxford Sneakers', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(15, 15, 1, 'Light Man Lace-up Shoes', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, '182', 0, 0, '182', 0, 0),
(16, 16, 1, 'Mesh Breathable Mens Sneakers', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(17, 17, 1, 'Fashion Foldable Beach Sun Hat', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(18, 18, 1, 'Women Magnet Buckle Quartz Watch', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, '197', 0, 0, '197', 0, 0),
(19, 19, 1, 'Cotton Skirt For Women', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(20, 20, 1, 'Cotton skirt with Buttons', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(21, 21, 1, 'Mid waist culottes  Pent', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, '210', 0, 0, '210', 0, 0),
(22, 22, 1, 'Crystal High Heels', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(24, 24, 1, 'Party Dinner Shoes Woman', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, '218', 0, 0, '218', 0, 0),
(25, 25, 1, 'Women Pumps Ankle Strap', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, '222', 0, 0, '222', 0, 0),
(26, 26, 1, 'Button up  Shoulder Top', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(27, 27, 1, 'Double Tank Shirt for Women', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, '235', 0, 0, '235', 0, 0),
(28, 28, 1, 'Printed Rose Petal Shirt', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(29, 29, 1, 'Strip Knitwear for women', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(30, 30, 1, 'Denim jacket reverse', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(31, 31, 1, 'Quilted gilet hoodie', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(32, 32, 1, 'Straight long coat', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(36, 32, 4, 'معطف طويل مستقيم', '<p>ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء. أم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم. ثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء. عرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل. مكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا. كان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل. حتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد. عدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات. كلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية. عن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(37, 31, 4, 'هودي مبطن جيليه', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(38, 30, 4, 'سترة الدنيم عكس', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(39, 29, 4, 'تريكو الشريط للمرأة', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(40, 28, 4, 'قميص بطبعات الورود', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(41, 27, 4, 'قميص دبابات مزدوج للمرأة', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(42, 26, 4, 'زر أعلى الكتف الأعلى', '<p>ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء. أم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم. ثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء. عرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل. مكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا. كان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل. حتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد. عدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات. كلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية. عن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(43, 25, 4, 'المرأة مضخات رباط الكاحل', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(44, 24, 4, 'حفل عشاء حذاء امرأة', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(45, 21, 4, 'منتصف الخصر كولوتيس بنت', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(46, 20, 4, 'تنورة من القطن مع أزرار', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0);
INSERT INTO `products_description` (`id`, `products_id`, `language_id`, `products_name`, `products_description`, `products_url`, `products_viewed`, `products_left_banner`, `products_left_banner_start_date`, `products_left_banner_expire_date`, `products_right_banner`, `products_right_banner_start_date`, `products_right_banner_expire_date`) VALUES
(47, 19, 4, 'تنورة قطنية للنساء', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(48, 18, 4, 'النساء المغناطيس مشبك الكوارتز ووتش', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(49, 17, 4, 'أزياء طوي شاطئ أحد هات', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(50, 16, 4, 'شبكة تنفس أحذية رياضية للرجال', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(51, 15, 4, 'ضوء رجل الدانتيل متابعة الأحذية', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(52, 14, 4, 'بروك محبوك شبكة عارضة أكسفورد أحذية رياضية', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(53, 13, 4, 'قميص بولو للرجال', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(54, 12, 4, 'تي شيرت يوفنتوس هينلي', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(55, 11, 4, 'قميص عارضة منقط للرجال', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(56, 10, 4, 'بنطال جينز سكيني', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(57, 9, 4, 'جينز قطني كاجوال للرجال', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(58, 8, 4, 'جينز بقصة ضيقة', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(59, 7, 4, 'قبعة بيسبول كلاسيكية للرجال قطن', '<p>ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء. أم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم. ثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء. عرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل. مكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا. كان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل. حتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد. عدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات. كلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية. عن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(60, 6, 4, 'سبيكة العسكرية الكوارتز مشاهدة الرجل', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(61, 5, 4, 'عارضة أحذية أطفال في الهواء الطلق تنفس', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(62, 4, 4, 'الأميرة زهرة فتاة اللباس', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(63, 3, 4, 'ميني ماوس اللباس تأثيري', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(64, 2, 4, 'الأزياء منقوشة مجموعة ملابس الصبي', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(65, 1, 4, 'عارضة رياضية الأطفال بوي', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(69, 36, 1, 'test', '<p>test</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0);
INSERT INTO `products_description` (`id`, `products_id`, `language_id`, `products_name`, `products_description`, `products_url`, `products_viewed`, `products_left_banner`, `products_left_banner_start_date`, `products_left_banner_expire_date`, `products_right_banner`, `products_right_banner_start_date`, `products_right_banner_expire_date`) VALUES
(70, 37, 1, 'Black forest Cake', '<p><strong>Product Details:</strong></p>\r\n\r\n<ul>\r\n	<li>Cake Flavour- Black Forest</li>\r\n	<li>Type of Cake - Cream</li>\r\n	<li>Weight- 1 Kg</li>\r\n	<li>Shape- Round</li>\r\n	<li>Serves- 10-12 People</li>\r\n	<li>Size- 9 inches in Diameter</li>\r\n</ul>\r\n\r\n<p><strong>Please Note:</strong></p>\r\n\r\n<ul>\r\n	<li>The cake stand, cutlery &amp; accessories used in the image are only for representation purposes. They are not delivered with the cake.</li>\r\n	<li>This cake is hand delivered in a good quality cardboard box.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Country of Origin: India</li>\r\n</ul>\r\n\r\n<p>Delivery Information</p>\r\n\r\n<ul>\r\n	<li>Every cake we offer is handcrafted and since each chef has his/her own way of baking and designing a cake, there might be slight variation in the product in terms of design and shape.</li>\r\n	<li>The chosen delivery time is an estimate and depends on the availability of the product and the destination to which you want the product to be delivered.</li>\r\n	<li>Since cakes are perishable in nature, we attempt delivery of your order only once. The delivery cannot be redirected to any other address.</li>\r\n	<li>This product is hand delivered and will not be delivered along with courier products.</li>\r\n	<li>Occasionally, substitutions of flavours/designs is necessary due to temporary and/or regional unavailability issues.</li>\r\n</ul>\r\n\r\n<p>Care Instructions</p>\r\n\r\n<ul>\r\n	<li>Store cream cakes in a refrigerator. Fondant cakes should be stored in an air conditioned environment.</li>\r\n	<li>Slice and serve the cake at room temperature and make sure it is not exposed to heat.</li>\r\n	<li>Use a serrated knife to cut a fondant cake.</li>\r\n	<li>Sculptural elements and figurines may contain wire supports or toothpicks or wooden skewers for support.</li>\r\n	<li>Please check the placement of these items before serving to small children.</li>\r\n	<li>The cake should be consumed within 24 hours.</li>\r\n	<li>Enjoy your cake!</li>\r\n</ul>\r\n\r\n<p>What Customers Are Saying</p>\r\n\r\n<p>C</p>\r\n\r\n<p>Ceema</p>\r\n\r\n<p>5&nbsp;☆☆☆☆☆</p>\r\n\r\n<p>&quot;Excellent service. Am regular ��&quot;</p>\r\n\r\n<p>19/06/2021,09:54</p>\r\n\r\n<p>Delivered at: Khordha</p>\r\n\r\n<p>Occasion: birthday</p>\r\n\r\n<p>P</p>\r\n\r\n<p>Priya</p>\r\n\r\n<p>5&nbsp;☆☆☆☆☆</p>\r\n\r\n<p>&quot;Keep on the work. Like it&quot;</p>\r\n\r\n<p>19/06/2021,04:58</p>\r\n\r\n<p>Delivered at: chennai</p>\r\n\r\n<p>Occasion: anniversary</p>\r\n\r\n<p>R</p>\r\n\r\n<p>Ravi</p>\r\n\r\n<p>5&nbsp;☆☆☆☆☆</p>\r\n\r\n<p>&quot;Great Thanks for a smooth service&quot;</p>\r\n\r\n<p>19/06/2021,04:32</p>\r\n\r\n<p>Delivered at: bangalore</p>\r\n\r\n<p>Occasion: anniversary</p>\r\n\r\n<p>S</p>\r\n\r\n<p>Shivani</p>\r\n\r\n<p>5&nbsp;☆☆☆☆☆</p>\r\n\r\n<p>&quot;Cake is awesome and ur services are best and i like the way u made our things easy&quot;</p>\r\n\r\n<p>19/06/2021,03:31</p>\r\n\r\n<p>Delivered at: Patna</p>\r\n\r\n<p>Occasion:</p>\r\n\r\n<p>K</p>\r\n\r\n<p>Khushboo</p>\r\n\r\n<p>5&nbsp;☆☆☆☆☆</p>\r\n\r\n<p>&quot;Awesome&quot;</p>\r\n\r\n<p>19/06/2021,10:12</p>\r\n\r\n<p>Delivered at: Jamshedpur</p>\r\n\r\n<p>Occasion: Anniversary</p>\r\n\r\n<p>R</p>\r\n\r\n<p>R</p>\r\n\r\n<p>5&nbsp;☆☆☆☆☆</p>\r\n\r\n<p>&quot;Good&quot;</p>\r\n\r\n<p>19/06/2021,07:06</p>\r\n\r\n<p>Delivered at: hyderabad</p>\r\n\r\n<p>Occasion: birthday</p>\r\n\r\n<p>R</p>\r\n\r\n<p>Rohit</p>\r\n\r\n<p>5&nbsp;☆☆☆☆☆</p>\r\n\r\n<p>&quot;Excellent&quot;</p>\r\n\r\n<p>18/06/2021,05:49</p>\r\n\r\n<p>Delivered at: kota</p>\r\n\r\n<p>Occasion: birthday</p>\r\n\r\n<p>A</p>\r\n\r\n<p>Aditi</p>\r\n\r\n<p>5&nbsp;☆☆☆☆☆</p>\r\n\r\n<p>&quot;Had a good experience... would recommend&quot;</p>\r\n\r\n<p>18/06/2021,10:54</p>\r\n\r\n<p>Delivered at: Kolkata</p>\r\n\r\n<p>Occasion: birthday</p>\r\n\r\n<p>S</p>\r\n\r\n<p>Shilpa</p>\r\n\r\n<p>5&nbsp;☆☆☆☆☆</p>\r\n\r\n<p>&quot;On time delivery with good quality of product&quot;</p>\r\n\r\n<p>18/06/2021,10:49</p>\r\n\r\n<p>Delivered at: Bhilai</p>\r\n\r\n<p>Occasion:</p>\r\n\r\n<p>S</p>\r\n\r\n<p>Soumya</p>\r\n\r\n<p>5&nbsp;☆☆☆☆☆</p>\r\n\r\n<p>&quot;Thank you very much it&#39;s really an excellent gate way to greet our love ones specially in this pandemic situation. Stay safe stay blessed ��&quot;</p>\r\n\r\n<p>18/06/2021,09:58</p>\r\n\r\n<p>Delivered at: Kolkata</p>\r\n\r\n<p>Occasion: birthday</p>\r\n\r\n<p>H</p>\r\n\r\n<p>hitesh</p>\r\n\r\n<p>5&nbsp;☆☆☆☆☆</p>\r\n\r\n<p>&quot;Absolutely the cake was awesome and delivery was on time.&quot;</p>\r\n\r\n<p>18/06/2021,09:57</p>\r\n\r\n<p>Delivered at: Noida</p>\r\n\r\n<p>Occasion:</p>\r\n\r\n<p>A</p>\r\n\r\n<p>Arun</p>\r\n\r\n<p>5&nbsp;☆☆☆☆☆</p>\r\n\r\n<p>&quot;Great experience&quot;</p>\r\n\r\n<p>18/06/2021,09:25</p>\r\n\r\n<p>Delivered at: pune</p>\r\n\r\n<p>Occasion: birthday</p>\r\n\r\n<p>VIEW ALL REVIEWS</p>\r\n\r\n<h3>You May Also Like</h3>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(71, 38, 1, '24k Gold Srub', '<p>24 karat Gold Srub. Gold face Srub Enhance your Skin Radiance..</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(72, 39, 1, 'Voltas 1.5 Ton 5 Star Inverter Split AC (Copper Condenser, 185V', '<p>Features</p>\r\n\r\n<ul>\r\n	<li>1.5 Ton, 5 Star, Split Ac</li>\r\n	<li>Approximate Coverage Area &ndash; 180&nbsp;Sq. Ft (17&nbsp;Sq. M)</li>\r\n	<li>IDU Dimension &ndash; 99.01 x 24.21 x 31.51&nbsp;cms</li>\r\n	<li>High EER Twin Rotary - BLDC&nbsp; Compressor</li>\r\n	<li>Copper Condenser</li>\r\n	<li>60&nbsp;Months Warranty, 5 Years Comprehensive Warranty, 10 Years Compressor Warranty&nbsp;</li>\r\n</ul>\r\n\r\n<p>Features</p>\r\n\r\n<ul>\r\n	<li>Air Conditioner Category</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Air Conditioner Type</strong></li>\r\n		<li>Split</li>\r\n		<li><strong>Air Conditioner Capacity</strong></li>\r\n		<li>2 Ton</li>\r\n		<li><strong>Approximate Coverage Area(Sq.Ft)</strong></li>\r\n		<li>180 Sq. Ft.</li>\r\n		<li><strong>Approximate Coverage Area(Sq.M)</strong></li>\r\n		<li>17 Sq.m</li>\r\n		<li><strong>Installation Type</strong></li>\r\n		<li>Wall Mount</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Manufacturer Details</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Brand</strong></li>\r\n		<li><a href=\\\"https://www.croma.com/voltas-store/b/b-0402\\\" target=\\\"_blank\\\"><strong>Voltas</strong></a></li>\r\n		<li><strong>Model Series</strong></li>\r\n		<li>185V ADS R32</li>\r\n		<li><strong>Model Number</strong></li>\r\n		<li>185V ADS R32</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Air Conditioner Features</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Air Conditioner Modes</strong></li>\r\n		<li>Adjustable Mode | Sleep Mode</li>\r\n		<li><strong>Cooling Technology</strong></li>\r\n		<li>Turbo cooling</li>\r\n		<li><strong>Air Flow Volume</strong></li>\r\n		<li>529.71 CFM</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Air Conditioner Category</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Air Conditioner Type</strong></li>\r\n		<li>Split</li>\r\n		<li><strong>Air Conditioner Capacity</strong></li>\r\n		<li>2 Ton</li>\r\n		<li><strong>Approximate Coverage Area(Sq.Ft)</strong></li>\r\n		<li>180 Sq. Ft.</li>\r\n		<li><strong>Approximate Coverage Area(Sq.M)</strong></li>\r\n		<li>17 Sq.m</li>\r\n		<li><strong>Installation Type</strong></li>\r\n		<li>Wall Mount</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Manufacturer Details</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Brand</strong></li>\r\n		<li><a href=\\\"https://www.croma.com/voltas-store/b/b-0402\\\" target=\\\"_blank\\\"><strong>Voltas</strong></a></li>\r\n		<li><strong>Model Series</strong></li>\r\n		<li>185V ADS R32</li>\r\n		<li><strong>Model Number</strong></li>\r\n		<li>185V ADS R32</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Air Conditioner Features</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Air Conditioner Modes</strong></li>\r\n		<li>Adjustable Mode | Sleep Mode</li>\r\n		<li><strong>Cooling Technology</strong></li>\r\n		<li>Turbo cooling</li>\r\n		<li><strong>Air Flow Volume</strong></li>\r\n		<li>529.71 CFM</li>\r\n		<li><strong>Humidity Control</strong></li>\r\n		<li>Yes</li>\r\n		<li><strong>Inverter Technology</strong></li>\r\n		<li>Yes</li>\r\n		<li><strong>Stabilizer Free Operation</strong></li>\r\n		<li>Yes</li>\r\n		<li><strong>Cooling Capacity</strong></li>\r\n		<li>Full Load Capacity - 5200 Watts | Half Load Capacity - 2600 Watts</li>\r\n		<li><strong>Ambient Temperature (Cooling/Heating) In Degree Celsius</strong></li>\r\n		<li>Cooling: 52</li>\r\n		<li><strong>Cooling Power Input</strong></li>\r\n		<li>Full Load Power - 1355 Watts | Half Load Power - 570 Watts</li>\r\n		<li><strong>Additional Air Conditioner Features</strong></li>\r\n		<li>4 Speed Fan Functions | Eco Friendly Refringent | Inner Grooved</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Air Conditioner Functions</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Compressor Type</strong></li>\r\n		<li>High EER Twin Rotary - BLDC</li>\r\n		<li><strong>Refrigerant Type</strong></li>\r\n		<li>R-32</li>\r\n		<li><strong>Noise Level (Indoor Unit)</strong></li>\r\n		<li>46 dB</li>\r\n		<li><strong>Air Conditioner Filters</strong></li>\r\n		<li>Catechin Filter | Anti Dust | Acaro Bacterium</li>\r\n		<li><strong>Air Flow Type</strong></li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<h3>&middot;Cross FlowAir Conditioner Physical Attributes</h3>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p>oConnecting Pipe Type</p>\r\n\r\n<ul style=\\\"list-style-type:circle\\\">\r\n	<li>Cu-Cu (12.5mm &amp; 6.35mm)</li>\r\n</ul>\r\n\r\n<p>oConnecting Pipe Length</p>\r\n\r\n<ul style=\\\"list-style-type:circle\\\">\r\n	<li>3 m</li>\r\n</ul>\r\n\r\n<p>oCondenser Coil Type</p>\r\n\r\n<ul style=\\\"list-style-type:circle\\\">\r\n	<li>Copper Condenser</li>\r\n</ul>\r\n\r\n<p>oLouvers Swing Type</p>\r\n\r\n<ul style=\\\"list-style-type:circle\\\">\r\n	<li>Up/Down Automatic</li>\r\n</ul>\r\n\r\n<h3>&middot;Air Conditioner Screen Specifications</h3>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p>oType</p>\r\n\r\n<ul style=\\\"list-style-type:circle\\\">\r\n	<li>LED</li>\r\n</ul>\r\n\r\n<h3>&middot;Access Control And Security</h3>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p>oOther Locks</p>\r\n\r\n<ul style=\\\"list-style-type:circle\\\">\r\n	<li>Lock</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Air Conditioner Category</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Air Conditioner Type</strong></li>\r\n		<li>Split</li>\r\n		<li><strong>Air Conditioner Capacity</strong></li>\r\n		<li>2 Ton</li>\r\n		<li><strong>Approximate Coverage Area(Sq.Ft)</strong></li>\r\n		<li>180 Sq. Ft.</li>\r\n		<li><strong>Approximate Coverage Area(Sq.M)</strong></li>\r\n		<li>17 Sq.m</li>\r\n		<li><strong>Installation Type</strong></li>\r\n		<li>Wall Mount</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Manufacturer Details</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Brand</strong></li>\r\n		<li><a href=\\\"https://www.croma.com/voltas-store/b/b-0402\\\" target=\\\"_blank\\\"><strong>Voltas</strong></a></li>\r\n		<li><strong>Model Series</strong></li>\r\n		<li>185V ADS R32</li>\r\n		<li><strong>Model Number</strong></li>\r\n		<li>185V ADS R32</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Air Conditioner Features</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Air Conditioner Modes</strong></li>\r\n		<li>Adjustable Mode | Sleep Mode</li>\r\n		<li><strong>Cooling Technology</strong></li>\r\n		<li>Turbo cooling</li>\r\n		<li><strong>Air Flow Volume</strong></li>\r\n		<li>529.71 CFM</li>\r\n		<li><strong>Humidity Control</strong></li>\r\n		<li>Yes</li>\r\n		<li><strong>Inverter Technology</strong></li>\r\n		<li>Yes</li>\r\n		<li><strong>Stabilizer Free Operation</strong></li>\r\n		<li>Yes</li>\r\n		<li><strong>Cooling Capacity</strong></li>\r\n		<li>Full Load Capacity - 5200 Watts | Half Load Capacity - 2600 Watts</li>\r\n		<li><strong>Ambient Temperature (Cooling/Heating) In Degree Celsius</strong></li>\r\n		<li>Cooling: 52</li>\r\n		<li><strong>Cooling Power Input</strong></li>\r\n		<li>Full Load Power - 1355 Watts | Half Load Power - 570 Watts</li>\r\n		<li><strong>Additional Air Conditioner Features</strong></li>\r\n		<li>4 Speed Fan Functions | Eco Friendly Refringent | Inner Grooved</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Air Conditioner Functions</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Compressor Type</strong></li>\r\n		<li>High EER Twin Rotary - BLDC</li>\r\n		<li><strong>Refrigerant Type</strong></li>\r\n		<li>R-32</li>\r\n		<li><strong>Noise Level (Indoor Unit)</strong></li>\r\n		<li>46 dB</li>\r\n		<li><strong>Air Conditioner Filters</strong></li>\r\n		<li>Catechin Filter | Anti Dust | Acaro Bacterium</li>\r\n		<li><strong>Air Flow Type</strong></li>\r\n		<li>Cross Flow</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Air Conditioner Physical Attributes</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Connecting Pipe Type</strong></li>\r\n		<li>Cu-Cu (12.5mm &amp; 6.35mm)</li>\r\n		<li><strong>Connecting Pipe Length</strong></li>\r\n		<li>3 m</li>\r\n		<li><strong>Condenser Coil Type</strong></li>\r\n		<li>Copper Condenser</li>\r\n		<li><strong>Louvers Swing Type</strong></li>\r\n		<li>Up/Down Automatic</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Air Conditioner Screen Specifications</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Type</strong></li>\r\n		<li>LED</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Access Control And Security</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Other Locks</strong></li>\r\n		<li>Lock</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Remote Control Details</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Remote Control Type</strong></li>\r\n		<li>IR</li>\r\n		<li><strong>Remote Smart Features</strong></li>\r\n		<li>Glow Light Buttons</li>\r\n		<li><strong>Screen Type</strong></li>\r\n		<li>LCD</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Air Conditioner Additional Features</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Additional Technology Supported</strong></li>\r\n		<li>Anti-Fungal | Self Diagnosis | Super Dry | Auto Restart | Oxygenator</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Energy Standards</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Energy Efficiency(Star Rating)</strong></li>\r\n		<li>5 Star</li>\r\n		<li><strong>Indian Seasonal Energy Efficiency Ratio (ISEER)</strong></li>\r\n		<li>5</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Air Conditioner Plug Details</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Air Conditioner Category</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Air Conditioner Type</strong></li>\r\n		<li>Split</li>\r\n		<li><strong>Air Conditioner Capacity</strong></li>\r\n		<li>2 Ton</li>\r\n		<li><strong>Approximate Coverage Area(Sq.Ft)</strong></li>\r\n		<li>180 Sq. Ft.</li>\r\n		<li><strong>Approximate Coverage Area(Sq.M)</strong></li>\r\n		<li>17 Sq.m</li>\r\n		<li><strong>Installation Type</strong></li>\r\n		<li>Wall Mount</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Manufacturer Details</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Brand</strong></li>\r\n		<li><a href=\\\"https://www.croma.com/voltas-store/b/b-0402\\\" target=\\\"_blank\\\"><strong>Voltas</strong></a></li>\r\n		<li><strong>Model Series</strong></li>\r\n		<li>185V ADS R32</li>\r\n		<li><strong>Model Number</strong></li>\r\n		<li>185V ADS R32</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Air Conditioner Features</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Air Conditioner Modes</strong></li>\r\n		<li>Adjustable Mode | Sleep Mode</li>\r\n		<li><strong>Cooling Technology</strong></li>\r\n		<li>Turbo cooling</li>\r\n		<li><strong>Air Flow Volume</strong></li>\r\n		<li>529.71 CFM</li>\r\n		<li><strong>Humidity Control</strong></li>\r\n		<li>Yes</li>\r\n		<li><strong>Inverter Technology</strong></li>\r\n		<li>Yes</li>\r\n		<li><strong>Stabilizer Free Operation</strong></li>\r\n		<li>Yes</li>\r\n		<li><strong>Cooling Capacity</strong></li>\r\n		<li>Full Load Capacity - 5200 Watts | Half Load Capacity - 2600 Watts</li>\r\n		<li><strong>Ambient Temperature (Cooling/Heating) In Degree Celsius</strong></li>\r\n		<li>Cooling: 52</li>\r\n		<li><strong>Cooling Power Input</strong></li>\r\n		<li>Full Load Power - 1355 Watts | Half Load Power - 570 Watts</li>\r\n		<li><strong>Additional Air Conditioner Features</strong></li>\r\n		<li>4 Speed Fan Functions | Eco Friendly Refringent | Inner Grooved</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Air Conditioner Functions</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Compressor Type</strong></li>\r\n		<li>High EER Twin Rotary - BLDC</li>\r\n		<li><strong>Refrigerant Type</strong></li>\r\n		<li>R-32</li>\r\n		<li><strong>Noise Level (Indoor Unit)</strong></li>\r\n		<li>46 dB</li>\r\n		<li><strong>Air Conditioner Filters</strong></li>\r\n		<li>Catechin Filter | Anti Dust | Acaro Bacterium</li>\r\n		<li><strong>Air Flow Type</strong></li>\r\n		<li>Cross Flow</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Air Conditioner Physical Attributes</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Connecting Pipe Type</strong></li>\r\n		<li>Cu-Cu (12.5mm &amp; 6.35mm)</li>\r\n		<li><strong>Connecting Pipe Length</strong></li>\r\n		<li>3 m</li>\r\n		<li><strong>Condenser Coil Type</strong></li>\r\n		<li>Copper Condenser</li>\r\n		<li><strong>Louvers Swing Type</strong></li>\r\n		<li>Up/Down Automatic</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Air Conditioner Screen Specifications</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Type</strong></li>\r\n		<li>LED</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Access Control And Security</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Other Locks</strong></li>\r\n		<li>Lock</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Remote Control Details</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Remote Control Type</strong></li>\r\n		<li>IR</li>\r\n		<li><strong>Remote Smart Features</strong></li>\r\n		<li>Glow Light Buttons</li>\r\n		<li><strong>Screen Type</strong></li>\r\n		<li>LCD</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Air Conditioner Additional Features</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Additional Technology Supported</strong></li>\r\n		<li>Anti-Fungal | Self Diagnosis | Super Dry | Auto Restart | Oxygenator</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Energy Standards</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Energy Efficiency(Star Rating)</strong></li>\r\n		<li>5 Star</li>\r\n		<li><strong>Indian Seasonal Energy Efficiency Ratio (ISEER)</strong></li>\r\n		<li>5</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Air Conditioner Plug Details</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Power</strong></li>\r\n		<li>1355 W</li>\r\n		<li><strong>Voltage Rating</strong></li>\r\n		<li>230 V</li>\r\n		<li><strong>Frequency</strong></li>\r\n		<li>50 Hz</li>\r\n		<li><strong>Phase</strong></li>\r\n		<li>Single</li>\r\n		<li><strong>Grounded</strong></li>\r\n		<li>Yes</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Product Aesthetics</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Color</strong></li>\r\n		<li>Nano Silver</li>\r\n		<li><strong>Color Family</strong></li>\r\n		<li>Silver</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>In The Box</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Generic Name</strong></li>\r\n		<li>Air Conditioner</li>\r\n		<li><strong>Main Product</strong></li>\r\n		<li>1 U Indoor Unit &amp; Outdoor Unit</li>\r\n		<li><strong>Accessories</strong></li>\r\n		<li>Remote Control | Remote Control Batteries</li>\r\n		<li><strong>Documents</strong></li>\r\n		<li>User Manual | Warranty Card</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Air Conditioner Category</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Air Conditioner Type</strong></li>\r\n		<li>Split</li>\r\n		<li><strong>Air Conditioner Capacity</strong></li>\r\n		<li>2 Ton</li>\r\n		<li><strong>Approximate Coverage Area(Sq.Ft)</strong></li>\r\n		<li>180 Sq. Ft.</li>\r\n		<li><strong>Approximate Coverage Area(Sq.M)</strong></li>\r\n		<li>17 Sq.m</li>\r\n		<li><strong>Installation Type</strong></li>\r\n		<li>Wall Mount</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Manufacturer Details</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Brand</strong></li>\r\n		<li><a href=\\\"https://www.croma.com/voltas-store/b/b-0402\\\" target=\\\"_blank\\\"><strong>Voltas</strong></a></li>\r\n		<li><strong>Model Series</strong></li>\r\n		<li>185V ADS R32</li>\r\n		<li><strong>Model Number</strong></li>\r\n		<li>185V ADS R32</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Air Conditioner Features</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Air Conditioner Modes</strong></li>\r\n		<li>Adjustable Mode | Sleep Mode</li>\r\n		<li><strong>Cooling Technology</strong></li>\r\n		<li>Turbo cooling</li>\r\n		<li><strong>Air Flow Volume</strong></li>\r\n		<li>529.71 CFM</li>\r\n		<li><strong>Humidity Control</strong></li>\r\n		<li>Yes</li>\r\n		<li><strong>Inverter Technology</strong></li>\r\n		<li>Yes</li>\r\n		<li><strong>Stabilizer Free Operation</strong></li>\r\n		<li>Yes</li>\r\n		<li><strong>Cooling Capacity</strong></li>\r\n		<li>Full Load Capacity - 5200 Watts | Half Load Capacity - 2600 Watts</li>\r\n		<li><strong>Ambient Temperature (Cooling/Heating) In Degree Celsius</strong></li>\r\n		<li>Cooling: 52</li>\r\n		<li><strong>Cooling Power Input</strong></li>\r\n		<li>Full Load Power - 1355 Watts | Half Load Power - 570 Watts</li>\r\n		<li><strong>Additional Air Conditioner Features</strong></li>\r\n		<li>4 Speed Fan Functions | Eco Friendly Refringent | Inner Grooved</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Air Conditioner Functions</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Compressor Type</strong></li>\r\n		<li>High EER Twin Rotary - BLDC</li>\r\n		<li><strong>Refrigerant Type</strong></li>\r\n		<li>R-32</li>\r\n		<li><strong>Noise Level (Indoor Unit)</strong></li>\r\n		<li>46 dB</li>\r\n		<li><strong>Air Conditioner Filters</strong></li>\r\n		<li>Catechin Filter | Anti Dust | Acaro Bacterium</li>\r\n		<li><strong>Air Flow Type</strong></li>\r\n		<li>Cross Flow</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Air Conditioner Physical Attributes</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Connecting Pipe Type</strong></li>\r\n		<li>Cu-Cu (12.5mm &amp; 6.35mm)</li>\r\n		<li><strong>Connecting Pipe Length</strong></li>\r\n		<li>3 m</li>\r\n		<li><strong>Condenser Coil Type</strong></li>\r\n		<li>Copper Condenser</li>\r\n		<li><strong>Louvers Swing Type</strong></li>\r\n		<li>Up/Down Automatic</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Air Conditioner Screen Specifications</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Type</strong></li>\r\n		<li>LED</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Access Control And Security</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Other Locks</strong></li>\r\n		<li>Lock</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Remote Control Details</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Remote Control Type</strong></li>\r\n		<li>IR</li>\r\n		<li><strong>Remote Smart Features</strong></li>\r\n		<li>Glow Light Buttons</li>\r\n		<li><strong>Screen Type</strong></li>\r\n		<li>LCD</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Air Conditioner Additional Features</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Additional Technology Supported</strong></li>\r\n		<li>Anti-Fungal | Self Diagnosis | Super Dry | Auto Restart | Oxygenator</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Energy Standards</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Energy Efficiency(Star Rating)</strong></li>\r\n		<li>5 Star</li>\r\n		<li><strong>Indian Seasonal Energy Efficiency Ratio (ISEER)</strong></li>\r\n		<li>5</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Air Conditioner Plug Details</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Power</strong></li>\r\n		<li>1355 W</li>\r\n		<li><strong>Voltage Rating</strong></li>\r\n		<li>230 V</li>\r\n		<li><strong>Frequency</strong></li>\r\n		<li>50 Hz</li>\r\n		<li><strong>Phase</strong></li>\r\n		<li>Single</li>\r\n		<li><strong>Grounded</strong></li>\r\n		<li>Yes</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Product Aesthetics</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Color</strong></li>\r\n		<li>Nano Silver</li>\r\n		<li><strong>Color Family</strong></li>\r\n		<li>Silver</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>In The Box</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Generic Name</strong></li>\r\n		<li>Air Conditioner</li>\r\n		<li><strong>Main Product</strong></li>\r\n		<li>1 U Indoor Unit &amp; Outdoor Unit</li>\r\n		<li><strong>Accessories</strong></li>\r\n		<li>Remote Control | Remote Control Batteries</li>\r\n		<li><strong>Documents</strong></li>\r\n		<li>User Manual | Warranty Card</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Product Dimensions (Open)</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Dimensions in cm (WxDxH)</strong></li>\r\n		<li>99.01 x 24.21 x 31.51</li>\r\n		<li><strong>Dimensions in Inches (WxDxH)</strong></li>\r\n		<li>38.97 x 9.52 x 12.41</li>\r\n		<li><strong>Weight</strong></li>\r\n		<li>13500 g</li>\r\n		<li><strong>Weight</strong></li>\r\n		<li>14 kg</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Product Dimensions Outdoor Unit</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Dimensions in cm (WxDxH)</strong></li>\r\n		<li>87.01 x 35.51 x 60.01</li>\r\n		<li><strong>Dimensions in Inches (WxDxH)</strong></li>\r\n		<li>34.25 x 13.97 x 23.62</li>\r\n		<li><strong>Weight</strong></li>\r\n		<li>37 kg</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>After Sales &amp; Services</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Standard Warranty Period</strong></li>\r\n		<li>60 Months</li>\r\n		<li><strong>Additional Warranties</strong></li>\r\n		<li>5 Years Comprehensive Warranty, 10 Years Compressor Warranty</li>\r\n		<li><strong>Warranty Type</strong></li>\r\n		<li>Onsite</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Installation &amp; Demo</strong></li>\r\n		<li>Croma will coordinate with the brand for Installation and Demo</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Company Contact Information</li>\r\n	<li>&nbsp;\r\n	<ul>\r\n		<li><strong>Manufacturer/Importer/Marketer Name &amp; Address</strong></li>\r\n		<li>Voltas Limited | Voltas House &#39;A&#39; Block Dr. Babasaheb Ambedkar Rd Chinchpokli Mumbai - 400 033 India</li>\r\n		<li><strong>Customer Support Number</strong></li>\r\n		<li>7207666000</li>\r\n		<li><strong>Customer Support Email</strong></li>\r\n		<li>customersupport@croma.com</li>\r\n		<li><strong>Country of Manufacture</strong></li>\r\n		<li>India</li>\r\n		<li><strong>Country of Brand Origin</strong></li>\r\n		<li>India</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(73, 40, 1, 'HEAT RESISTANT MODULAR KITCHEN', '<p><strong>With the help of our talented team of interior decorators and designers, we are able to offer an ideal range of Heat Resistant Modular Kitchen. We design this kitchen using super gloss finish doors and products, which give glass look to the entire d&eacute;cor. While designing this range, we also ensure that the set up is resistant to excessive heat, moisture and other related factors. Our provided Heat Resistant Modular Kitchen is thoughtfully and aesthetically designed and are heat resistant.</strong></p>\r\n\r\n<p><strong>It comes with PET (Poly Ethylene Terephthalate) coating which melts at a very high temperature of 260 degree Celsius - making it a harder surface than air-drying paints and plastics / acrylics which melt around 90 degree Celsius and 160 Degree Celsius respectively. Hence, making it more heat &amp; scratch resistant, stain proof, ultra violet rays stable and glossy for lifetime, compared to paints and acrylics.</strong></p>', NULL, 0, '', NULL, NULL, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

DROP TABLE IF EXISTS `products_images`;
CREATE TABLE IF NOT EXISTS `products_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `htmlcontent` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_images_prodid` (`products_id`)
) ENGINE=MyISAM AUTO_INCREMENT=151 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_images`
--

INSERT INTO `products_images` (`id`, `products_id`, `image`, `htmlcontent`, `sort_order`) VALUES
(1, 1, '413', NULL, 2),
(7, 2, '408', NULL, 1),
(8, 2, '409', NULL, 2),
(9, 2, '410', NULL, 3),
(10, 2, '411', NULL, 4),
(11, 3, '405', NULL, 1),
(12, 3, '406', NULL, 2),
(13, 3, '407', NULL, 3),
(14, 4, '400', NULL, 1),
(15, 4, '401', NULL, 2),
(16, 4, '402', NULL, 3),
(17, 4, '403', NULL, 4),
(18, 4, '404', NULL, 5),
(19, 5, '395', NULL, 1),
(20, 5, '396', NULL, 2),
(21, 5, '398', NULL, 3),
(2, 1, '412', NULL, 1),
(3, 1, '414', NULL, 3),
(4, 1, '415', NULL, 4),
(6, 1, '416', NULL, 5),
(22, 5, '397', NULL, 4),
(23, 5, '399', NULL, 5),
(24, 6, '390', NULL, 1),
(25, 6, '393', NULL, 2),
(26, 6, '394', NULL, 3),
(27, 6, '392', NULL, 4),
(28, 6, '391', NULL, 5),
(29, 7, '385', NULL, 1),
(30, 7, '386', NULL, 2),
(31, 7, '387', NULL, 3),
(32, 7, '388', NULL, 4),
(33, 7, '389', NULL, 5),
(34, 8, '383', NULL, 1),
(35, 8, '384', NULL, 2),
(36, 8, '381', NULL, 3),
(37, 8, '382', NULL, 4),
(38, 9, '378', NULL, 1),
(39, 9, '379', NULL, 2),
(40, 9, '380', NULL, 3),
(41, 10, '375', NULL, 1),
(42, 10, '376', NULL, 2),
(43, 10, '377', NULL, 3),
(44, 11, '372', NULL, 1),
(45, 11, '374', NULL, 2),
(46, 11, '373', NULL, 3),
(47, 11, '371', NULL, 4),
(48, 12, '367', NULL, 1),
(49, 12, '370', NULL, 2),
(50, 12, '368', NULL, 3),
(51, 12, '369', NULL, 4),
(52, 13, '364', NULL, 1),
(53, 13, '365', NULL, 2),
(54, 13, '366', NULL, 3),
(55, 14, '359', NULL, 1),
(56, 14, '361', NULL, 2),
(57, 14, '363', NULL, 3),
(58, 14, '360', NULL, 4),
(59, 14, '362', NULL, 5),
(60, 15, '355', NULL, 1),
(61, 15, '356', NULL, 2),
(62, 15, '358', NULL, 3),
(63, 15, '357', NULL, 4),
(64, 16, '350', NULL, 1),
(65, 16, '349', NULL, 2),
(66, 16, '352', NULL, 3),
(67, 16, '353', NULL, 4),
(68, 16, '354', NULL, 5),
(69, 16, '351', NULL, 6),
(70, 17, '344', NULL, 1),
(71, 17, '347', NULL, 2),
(72, 17, '348', NULL, 3),
(73, 17, '345', NULL, 4),
(74, 17, '346', NULL, 5),
(75, 18, '339', NULL, 1),
(76, 18, '341', NULL, 2),
(77, 18, '340', NULL, 3),
(78, 18, '342', NULL, 4),
(79, 18, '343', NULL, 5),
(80, 19, '337', NULL, 1),
(81, 19, '338', NULL, 2),
(82, 19, '336', NULL, 3),
(83, 20, '333', NULL, 1),
(84, 20, '334', NULL, 2),
(85, 20, '335', NULL, 3),
(86, 21, '330', NULL, 1),
(87, 21, '328', NULL, 2),
(88, 21, '329', NULL, 3),
(89, 21, '331', NULL, 4),
(90, 21, '332', NULL, 5),
(91, 22, '324', NULL, 1),
(92, 22, '325', NULL, 2),
(93, 22, '326', NULL, 3),
(94, 22, '327', NULL, 4),
(95, 23, '218', NULL, 1),
(96, 23, '219', NULL, 2),
(97, 23, '220', NULL, 3),
(98, 23, '217', NULL, 4),
(99, 23, '221', NULL, 5),
(100, 24, '319', NULL, 1),
(101, 24, '320', NULL, 2),
(102, 24, '321', NULL, 3),
(103, 24, '322', NULL, 4),
(104, 24, '323', NULL, 5),
(105, 25, '313', NULL, 1),
(106, 25, '314', NULL, 2),
(107, 25, '316', NULL, 3),
(108, 25, '312', NULL, 4),
(109, 25, '317', NULL, 5),
(110, 25, '318', NULL, 6),
(111, 25, '315', NULL, 7),
(112, 26, '310', NULL, 1),
(113, 26, '309', NULL, 2),
(114, 26, '308', NULL, 3),
(115, 26, '311', NULL, 4),
(116, 27, '307', NULL, 1),
(117, 27, '306', NULL, 2),
(118, 27, '305', NULL, 3),
(119, 28, '301', NULL, 1),
(120, 28, '303', NULL, 2),
(121, 28, '304', NULL, 3),
(122, 28, '302', NULL, 4),
(123, 29, '300', NULL, 1),
(124, 29, '298', NULL, 2),
(125, 29, '298', NULL, 3),
(144, 30, '297', NULL, 1),
(145, 30, '295', NULL, 2),
(140, 31, '292', NULL, 1),
(141, 31, '291', NULL, 2),
(137, 32, '288', NULL, 1),
(138, 32, '287', NULL, 2),
(139, 32, '289', NULL, 3),
(142, 31, '290', NULL, 3),
(143, 31, '293', NULL, 4),
(146, 30, '294', NULL, 3),
(147, 30, '296', NULL, 4),
(148, 33, '541', 'Realme Smart Band (Black)', 1),
(149, 34, '542', 'Noise ColorFit Pro 2 Smartwatch (Teal Green)', 1),
(150, 35, '543', 'NoiseFit Endure Sport Smartwatch (Charcoal Black)', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_options`
--

DROP TABLE IF EXISTS `products_options`;
CREATE TABLE IF NOT EXISTS `products_options` (
  `products_options_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_options_name` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`products_options_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_options`
--

INSERT INTO `products_options` (`products_options_id`, `products_options_name`) VALUES
(1, 'Color'),
(2, 'Size'),
(3, 'Waist'),
(4, 'Weight'),
(5, '24k Gold Srub'),
(6, 'Voltas 1.5 Ton 5 Star Inverter S');

-- --------------------------------------------------------

--
-- Table structure for table `products_options_descriptions`
--

DROP TABLE IF EXISTS `products_options_descriptions`;
CREATE TABLE IF NOT EXISTS `products_options_descriptions` (
  `products_options_descriptions_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `options_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_options_id` int(11) NOT NULL,
  PRIMARY KEY (`products_options_descriptions_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_options_descriptions`
--

INSERT INTO `products_options_descriptions` (`products_options_descriptions_id`, `language_id`, `options_name`, `products_options_id`) VALUES
(1, 1, 'Color', 1),
(2, 1, 'Size', 2),
(3, 1, 'Waist', 3),
(5, 4, 'اللون', 1),
(6, 4, 'بحجم', 2),
(7, 4, 'وسط', 3),
(8, 1, 'Weight', 4),
(9, 1, '24 KARAT  Gold Srub', 5),
(10, 1, 'Voltas 1.5 Ton 5 Star Inverter Split AC', 6);

-- --------------------------------------------------------

--
-- Table structure for table `products_options_values`
--

DROP TABLE IF EXISTS `products_options_values`;
CREATE TABLE IF NOT EXISTS `products_options_values` (
  `products_options_values_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`products_options_values_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_options_values`
--

INSERT INTO `products_options_values` (`products_options_values_id`, `products_options_id`, `products_options_values_name`) VALUES
(1, 1, 'Red'),
(2, 1, 'Pink'),
(3, 1, 'Sky Blue'),
(4, 1, 'Purple'),
(5, 2, 'Small'),
(6, 2, 'Medium'),
(7, 2, 'Large'),
(8, 2, 'XL'),
(9, 3, '28W'),
(10, 3, '30W'),
(11, 3, '32W'),
(12, 3, '34W'),
(13, 3, '36W'),
(14, 3, '38W'),
(15, 4, '500Gm'),
(16, 4, '1kg'),
(17, 4, '2kg'),
(18, 4, '1.5kg'),
(19, 1, 'Brown'),
(20, 1, 'white'),
(21, 1, 'black'),
(22, 5, '50 gm'),
(23, 5, '100 gm'),
(24, 5, '250 gm'),
(26, 5, '500 gm'),
(30, 6, '1 TON'),
(28, 6, '1.5 TON'),
(31, 6, '2 TON');

-- --------------------------------------------------------

--
-- Table structure for table `products_options_values_descriptions`
--

DROP TABLE IF EXISTS `products_options_values_descriptions`;
CREATE TABLE IF NOT EXISTS `products_options_values_descriptions` (
  `products_options_values_descriptions_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `options_values_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `products_options_values_id` int(11) NOT NULL,
  PRIMARY KEY (`products_options_values_descriptions_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_options_values_descriptions`
--

INSERT INTO `products_options_values_descriptions` (`products_options_values_descriptions_id`, `language_id`, `options_values_name`, `products_options_values_id`) VALUES
(1, 1, 'Red', 1),
(2, 1, 'Pink', 2),
(3, 1, 'Sky Blue', 3),
(4, 1, 'Purple', 4),
(5, 1, 'Small', 5),
(6, 1, 'Medium', 6),
(7, 1, 'Large', 7),
(8, 1, 'XL', 8),
(9, 1, '28W', 9),
(10, 1, '30W', 10),
(11, 1, '32W', 11),
(12, 1, '34W', 12),
(13, 1, '36W', 13),
(14, 1, '38W', 14),
(15, 4, 'أحمر', 1),
(16, 4, 'زهري', 2),
(17, 4, 'السماء الزرقاء', 3),
(18, 4, 'أرجواني', 4),
(19, 4, 'صغير', 5),
(20, 4, 'متوسط', 6),
(21, 4, 'كبير', 7),
(22, 4, 'كبير جدا', 8),
(23, 4, '28W', 9),
(24, 4, '30W', 10),
(25, 4, '32W', 11),
(26, 4, '34W', 12),
(27, 4, '36W', 13),
(28, 4, '38W', 14),
(29, 1, '500Gm', 15),
(30, 1, '1kg', 16),
(31, 1, '2kg', 17),
(32, 1, '1.5kg', 18),
(33, 1, 'Brown', 19),
(34, 1, 'white', 20),
(35, 1, 'black', 21),
(36, 1, '50 gm', 22),
(37, 1, '100 gm', 23),
(38, 1, '250 gm', 24),
(40, 1, '500 gm', 26),
(44, 1, '1 TON', 30),
(42, 1, '1.5 TON', 28),
(45, 1, '2 TON', 31);

-- --------------------------------------------------------

--
-- Table structure for table `products_shipping_rates`
--

DROP TABLE IF EXISTS `products_shipping_rates`;
CREATE TABLE IF NOT EXISTS `products_shipping_rates` (
  `products_shipping_rates_id` int(11) NOT NULL AUTO_INCREMENT,
  `weight_from` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight_to` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight_price` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `products_shipping_status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`products_shipping_rates_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_shipping_rates`
--

INSERT INTO `products_shipping_rates` (`products_shipping_rates_id`, `weight_from`, `weight_to`, `weight_price`, `unit_id`, `products_shipping_status`) VALUES
(1, '0', '10', 10, 1, 1),
(2, '10', '20', 10, 1, 1),
(3, '20', '30', 10, 1, 1),
(4, '30', '50', 50, 1, 1),
(5, '50', '100000', 70, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_to_categories`
--

DROP TABLE IF EXISTS `products_to_categories`;
CREATE TABLE IF NOT EXISTS `products_to_categories` (
  `products_to_categories_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  PRIMARY KEY (`products_to_categories_id`)
) ENGINE=MyISAM AUTO_INCREMENT=300 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_to_categories`
--

INSERT INTO `products_to_categories` (`products_to_categories_id`, `products_id`, `categories_id`) VALUES
(243, 1, 4),
(242, 1, 3),
(241, 2, 4),
(240, 2, 3),
(239, 3, 5),
(238, 3, 3),
(237, 4, 5),
(236, 4, 3),
(235, 5, 6),
(234, 5, 3),
(233, 6, 7),
(232, 6, 1),
(249, 7, 7),
(248, 7, 1),
(229, 8, 8),
(228, 8, 1),
(227, 9, 8),
(226, 9, 1),
(225, 10, 8),
(224, 10, 1),
(223, 11, 9),
(222, 11, 1),
(221, 12, 9),
(220, 12, 1),
(219, 13, 9),
(218, 13, 1),
(217, 14, 10),
(216, 14, 1),
(215, 15, 10),
(214, 15, 1),
(213, 16, 10),
(212, 16, 1),
(211, 17, 11),
(210, 17, 2),
(209, 18, 11),
(208, 18, 2),
(207, 19, 12),
(206, 19, 2),
(205, 20, 12),
(204, 20, 2),
(203, 21, 12),
(202, 21, 2),
(156, 22, 15),
(201, 24, 15),
(199, 25, 15),
(198, 25, 2),
(245, 26, 13),
(244, 26, 2),
(195, 27, 13),
(194, 27, 2),
(193, 28, 13),
(192, 28, 2),
(191, 29, 13),
(190, 29, 2),
(189, 30, 14),
(188, 30, 2),
(282, 31, 14),
(281, 31, 2),
(280, 32, 14),
(279, 32, 2),
(200, 24, 2),
(155, 22, 2),
(275, 36, 7),
(274, 36, 1),
(278, 37, 23),
(288, 38, 24),
(287, 38, 2),
(294, 40, 16),
(295, 39, -1);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `reviews_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `customers_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `reviews_rating` int(11) DEFAULT NULL,
  `reviews_status` tinyint(1) NOT NULL DEFAULT 0,
  `reviews_read` int(11) NOT NULL DEFAULT 0,
  `vendors_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`reviews_id`),
  KEY `idx_reviews_products_id` (`products_id`),
  KEY `idx_reviews_customers_id` (`customers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews_description`
--

DROP TABLE IF EXISTS `reviews_description`;
CREATE TABLE IF NOT EXISTS `reviews_description` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `review_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `reviews_text` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `sesskey` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `expiry` int(10) UNSIGNED NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`sesskey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=140 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'facebook_app_id', 'FB_CLIENT_ID', '2018-04-26 18:30:00', '2019-11-01 01:28:53'),
(2, 'facebook_secret_id', 'FB_SECRET_KEY', '2018-04-26 18:30:00', '2019-11-01 01:28:53'),
(3, 'facebook_login', '0', '2018-04-26 18:30:00', '2019-11-01 01:28:53'),
(4, 'contact_us_email', '', '2018-04-26 18:30:00', '2021-03-22 22:16:22'),
(5, 'address', 'address', '2018-04-26 18:30:00', '2021-03-22 22:16:22'),
(6, 'city', 'City', '2018-04-26 18:30:00', '2021-03-22 22:16:22'),
(7, 'state', 'State', '2018-04-26 18:30:00', '2021-03-22 22:16:22'),
(8, 'zip', 'Zip', '2018-04-26 18:30:00', '2021-03-22 22:16:22'),
(9, 'country', 'Country', '2018-04-26 18:30:00', '2021-03-22 22:16:22'),
(10, 'latitude', 'Latitude', '2018-04-26 18:30:00', '2021-03-22 22:16:22'),
(11, 'longitude', 'Longitude', '2018-04-26 18:30:00', '2021-03-22 22:16:22'),
(12, 'phone_no', '+92 312 1234567', '2018-04-26 18:30:00', '2021-03-22 22:16:22'),
(13, 'fcm_android', '', '2018-04-26 18:30:00', '2019-02-05 06:12:15'),
(14, 'fcm_ios', NULL, '2018-04-26 18:30:00', NULL),
(15, 'fcm_desktop', NULL, '2018-04-26 18:30:00', NULL),
(16, 'website_logo', 'images/media/2021/04/FmVYN13111.png', '2018-04-26 18:30:00', '2021-04-13 06:24:20'),
(17, 'fcm_android_sender_id', NULL, '2018-04-26 18:30:00', NULL),
(18, 'fcm_ios_sender_id', '', '2018-04-26 18:30:00', '2019-02-05 06:12:15'),
(19, 'app_name', 'Fashion Devakya', '2018-04-26 18:30:00', '2021-03-22 22:16:22'),
(20, 'currency_symbol', '₹', '2018-04-26 18:30:00', '2018-11-19 01:56:01'),
(21, 'new_product_duration', '20', '2018-04-26 18:30:00', '2021-03-22 22:16:22'),
(22, 'notification_title', 'Ionic Ecommerce', '2018-04-26 18:30:00', '2019-05-15 05:28:30'),
(23, 'notification_text', 'A bundle of products waiting for you!', '2018-04-26 18:30:00', NULL),
(24, 'lazzy_loading_effect', 'Detail', '2018-04-26 18:30:00', '2019-05-15 05:28:30'),
(25, 'footer_button', '1', '2018-04-26 18:30:00', '2019-05-15 05:28:30'),
(26, 'cart_button', '1', '2018-04-26 18:30:00', '2019-05-15 05:28:30'),
(27, 'featured_category', NULL, '2018-04-26 18:30:00', NULL),
(28, 'notification_duration', 'year', '2018-04-26 18:30:00', '2019-05-15 05:28:30'),
(29, 'home_style', '1', '2018-04-26 18:30:00', '2019-05-15 05:28:30'),
(30, 'wish_list_page', '1', '2018-04-26 18:30:00', '2019-05-15 05:28:30'),
(31, 'edit_profile_page', '1', '2018-04-26 18:30:00', '2019-05-15 05:28:30'),
(32, 'shipping_address_page', '1', '2018-04-26 18:30:00', '2019-05-15 05:28:30'),
(33, 'my_orders_page', '1', '2018-04-26 18:30:00', '2019-05-15 05:28:30'),
(34, 'contact_us_page', '1', '2018-04-26 18:30:00', '2019-05-15 05:28:30'),
(35, 'about_us_page', '1', '2018-04-26 18:30:00', '2019-05-15 05:28:30'),
(36, 'news_page', '1', '2018-04-26 18:30:00', '2019-05-15 05:28:30'),
(37, 'intro_page', '1', '2018-04-26 18:30:00', '2019-05-15 05:28:30'),
(38, 'setting_page', '1', '2018-04-26 18:30:00', NULL),
(39, 'share_app', '1', '2018-04-26 18:30:00', '2019-05-15 05:28:30'),
(40, 'rate_app', '1', '2018-04-26 18:30:00', '2019-05-15 05:28:30'),
(41, 'site_url', 'URL', '2018-04-26 18:30:00', '2018-11-19 01:56:01'),
(42, 'admob', '0', '2018-04-26 18:30:00', '2019-05-15 05:28:05'),
(43, 'admob_id', 'ID', '2018-04-26 18:30:00', '2019-05-15 05:28:05'),
(44, 'ad_unit_id_banner', 'Unit ID', '2018-04-26 18:30:00', '2019-05-15 05:28:05'),
(45, 'ad_unit_id_interstitial', 'Indestrial', '2018-04-26 18:30:00', '2019-05-15 05:28:05'),
(46, 'category_style', '4', '2018-04-26 18:30:00', '2019-05-15 05:28:30'),
(47, 'package_name', 'package name', '2018-04-26 18:30:00', '2019-05-15 05:28:30'),
(48, 'google_analytic_id', 'test', '2018-04-26 18:30:00', '2019-05-15 05:28:30'),
(49, 'themes', 'themeone', '2018-04-26 18:30:00', NULL),
(50, 'company_name', '#', '2018-04-26 18:30:00', '2019-10-07 04:22:24'),
(51, 'facebook_url', '#', '2018-04-26 18:30:00', '2021-04-13 06:24:20'),
(52, 'google_url', '#', '2018-04-26 18:30:00', '2021-04-13 06:24:20'),
(53, 'twitter_url', '#', '2018-04-26 18:30:00', '2021-04-13 06:24:20'),
(54, 'linked_in', '#', '2018-04-26 18:30:00', '2021-04-13 06:24:20'),
(55, 'default_notification', 'onesignal', '2018-04-26 18:30:00', '2019-02-05 06:12:15'),
(56, 'onesignal_app_id', '6053d948-b8f6-472a-87e4-379fa89f78d8', '2018-04-26 18:30:00', '2019-02-05 06:12:15'),
(57, 'onesignal_sender_id', '', '2018-04-26 18:30:00', '2019-02-05 06:12:15'),
(58, 'ios_admob', '0', '2018-04-26 18:30:00', '2019-05-15 05:28:05'),
(59, 'ios_admob_id', 'AdMob ID', '2018-04-26 18:30:00', '2019-05-15 05:28:05'),
(60, 'ios_ad_unit_id_banner', 'Unit ID Banner', '2018-04-26 18:30:00', '2019-05-15 05:28:05'),
(61, 'ios_ad_unit_id_interstitial', 'ID Interstitial', '2018-04-26 18:30:00', '2019-05-15 05:28:05'),
(62, 'google_login', '0', NULL, '2019-11-01 01:28:36'),
(63, 'google_app_id', NULL, NULL, NULL),
(64, 'google_secret_id', NULL, NULL, NULL),
(65, 'google_callback_url', NULL, NULL, NULL),
(66, 'facebook_callback_url', NULL, NULL, NULL),
(67, 'is_app_purchased', '0', NULL, '2018-05-03 21:54:44'),
(68, 'is_web_purchased', '1', NULL, '2018-05-03 21:54:44'),
(69, 'consumer_key', 'dadb7a7c1557917902724bbbf5', NULL, '2019-05-15 05:28:22'),
(70, 'consumer_secret', '3ba77f821557917902b1d57373', NULL, '2019-05-15 05:28:22'),
(71, 'order_email', 'orders@gmail.com', NULL, '2021-03-22 22:16:22'),
(72, 'website_themes', '1', NULL, NULL),
(73, 'seo_title', '', NULL, '2018-11-19 01:51:57'),
(74, 'seo_metatag', '', NULL, '2018-11-19 01:51:57'),
(75, 'seo_keyword', '', NULL, '2018-11-19 01:51:57'),
(76, 'seo_description', '', NULL, '2018-11-19 01:51:57'),
(77, 'before_head_tag', '', NULL, '2018-11-19 01:52:15'),
(78, 'end_body_tag', 'name', NULL, '2019-10-11 06:27:29'),
(79, 'sitename_logo', 'logo', NULL, '2021-04-13 06:24:20'),
(80, 'website_name', 'Fashion store', NULL, '2021-04-13 06:24:20'),
(81, 'web_home_pages_style', 'two', NULL, '2018-11-19 01:52:25'),
(82, 'web_color_style', 'app', NULL, '2018-11-19 01:52:25'),
(83, 'free_shipping_limit', '400', NULL, '2021-03-22 22:16:22'),
(84, 'app_icon_image', 'icon', NULL, '2019-02-05 04:42:59'),
(85, 'twilio_status', '0', NULL, NULL),
(86, 'twilio_authy_api_id', '', NULL, NULL),
(87, 'favicon', 'images/media/2021/04/FmVYN13111.png', NULL, '2021-04-13 06:24:20'),
(88, 'Thumbnail_height', '150', NULL, NULL),
(89, 'Thumbnail_width', '150', NULL, NULL),
(90, 'Medium_height', '400', NULL, NULL),
(91, 'Medium_width', '400', NULL, NULL),
(92, 'Large_height', '900', NULL, NULL),
(93, 'Large_width', '900', NULL, NULL),
(94, 'environmentt', 'local', NULL, '2021-03-22 22:16:22'),
(95, 'maintenance_text', 'Website is under maintenance', NULL, '2021-03-22 22:16:22'),
(96, 'package_charge_taxt', '0', NULL, NULL),
(97, 'order_commission', '0', NULL, NULL),
(98, 'all_items_price_included_tax', 'yes', NULL, NULL),
(99, 'all_items_price_included_tax_value', '0', NULL, NULL),
(100, 'driver_accept_multiple_order', '1', NULL, NULL),
(101, 'min_order_price', '20', NULL, '2021-03-22 22:16:22'),
(102, 'youtube_link', '0', NULL, NULL),
(103, 'external_website_link', 'http://fashion.devakya.com/', NULL, '2021-03-22 22:16:22'),
(104, 'google_map_api', '', NULL, '2021-03-22 22:16:22'),
(105, 'is_pos_purchased', '0', NULL, NULL),
(106, 'admin_version', '4.0.18', NULL, NULL),
(107, 'app_version', '4.0.18', NULL, NULL),
(108, 'web_version', '4.0.18', NULL, NULL),
(109, 'pos_version', '0', NULL, NULL),
(110, 'android_app_link', '#', NULL, NULL),
(111, 'iphone_app_link', '#', NULL, NULL),
(112, 'about_content', 'Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum', NULL, '2021-04-13 06:24:20'),
(113, 'contact_content', 'Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum', NULL, '2021-04-13 06:24:20'),
(114, 'contents', NULL, NULL, NULL),
(115, 'fb_redirect_url', 'http://YOUR_DOMAIN_NAME/login/facebook/callback', NULL, '2019-11-01 01:28:53'),
(116, 'google_client_id', 'GOOGLE_CLIENT_ID', NULL, '2019-11-01 01:28:36'),
(117, 'google_client_secret', 'GOOGLE_SECRET_KEY', NULL, '2019-11-01 01:28:36'),
(118, 'google_redirect_url', 'http://YOUR_DOMAIN_NAME/login/google/callback', NULL, '2019-11-01 01:28:36'),
(119, 'newsletter', '0', NULL, '2019-11-01 01:28:36'),
(120, 'allow_cookies', '0', NULL, '2021-04-13 06:24:20'),
(121, 'card_style', '1', NULL, '2019-11-01 01:28:36'),
(122, 'banner_style', '1', NULL, '2019-11-01 01:28:36'),
(123, 'mail_chimp_api', '', NULL, '2019-11-01 01:28:36'),
(124, 'mail_chimp_list_id', '', NULL, '2019-11-01 01:28:36'),
(125, 'newsletter_image', 'images/media/2019/10/newsletter.jpg', NULL, '2019-11-01 01:28:36'),
(126, 'instauserid', '', NULL, '2019-11-01 01:28:36'),
(127, 'web_card_style', '1', NULL, '2019-11-01 01:28:36'),
(139, 'free_cod_value', '2000', NULL, '2022-05-05 19:06:48'),
(138, 'cod_charge_value', '40', NULL, '2022-05-05 19:06:48'),
(137, 'check_for_pincode', '0', NULL, '2021-10-23 07:28:16'),
(136, 'welcome_store_text', '', NULL, '2022-05-05 19:06:49'),
(135, 'special_product_text', '', NULL, '2022-05-05 19:06:49'),
(134, 'flash_sale_text', '', NULL, '2022-05-05 19:06:49'),
(133, 'new_arrival_text', '', NULL, '2022-05-05 19:06:49'),
(132, 'top_selling_text', '', NULL, '2022-05-05 19:06:49'),
(131, 'product_category_text', '', NULL, '2022-05-05 19:06:49'),
(130, 'show_upload_logo', '1', NULL, '2022-05-05 19:06:48'),
(129, 'google_captcha_secret', '6Le3rP0bAAAAAC-wp7TH19CkHZmRdVC63cl0z6Eh', NULL, '2022-05-05 19:06:48'),
(128, 'google_captcha_key', '6Le3rP0bAAAAAHHIyFn3k0UyJFO_WCuOIts7IHwQ', NULL, '2022-05-05 19:06:48');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_description`
--

DROP TABLE IF EXISTS `shipping_description`;
CREATE TABLE IF NOT EXISTS `shipping_description` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `table_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sub_labels` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shipping_description`
--

INSERT INTO `shipping_description` (`id`, `name`, `language_id`, `table_name`, `sub_labels`) VALUES
(1, 'Free Shipping', 1, 'free_shipping', ''),
(4, 'Local Pickup', 1, 'local_pickup', ''),
(7, 'Flat Rate', 1, 'flate_rate', ''),
(10, 'UPS Shipping', 1, 'ups_shipping', '{\"nextDayAir\":\"Next Day Air\",\"secondDayAir\":\"2nd Day Air\",\"ground\":\"Ground\",\"threeDaySelect\":\"3 Day Select\",\"nextDayAirSaver\":\"Next Day AirSaver\",\"nextDayAirEarlyAM\":\"Next Day Air Early A.M.\",\"secondndDayAirAM\":\"2nd Day Air A.M.\"}'),
(13, 'Shipping Price', 1, 'shipping_by_weight', '');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_methods`
--

DROP TABLE IF EXISTS `shipping_methods`;
CREATE TABLE IF NOT EXISTS `shipping_methods` (
  `shipping_methods_id` int(11) NOT NULL AUTO_INCREMENT,
  `methods_type_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `table_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`shipping_methods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shipping_methods`
--

INSERT INTO `shipping_methods` (`shipping_methods_id`, `methods_type_link`, `isDefault`, `status`, `table_name`) VALUES
(1, 'upsShipping', 0, 1, 'ups_shipping'),
(2, 'freeShipping', 0, 0, 'free_shipping'),
(3, 'localPickup', 0, 0, 'local_pickup'),
(4, 'flateRate', 0, 1, 'flate_rate'),
(5, 'shippingByWeight', 1, 1, 'shipping_by_weight');

-- --------------------------------------------------------

--
-- Table structure for table `sliders_images`
--

DROP TABLE IF EXISTS `sliders_images`;
CREATE TABLE IF NOT EXISTS `sliders_images` (
  `sliders_id` int(11) NOT NULL AUTO_INCREMENT,
  `sliders_title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `sliders_url` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `carousel_id` int(11) DEFAULT NULL,
  `sliders_image` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `sliders_group` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `sliders_html_text` text COLLATE utf8_unicode_ci NOT NULL,
  `expires_date` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `type` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `languages_id` int(11) NOT NULL,
  PRIMARY KEY (`sliders_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders_images`
--

INSERT INTO `sliders_images` (`sliders_id`, `sliders_title`, `sliders_url`, `carousel_id`, `sliders_image`, `sliders_group`, `sliders_html_text`, `expires_date`, `date_added`, `status`, `type`, `date_status_change`, `languages_id`) VALUES
(1, 'For Full Page Slider', 'boy-s-clothing', 5, '441', '', '', '2022-07-08 00:00:00', '2020-04-01 14:30:30', 1, 'category', '2020-04-01 14:30:30', 1),
(2, 'For Full Page Slider', 'women-s-winter-wear', 5, '440', '', '', '2022-04-01 00:00:00', '2020-04-01 14:32:00', 1, 'category', '2020-04-01 14:32:00', 1),
(3, 'For Full Page Slider', 'men-polo-casual-shirt', 5, '439', '', '', '2022-09-18 00:00:00', '2020-04-01 14:32:47', 1, 'product', '2020-04-01 14:32:47', 1),
(4, 'For full screen slider', 'fashion-plaid-boy-clothing-set', 1, '433', '', '', '2022-07-15 00:00:00', '2020-04-01 14:38:20', 1, 'product', '2020-04-01 14:38:20', 1),
(5, 'For full screen slider', '', 1, '434', '', '', '2022-08-14 00:00:00', '2020-04-01 14:38:55', 1, 'topseller', '2020-04-01 14:38:55', 1),
(6, 'For full screen slider', 'women-magnet-buckle-quartz-watch', 1, '435', '', '', '2030-01-30 00:00:00', '2020-04-01 14:39:42', 1, 'product', '2020-04-01 14:39:42', 1),
(7, 'Banner with navigation', 'casual-tracksuit-children-boy', 2, '430', '', '', '2022-11-19 00:00:00', '2020-04-01 14:57:15', 1, 'product', '2020-04-01 14:57:15', 1),
(8, 'Banner with navigation', 'casual-breathable-outdoor-kids-sneakers', 2, '431', '', '', '2021-07-14 00:00:00', '2020-04-01 14:58:21', 1, 'product', '2020-04-01 14:58:21', 1),
(9, 'dad', 'casual-tracksuit-children-boy', 2, '432', '', '', '2020-06-24 00:00:00', '2019-09-27 10:21:44', 1, 'product', '2019-09-27 10:21:44', 1),
(10, 'Banner Right With Thumb', 'men-polo-casual-shirt', 3, '436', '', '', '2022-10-20 00:00:00', '2020-04-01 14:44:42', 1, 'product', '2020-04-01 14:44:42', 1),
(11, 'Banner Right With Thumb', 'men-s-cotton-classic-baseball-cap', 3, '437', '', '', '2022-07-15 00:00:00', '2020-04-01 14:45:38', 1, 'product', '2020-04-01 14:45:38', 1),
(12, 'Banner Right With Thumb', 'carrot-fitt-jeans', 3, '438', '', '', '2022-07-15 00:00:00', '2020-04-01 14:46:15', 1, 'product', '2020-04-01 14:46:15', 1),
(13, 'Banner Left With Thumb', 'men-s-cotton-classic-baseball-cap', 4, '439', '', '', '2021-06-15 00:00:00', '2020-04-01 14:47:32', 1, 'product', '2020-04-01 14:47:32', 1),
(14, 'Banner Left With Thumb', 'casual-tracksuit-children-boy', 4, '440', '', '', '2022-10-25 00:00:00', '2020-04-01 14:54:45', 1, 'product', '2020-04-01 14:54:45', 1),
(15, 'Banner Left With Thumb', 'casual-tracksuit-children-boy', 4, '441', '', '', '2022-07-07 00:00:00', '2020-04-01 14:55:40', 1, 'product', '2020-04-01 14:55:40', 1),
(17, 'ewgrege', '', 1, '454', '', '', '2020-10-30 00:00:00', '2019-10-01 13:44:55', 1, 'product', NULL, 4),
(18, 'frgergege', '', 1, '455', '', '', '2021-02-28 00:00:00', '2019-10-01 13:47:26', 1, 'product', NULL, 4),
(19, 'Full screen slider', 'casual-tracksuit-children-boy', 1, '453', '', '', '2021-04-30 00:00:00', '2019-10-01 13:49:35', 1, 'product', NULL, 4),
(20, 'Full Screen Slider (1600x420)', '', 1, '553', '', '', '2021-09-30 00:00:00', '2021-08-28 15:31:17', 1, 'special', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `specials`
--

DROP TABLE IF EXISTS `specials`;
CREATE TABLE IF NOT EXISTS `specials` (
  `specials_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `specials_new_products_price` decimal(15,2) NOT NULL,
  `specials_date_added` int(11) NOT NULL,
  `specials_last_modified` int(11) NOT NULL,
  `expires_date` int(11) NOT NULL,
  `date_status_change` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`specials_id`),
  KEY `idx_specials_products_id` (`products_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_class`
--

DROP TABLE IF EXISTS `tax_class`;
CREATE TABLE IF NOT EXISTS `tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_title` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `tax_class_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

DROP TABLE IF EXISTS `tax_rates`;
CREATE TABLE IF NOT EXISTS `tax_rates` (
  `tax_rates_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_zone_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_priority` int(11) DEFAULT 1,
  `tax_rate` decimal(7,2) NOT NULL,
  `tax_description` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`tax_rates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `top_offers`
--

DROP TABLE IF EXISTS `top_offers`;
CREATE TABLE IF NOT EXISTS `top_offers` (
  `top_offers_id` int(11) NOT NULL AUTO_INCREMENT,
  `top_offers_text` text COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`top_offers_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `top_offers`
--

INSERT INTO `top_offers` (`top_offers_id`, `top_offers_text`, `language_id`, `created_at`, `updated_at`) VALUES
(1, '<div class=\\\"pro-info\\\">\r\n                Get<strong> UPTO 40% OFF </strong>on your 1st order\r\n                <div class=\\\"pro-link-dropdown js-toppanel-link-dropdown\\\">\r\n                  <a href=\\\"shttp://fashion.devakya.com/shop\\\" class=\\\"pro-dropdown-toggle\\\">\r\n                    More details\r\n                  </a>\r\n                  \r\n                </div>\r\n            </div>', 1, '2020-02-03 23:44:16', '2021-04-13 06:46:01'),
(2, '<div class=\\\"pro-info\\\">\r\n                Get<strong> UPTO 40% OFF </strong>on your 1st order\r\n                <div class=\\\"pro-link-dropdown js-toppanel-link-dropdown\\\">\r\n                  <a href=\\\"shttp://fashion.devakya.com/shop\\\" class=\\\"pro-dropdown-toggle\\\">\r\n                    More details\r\n                  </a>\r\n                  \r\n                </div>\r\n            </div>', 1, '2020-02-03 23:44:16', '2021-04-13 06:46:01');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
CREATE TABLE IF NOT EXISTS `units` (
  `unit_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `is_active` tinyint(1) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`unit_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units_descriptions`
--

DROP TABLE IF EXISTS `units_descriptions`;
CREATE TABLE IF NOT EXISTS `units_descriptions` (
  `units_description_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `units_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `languages_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`units_description_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ups_shipping`
--

DROP TABLE IF EXISTS `ups_shipping`;
CREATE TABLE IF NOT EXISTS `ups_shipping` (
  `ups_id` int(11) NOT NULL AUTO_INCREMENT,
  `pickup_method` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `isDisplayCal` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `serviceType` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `shippingEnvironment` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `access_key` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `person_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `address_line_1` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `address_line_2` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `post_code` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `no_of_package` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `parcel_height` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `parcel_width` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ups_shipping`
--

INSERT INTO `ups_shipping` (`ups_id`, `pickup_method`, `isDisplayCal`, `serviceType`, `shippingEnvironment`, `user_name`, `access_key`, `password`, `person_name`, `company_name`, `phone_number`, `address_line_1`, `address_line_2`, `country`, `state`, `post_code`, `city`, `no_of_package`, `parcel_height`, `parcel_width`, `title`) VALUES
(1, '07', '', 'US_01,US_02,US_03,US_12,US_13,US_14,US_59', '0', 'nyblueprint', 'FCD7C8F94CB5EF46', 'delfia11', '', '', '', 'D Ground', '', 'US', 'NY', '10312', 'New York City', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `user_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_address_id` int(11) NOT NULL DEFAULT 0,
  `country_code` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `is_seen` tinyint(1) NOT NULL DEFAULT 0,
  `phone_verified` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_id_tiwilo` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` varchar(33) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `user_name`, `first_name`, `last_name`, `gender`, `default_address_id`, `country_code`, `phone`, `email`, `password`, `avatar`, `status`, `is_seen`, `phone_verified`, `remember_token`, `auth_id_tiwilo`, `dob`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'super', 'admin', NULL, 0, NULL, NULL, 'mitalimehta287@gmail.com', '$2y$10$SQl72E4WB8UW8kOruFhrHuKbXpOdss1JoNADDrzgQBxUINLRxjOWO', NULL, '1', 0, NULL, NULL, NULL, NULL, '2021-03-13 04:37:49', '2021-03-13 04:37:49'),
(2, 14, 'admin_admin1615717283', 'admin', 'admin', NULL, 0, NULL, '1234567890', 'devadmin@gmail.com', '$2y$10$h4Zyg2HUn74AXoJswJSZ0uHQrGMRU5OyGGcOLf3hOts0mCfh5jA9u', '', '1', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2, NULL, 'mitali', 'mehta', '0', 0, NULL, NULL, 'mitali.sixs1@gmail.com', '$2y$10$t84ttqN3pAGLfQd/h88aduD5Z/BKSOpFsCAX9jY/GbMipDR4Hcs/e', NULL, '1', 1, NULL, NULL, NULL, NULL, '2021-03-14 06:03:24', '2021-03-14 06:03:24'),
(5, 2, NULL, 'bhogilal', 'Doe', NULL, 0, NULL, '01234569871', 'sxcvxc@gmail.com', '$2y$10$8pj2S2GrKQciYR/jiEKzju5gR0fZz6FozENHI/Ed9RDUEB2TZUFJe', NULL, '1', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 2, NULL, 'Ankit', 'Patel', '0', 0, NULL, NULL, 'websiteneetai@gmail.com', '$2y$10$NQKjUO9Oan5CRkFIvCwEauNgMA8v6fdyeaH9M.Qu17LlQTnBU2QOy', NULL, '1', 1, NULL, NULL, NULL, NULL, '2021-03-20 03:04:57', '2021-03-20 03:04:57'),
(7, 2, NULL, 'bhogilal', 'Doe', '0', 0, NULL, NULL, '160303105124@paruluniversity.ac.in', '$2y$10$MtNh0KmB0lybg8lGoqQUFe7jEeX9XCbr54AWDtnsncUwIsqKUu3Xq', NULL, '1', 0, NULL, NULL, NULL, NULL, '2021-03-22 05:57:15', '2021-03-22 05:57:15'),
(8, 2, NULL, 'Arth', 'Patel', NULL, 0, NULL, '8200269556', 'arthpatel896@gmail.com', '$2y$10$lQvVDtaWapaAgVvwEI/C0u/4ndAGiEtYvv1imKnER7.PV8J3TswbO', NULL, '1', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 2, NULL, 'bhavin', 'velani', '0', 0, NULL, '9426265833', 'yesbhavin@gmail.com', '$2y$10$xJJC6fBwuA7m3GcJ/IuHDeqxPDPdqSfo0xTNs60ZYB4nvveTfsLuq', NULL, '1', 1, NULL, NULL, NULL, NULL, '2021-03-24 06:26:35', '2021-03-24 07:23:36'),
(10, 2, NULL, 'qqaa', 'aaaa', NULL, 0, NULL, '1234555', 'ywss!@dx.com', '$2y$10$B1UAjG9F0/sPwAVAUcxHp.FBCZB15ePrUoFDA6YqFud/rGcRt1WrO', NULL, '1', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 2, NULL, 'Vishal', 'Patel', '1', 0, NULL, 'devadmin@gmail.com', 'vishalpatel640640@gmail.com', '$2y$10$oTXHe.yI18oGP/pw3PDPhOayGe4NzVX4wGL/qF3jTntT5URgmt1PO', NULL, '1', 1, NULL, NULL, NULL, NULL, '2021-05-14 22:45:06', '2021-08-26 00:57:53'),
(12, 2, NULL, 'MOBIN', 'VORA', NULL, 0, NULL, '9*91919196', '12A21S2', '$2y$10$hogr6TO.ffx93nNtPrfbB.NYgfjiAw5pJQv4FC8wOJio24CpiFnl6', NULL, '1', 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_to_address`
--

DROP TABLE IF EXISTS `user_to_address`;
CREATE TABLE IF NOT EXISTS `user_to_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `address_book_id` int(11) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_to_address`
--

INSERT INTO `user_to_address` (`id`, `user_id`, `address_book_id`, `is_default`) VALUES
(2, 9, 2, 1),
(3, 9, 3, 0),
(4, 11, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

DROP TABLE IF EXISTS `user_types`;
CREATE TABLE IF NOT EXISTS `user_types` (
  `user_types_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_types_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`user_types_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`user_types_id`, `user_types_name`, `created_at`, `updated_at`, `isActive`) VALUES
(1, 'Super Admin', 1534774230, NULL, 1),
(2, 'Customers', 1534777027, NULL, 1),
(3, 'Vendors', 1538390209, NULL, 1),
(4, 'Delivery Guy', 1542965906, NULL, 1),
(11, 'Admin', 1542965906, NULL, 1),
(12, 'Manager', 1542965906, NULL, 1),
(13, 'Data Entry', 1542965906, NULL, 1),
(14, 'SubAdmin', 1615717331, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `whos_online`
--

DROP TABLE IF EXISTS `whos_online`;
CREATE TABLE IF NOT EXISTS `whos_online` (
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `full_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `session_id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `time_entry` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `time_last_click` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `last_page_url` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

DROP TABLE IF EXISTS `zones`;
CREATE TABLE IF NOT EXISTS `zones` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_country_id` int(11) NOT NULL,
  `zone_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zone_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`zone_id`),
  KEY `idx_zones_country_id` (`zone_country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=218 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`zone_id`, `zone_country_id`, `zone_code`, `zone_name`) VALUES
(1, 223, 'AL', 'Alabama'),
(2, 223, 'AK', 'Alaska'),
(3, 223, 'AS', 'American Samoa'),
(4, 223, 'AZ', 'Arizona'),
(5, 223, 'AR', 'Arkansas'),
(6, 223, 'AF', 'Armed Forces Africa'),
(7, 223, 'AA', 'Armed Forces Americas'),
(8, 223, 'AC', 'Armed Forces Canada'),
(9, 223, 'AE', 'Armed Forces Europe'),
(10, 223, 'AM', 'Armed Forces Middle East'),
(11, 223, 'AP', 'Armed Forces Pacific'),
(12, 223, 'CA', 'California'),
(13, 223, 'CO', 'Colorado'),
(14, 223, 'CT', 'Connecticut'),
(15, 223, 'DE', 'Delaware'),
(16, 223, 'DC', 'District of Columbia'),
(17, 223, 'FM', 'Federated States Of Micronesia'),
(18, 223, 'FL', 'Florida'),
(19, 223, 'GA', 'Georgia'),
(20, 223, 'GU', 'Guam'),
(21, 223, 'HI', 'Hawaii'),
(22, 223, 'ID', 'Idaho'),
(23, 223, 'IL', 'Illinois'),
(24, 223, 'IN', 'Indiana'),
(25, 223, 'IA', 'Iowa'),
(26, 223, 'KS', 'Kansas'),
(27, 223, 'KY', 'Kentucky'),
(28, 223, 'LA', 'Louisiana'),
(29, 223, 'ME', 'Maine'),
(30, 223, 'MH', 'Marshall Islands'),
(31, 223, 'MD', 'Maryland'),
(32, 223, 'MA', 'Massachusetts'),
(33, 223, 'MI', 'Michigan'),
(34, 223, 'MN', 'Minnesota'),
(35, 223, 'MS', 'Mississippi'),
(36, 223, 'MO', 'Missouri'),
(37, 223, 'MT', 'Montana'),
(38, 223, 'NE', 'Nebraska'),
(39, 223, 'NV', 'Nevada'),
(40, 223, 'NH', 'New Hampshire'),
(41, 223, 'NJ', 'New Jersey'),
(42, 223, 'NM', 'New Mexico'),
(43, 223, 'NY', 'New York'),
(44, 223, 'NC', 'North Carolina'),
(45, 223, 'ND', 'North Dakota'),
(46, 223, 'MP', 'Northern Mariana Islands'),
(47, 223, 'OH', 'Ohio'),
(48, 223, 'OK', 'Oklahoma'),
(49, 223, 'OR', 'Oregon'),
(50, 223, 'PW', 'Palau'),
(51, 223, 'PA', 'Pennsylvania'),
(52, 223, 'PR', 'Puerto Rico'),
(53, 223, 'RI', 'Rhode Island'),
(54, 223, 'SC', 'South Carolina'),
(55, 223, 'SD', 'South Dakota'),
(56, 223, 'TN', 'Tennessee'),
(57, 223, 'TX', 'Texas'),
(58, 223, 'UT', 'Utah'),
(59, 223, 'VT', 'Vermont'),
(60, 223, 'VI', 'Virgin Islands'),
(61, 223, 'VA', 'Virginia'),
(62, 223, 'WA', 'Washington'),
(63, 223, 'WV', 'West Virginia'),
(64, 223, 'WI', 'Wisconsin'),
(65, 223, 'WY', 'Wyoming'),
(66, 38, 'AB', 'Alberta'),
(67, 38, 'BC', 'British Columbia'),
(68, 38, 'MB', 'Manitoba'),
(69, 38, 'NF', 'Newfoundland'),
(70, 38, 'NB', 'New Brunswick'),
(71, 38, 'NS', 'Nova Scotia'),
(72, 38, 'NT', 'Northwest Territories'),
(73, 38, 'NU', 'Nunavut'),
(74, 38, 'ON', 'Ontario'),
(75, 38, 'PE', 'Prince Edward Island'),
(76, 38, 'QC', 'Quebec'),
(77, 38, 'SK', 'Saskatchewan'),
(78, 38, 'YT', 'Yukon Territory'),
(79, 81, 'NDS', 'Niedersachsen'),
(80, 81, 'BAW', 'Baden-Württemberg'),
(81, 81, 'BAY', 'Bayern'),
(82, 81, 'BER', 'Berlin'),
(83, 81, 'BRG', 'Brandenburg'),
(84, 81, 'BRE', 'Bremen'),
(85, 81, 'HAM', 'Hamburg'),
(86, 81, 'HES', 'Hessen'),
(87, 81, 'MEC', 'Mecklenburg-Vorpommern'),
(88, 81, 'NRW', 'Nordrhein-Westfalen'),
(89, 81, 'RHE', 'Rheinland-Pfalz'),
(90, 81, 'SAR', 'Saarland'),
(91, 81, 'SAS', 'Sachsen'),
(92, 81, 'SAC', 'Sachsen-Anhalt'),
(93, 81, 'SCN', 'Schleswig-Holstein'),
(94, 81, 'THE', 'Thüringen'),
(95, 14, 'WI', 'Wien'),
(96, 14, 'NO', 'Niederösterreich'),
(97, 14, 'OO', 'Oberösterreich'),
(98, 14, 'SB', 'Salzburg'),
(99, 14, 'KN', 'Kärnten'),
(100, 14, 'ST', 'Steiermark'),
(101, 14, 'TI', 'Tirol'),
(102, 14, 'BL', 'Burgenland'),
(103, 14, 'VB', 'Voralberg'),
(104, 204, 'AG', 'Aargau'),
(105, 204, 'AI', 'Appenzell Innerrhoden'),
(106, 204, 'AR', 'Appenzell Ausserrhoden'),
(107, 204, 'BE', 'Bern'),
(108, 204, 'BL', 'Basel-Landschaft'),
(109, 204, 'BS', 'Basel-Stadt'),
(110, 204, 'FR', 'Freiburg'),
(111, 204, 'GE', 'Genf'),
(112, 204, 'GL', 'Glarus'),
(113, 204, 'JU', 'Graubünden'),
(114, 204, 'JU', 'Jura'),
(115, 204, 'LU', 'Luzern'),
(116, 204, 'NE', 'Neuenburg'),
(117, 204, 'NW', 'Nidwalden'),
(118, 204, 'OW', 'Obwalden'),
(119, 204, 'SG', 'St. Gallen'),
(120, 204, 'SH', 'Schaffhausen'),
(121, 204, 'SO', 'Solothurn'),
(122, 204, 'SZ', 'Schwyz'),
(123, 204, 'TG', 'Thurgau'),
(124, 204, 'TI', 'Tessin'),
(125, 204, 'UR', 'Uri'),
(126, 204, 'VD', 'Waadt'),
(127, 204, 'VS', 'Wallis'),
(128, 204, 'ZG', 'Zug'),
(129, 204, 'ZH', 'Zürich'),
(130, 195, 'A Coruña', 'A Coruña'),
(131, 195, 'Alava', 'Alava'),
(132, 195, 'Albacete', 'Albacete'),
(133, 195, 'Alicante', 'Alicante'),
(134, 195, 'Almeria', 'Almeria'),
(135, 195, 'Asturias', 'Asturias'),
(136, 195, 'Avila', 'Avila'),
(137, 195, 'Badajoz', 'Badajoz'),
(138, 195, 'Baleares', 'Baleares'),
(139, 195, 'Barcelona', 'Barcelona'),
(140, 195, 'Burgos', 'Burgos'),
(141, 195, 'Caceres', 'Caceres'),
(142, 195, 'Cadiz', 'Cadiz'),
(143, 195, 'Cantabria', 'Cantabria'),
(144, 195, 'Castellon', 'Castellon'),
(145, 195, 'Ceuta', 'Ceuta'),
(146, 195, 'Ciudad Real', 'Ciudad Real'),
(147, 195, 'Cordoba', 'Cordoba'),
(148, 195, 'Cuenca', 'Cuenca'),
(149, 195, 'Girona', 'Girona'),
(150, 195, 'Granada', 'Granada'),
(151, 195, 'Guadalajara', 'Guadalajara'),
(152, 195, 'Guipuzcoa', 'Guipuzcoa'),
(153, 195, 'Huelva', 'Huelva'),
(154, 195, 'Huesca', 'Huesca'),
(155, 195, 'Jaen', 'Jaen'),
(156, 195, 'La Rioja', 'La Rioja'),
(157, 195, 'Las Palmas', 'Las Palmas'),
(158, 195, 'Leon', 'Leon'),
(159, 195, 'Lleida', 'Lleida'),
(160, 195, 'Lugo', 'Lugo'),
(161, 195, 'Madrid', 'Madrid'),
(162, 195, 'Malaga', 'Malaga'),
(163, 195, 'Melilla', 'Melilla'),
(164, 195, 'Murcia', 'Murcia'),
(165, 195, 'Navarra', 'Navarra'),
(166, 195, 'Ourense', 'Ourense'),
(167, 195, 'Palencia', 'Palencia'),
(168, 195, 'Pontevedra', 'Pontevedra'),
(169, 195, 'Salamanca', 'Salamanca'),
(170, 195, 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 195, 'Segovia', 'Segovia'),
(172, 195, 'Sevilla', 'Sevilla'),
(173, 195, 'Soria', 'Soria'),
(174, 195, 'Tarragona', 'Tarragona'),
(175, 195, 'Teruel', 'Teruel'),
(176, 195, 'Toledo', 'Toledo'),
(177, 195, 'Valencia', 'Valencia'),
(178, 195, 'Valladolid', 'Valladolid'),
(179, 195, 'Vizcaya', 'Vizcaya'),
(180, 195, 'Zamora', 'Zamora'),
(181, 195, 'Zaragoza', 'Zaragoza'),
(182, 99, NULL, 'ANDAMAN AND NICOBAR ISLANDS'),
(183, 99, NULL, 'ANDHRA PRADESH'),
(184, 99, NULL, 'ARUNACHAL PRADESH'),
(185, 99, NULL, 'ASSAM'),
(186, 99, NULL, 'BIHAR'),
(187, 99, NULL, 'CHATTISGARH'),
(188, 99, NULL, 'CHANDIGARH'),
(189, 99, NULL, 'DAMAN AND DIU'),
(190, 99, NULL, 'DELHI'),
(191, 99, NULL, 'DADRA AND NAGAR HAVELI'),
(192, 99, NULL, 'GOA'),
(193, 99, NULL, 'GUJARAT'),
(194, 99, NULL, 'HIMACHAL PRADESH'),
(195, 99, NULL, 'HARYANA'),
(196, 99, NULL, 'JAMMU AND KASHMIR'),
(197, 99, NULL, 'JHARKHAND'),
(198, 99, NULL, 'KERALA'),
(199, 99, NULL, 'KARNATAKA'),
(200, 99, NULL, 'LAKSHADWEEP'),
(201, 99, NULL, 'MEGHALAYA'),
(202, 99, NULL, 'MAHARASHTRA'),
(203, 99, NULL, 'MANIPUR'),
(204, 99, NULL, 'MADHYA PRADESH'),
(205, 99, NULL, 'MIZORAM'),
(206, 99, NULL, 'NAGALAND'),
(207, 99, NULL, 'ORISSA'),
(208, 99, NULL, 'PUNJAB'),
(209, 99, NULL, 'PONDICHERRY'),
(210, 99, NULL, 'RAJASTHAN'),
(211, 99, NULL, 'SIKKIM'),
(212, 99, NULL, 'TAMIL NADU'),
(213, 99, NULL, 'TRIPURA'),
(214, 99, NULL, 'UTTARAKHAND'),
(215, 99, NULL, 'UTTAR PRADESH'),
(216, 99, NULL, 'WEST BENGAL'),
(217, 99, NULL, 'TELANGANA');

-- --------------------------------------------------------

--
-- Table structure for table `zones_to_geo_zones`
--

DROP TABLE IF EXISTS `zones_to_geo_zones`;
CREATE TABLE IF NOT EXISTS `zones_to_geo_zones` (
  `association_id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_country_id` int(11) NOT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `geo_zone_id` int(11) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`association_id`),
  KEY `idx_zones_to_geo_zones_country_id` (`zone_country_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
