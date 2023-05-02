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
-- Database: `jwellery`
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `address_book`
--

INSERT INTO `address_book` (`address_book_id`, `user_id`, `entry_gender`, `customers_id`, `entry_company`, `entry_firstname`, `entry_lastname`, `entry_street_address`, `entry_suburb`, `entry_postcode`, `entry_city`, `entry_state`, `entry_country_id`, `entry_zone_id`, `entry_latitude`, `entry_longitude`, `entry_phone`) VALUES
(1, 7, NULL, 7, NULL, 'bhogilal', 'Doe', 'chaluji pandeyji', NULL, '000000', 'navri', NULL, 99, -1, NULL, NULL, ''),
(2, 3, '', 3, '', 'Mitali', 'Mehta', 'courtyard', '', '364004', 'bhavnagar', '', 99, 193, NULL, NULL, '9898787879');

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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_image`, `categories_icon`, `parent_id`, `sort_order`, `date_added`, `last_modified`, `categories_slug`, `categories_status`, `created_at`, `updated_at`) VALUES
(1, '708', '708', 0, NULL, NULL, NULL, 'womens', 1, '2021-04-05 20:14:50', '2021-04-06 06:04:08'),
(2, '708', '681', 1, NULL, NULL, NULL, 'platinum', 1, '2021-04-05 20:14:50', '2021-04-06 06:09:29'),
(3, '707', '681', 2, NULL, NULL, NULL, 'ring', 1, '2021-04-05 20:14:50', '2021-04-06 06:05:47'),
(4, '708', '702', 1, NULL, NULL, NULL, 'diamond', 1, '2021-04-05 20:14:50', '2021-04-06 06:06:13'),
(5, '708', '682', 4, NULL, NULL, NULL, 'hoop-earrings', 1, '2021-04-05 20:14:50', '2021-04-06 06:06:47'),
(6, '708', '683', 4, NULL, NULL, NULL, 'solitaire', 1, '2021-04-05 20:14:50', '2021-04-06 06:07:19'),
(7, '708', '688', 1, NULL, NULL, NULL, 'gold', 1, '2021-04-05 20:14:51', '2021-04-06 06:07:49'),
(8, '707', '684', 7, NULL, NULL, NULL, 'pendant-earrings', 1, '2021-04-05 20:14:51', '2021-04-06 06:10:24'),
(9, '707', '707', 0, NULL, NULL, NULL, 'mens', 1, '2021-04-05 20:14:51', '2021-04-06 06:01:15'),
(10, '707', '685', 9, NULL, NULL, NULL, 'gold-1', 1, '2021-04-05 20:14:51', '2021-04-06 06:21:15'),
(11, '707', '683', 10, NULL, NULL, NULL, 'pendant', 1, '2021-04-05 20:14:51', '2021-04-06 06:11:58'),
(12, '708', '686', 7, NULL, NULL, NULL, 'earrings', 1, '2021-04-05 20:14:51', '2021-04-06 06:12:32'),
(13, '708', '688', 2, NULL, NULL, NULL, 'mangalsutra-pendant', 1, '2021-04-05 20:14:52', '2021-04-06 06:13:01');

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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories_description`
--

INSERT INTO `categories_description` (`categories_description_id`, `categories_id`, `language_id`, `categories_name`) VALUES
(1, 1, 1, 'women'),
(2, 2, 1, 'platinum'),
(3, 3, 1, 'ring'),
(4, 4, 1, 'diamond'),
(5, 5, 1, 'hoop earrings'),
(6, 6, 1, 'solitaire'),
(7, 7, 1, 'gold'),
(8, 8, 1, 'pendant earrings'),
(9, 9, 1, 'mens'),
(10, 10, 1, 'gold'),
(11, 11, 1, 'pendant'),
(12, 12, 1, 'earrings'),
(13, 13, 1, 'mangalsutra pendant');

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
(3, '3', '/shop', '710', '2021-04-06 12:27:03', 1, 1, '3'),
(4, '4', '/shop', '711', '2021-04-06 12:31:58', 1, 1, '4'),
(5, '5', '/shop', '712', '2021-04-06 12:35:22', 1, 1, '5'),
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(1, 1, 9, 1, 1, 1, '[{\"id\":1,\"name\":\"Banner Section\",\"order\":1,\"file_name\":\"banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/banner_section.jpg\",\"alt\":\"Banner Section\"},{\"id\":10,\"name\":\"Second Ad Section\",\"order\":2,\"file_name\":\"sec_ad_banner\",\"status\":1,\"image\":\"images\\/prototypes\\/sec_ad_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/sec_ad_section-cross.jpg\",\"alt\":\"Second Ad Section\"},{\"id\":5,\"name\":\"Categories\",\"order\":3,\"file_name\":\"categories\",\"status\":1,\"image\":\"images\\/prototypes\\/categories.jpg\",\"disabled_image\":\"images\\/prototypes\\/categories-cross.jpg\",\"alt\":\"Categories\"},{\"id\":9,\"name\":\"Top Selling\",\"order\":4,\"file_name\":\"top\",\"status\":1,\"image\":\"images\\/prototypes\\/top.jpg\",\"disabled_image\":\"images\\/prototypes\\/top-cross.jpg\",\"alt\":\"Top Selling\"},{\"id\":8,\"name\":\"Newest Product Section\",\"order\":5,\"file_name\":\"newest_product\",\"status\":1,\"image\":\"images\\/prototypes\\/newest_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/newest_product-cross.jpg\",\"alt\":\"Newest Product Section\"},{\"id\":12,\"name\":\"Banner 2 Section\",\"order\":6,\"file_name\":\"banner_two_section\",\"status\":1,\"image\":\"images\\/prototypes\\/sec_ad_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/sec_ad_section-cross.jpg\",\"alt\":\"Banner 2 Section\"},{\"id\":11,\"name\":\"Tab Products View\",\"order\":7,\"file_name\":\"tab\",\"status\":1,\"image\":\"images\\/prototypes\\/tab.jpg\",\"disabled_image\":\"images\\/prototypes\\/tab-cross.jpg\",\"alt\":\"Tab Products View\"},{\"id\":3,\"name\":\"Special Products Section\",\"order\":8,\"file_name\":\"special\",\"status\":1,\"image\":\"images\\/prototypes\\/special_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/special_product-cross.jpg\",\"alt\":\"Special Products Section\"},{\"id\":4,\"name\":\"Ad Section\",\"order\":9,\"file_name\":\"ad_banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/ad_banner_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/ad_banner_section-cross.jpg\",\"alt\":\"Ad Section\"},{\"id\":2,\"name\":\"Flash Sale Section\",\"order\":10,\"file_name\":\"flash_sale_section\",\"status\":1,\"image\":\"images\\/prototypes\\/flash_sale_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/flash_sale_section-cross.jpg\",\"alt\":\"Flash Sale Section\"},{\"id\":6,\"name\":\"Blog Section\",\"order\":11,\"file_name\":\"blog_section\",\"status\":0,\"image\":\"images\\/prototypes\\/blog_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/blog_section-cross.jpg\",\"alt\":\"Blog Section\"},{\"id\":7,\"name\":\"Info Boxes\",\"order\":12,\"file_name\":\"info_boxes\",\"status\":1,\"image\":\"images\\/prototypes\\/info_boxes.jpg\",\"disabled_image\":\"images\\/prototypes\\/info_boxes-cross.jpg\",\"alt\":\"Info Boxes\"}]', 1, 1, 1, 1, 1, 2, 2, 1);

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
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers_basket`
--

INSERT INTO `customers_basket` (`customers_basket_id`, `customers_id`, `products_id`, `customers_basket_quantity`, `final_price`, `customers_basket_date_added`, `is_order`, `session_id`) VALUES
(1, 3, '10', 1, '28.00', '2021-03-14', 1, 'lKwHEr9QPypDe7nEWsYINKXITUrFIJ2sQwLqSHxk'),
(5, 0, '32', 1, '81.00', '2021-03-20', 0, '0RAK2DUPNHZZFpoJ61EX9VnDUWimC43CPlR7JSHi'),
(6, 4, '32', 1, '81.00', '2021-03-20', 0, '0RAK2DUPNHZZFpoJ61EX9VnDUWimC43CPlR7JSHi'),
(7, 6, '32', 1, '81.00', '2021-03-20', 0, 'SUElNHEYZbEVTY0SK5V5K9rtMAJuN4i7NxNbclBI'),
(8, 5, '32', 1, '81.00', '2021-03-20', 0, '0RAK2DUPNHZZFpoJ61EX9VnDUWimC43CPlR7JSHi'),
(9, 0, '10', 1, '28.00', '2021-03-22', 0, 'FYjUO7VFbRi2j5Z1FTa1O8C1nxCaz0XFb9auU97c'),
(16, 7, '13', 5, '34.00', '2021-03-22', 0, 'emBYHXumtkoqReWwZOTUZe0c2wPEPjioKeeq0QZA'),
(12, 0, '32', 1, '81.00', '2021-03-22', 0, 'APAUceCgRPv0Rp1zFzlmEt9Cf9sGYxHfWBOeyM53'),
(14, 7, '7', 7, '25.00', '2021-03-22', 0, 'emBYHXumtkoqReWwZOTUZe0c2wPEPjioKeeq0QZA'),
(17, 3, '7', 1, '276206.00', '2021-04-06', 1, 'xZWeMGl2yAdeySU2Z9YX7W358HK04LoOFewODgvB'),
(18, 3, '9', 1, '3000.00', '2021-04-06', 1, 'EPgKGzquHSqXOwGLSoP0yVDSHcOhk2DbnwssloIW'),
(19, 3, '9', 1, '3000.00', '2021-04-06', 1, 'EPgKGzquHSqXOwGLSoP0yVDSHcOhk2DbnwssloIW'),
(20, 0, '6', 1, '77.00', '2021-04-13', 0, 'ZHrgKmfPvt4BoP9qs8PLObxbWBUL383dXRJcBexj'),
(21, 0, '7', 1, '276206.00', '2021-04-13', 0, 'ZHrgKmfPvt4BoP9qs8PLObxbWBUL383dXRJcBexj'),
(22, 0, '7', 1, '276206.00', '2021-04-14', 0, 'k6Nvomlpr68y2R6EewyR6tn9LxSPwXewoMrSAqQn'),
(23, 0, '9', 1, '3000.00', '2021-04-24', 0, 'dqLjejqYCmuDRIHFOMSga14ECLyFLowPj3Pq6zrK'),
(24, 0, '9', 1, '3000.00', '2021-05-15', 0, 'evC8D4shDwGyIxAmHSyPfeDkTJ4jWOOwKHLPp0Nh'),
(25, 0, '9', 1, '3000.00', '2021-06-07', 0, 'tGEGd2kvi1I2JPXXbgQA2D0gpRYl96SpevAmZHct'),
(26, 0, '9', 1, '3255.00', '2021-08-04', 0, 'v2gnMVIEXAyyQ94slAnY4mD7MBDoJ7dfEw5Djjb6'),
(27, 0, '9', 1, '3255.00', '2021-08-10', 0, 'Xbi6H1Its5qR5RElVfxG3J2JmjxF5zyKBMCWRUVs'),
(28, 0, '3', 1, '137691.00', '2021-10-05', 0, 'z5GSnWNMLV3ObEUGOfMOoD5hI3v55FYfx63Yibex'),
(29, 2, '1', 1, '70277.35', '2021-10-05', 0, 'aV7LZOhasf6sTd3duHflVhjttChC6HfULMoSydnu'),
(30, 2, '9', 2, '3255.00', '2021-10-05', 0, 'aV7LZOhasf6sTd3duHflVhjttChC6HfULMoSydnu'),
(31, 0, '1', 1, '70277.35', '2021-11-15', 0, '2hVJroI0qE1wqUzKE4rmsgHIC05nKdE8gfBhckbP'),
(32, 0, '9', 1, '3255.00', '2021-12-08', 0, 'BoAOVVmbPeU3hQepNL1KH8FbW9DofZPqejnrIX2F'),
(33, 0, '3', 1, '137691.00', '2021-12-24', 0, 'Nn52rWTpEvSAfSiDw2qUxNhi0zUai3qbUXejVwvT'),
(34, 0, '9', 1, '3255.00', '2022-01-18', 0, 'YY17D2LbS9fClrp4emrXOimde5ezA8RYqqOMdoON'),
(35, 0, '7', 1, '276206.00', '2022-02-07', 0, 'PhDG8ZtlfYG7JKP8Y5mlMhwlDh6TzdVSK9lScLCt'),
(36, 0, '4', 1, '23584.00', '2022-03-22', 0, 'fMhpeNn1n3rM9mAtsN25UxGolel3FeyBvmoFjHta'),
(37, 0, '1', 1, '70277.35', '2022-11-11', 0, 'ebuUKOLCob3GuI12MwYkbluagd1JTSf5zNcGREL8'),
(40, 0, '9', 1, '3255.00', '2022-12-14', 0, '4iIueNvqZNjME08KzLisNqhVPqa19A0QHU4Ajitn'),
(39, 0, '9', 1, '3255.00', '2022-11-29', 0, 'YYSMcccS3slNkdVdDwVnpyyPCs9KrYWhtwOlIDKu'),
(42, 0, '9', 1, '3255.00', '2023-01-11', 0, 'TTJkZSB425da35GFilFj1vPfGQfuWsoBMHryrmeG'),
(43, 0, '7', 1, '276206.00', '2023-01-11', 0, 'TTJkZSB425da35GFilFj1vPfGQfuWsoBMHryrmeG'),
(44, 0, '2', 1, '0.00', '2023-03-16', 0, 'SLxYRctHzBSHhKwJD0oRaq0rEY2RLinAj9PdP083'),
(45, 0, '1', 1, '70277.35', '2023-03-16', 0, 'SLxYRctHzBSHhKwJD0oRaq0rEY2RLinAj9PdP083');

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers_basket_attributes`
--

INSERT INTO `customers_basket_attributes` (`customers_basket_attributes_id`, `customers_basket_id`, `customers_id`, `products_id`, `products_options_id`, `products_options_values_id`, `session_id`) VALUES
(2, 16, 7, '13', 2, 5, 'emBYHXumtkoqReWwZOTUZe0c2wPEPjioKeeq0QZA');

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flash_sale`
--

INSERT INTO `flash_sale` (`flash_sale_id`, `products_id`, `flash_sale_products_price`, `flash_sale_date_added`, `flash_sale_last_modified`, `flash_start_date`, `flash_expires_date`, `flash_status`, `created_at`, `updated_at`) VALUES
(1, 8, '19000.00', 0, 0, 1617693300, 1617693300, 0, '2021-04-05 20:18:42', '2021-04-05 20:20:46'),
(2, 5, '9800.00', 0, 0, 1617693300, 1617866100, 1, '2021-04-05 20:20:04', NULL),
(3, 8, '19000.00', 0, 0, 1617693300, 1617779700, 1, '2021-04-05 20:20:46', NULL);

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
(1, '', '[\n{\n\"id\": 1,\n\"name\": \"Header One\",\n\"image\": \"images/prototypes/header1.jpg\",\n\"alt\" : \"header One\" \n},\n{\n\"id\": 2,\n\"name\": \"Header Two\",\n\"image\": \"images/prototypes/header2.jpg\",\n\"alt\" : \"header Two\" \n},\n{\n\"id\": 3,\n\"name\": \"Header Three\",\n\"image\": \"images/prototypes/header3.jpg\",\n\"alt\" : \"header Three\" \n},\n{\n\"id\": 4,\n\"name\": \"Header Four\",\n\"image\": \"images/prototypes/header4.jpg\",\n\"alt\" : \"header Four\" \n},\n{\n\"id\": 5,\n\"name\": \"Header Five\",\n\"image\": \"images/prototypes/header5.jpg\",\n\"alt\" : \"header Five\" \n},\n{\n\"id\": 6,\n\"name\": \"Header Six\",\n\"image\": \"images/prototypes/header6.jpg\",\n\"alt\" : \"header Six\" \n},\n{\n\"id\": 7,\n\"name\": \"Header Seven\",\n\"image\": \"images/prototypes/header7.jpg\",\n\"alt\" : \"header Seven\" \n},\n{\n\"id\": 8,\n\"name\": \"Header Eight\",\n\"image\": \"images/prototypes/header8.jpg\",\n\"alt\" : \"header Eight\" \n},\n{\n\"id\": 9,\n\"name\": \"Header Nine\",\n\"image\": \"images/prototypes/header9.jpg\",\n\"alt\" : \"header Nine\" \n},\n{\n\"id\": 10,\n\"name\": \"Header Ten\",\n\"image\": \"images/prototypes/header10.jpg\",\n\"alt\" : \"header Ten\" \n}\n]', '[\n{\n\"id\": 1,\n\"name\": \"Bootstrap Carousel Content Full Screen\",\n\"image\": \"images/prototypes/carousal1.jpg\",\n\"alt\": \"Bootstrap Carousel Content Full Screen\"\n},\n{\n\"id\": 2,\n\"name\": \"Bootstrap Carousel Content Full Width\",\n\"image\": \"images/prototypes/carousal2.jpg\",\n\"alt\": \"Bootstrap Carousel Content Full Width\"\n},\n{\n\"id\": 3,\n\"name\": \"Bootstrap Carousel Content with Left Banner\",\n\"image\": \"images/prototypes/carousal3.jpg\",\n\"alt\": \"Bootstrap Carousel Content with Left Banner\"\n},\n{\n\"id\": 4,\n\"name\": \"Bootstrap Carousel Content with Navigation\",\n\"image\": \"images/prototypes/carousal4.jpg\",\n\"alt\": \"Bootstrap Carousel Content with Navigation\"\n},\n{\n\"id\": 5,\n\"name\": \"Bootstrap Carousel Content with Right Banner\",\n\"image\": \"images/prototypes/carousal5.jpg\",\n\"alt\": \"Bootstrap Carousel Content with Right Banner\"\n}\n]', '[\n{\n\"id\": 1,\n\"name\": \"Banner One\",\n\"image\": \"images/prototypes/banner1.jpg\",\n\"alt\": \"Banner One\"\n},\n{\n\"id\": 2,\n\"name\": \"Banner Two\",\n\"image\": \"images/prototypes/banner2.jpg\",\n\"alt\": \"Banner Two\"\n},\n{\n\"id\": 3,\n\"name\": \"Banner Three\",\n\"image\": \"images/prototypes/banner3.jpg\",\n\"alt\": \"Banner Three\"\n},\n{\n\"id\": 4,\n\"name\": \"Banner Four\",\n\"image\": \"images/prototypes/banner4.jpg\",\n\"alt\": \"Banner Four\"\n},\n{\n\"id\": 5,\n\"name\": \"Banner Five\",\n\"image\": \"images/prototypes/banner5.jpg\",\n\"alt\": \"Banner Five\"\n},\n{\n\"id\": 6,\n\"name\": \"Banner Six\",\n\"image\": \"images/prototypes/banner6.jpg\",\n\"alt\": \"Banner Six\"\n},\n{\n\"id\": 7,\n\"name\": \"Banner Seven\",\n\"image\": \"images/prototypes/banner7.jpg\",\n\"alt\": \"Banner Seven\"\n},\n{\n\"id\": 8,\n\"name\": \"Banner Eight\",\n\"image\": \"images/prototypes/banner8.jpg\",\n\"alt\": \"Banner Eight\"\n},\n{\n\"id\": 9,\n\"name\": \"Banner Nine\",\n\"image\": \"images/prototypes/banner9.jpg\",\n\"alt\": \"Banner Nine\"\n},\n{\n\"id\": 10,\n\"name\": \"Banner Ten\",\n\"image\": \"images/prototypes/banner10.jpg\",\n\"alt\": \"Banner Ten\"\n},\n{\n\"id\": 11,\n\"name\": \"Banner Eleven\",\n\"image\": \"images/prototypes/banner11.jpg\",\n\"alt\": \"Banner Eleven\"\n},\n{\n\"id\": 12,\n\"name\": \"Banner Twelve\",\n\"image\": \"images/prototypes/banner12.jpg\",\n\"alt\": \"Banner Twelve\"\n},\n{\n\"id\": 13,\n\"name\": \"Banner Thirteen\",\n\"image\": \"images/prototypes/banner13.jpg\",\n\"alt\": \"Banner Thirteen\"\n},\n{\n\"id\": 14,\n\"name\": \"Banner Fourteen\",\n\"image\": \"images/prototypes/banner14.jpg\",\n\"alt\": \"Banner Fourteen\"\n},\n{\n\"id\": 15,\n\"name\": \"Banner Fifteen\",\n\"image\": \"images/prototypes/banner15.jpg\",\n\"alt\": \"Banner Fifteen\"\n},\n{\n\"id\": 16,\n\"name\": \"Banner Sixteen\",\n\"image\": \"images/prototypes/banner16.jpg\",\n\"alt\": \"Banner Sixteen\"\n},\n{\n\"id\": 17,\n\"name\": \"Banner Seventeen\",\n\"image\": \"images/prototypes/banner17.jpg\",\n\"alt\": \"Banner Seventeen\"\n},\n{\n\"id\": 18,\n\"name\": \"Banner Eighteen\",\n\"image\": \"images/prototypes/banner18.jpg\",\n\"alt\": \"Banner Eighteen\"\n},\n{\n\"id\": 19,\n\"name\": \"Banner Nineteen\",\n\"image\": \"images/prototypes/banner19.jpg\",\n\"alt\": \"Banner Nineteen\"\n}\n]', '[\n{\n\"id\": 1,\n\"name\": \"Footer One\",\n\"image\": \"images/prototypes/footer1.png\",\n\"alt\" : \"Footer One\"\n},\n{\n\"id\": 2,\n\"name\": \"Footer Two\",\n\"image\": \"images/prototypes/footer2.png\",\n\"alt\" : \"Footer Two\"\n},\n{\n\"id\": 3,\n\"name\": \"Footer Three\",\n\"image\": \"images/prototypes/footer3.png\",\n\"alt\" : \"Footer Three\"\n},\n{\n\"id\": 4,\n\"name\": \"Footer Four\",\n\"image\": \"images/prototypes/footer4.png\",\n\"alt\" : \"Footer Four\"\n},\n{\n\"id\": 5,\n\"name\": \"Footer Five\",\n\"image\": \"images/prototypes/footer5.png\",\n\"alt\" : \"Footer Five\"\n},\n{\n\"id\": 6,\n\"name\": \"Footer Six\",\n\"image\": \"images/prototypes/footer6.png\",\n\"alt\" : \"Footer Six\"\n},\n{\n\"id\": 7,\n\"name\": \"Footer Seven\",\n\"image\": \"images/prototypes/footer7.png\",\n\"alt\" : \"Footer Seven\"\n},\n{\n\"id\": 8,\n\"name\": \"Footer Eight\",\n\"image\": \"images/prototypes/footer8.png\",\n\"alt\" : \"Footer Eight\"\n},\n{\n\"id\": 9,\n\"name\": \"Footer Nine\",\n\"image\": \"images/prototypes/footer9.png\",\n\"alt\" : \"Footer Nine\"\n},\n{\n\"id\": 10,\n\"name\": \"Footer Ten\",\n\"image\": \"images/prototypes/footer10.png\",\n\"alt\" : \"Footer Ten\"\n}\n]', '[{\"id\":1,\"name\":\"Banner Section\",\"order\":1,\"file_name\":\"banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/banner_section.jpg\",\"alt\":\"Banner Section\"},{\"id\":10,\"name\":\"Second Ad Section\",\"order\":2,\"file_name\":\"sec_ad_banner\",\"status\":1,\"image\":\"images\\/prototypes\\/sec_ad_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/sec_ad_section-cross.jpg\",\"alt\":\"Second Ad Section\"},{\"id\":5,\"name\":\"Categories\",\"order\":3,\"file_name\":\"categories\",\"status\":1,\"image\":\"images\\/prototypes\\/categories.jpg\",\"disabled_image\":\"images\\/prototypes\\/categories-cross.jpg\",\"alt\":\"Categories\"},{\"id\":9,\"name\":\"Top Selling\",\"order\":4,\"file_name\":\"top\",\"status\":1,\"image\":\"images\\/prototypes\\/top.jpg\",\"disabled_image\":\"images\\/prototypes\\/top-cross.jpg\",\"alt\":\"Top Selling\"},{\"id\":8,\"name\":\"Newest Product Section\",\"order\":5,\"file_name\":\"newest_product\",\"status\":1,\"image\":\"images\\/prototypes\\/newest_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/newest_product-cross.jpg\",\"alt\":\"Newest Product Section\"},{\"id\":12,\"name\":\"Banner 2 Section\",\"order\":6,\"file_name\":\"banner_two_section\",\"status\":1,\"image\":\"images\\/prototypes\\/sec_ad_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/sec_ad_section-cross.jpg\",\"alt\":\"Banner 2 Section\"},{\"id\":11,\"name\":\"Tab Products View\",\"order\":7,\"file_name\":\"tab\",\"status\":1,\"image\":\"images\\/prototypes\\/tab.jpg\",\"disabled_image\":\"images\\/prototypes\\/tab-cross.jpg\",\"alt\":\"Tab Products View\"},{\"id\":3,\"name\":\"Special Products Section\",\"order\":8,\"file_name\":\"special\",\"status\":1,\"image\":\"images\\/prototypes\\/special_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/special_product-cross.jpg\",\"alt\":\"Special Products Section\"},{\"id\":4,\"name\":\"Ad Section\",\"order\":9,\"file_name\":\"ad_banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/ad_banner_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/ad_banner_section-cross.jpg\",\"alt\":\"Ad Section\"},{\"id\":2,\"name\":\"Flash Sale Section\",\"order\":10,\"file_name\":\"flash_sale_section\",\"status\":1,\"image\":\"images\\/prototypes\\/flash_sale_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/flash_sale_section-cross.jpg\",\"alt\":\"Flash Sale Section\"},{\"id\":6,\"name\":\"Blog Section\",\"order\":11,\"file_name\":\"blog_section\",\"status\":0,\"image\":\"images\\/prototypes\\/blog_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/blog_section-cross.jpg\",\"alt\":\"Blog Section\"},{\"id\":7,\"name\":\"Info Boxes\",\"order\":12,\"file_name\":\"info_boxes\",\"status\":1,\"image\":\"images\\/prototypes\\/info_boxes.jpg\",\"disabled_image\":\"images\\/prototypes\\/info_boxes-cross.jpg\",\"alt\":\"Info Boxes\"}]', '[      {         \"id\":1,       \"name\":\"Cart One\"    },    {         \"id\":2,       \"name\":\"Cart Two\"    }     ]', '[      {         \"id\":1,       \"name\":\"News One\"    },    {         \"id\":2,       \"name\":\"News Two\"    }     ]', '[  \n{  \n\"id\":1,\n\"name\":\"Product Detail Page One\"\n},\n{  \n\"id\":2,\n\"name\":\"Product Detail Page Two\"\n},\n{  \n\"id\":3,\n\"name\":\"Product Detail Page Three\"\n},\n{  \n\"id\":4,\n\"name\":\"Product Detail Page Four\"\n},\n{  \n\"id\":5,\n\"name\":\"Product Detail Page Five\"\n},\n{  \n\"id\":6,\n\"name\":\"Product Detail Page Six\"\n}\n\n]', '[      {         \"id\":1,       \"name\":\"Shop Page One\"    },    {         \"id\":2,       \"name\":\"Shop Page Two\"    },    {         \"id\":3,       \"name\":\"Shop Page Three\"    },    {         \"id\":4,       \"name\":\"Shop Page Four\"    },    {         \"id\":5,       \"name\":\"Shop Page Five\"    }     ]', '[      {         \"id\":1,       \"name\":\"Contact Page One\"    },    {         \"id\":2,       \"name\":\"Contact Page Two\"    } ]', '[      {         \"id\":1,       \"name\":\"Login Page One\"    },    {         \"id\":2,       \"name\":\"Login Page Two\"    } ]', '[ { \"id\":1, \"name\":\"Transition Zoomin\" }, { \"id\":2, \"name\":\"Transition Flashing\" }, { \"id\":3, \"name\":\"Transition Shine\" }, { \"id\":4, \"name\":\"Transition Circle\" }, { \"id\":5, \"name\":\"Transition Opacity\" } ]', '[ { \"id\": 1, \"name\": \"Banner One\", \"image\": \"images/prototypes/banner1.jpg\", \"alt\": \"Banner One\" }, { \"id\": 2, \"name\": \"Banner Two\", \"image\": \"images/prototypes/banner2.jpg\", \"alt\": \"Banner Two\" }, { \"id\": 3, \"name\": \"Banner Three\", \"image\": \"images/prototypes/banner3.jpg\", \"alt\": \"Banner Three\" }, { \"id\": 4, \"name\": \"Banner Four\", \"image\": \"images/prototypes/banner4.jpg\", \"alt\": \"Banner Four\" }, { \"id\": 5, \"name\": \"Banner Five\", \"image\": \"images/prototypes/banner5.jpg\", \"alt\": \"Banner Five\" }, { \"id\": 6, \"name\": \"Banner Six\", \"image\": \"images/prototypes/banner6.jpg\", \"alt\": \"Banner Six\" }, { \"id\": 7, \"name\": \"Banner Seven\", \"image\": \"images/prototypes/banner7.jpg\", \"alt\": \"Banner Seven\" }, { \"id\": 8, \"name\": \"Banner Eight\", \"image\": \"images/prototypes/banner8.jpg\", \"alt\": \"Banner Eight\" }, { \"id\": 9, \"name\": \"Banner Nine\", \"image\": \"images/prototypes/banner9.jpg\", \"alt\": \"Banner Nine\" }, { \"id\": 10, \"name\": \"Banner Ten\", \"image\": \"images/prototypes/banner10.jpg\", \"alt\": \"Banner Ten\" }, { \"id\": 11, \"name\": \"Banner Eleven\", \"image\": \"images/prototypes/banner11.jpg\", \"alt\": \"Banner Eleven\" }, { \"id\": 12, \"name\": \"Banner Twelve\", \"image\": \"images/prototypes/banner12.jpg\", \"alt\": \"Banner Twelve\" }, { \"id\": 13, \"name\": \"Banner Thirteen\", \"image\": \"images/prototypes/banner13.jpg\", \"alt\": \"Banner Thirteen\" }, { \"id\": 14, \"name\": \"Banner Fourteen\", \"image\": \"images/prototypes/banner14.jpg\", \"alt\": \"Banner Fourteen\" }, { \"id\": 15, \"name\": \"Banner Fifteen\", \"image\": \"images/prototypes/banner15.jpg\", \"alt\": \"Banner Fifteen\" }, { \"id\": 16, \"name\": \"Banner Sixteen\", \"image\": \"images/prototypes/banner16.jpg\", \"alt\": \"Banner Sixteen\" }, { \"id\": 17, \"name\": \"Banner Seventeen\", \"image\": \"images/prototypes/banner17.jpg\", \"alt\": \"Banner Seventeen\" }, { \"id\": 18, \"name\": \"Banner Eighteen\", \"image\": \"images/prototypes/banner18.jpg\", \"alt\": \"Banner Eighteen\" }, { \"id\": 19, \"name\": \"Banner Nineteen\", \"image\": \"images/prototypes/banner19.jpg\", \"alt\": \"Banner Nineteen\" } ]');

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
(1, 'banners_1', 1, '<div class=\\\"parallax-banner-text\\\">\r\n        <h2> Bridel</h2>\r\n        <h4>Jewellery for bride </h4>\r\n        <div class=\\\"hover-link\\\">\r\n          <a href=\\\"/shop\\\" class=\\\"btn btn-secondary swipe-to-top\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"bottom\\\" title=\\\"\\\" data-original-title=\\\"View All Range\\\">View All Range</a>\r\n        </div>  \r\n      </div>', 690, '2021-04-05 23:47:07', '2021-04-05 23:47:07'),
(2, 'banners_2', 1, '<div class=\\\"parallax-banner-text\\\">\r\n        <h2> TRENDING Now</h2>\r\n        <h4>Classic & Trendy</h4>\r\n        <div class=\\\"hover-link\\\">\r\n          <a href=\\\"/shop\\\" class=\\\"btn btn-secondary swipe-to-top\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"bottom\\\" title=\\\"\\\" data-original-title=\\\"View All Range\\\">View All Range</a>\r\n        </div>  \r\n      </div>', 691, '2021-04-05 23:47:07', '2021-04-05 23:47:07'),
(3, 'banners_3', 1, '<div class=\\\"parallax-banner-text\\\">\r\n        <h2> BIG SALE</h2>\r\n        <h4>Women Gold ornaments</h4>\r\n        <div class=\\\"hover-link\\\">\r\n          <a href=\\\"/shop\\\" class=\\\"btn btn-secondary swipe-to-top\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"bottom\\\" title=\\\"\\\" data-original-title=\\\"Shop Now\\\">Shop Now</a>\r\n        </div>  \r\n      </div>', 692, '2021-04-05 23:47:07', '2021-04-05 23:47:07'),
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
) ENGINE=MyISAM AUTO_INCREMENT=716 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(544, 'RIorF28402.jpg', 1, NULL, NULL, NULL),
(545, 'gzXVz28602.jpg', 1, NULL, NULL, NULL),
(546, 'OQddL28502.jpg', 1, NULL, NULL, NULL),
(547, '2uIyZ28302.jpg', 1, NULL, NULL, NULL),
(548, '4lG8S28802.jpg', 1, NULL, NULL, NULL),
(549, 'lnOHq29703.jpg', 1, NULL, NULL, NULL),
(550, 'wHktO29903.jpg', 1, NULL, NULL, NULL),
(551, 'dmVjo29803.jpg', 1, NULL, NULL, NULL),
(552, 'u5Mjm29203.jpg', 1, NULL, NULL, NULL),
(553, 'YPY3A29403.jpg', 1, NULL, NULL, NULL),
(554, 'sjHzH29503.jpg', 1, NULL, NULL, NULL),
(555, 'Pjrya29103.jpg', 1, NULL, NULL, NULL),
(556, 'g8m0U29303.jpg', 1, NULL, NULL, NULL),
(557, 'QfZuK29103.jpg', 1, NULL, NULL, NULL),
(558, '9dhVv29103.jpg', 1, NULL, NULL, NULL),
(559, 'oWQdZ29703.jpg', 1, NULL, NULL, NULL),
(560, 'jVoVQ29703.jpg', 1, NULL, NULL, NULL),
(561, '3NUG829703.jpg', 1, NULL, NULL, NULL),
(562, '9HTpx29403.jpg', 1, NULL, NULL, NULL),
(563, 'QMaji29703.jpg', 1, NULL, NULL, NULL),
(564, 'f7K0e29803.jpg', 1, NULL, NULL, NULL),
(565, 'NHngJ29303.jpg', 1, NULL, NULL, NULL),
(566, 'MqZ9929703.jpg', 1, NULL, NULL, NULL),
(567, 'X72d029403.jpg', 1, NULL, NULL, NULL),
(568, 'Q1aZL30201.jpg', 1, NULL, NULL, NULL),
(569, 'SMSm430301.jpg', 1, NULL, NULL, NULL),
(570, 'm3urW30601.jpg', 1, NULL, NULL, NULL),
(571, 'pp6vA30501.jpg', 1, NULL, NULL, NULL),
(572, 'cJaXT30801.jpg', 1, NULL, NULL, NULL),
(573, 'NU0wW30501.jpg', 1, NULL, NULL, NULL),
(574, '48fp030801.jpg', 1, NULL, NULL, NULL),
(575, 'C96RN30301.jpg', 1, NULL, NULL, NULL),
(576, 'dOwtA30702.jpg', 1, NULL, NULL, NULL),
(577, 'zD4vU30802.jpg', 1, NULL, NULL, NULL),
(578, 'R6llO30202.jpg', 1, NULL, NULL, NULL),
(579, 'MQ90w30502.jpg', 1, NULL, NULL, NULL),
(580, 'yJX1230402.jpg', 1, NULL, NULL, NULL),
(581, 'YrE5930702.jpg', 1, NULL, NULL, NULL),
(582, 'l4Udk30402.jpg', 1, NULL, NULL, NULL),
(583, 'GRZGW30902.jpg', 1, NULL, NULL, NULL),
(584, 'TdOrb30103.jpg', 1, NULL, NULL, NULL),
(585, 'VtqrY30303.jpg', 1, NULL, NULL, NULL),
(586, 'HgXzh30403.jpg', 1, NULL, NULL, NULL),
(587, 'amy6g30503.jpg', 1, NULL, NULL, NULL),
(588, 'dY1YO30103.jpg', 1, NULL, NULL, NULL),
(589, 'LfTm230903.jpg', 1, NULL, NULL, NULL),
(590, 'BgxTE30803.jpg', 1, NULL, NULL, NULL),
(591, 'ElpdA30703.jpg', 1, NULL, NULL, NULL),
(592, 'VOMya30303.jpg', 1, NULL, NULL, NULL),
(593, 'Yjuq330403.jpg', 1, NULL, NULL, NULL),
(594, 'Dx8Iz30203.jpg', 1, NULL, NULL, NULL),
(595, 'xxlZ830503.jpg', 1, NULL, NULL, NULL),
(596, 'PDHU930603.jpg', 1, NULL, NULL, NULL),
(597, 'CYq5N30203.jpg', 1, NULL, NULL, NULL),
(598, 'pyRMf30103.jpg', 1, NULL, NULL, NULL),
(599, 'ATEk030203.jpg', 1, NULL, NULL, NULL),
(600, 'qZCe230403.jpg', 1, NULL, NULL, NULL),
(601, 'I8Xkf30203.jpg', 1, NULL, NULL, NULL),
(602, 'FHGrn30303.jpg', 1, NULL, NULL, NULL),
(603, 'WU4Zd30803.jpg', 1, NULL, NULL, NULL),
(604, 'Xyg9b30203.jpg', 1, NULL, NULL, NULL),
(605, 'HMd6x30303.jpg', 1, NULL, NULL, NULL),
(606, 'Gvyf830503.jpg', 1, NULL, NULL, NULL),
(607, 'aycHh30503.jpg', 1, NULL, NULL, NULL),
(608, 'PpCRl30403.jpg', 1, NULL, NULL, NULL),
(609, 'A8anX30503.jpg', 1, NULL, NULL, NULL),
(610, 'g2apA30303.jpg', 1, NULL, NULL, NULL),
(611, 'U4XVs30903.jpg', 1, NULL, NULL, NULL),
(612, 'TOC0s30903.jpg', 1, NULL, NULL, NULL),
(613, 'TYRSo30303.jpg', 1, NULL, NULL, NULL),
(614, '5AO0J30403.jpg', 1, NULL, NULL, NULL),
(615, 'xhsnr30503.jpg', 1, NULL, NULL, NULL),
(616, '6iN1y31102.jpg', 1, NULL, NULL, NULL),
(617, 'EmUFo31502.jpg', 1, NULL, NULL, NULL),
(618, 'mrJfk31502.jpg', 1, NULL, NULL, NULL),
(619, 'n11vx31802.jpg', 1, NULL, NULL, NULL),
(620, 'CORNr31302.jpg', 1, NULL, NULL, NULL),
(621, 'xVFAt31702.jpg', 1, NULL, NULL, NULL),
(622, 'ncfD531302.jpg', 1, NULL, NULL, NULL),
(623, 'Z2Ndf31802.jpg', 1, NULL, NULL, NULL),
(624, '9uzuo31603.jpeg', 1, NULL, NULL, NULL),
(625, 'Dknku31903.jpeg', 1, NULL, NULL, NULL),
(626, 'ICJEj31403.jpeg', 1, NULL, NULL, NULL),
(627, 'IgOpc31103.jpg', 1, NULL, NULL, NULL),
(628, 'SqT8031903.jpg', 1, NULL, NULL, NULL),
(629, 'kftww31203.jpg', 1, NULL, NULL, NULL),
(630, 'wBduX31103.jpg', 1, NULL, NULL, NULL),
(631, '3gAjX31703.jpg', 1, NULL, NULL, NULL),
(632, '3Frsg31103.jpg', 1, NULL, NULL, NULL),
(633, 'Tuji431803.jpg', 1, NULL, NULL, NULL),
(634, '3V5tS05701.jpg', 1, NULL, NULL, NULL),
(635, '4Cyd305301.jpg', 1, NULL, NULL, NULL),
(636, 'kSbVo05901.jpg', 1, NULL, NULL, NULL),
(637, 'npxCO05401.jpg', 1, NULL, NULL, NULL),
(638, 'llcqd05101.jpg', 1, NULL, NULL, NULL),
(639, 'xPFew05501.jpg', 1, NULL, NULL, NULL),
(640, 'd8ZLF05201.jpg', 1, NULL, NULL, NULL),
(641, 'cTOOx05701.jpg', 1, NULL, NULL, NULL),
(642, 'hsWAU05202.jpg', 1, NULL, NULL, NULL),
(643, 'IGGJU05302.jpg', 1, NULL, NULL, NULL),
(644, 'YUu7c05702.jpg', 1, NULL, NULL, NULL),
(645, 'GPdXy05102.jpg', 1, NULL, NULL, NULL),
(646, 'tYOu305402.jpg', 1, NULL, NULL, NULL),
(647, '4HSZd05102.jpg', 1, NULL, NULL, NULL),
(648, 'ASD7H05802.jpg', 1, NULL, NULL, NULL),
(649, '1tDH505102.jpg', 1, NULL, NULL, NULL),
(650, 'zwghe05902.jpg', 1, NULL, NULL, NULL),
(651, 'eNkl405902.jpg', 1, NULL, NULL, NULL),
(652, 'Vd5O605402.jpg', 1, NULL, NULL, NULL),
(653, 'toIdK05802.jpg', 1, NULL, NULL, NULL),
(654, 'CSRqX05802.jpg', 1, NULL, NULL, NULL),
(655, 'yA2hv05402.jpg', 1, NULL, NULL, NULL),
(656, 'jw6Dd05202.jpg', 1, NULL, NULL, NULL),
(657, 'QoMhq05502.jpg', 1, NULL, NULL, NULL),
(658, '9N0gh05212.jpg', 1, NULL, NULL, NULL),
(659, 'enwPF05112.jpg', 1, NULL, NULL, NULL),
(660, 'otGGa05512.jpg', 1, NULL, NULL, NULL),
(661, 'OtukR05612.jpg', 1, NULL, NULL, NULL),
(662, 'pNqPd05512.jpg', 1, NULL, NULL, NULL),
(663, 'AE1G205212.jpg', 1, NULL, NULL, NULL),
(664, 'fEfec05612.jpg', 1, NULL, NULL, NULL),
(665, 'gqY9005312.jpg', 1, NULL, NULL, NULL),
(666, '63ZHM05312.jpg', 1, NULL, NULL, NULL),
(667, 'vtF0a05512.jpg', 1, NULL, NULL, NULL),
(668, 'Om0qV05512.jpg', 1, NULL, NULL, NULL),
(669, 'p0pO705212.jpg', 1, NULL, NULL, NULL),
(670, 'l9tQp05712.jpg', 1, NULL, NULL, NULL),
(671, '1TO3105212.jpg', 1, NULL, NULL, NULL),
(672, 'DJFFP05812.jpg', 1, NULL, NULL, NULL),
(673, 'pDr2U05612.jpg', 1, NULL, NULL, NULL),
(674, 'TQGnC05901.png', 1, NULL, NULL, NULL),
(675, '5ldJM05601.png', 1, NULL, NULL, NULL),
(676, 'Phyi805401.png', 1, NULL, NULL, NULL),
(677, 'AOHAb05601.png', 1, NULL, NULL, NULL),
(678, 'ezOLV05801.png', 1, NULL, NULL, NULL),
(679, '5kmZi05601.png', 1, NULL, NULL, NULL),
(680, 'JJDoj05701.png', 1, NULL, NULL, NULL),
(681, '61GMb06401.jpg', 1, NULL, NULL, NULL),
(682, 'l4X9B06401.jpg', 1, NULL, NULL, NULL),
(683, 'DSM9h06101.jpg', 1, NULL, NULL, NULL),
(684, 'S6iz206901.jpg', 1, NULL, NULL, NULL),
(685, 'jstBJ06901.jpg', 1, NULL, NULL, NULL),
(686, 'b9uFR06501.jpg', 1, NULL, NULL, NULL),
(687, 'eSUc306701.jpg', 1, NULL, NULL, NULL),
(688, 'HftjK06801.jpg', 1, NULL, NULL, NULL),
(689, 'Vf2tc06510.png', 1, NULL, NULL, NULL),
(690, 'a97Os06410.png', 1, NULL, NULL, NULL),
(691, 'PJ3Ul06210.png', 1, NULL, NULL, NULL),
(692, 'Etubi06210.png', 1, NULL, NULL, NULL),
(693, '85bht06110.png', 1, NULL, NULL, NULL),
(694, 'gVaG806410.png', 1, NULL, NULL, NULL),
(714, '35wfV06404.png', 1, NULL, NULL, NULL),
(696, 'bKBqi06110.png', 1, NULL, NULL, NULL),
(697, 'eF21b06410.png', 1, NULL, NULL, NULL),
(698, 'M4i8G06410.png', 1, NULL, NULL, NULL),
(699, '0j5Dd06210.png', 1, NULL, NULL, NULL),
(700, 'CRLqy06310.png', 1, NULL, NULL, NULL),
(701, '0kA9R06410.png', 1, NULL, NULL, NULL),
(702, 'jQZU806310.png', 1, NULL, NULL, NULL),
(703, 'N1mtq06510.png', 1, NULL, NULL, NULL),
(704, 'bD7Ph06810.png', 1, NULL, NULL, NULL),
(705, '5I5qk06210.png', 1, NULL, NULL, NULL),
(706, 'lBuil06110.png', 1, NULL, NULL, NULL),
(707, 'D3BYs06510.png', 1, NULL, NULL, NULL),
(708, 'rELmh06311.png', 1, NULL, NULL, NULL),
(709, 'dqVe106212.png', 1, NULL, NULL, NULL),
(710, 'FqcOh06312.png', 1, NULL, NULL, NULL),
(711, 'GfnhF06412.png', 1, NULL, NULL, NULL),
(712, 'BAZed06112.png', 1, NULL, NULL, NULL),
(713, '0mIHK06401.png', 1, NULL, NULL, NULL),
(715, 'W1CaR13411.png', 1, NULL, NULL, NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=1335 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(690, 544, 'ACTUAL', 1000, 1000, 'images/media/2021/03/RIorF28402.jpg', NULL, NULL),
(691, 544, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1616942556RIorF28402.jpg', NULL, NULL),
(692, 544, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1616942556RIorF28402.jpg', NULL, NULL),
(693, 544, 'LARGE', 900, 900, 'images/media/2021/03/large1616942556RIorF28402.jpg', NULL, '2021-03-27 21:12:36'),
(694, 545, 'ACTUAL', 1000, 1000, 'images/media/2021/03/gzXVz28602.jpg', NULL, NULL),
(695, 545, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1616942557gzXVz28602.jpg', NULL, NULL),
(696, 545, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1616942557gzXVz28602.jpg', NULL, NULL),
(697, 545, 'LARGE', 900, 900, 'images/media/2021/03/large1616942557gzXVz28602.jpg', NULL, '2021-03-27 21:12:37'),
(698, 546, 'ACTUAL', 1000, 1000, 'images/media/2021/03/OQddL28502.jpg', NULL, NULL),
(699, 546, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1616942557OQddL28502.jpg', NULL, NULL),
(700, 546, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1616942558OQddL28502.jpg', NULL, NULL),
(701, 546, 'LARGE', 900, 900, 'images/media/2021/03/large1616942558OQddL28502.jpg', NULL, '2021-03-27 21:12:38'),
(702, 547, 'ACTUAL', 1000, 1000, 'images/media/2021/03/2uIyZ28302.jpg', NULL, NULL),
(703, 547, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail16169425582uIyZ28302.jpg', NULL, NULL),
(704, 547, 'MEDIUM', 400, 400, 'images/media/2021/03/medium16169425582uIyZ28302.jpg', NULL, NULL),
(705, 547, 'LARGE', 900, 900, 'images/media/2021/03/large16169425582uIyZ28302.jpg', NULL, '2021-03-27 21:12:38'),
(706, 548, 'ACTUAL', 1000, 1000, 'images/media/2021/03/4lG8S28802.jpg', NULL, NULL),
(707, 548, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail16169427894lG8S28802.jpg', NULL, NULL),
(708, 548, 'MEDIUM', 400, 400, 'images/media/2021/03/medium16169427894lG8S28802.jpg', NULL, NULL),
(709, 548, 'LARGE', 900, 900, 'images/media/2021/03/large16169427894lG8S28802.jpg', NULL, '2021-03-27 21:16:29'),
(710, 549, 'ACTUAL', 1000, 1000, 'images/media/2021/03/lnOHq29703.jpg', NULL, NULL),
(711, 549, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1616987450lnOHq29703.jpg', NULL, NULL),
(712, 549, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1616987450lnOHq29703.jpg', NULL, NULL),
(713, 549, 'LARGE', 900, 900, 'images/media/2021/03/large1616987450lnOHq29703.jpg', NULL, '2021-03-28 21:40:50'),
(714, 550, 'ACTUAL', 1000, 1000, 'images/media/2021/03/wHktO29903.jpg', NULL, NULL),
(715, 550, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1616987451wHktO29903.jpg', NULL, NULL),
(716, 550, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1616987451wHktO29903.jpg', NULL, NULL),
(717, 550, 'LARGE', 900, 900, 'images/media/2021/03/large1616987451wHktO29903.jpg', NULL, '2021-03-28 21:40:51'),
(718, 551, 'ACTUAL', 1000, 1000, 'images/media/2021/03/dmVjo29803.jpg', NULL, NULL),
(719, 551, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1616987452dmVjo29803.jpg', NULL, NULL),
(720, 551, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1616987452dmVjo29803.jpg', NULL, NULL),
(721, 551, 'LARGE', 900, 900, 'images/media/2021/03/large1616987452dmVjo29803.jpg', NULL, '2021-03-28 21:40:52'),
(722, 552, 'ACTUAL', 1000, 1000, 'images/media/2021/03/u5Mjm29203.jpg', NULL, NULL),
(723, 552, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1616987453u5Mjm29203.jpg', NULL, NULL),
(724, 552, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1616987453u5Mjm29203.jpg', NULL, NULL),
(725, 552, 'LARGE', 900, 900, 'images/media/2021/03/large1616987453u5Mjm29203.jpg', NULL, '2021-03-28 21:40:53'),
(726, 553, 'ACTUAL', 1000, 1000, 'images/media/2021/03/YPY3A29403.jpg', NULL, NULL),
(727, 553, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1616987454YPY3A29403.jpg', NULL, NULL),
(728, 553, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1616987454YPY3A29403.jpg', NULL, NULL),
(729, 553, 'LARGE', 900, 900, 'images/media/2021/03/large1616987454YPY3A29403.jpg', NULL, '2021-03-28 21:40:54'),
(730, 554, 'ACTUAL', 1000, 1000, 'images/media/2021/03/sjHzH29503.jpg', NULL, NULL),
(731, 554, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1616988592sjHzH29503.jpg', NULL, NULL),
(732, 554, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1616988592sjHzH29503.jpg', NULL, NULL),
(733, 554, 'LARGE', 900, 900, 'images/media/2021/03/large1616988592sjHzH29503.jpg', NULL, '2021-03-28 21:59:52'),
(734, 555, 'ACTUAL', 1000, 1000, 'images/media/2021/03/Pjrya29103.jpg', NULL, NULL),
(735, 555, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1616988592Pjrya29103.jpg', NULL, NULL),
(736, 555, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1616988592Pjrya29103.jpg', NULL, NULL),
(737, 555, 'LARGE', 900, 900, 'images/media/2021/03/large1616988592Pjrya29103.jpg', NULL, '2021-03-28 21:59:52'),
(738, 556, 'ACTUAL', 1000, 1000, 'images/media/2021/03/g8m0U29303.jpg', NULL, NULL),
(739, 556, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1616988593g8m0U29303.jpg', NULL, NULL),
(740, 556, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1616988593g8m0U29303.jpg', NULL, NULL),
(741, 556, 'LARGE', 900, 900, 'images/media/2021/03/large1616988593g8m0U29303.jpg', NULL, '2021-03-28 21:59:53'),
(742, 557, 'ACTUAL', 1000, 1000, 'images/media/2021/03/QfZuK29103.jpg', NULL, NULL),
(743, 557, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1616988593QfZuK29103.jpg', NULL, NULL),
(744, 557, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1616988593QfZuK29103.jpg', NULL, NULL),
(745, 557, 'LARGE', 900, 900, 'images/media/2021/03/large1616988593QfZuK29103.jpg', NULL, '2021-03-28 21:59:53'),
(746, 558, 'ACTUAL', 1000, 1000, 'images/media/2021/03/9dhVv29103.jpg', NULL, NULL),
(747, 558, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail16169885939dhVv29103.jpg', NULL, NULL),
(748, 558, 'MEDIUM', 400, 400, 'images/media/2021/03/medium16169885939dhVv29103.jpg', NULL, NULL),
(749, 558, 'LARGE', 900, 900, 'images/media/2021/03/large16169885939dhVv29103.jpg', NULL, '2021-03-28 21:59:53'),
(750, 559, 'ACTUAL', 1000, 1000, 'images/media/2021/03/oWQdZ29703.jpg', NULL, NULL),
(751, 559, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1616988919oWQdZ29703.jpg', NULL, NULL),
(752, 559, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1616988919oWQdZ29703.jpg', NULL, NULL),
(753, 559, 'LARGE', 900, 900, 'images/media/2021/03/large1616988919oWQdZ29703.jpg', NULL, '2021-03-28 22:05:19'),
(754, 560, 'ACTUAL', 1000, 1000, 'images/media/2021/03/jVoVQ29703.jpg', NULL, NULL),
(755, 560, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1616988920jVoVQ29703.jpg', NULL, NULL),
(756, 560, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1616988920jVoVQ29703.jpg', NULL, NULL),
(757, 560, 'LARGE', 900, 900, 'images/media/2021/03/large1616988920jVoVQ29703.jpg', NULL, '2021-03-28 22:05:20'),
(758, 561, 'ACTUAL', 1000, 1000, 'images/media/2021/03/3NUG829703.jpg', NULL, NULL),
(759, 561, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail16169889203NUG829703.jpg', NULL, NULL),
(760, 561, 'MEDIUM', 400, 400, 'images/media/2021/03/medium16169889213NUG829703.jpg', NULL, NULL),
(761, 561, 'LARGE', 900, 900, 'images/media/2021/03/large16169889213NUG829703.jpg', NULL, '2021-03-28 22:05:21'),
(762, 562, 'ACTUAL', 1000, 1000, 'images/media/2021/03/9HTpx29403.jpg', NULL, NULL),
(763, 562, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail16169889219HTpx29403.jpg', NULL, NULL),
(764, 562, 'MEDIUM', 400, 400, 'images/media/2021/03/medium16169889219HTpx29403.jpg', NULL, NULL),
(765, 562, 'LARGE', 900, 900, 'images/media/2021/03/large16169889219HTpx29403.jpg', NULL, '2021-03-28 22:05:21'),
(766, 563, 'ACTUAL', 1000, 1000, 'images/media/2021/03/QMaji29703.jpg', NULL, NULL),
(767, 563, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1616988921QMaji29703.jpg', NULL, NULL),
(768, 563, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1616988921QMaji29703.jpg', NULL, NULL),
(769, 563, 'LARGE', 900, 900, 'images/media/2021/03/large1616988921QMaji29703.jpg', NULL, '2021-03-28 22:05:21'),
(770, 564, 'ACTUAL', 1000, 1000, 'images/media/2021/03/f7K0e29803.jpg', NULL, NULL),
(771, 564, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1616988921f7K0e29803.jpg', NULL, NULL),
(772, 564, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1616988921f7K0e29803.jpg', NULL, NULL),
(773, 564, 'LARGE', 900, 900, 'images/media/2021/03/large1616988921f7K0e29803.jpg', NULL, '2021-03-28 22:05:21'),
(774, 565, 'ACTUAL', 1000, 1000, 'images/media/2021/03/NHngJ29303.jpg', NULL, NULL),
(775, 565, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1616988921NHngJ29303.jpg', NULL, NULL),
(776, 566, 'ACTUAL', 1000, 1000, 'images/media/2021/03/MqZ9929703.jpg', NULL, NULL),
(777, 566, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1616988924MqZ9929703.jpg', NULL, NULL),
(778, 566, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1616988924MqZ9929703.jpg', NULL, NULL),
(779, 566, 'LARGE', 900, 900, 'images/media/2021/03/large1616988924MqZ9929703.jpg', NULL, '2021-03-28 22:05:24'),
(780, 567, 'ACTUAL', 1000, 1000, 'images/media/2021/03/X72d029403.jpg', NULL, NULL),
(781, 567, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1616988924X72d029403.jpg', NULL, NULL),
(782, 567, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1616988924X72d029403.jpg', NULL, NULL),
(783, 567, 'LARGE', 900, 900, 'images/media/2021/03/large1616988924X72d029403.jpg', NULL, '2021-03-28 22:05:24'),
(784, 568, 'ACTUAL', 1000, 1000, 'images/media/2021/03/Q1aZL30201.jpg', NULL, NULL),
(785, 568, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617068939Q1aZL30201.jpg', NULL, NULL),
(786, 568, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617068939Q1aZL30201.jpg', NULL, NULL),
(787, 568, 'LARGE', 900, 900, 'images/media/2021/03/large1617068939Q1aZL30201.jpg', NULL, '2021-03-29 20:18:59'),
(788, 569, 'ACTUAL', 1000, 1000, 'images/media/2021/03/SMSm430301.jpg', NULL, NULL),
(789, 569, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617068939SMSm430301.jpg', NULL, NULL),
(790, 569, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617068939SMSm430301.jpg', NULL, NULL),
(791, 569, 'LARGE', 900, 900, 'images/media/2021/03/large1617068939SMSm430301.jpg', NULL, '2021-03-29 20:18:59'),
(792, 570, 'ACTUAL', 1000, 1000, 'images/media/2021/03/m3urW30601.jpg', NULL, NULL);
INSERT INTO `image_categories` (`id`, `image_id`, `image_type`, `height`, `width`, `path`, `created_at`, `updated_at`) VALUES
(793, 570, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617068939m3urW30601.jpg', NULL, NULL),
(794, 570, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617068939m3urW30601.jpg', NULL, NULL),
(795, 570, 'LARGE', 900, 900, 'images/media/2021/03/large1617068939m3urW30601.jpg', NULL, '2021-03-29 20:18:59'),
(796, 571, 'ACTUAL', 1000, 1000, 'images/media/2021/03/pp6vA30501.jpg', NULL, NULL),
(797, 571, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617068940pp6vA30501.jpg', NULL, NULL),
(798, 571, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617068940pp6vA30501.jpg', NULL, NULL),
(799, 571, 'LARGE', 900, 900, 'images/media/2021/03/large1617068940pp6vA30501.jpg', NULL, '2021-03-29 20:19:00'),
(800, 572, 'ACTUAL', 1000, 1000, 'images/media/2021/03/cJaXT30801.jpg', NULL, NULL),
(801, 572, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617068940cJaXT30801.jpg', NULL, NULL),
(802, 572, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617068940cJaXT30801.jpg', NULL, NULL),
(803, 572, 'LARGE', 900, 900, 'images/media/2021/03/large1617068940cJaXT30801.jpg', NULL, '2021-03-29 20:19:00'),
(804, 573, 'ACTUAL', 1000, 1000, 'images/media/2021/03/NU0wW30501.jpg', NULL, NULL),
(805, 573, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617068940NU0wW30501.jpg', NULL, NULL),
(806, 573, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617068940NU0wW30501.jpg', NULL, NULL),
(807, 573, 'LARGE', 900, 900, 'images/media/2021/03/large1617068940NU0wW30501.jpg', NULL, '2021-03-29 20:19:00'),
(808, 574, 'ACTUAL', 1000, 1000, 'images/media/2021/03/48fp030801.jpg', NULL, NULL),
(809, 574, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail161706894048fp030801.jpg', NULL, NULL),
(810, 574, 'MEDIUM', 400, 400, 'images/media/2021/03/medium161706894048fp030801.jpg', NULL, NULL),
(811, 574, 'LARGE', 900, 900, 'images/media/2021/03/large161706894148fp030801.jpg', NULL, '2021-03-29 20:19:01'),
(812, 575, 'ACTUAL', 1000, 1000, 'images/media/2021/03/C96RN30301.jpg', NULL, NULL),
(813, 575, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617068941C96RN30301.jpg', NULL, NULL),
(814, 575, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617068941C96RN30301.jpg', NULL, NULL),
(815, 575, 'LARGE', 900, 900, 'images/media/2021/03/large1617068941C96RN30301.jpg', NULL, '2021-03-29 20:19:01'),
(816, 576, 'ACTUAL', 1000, 1000, 'images/media/2021/03/dOwtA30702.jpg', NULL, NULL),
(817, 576, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617071413dOwtA30702.jpg', NULL, NULL),
(818, 576, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617071413dOwtA30702.jpg', NULL, NULL),
(819, 576, 'LARGE', 900, 900, 'images/media/2021/03/large1617071413dOwtA30702.jpg', NULL, '2021-03-29 21:00:13'),
(820, 577, 'ACTUAL', 1000, 1000, 'images/media/2021/03/zD4vU30802.jpg', NULL, NULL),
(821, 577, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617072757zD4vU30802.jpg', NULL, NULL),
(822, 577, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617072757zD4vU30802.jpg', NULL, NULL),
(823, 577, 'LARGE', 900, 900, 'images/media/2021/03/large1617072757zD4vU30802.jpg', NULL, '2021-03-29 21:22:37'),
(824, 578, 'ACTUAL', 1000, 1000, 'images/media/2021/03/R6llO30202.jpg', NULL, NULL),
(825, 578, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617072757R6llO30202.jpg', NULL, NULL),
(826, 578, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617072757R6llO30202.jpg', NULL, NULL),
(827, 578, 'LARGE', 900, 900, 'images/media/2021/03/large1617072757R6llO30202.jpg', NULL, '2021-03-29 21:22:37'),
(828, 579, 'ACTUAL', 1000, 1000, 'images/media/2021/03/MQ90w30502.jpg', NULL, NULL),
(829, 579, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617072758MQ90w30502.jpg', NULL, NULL),
(830, 579, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617072758MQ90w30502.jpg', NULL, NULL),
(831, 579, 'LARGE', 900, 900, 'images/media/2021/03/large1617072758MQ90w30502.jpg', NULL, '2021-03-29 21:22:38'),
(832, 580, 'ACTUAL', 1000, 1000, 'images/media/2021/03/yJX1230402.jpg', NULL, NULL),
(833, 580, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617072759yJX1230402.jpg', NULL, NULL),
(834, 580, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617072759yJX1230402.jpg', NULL, NULL),
(835, 580, 'LARGE', 900, 900, 'images/media/2021/03/large1617072759yJX1230402.jpg', NULL, '2021-03-29 21:22:39'),
(836, 581, 'ACTUAL', 1000, 1000, 'images/media/2021/03/YrE5930702.jpg', NULL, NULL),
(837, 581, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617072760YrE5930702.jpg', NULL, NULL),
(838, 581, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617072760YrE5930702.jpg', NULL, NULL),
(839, 581, 'LARGE', 900, 900, 'images/media/2021/03/large1617072760YrE5930702.jpg', NULL, '2021-03-29 21:22:40'),
(840, 582, 'ACTUAL', 1000, 1000, 'images/media/2021/03/l4Udk30402.jpg', NULL, NULL),
(841, 582, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617072760l4Udk30402.jpg', NULL, NULL),
(842, 582, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617072760l4Udk30402.jpg', NULL, NULL),
(843, 582, 'LARGE', 900, 900, 'images/media/2021/03/large1617072760l4Udk30402.jpg', NULL, '2021-03-29 21:22:40'),
(844, 583, 'ACTUAL', 1000, 1000, 'images/media/2021/03/GRZGW30902.jpg', NULL, NULL),
(845, 583, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617072761GRZGW30902.jpg', NULL, NULL),
(846, 583, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617072761GRZGW30902.jpg', NULL, NULL),
(847, 583, 'LARGE', 900, 900, 'images/media/2021/03/large1617072762GRZGW30902.jpg', NULL, '2021-03-29 21:22:42'),
(848, 584, 'ACTUAL', 1000, 1000, 'images/media/2021/03/TdOrb30103.jpg', NULL, NULL),
(849, 584, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617073434TdOrb30103.jpg', NULL, NULL),
(850, 584, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617073434TdOrb30103.jpg', NULL, NULL),
(851, 584, 'LARGE', 900, 900, 'images/media/2021/03/large1617073434TdOrb30103.jpg', NULL, '2021-03-29 21:33:54'),
(852, 585, 'ACTUAL', 1000, 1000, 'images/media/2021/03/VtqrY30303.jpg', NULL, NULL),
(853, 585, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617073434VtqrY30303.jpg', NULL, NULL),
(854, 585, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617073434VtqrY30303.jpg', NULL, NULL),
(855, 585, 'LARGE', 900, 900, 'images/media/2021/03/large1617073434VtqrY30303.jpg', NULL, '2021-03-29 21:33:54'),
(856, 586, 'ACTUAL', 1000, 1000, 'images/media/2021/03/HgXzh30403.jpg', NULL, NULL),
(857, 586, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617073435HgXzh30403.jpg', NULL, NULL),
(858, 586, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617073435HgXzh30403.jpg', NULL, NULL),
(859, 586, 'LARGE', 900, 900, 'images/media/2021/03/large1617073435HgXzh30403.jpg', NULL, '2021-03-29 21:33:55'),
(860, 587, 'ACTUAL', 1000, 1000, 'images/media/2021/03/amy6g30503.jpg', NULL, NULL),
(861, 587, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617073435amy6g30503.jpg', NULL, NULL),
(862, 587, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617073435amy6g30503.jpg', NULL, NULL),
(863, 587, 'LARGE', 900, 900, 'images/media/2021/03/large1617073435amy6g30503.jpg', NULL, '2021-03-29 21:33:55'),
(864, 588, 'ACTUAL', 1000, 1000, 'images/media/2021/03/dY1YO30103.jpg', NULL, NULL),
(865, 588, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617073435dY1YO30103.jpg', NULL, NULL),
(866, 588, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617073435dY1YO30103.jpg', NULL, NULL),
(867, 588, 'LARGE', 900, 900, 'images/media/2021/03/large1617073435dY1YO30103.jpg', NULL, '2021-03-29 21:33:55'),
(868, 589, 'ACTUAL', 1000, 1000, 'images/media/2021/03/LfTm230903.jpg', NULL, NULL),
(869, 589, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617073435LfTm230903.jpg', NULL, NULL),
(870, 589, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617073435LfTm230903.jpg', NULL, NULL),
(871, 589, 'LARGE', 900, 900, 'images/media/2021/03/large1617073435LfTm230903.jpg', NULL, '2021-03-29 21:33:55'),
(872, 590, 'ACTUAL', 1000, 1000, 'images/media/2021/03/BgxTE30803.jpg', NULL, NULL),
(873, 590, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617073436BgxTE30803.jpg', NULL, NULL),
(874, 590, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617073436BgxTE30803.jpg', NULL, NULL),
(875, 590, 'LARGE', 900, 900, 'images/media/2021/03/large1617073436BgxTE30803.jpg', NULL, '2021-03-29 21:33:56'),
(876, 591, 'ACTUAL', 1000, 1000, 'images/media/2021/03/ElpdA30703.jpg', NULL, NULL),
(877, 591, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617073436ElpdA30703.jpg', NULL, NULL),
(878, 591, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617073436ElpdA30703.jpg', NULL, NULL),
(879, 591, 'LARGE', 900, 900, 'images/media/2021/03/large1617073436ElpdA30703.jpg', NULL, '2021-03-29 21:33:56'),
(880, 592, 'ACTUAL', 1000, 1000, 'images/media/2021/03/VOMya30303.jpg', NULL, NULL),
(881, 592, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617073955VOMya30303.jpg', NULL, NULL),
(882, 592, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617073955VOMya30303.jpg', NULL, NULL),
(883, 592, 'LARGE', 900, 900, 'images/media/2021/03/large1617073956VOMya30303.jpg', NULL, '2021-03-29 21:42:36'),
(884, 593, 'ACTUAL', 1000, 1000, 'images/media/2021/03/Yjuq330403.jpg', NULL, NULL),
(885, 593, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617073956Yjuq330403.jpg', NULL, NULL),
(886, 593, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617073956Yjuq330403.jpg', NULL, NULL),
(887, 593, 'LARGE', 900, 900, 'images/media/2021/03/large1617073956Yjuq330403.jpg', NULL, '2021-03-29 21:42:36'),
(888, 594, 'ACTUAL', 1000, 1000, 'images/media/2021/03/Dx8Iz30203.jpg', NULL, NULL),
(889, 594, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617073956Dx8Iz30203.jpg', NULL, NULL),
(890, 594, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617073956Dx8Iz30203.jpg', NULL, NULL),
(891, 594, 'LARGE', 900, 900, 'images/media/2021/03/large1617073956Dx8Iz30203.jpg', NULL, '2021-03-29 21:42:36'),
(892, 595, 'ACTUAL', 1000, 1000, 'images/media/2021/03/xxlZ830503.jpg', NULL, NULL),
(893, 595, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617073956xxlZ830503.jpg', NULL, NULL),
(894, 595, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617073956xxlZ830503.jpg', NULL, NULL),
(895, 595, 'LARGE', 900, 900, 'images/media/2021/03/large1617073956xxlZ830503.jpg', NULL, '2021-03-29 21:42:36'),
(896, 596, 'ACTUAL', 1000, 1000, 'images/media/2021/03/PDHU930603.jpg', NULL, NULL),
(897, 596, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617073956PDHU930603.jpg', NULL, NULL),
(898, 596, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617073957PDHU930603.jpg', NULL, NULL),
(899, 596, 'LARGE', 900, 900, 'images/media/2021/03/large1617073957PDHU930603.jpg', NULL, '2021-03-29 21:42:37'),
(900, 597, 'ACTUAL', 1000, 1000, 'images/media/2021/03/CYq5N30203.jpg', NULL, NULL),
(901, 597, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617073957CYq5N30203.jpg', NULL, NULL),
(902, 597, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617073957CYq5N30203.jpg', NULL, NULL),
(903, 597, 'LARGE', 900, 900, 'images/media/2021/03/large1617073957CYq5N30203.jpg', NULL, '2021-03-29 21:42:37'),
(904, 598, 'ACTUAL', 1000, 1000, 'images/media/2021/03/pyRMf30103.jpg', NULL, NULL),
(905, 598, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617073957pyRMf30103.jpg', NULL, NULL),
(906, 598, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617073957pyRMf30103.jpg', NULL, NULL),
(907, 598, 'LARGE', 900, 900, 'images/media/2021/03/large1617073957pyRMf30103.jpg', NULL, '2021-03-29 21:42:37'),
(908, 599, 'ACTUAL', 1000, 1000, 'images/media/2021/03/ATEk030203.jpg', NULL, NULL),
(909, 599, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617073957ATEk030203.jpg', NULL, NULL),
(910, 599, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617073958ATEk030203.jpg', NULL, NULL),
(911, 599, 'LARGE', 900, 900, 'images/media/2021/03/large1617073958ATEk030203.jpg', NULL, '2021-03-29 21:42:38'),
(912, 600, 'ACTUAL', 1000, 1000, 'images/media/2021/03/qZCe230403.jpg', NULL, NULL),
(913, 600, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617074139qZCe230403.jpg', NULL, NULL),
(914, 600, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617074139qZCe230403.jpg', NULL, NULL),
(915, 600, 'LARGE', 900, 900, 'images/media/2021/03/large1617074139qZCe230403.jpg', NULL, '2021-03-29 21:45:39'),
(916, 601, 'ACTUAL', 1000, 1000, 'images/media/2021/03/I8Xkf30203.jpg', NULL, NULL),
(917, 601, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617074139I8Xkf30203.jpg', NULL, NULL),
(918, 601, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617074139I8Xkf30203.jpg', NULL, NULL),
(919, 601, 'LARGE', 900, 900, 'images/media/2021/03/large1617074139I8Xkf30203.jpg', NULL, '2021-03-29 21:45:39'),
(920, 602, 'ACTUAL', 1000, 1000, 'images/media/2021/03/FHGrn30303.jpg', NULL, NULL),
(921, 602, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617074139FHGrn30303.jpg', NULL, NULL),
(922, 602, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617074139FHGrn30303.jpg', NULL, NULL),
(923, 602, 'LARGE', 900, 900, 'images/media/2021/03/large1617074139FHGrn30303.jpg', NULL, '2021-03-29 21:45:39'),
(924, 603, 'ACTUAL', 1000, 1000, 'images/media/2021/03/WU4Zd30803.jpg', NULL, NULL),
(925, 603, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617074140WU4Zd30803.jpg', NULL, NULL),
(926, 603, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617074140WU4Zd30803.jpg', NULL, NULL),
(927, 603, 'LARGE', 900, 900, 'images/media/2021/03/large1617074140WU4Zd30803.jpg', NULL, '2021-03-29 21:45:40'),
(928, 604, 'ACTUAL', 1000, 1000, 'images/media/2021/03/Xyg9b30203.jpg', NULL, NULL),
(929, 604, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617074140Xyg9b30203.jpg', NULL, NULL),
(930, 604, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617074140Xyg9b30203.jpg', NULL, NULL),
(931, 604, 'LARGE', 900, 900, 'images/media/2021/03/large1617074140Xyg9b30203.jpg', NULL, '2021-03-29 21:45:40'),
(932, 605, 'ACTUAL', 1000, 1000, 'images/media/2021/03/HMd6x30303.jpg', NULL, NULL),
(933, 605, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617074140HMd6x30303.jpg', NULL, NULL),
(934, 605, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617074140HMd6x30303.jpg', NULL, NULL),
(935, 605, 'LARGE', 900, 900, 'images/media/2021/03/large1617074140HMd6x30303.jpg', NULL, '2021-03-29 21:45:40'),
(936, 606, 'ACTUAL', 1000, 1000, 'images/media/2021/03/Gvyf830503.jpg', NULL, NULL),
(937, 606, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617074140Gvyf830503.jpg', NULL, NULL),
(938, 606, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617074140Gvyf830503.jpg', NULL, NULL),
(939, 606, 'LARGE', 900, 900, 'images/media/2021/03/large1617074141Gvyf830503.jpg', NULL, '2021-03-29 21:45:41'),
(940, 607, 'ACTUAL', 1000, 1000, 'images/media/2021/03/aycHh30503.jpg', NULL, NULL),
(941, 607, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617074141aycHh30503.jpg', NULL, NULL),
(942, 607, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617074141aycHh30503.jpg', NULL, NULL),
(943, 607, 'LARGE', 900, 900, 'images/media/2021/03/large1617074141aycHh30503.jpg', NULL, '2021-03-29 21:45:41'),
(944, 608, 'ACTUAL', 1000, 1000, 'images/media/2021/03/PpCRl30403.jpg', NULL, NULL),
(945, 608, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617075725PpCRl30403.jpg', NULL, NULL),
(946, 608, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617075725PpCRl30403.jpg', NULL, NULL),
(947, 608, 'LARGE', 900, 900, 'images/media/2021/03/large1617075725PpCRl30403.jpg', NULL, '2021-03-29 22:12:05'),
(948, 609, 'ACTUAL', 1000, 1000, 'images/media/2021/03/A8anX30503.jpg', NULL, NULL),
(949, 609, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617075725A8anX30503.jpg', NULL, NULL),
(950, 609, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617075725A8anX30503.jpg', NULL, NULL),
(951, 609, 'LARGE', 900, 900, 'images/media/2021/03/large1617075725A8anX30503.jpg', NULL, '2021-03-29 22:12:05'),
(952, 610, 'ACTUAL', 1000, 1000, 'images/media/2021/03/g2apA30303.jpg', NULL, NULL),
(953, 610, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617075725g2apA30303.jpg', NULL, NULL),
(954, 610, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617075725g2apA30303.jpg', NULL, NULL),
(955, 610, 'LARGE', 900, 900, 'images/media/2021/03/large1617075726g2apA30303.jpg', NULL, '2021-03-29 22:12:06'),
(956, 611, 'ACTUAL', 1000, 1000, 'images/media/2021/03/U4XVs30903.jpg', NULL, NULL),
(957, 611, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617075726U4XVs30903.jpg', NULL, NULL),
(958, 611, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617075726U4XVs30903.jpg', NULL, NULL),
(959, 611, 'LARGE', 900, 900, 'images/media/2021/03/large1617075726U4XVs30903.jpg', NULL, '2021-03-29 22:12:06'),
(960, 612, 'ACTUAL', 1000, 1000, 'images/media/2021/03/TOC0s30903.jpg', NULL, NULL),
(961, 612, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617075726TOC0s30903.jpg', NULL, NULL),
(962, 612, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617075726TOC0s30903.jpg', NULL, NULL),
(963, 612, 'LARGE', 900, 900, 'images/media/2021/03/large1617075726TOC0s30903.jpg', NULL, '2021-03-29 22:12:06'),
(964, 613, 'ACTUAL', 1000, 1000, 'images/media/2021/03/TYRSo30303.jpg', NULL, NULL),
(965, 613, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617075726TYRSo30303.jpg', NULL, NULL),
(966, 613, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617075726TYRSo30303.jpg', NULL, NULL),
(967, 613, 'LARGE', 900, 900, 'images/media/2021/03/large1617075726TYRSo30303.jpg', NULL, '2021-03-29 22:12:06'),
(968, 614, 'ACTUAL', 1000, 1000, 'images/media/2021/03/5AO0J30403.jpg', NULL, NULL),
(969, 614, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail16170757265AO0J30403.jpg', NULL, NULL),
(970, 614, 'MEDIUM', 400, 400, 'images/media/2021/03/medium16170757275AO0J30403.jpg', NULL, NULL),
(971, 614, 'LARGE', 900, 900, 'images/media/2021/03/large16170757275AO0J30403.jpg', NULL, '2021-03-29 22:12:07'),
(972, 615, 'ACTUAL', 1000, 1000, 'images/media/2021/03/xhsnr30503.jpg', NULL, NULL),
(973, 615, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617075727xhsnr30503.jpg', NULL, NULL),
(974, 615, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617075727xhsnr30503.jpg', NULL, NULL),
(975, 615, 'LARGE', 900, 900, 'images/media/2021/03/large1617075727xhsnr30503.jpg', NULL, '2021-03-29 22:12:07'),
(976, 616, 'ACTUAL', 1000, 1000, 'images/media/2021/03/6iN1y31102.jpg', NULL, NULL),
(977, 616, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail16171588656iN1y31102.jpg', NULL, NULL),
(978, 616, 'MEDIUM', 400, 400, 'images/media/2021/03/medium16171588656iN1y31102.jpg', NULL, NULL),
(979, 616, 'LARGE', 900, 900, 'images/media/2021/03/large16171588656iN1y31102.jpg', NULL, '2021-03-30 21:17:45'),
(980, 617, 'ACTUAL', 1000, 1000, 'images/media/2021/03/EmUFo31502.jpg', NULL, NULL),
(981, 617, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617158865EmUFo31502.jpg', NULL, NULL),
(982, 617, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617158865EmUFo31502.jpg', NULL, NULL),
(983, 617, 'LARGE', 900, 900, 'images/media/2021/03/large1617158865EmUFo31502.jpg', NULL, '2021-03-30 21:17:45'),
(984, 618, 'ACTUAL', 1000, 1000, 'images/media/2021/03/mrJfk31502.jpg', NULL, NULL),
(985, 618, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617158865mrJfk31502.jpg', NULL, NULL),
(986, 618, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617158865mrJfk31502.jpg', NULL, NULL),
(987, 618, 'LARGE', 900, 900, 'images/media/2021/03/large1617158865mrJfk31502.jpg', NULL, '2021-03-30 21:17:45'),
(988, 619, 'ACTUAL', 1000, 1000, 'images/media/2021/03/n11vx31802.jpg', NULL, NULL),
(989, 619, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617158866n11vx31802.jpg', NULL, NULL),
(990, 619, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617158866n11vx31802.jpg', NULL, NULL),
(991, 619, 'LARGE', 900, 900, 'images/media/2021/03/large1617158866n11vx31802.jpg', NULL, '2021-03-30 21:17:46'),
(992, 620, 'ACTUAL', 1000, 1000, 'images/media/2021/03/CORNr31302.jpg', NULL, NULL),
(993, 620, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617158866CORNr31302.jpg', NULL, NULL),
(994, 620, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617158866CORNr31302.jpg', NULL, NULL),
(995, 620, 'LARGE', 900, 900, 'images/media/2021/03/large1617158866CORNr31302.jpg', NULL, '2021-03-30 21:17:46'),
(996, 621, 'ACTUAL', 1000, 1000, 'images/media/2021/03/xVFAt31702.jpg', NULL, NULL),
(997, 621, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617158866xVFAt31702.jpg', NULL, NULL),
(998, 621, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617158866xVFAt31702.jpg', NULL, NULL),
(999, 621, 'LARGE', 900, 900, 'images/media/2021/03/large1617158866xVFAt31702.jpg', NULL, '2021-03-30 21:17:46'),
(1000, 622, 'ACTUAL', 1000, 1000, 'images/media/2021/03/ncfD531302.jpg', NULL, NULL),
(1001, 622, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617158866ncfD531302.jpg', NULL, NULL),
(1002, 622, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617158866ncfD531302.jpg', NULL, NULL),
(1003, 622, 'LARGE', 900, 900, 'images/media/2021/03/large1617158866ncfD531302.jpg', NULL, '2021-03-30 21:17:46'),
(1004, 623, 'ACTUAL', 1000, 1000, 'images/media/2021/03/Z2Ndf31802.jpg', NULL, NULL),
(1005, 623, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617158867Z2Ndf31802.jpg', NULL, NULL),
(1006, 623, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617158867Z2Ndf31802.jpg', NULL, NULL),
(1007, 623, 'LARGE', 900, 900, 'images/media/2021/03/large1617158867Z2Ndf31802.jpg', NULL, '2021-03-30 21:17:47'),
(1008, 624, 'ACTUAL', 416, 416, 'images/media/2021/03/9uzuo31603.jpeg', NULL, NULL),
(1009, 624, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail16171606959uzuo31603.jpeg', NULL, NULL),
(1010, 624, 'MEDIUM', 400, 400, 'images/media/2021/03/medium16171606959uzuo31603.jpeg', NULL, NULL),
(1011, 625, 'ACTUAL', 416, 416, 'images/media/2021/03/Dknku31903.jpeg', NULL, NULL),
(1012, 625, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617160695Dknku31903.jpeg', NULL, NULL),
(1013, 625, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617160695Dknku31903.jpeg', NULL, NULL),
(1014, 626, 'ACTUAL', 416, 416, 'images/media/2021/03/ICJEj31403.jpeg', NULL, NULL),
(1015, 626, 'THUMBNAIL', 150, 150, 'images/media/2021/03/thumbnail1617160695ICJEj31403.jpeg', NULL, NULL),
(1016, 626, 'MEDIUM', 400, 400, 'images/media/2021/03/medium1617160695ICJEj31403.jpeg', NULL, NULL),
(1017, 627, 'ACTUAL', 593, 473, 'images/media/2021/03/IgOpc31103.jpg', NULL, NULL),
(1018, 627, 'THUMBNAIL', 150, 120, 'images/media/2021/03/thumbnail1617160696IgOpc31103.jpg', NULL, NULL),
(1019, 627, 'MEDIUM', 400, 319, 'images/media/2021/03/medium1617160696IgOpc31103.jpg', NULL, NULL),
(1020, 628, 'ACTUAL', 593, 473, 'images/media/2021/03/SqT8031903.jpg', NULL, NULL),
(1021, 628, 'THUMBNAIL', 150, 120, 'images/media/2021/03/thumbnail1617160697SqT8031903.jpg', NULL, NULL),
(1022, 628, 'MEDIUM', 400, 319, 'images/media/2021/03/medium1617160697SqT8031903.jpg', NULL, NULL),
(1023, 629, 'ACTUAL', 593, 473, 'images/media/2021/03/kftww31203.jpg', NULL, NULL),
(1024, 629, 'THUMBNAIL', 150, 120, 'images/media/2021/03/thumbnail1617160698kftww31203.jpg', NULL, NULL),
(1025, 629, 'MEDIUM', 400, 319, 'images/media/2021/03/medium1617160698kftww31203.jpg', NULL, NULL),
(1026, 630, 'ACTUAL', 720, 540, 'images/media/2021/03/wBduX31103.jpg', NULL, NULL),
(1027, 630, 'THUMBNAIL', 150, 113, 'images/media/2021/03/thumbnail1617160700wBduX31103.jpg', NULL, NULL),
(1028, 630, 'MEDIUM', 400, 300, 'images/media/2021/03/medium1617160700wBduX31103.jpg', NULL, NULL),
(1029, 631, 'ACTUAL', 720, 540, 'images/media/2021/03/3gAjX31703.jpg', NULL, NULL),
(1030, 631, 'THUMBNAIL', 150, 113, 'images/media/2021/03/thumbnail16171607013gAjX31703.jpg', NULL, NULL),
(1031, 631, 'MEDIUM', 400, 300, 'images/media/2021/03/medium16171607013gAjX31703.jpg', NULL, NULL),
(1032, 632, 'ACTUAL', 720, 540, 'images/media/2021/03/3Frsg31103.jpg', NULL, NULL),
(1033, 632, 'THUMBNAIL', 150, 113, 'images/media/2021/03/thumbnail16171607023Frsg31103.jpg', NULL, NULL),
(1034, 632, 'MEDIUM', 400, 300, 'images/media/2021/03/medium16171607023Frsg31103.jpg', NULL, NULL),
(1035, 633, 'ACTUAL', 593, 473, 'images/media/2021/03/Tuji431803.jpg', NULL, NULL),
(1036, 633, 'THUMBNAIL', 150, 120, 'images/media/2021/03/thumbnail1617160703Tuji431803.jpg', NULL, NULL),
(1037, 633, 'MEDIUM', 400, 319, 'images/media/2021/03/medium1617160704Tuji431803.jpg', NULL, NULL),
(1038, 634, 'ACTUAL', 1000, 1000, 'images/media/2021/04/3V5tS05701.jpg', NULL, NULL),
(1039, 634, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail16175875683V5tS05701.jpg', NULL, NULL),
(1040, 634, 'MEDIUM', 400, 400, 'images/media/2021/04/medium16175875683V5tS05701.jpg', NULL, NULL),
(1041, 634, 'LARGE', 900, 900, 'images/media/2021/04/large16175875683V5tS05701.jpg', NULL, '2021-04-04 20:22:48'),
(1042, 635, 'ACTUAL', 1000, 1000, 'images/media/2021/04/4Cyd305301.jpg', NULL, NULL),
(1043, 635, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail16175875694Cyd305301.jpg', NULL, NULL),
(1044, 635, 'MEDIUM', 400, 400, 'images/media/2021/04/medium16175875694Cyd305301.jpg', NULL, NULL),
(1045, 635, 'LARGE', 900, 900, 'images/media/2021/04/large16175875694Cyd305301.jpg', NULL, '2021-04-04 20:22:49'),
(1046, 636, 'ACTUAL', 1000, 1000, 'images/media/2021/04/kSbVo05901.jpg', NULL, NULL),
(1047, 636, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617587571kSbVo05901.jpg', NULL, NULL),
(1048, 636, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617587571kSbVo05901.jpg', NULL, NULL),
(1049, 636, 'LARGE', 900, 900, 'images/media/2021/04/large1617587572kSbVo05901.jpg', NULL, '2021-04-04 20:22:52'),
(1050, 637, 'ACTUAL', 1000, 1000, 'images/media/2021/04/npxCO05401.jpg', NULL, NULL),
(1051, 637, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617587573npxCO05401.jpg', NULL, NULL),
(1052, 637, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617587573npxCO05401.jpg', NULL, NULL),
(1053, 637, 'LARGE', 900, 900, 'images/media/2021/04/large1617587573npxCO05401.jpg', NULL, '2021-04-04 20:22:53'),
(1054, 638, 'ACTUAL', 1000, 1000, 'images/media/2021/04/llcqd05101.jpg', NULL, NULL),
(1055, 638, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617587573llcqd05101.jpg', NULL, NULL),
(1056, 638, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617587573llcqd05101.jpg', NULL, NULL),
(1057, 638, 'LARGE', 900, 900, 'images/media/2021/04/large1617587574llcqd05101.jpg', NULL, '2021-04-04 20:22:54'),
(1058, 639, 'ACTUAL', 1000, 1000, 'images/media/2021/04/xPFew05501.jpg', NULL, NULL),
(1059, 639, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617587574xPFew05501.jpg', NULL, NULL),
(1060, 639, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617587574xPFew05501.jpg', NULL, NULL),
(1061, 639, 'LARGE', 900, 900, 'images/media/2021/04/large1617587575xPFew05501.jpg', NULL, '2021-04-04 20:22:55'),
(1062, 640, 'ACTUAL', 1000, 1000, 'images/media/2021/04/d8ZLF05201.jpg', NULL, NULL),
(1063, 640, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617587575d8ZLF05201.jpg', NULL, NULL),
(1064, 640, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617587575d8ZLF05201.jpg', NULL, NULL),
(1065, 640, 'LARGE', 900, 900, 'images/media/2021/04/large1617587575d8ZLF05201.jpg', NULL, '2021-04-04 20:22:55'),
(1066, 641, 'ACTUAL', 1000, 1000, 'images/media/2021/04/cTOOx05701.jpg', NULL, NULL),
(1067, 641, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617587576cTOOx05701.jpg', NULL, NULL),
(1068, 641, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617587576cTOOx05701.jpg', NULL, NULL),
(1069, 641, 'LARGE', 900, 900, 'images/media/2021/04/large1617587576cTOOx05701.jpg', NULL, '2021-04-04 20:22:56'),
(1070, 642, 'ACTUAL', 1000, 1000, 'images/media/2021/04/hsWAU05202.jpg', NULL, NULL),
(1071, 642, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617588173hsWAU05202.jpg', NULL, NULL),
(1072, 642, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617588173hsWAU05202.jpg', NULL, NULL),
(1073, 642, 'LARGE', 900, 900, 'images/media/2021/04/large1617588173hsWAU05202.jpg', NULL, '2021-04-04 20:32:53'),
(1074, 643, 'ACTUAL', 1000, 1000, 'images/media/2021/04/IGGJU05302.jpg', NULL, NULL),
(1075, 643, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617588173IGGJU05302.jpg', NULL, NULL),
(1076, 643, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617588173IGGJU05302.jpg', NULL, NULL),
(1077, 643, 'LARGE', 900, 900, 'images/media/2021/04/large1617588173IGGJU05302.jpg', NULL, '2021-04-04 20:32:53'),
(1078, 644, 'ACTUAL', 1000, 1000, 'images/media/2021/04/YUu7c05702.jpg', NULL, NULL),
(1079, 644, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617588173YUu7c05702.jpg', NULL, NULL),
(1080, 644, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617588173YUu7c05702.jpg', NULL, NULL),
(1081, 644, 'LARGE', 900, 900, 'images/media/2021/04/large1617588173YUu7c05702.jpg', NULL, '2021-04-04 20:32:53'),
(1082, 645, 'ACTUAL', 1000, 1000, 'images/media/2021/04/GPdXy05102.jpg', NULL, NULL),
(1083, 645, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617588173GPdXy05102.jpg', NULL, NULL),
(1084, 645, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617588173GPdXy05102.jpg', NULL, NULL),
(1085, 645, 'LARGE', 900, 900, 'images/media/2021/04/large1617588173GPdXy05102.jpg', NULL, '2021-04-04 20:32:53'),
(1086, 646, 'ACTUAL', 1000, 1000, 'images/media/2021/04/tYOu305402.jpg', NULL, NULL),
(1087, 646, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617588173tYOu305402.jpg', NULL, NULL),
(1088, 646, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617588174tYOu305402.jpg', NULL, NULL),
(1089, 646, 'LARGE', 900, 900, 'images/media/2021/04/large1617588174tYOu305402.jpg', NULL, '2021-04-04 20:32:54'),
(1090, 647, 'ACTUAL', 1000, 1000, 'images/media/2021/04/4HSZd05102.jpg', NULL, NULL),
(1091, 647, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail16175881744HSZd05102.jpg', NULL, NULL),
(1092, 647, 'MEDIUM', 400, 400, 'images/media/2021/04/medium16175881744HSZd05102.jpg', NULL, NULL),
(1093, 647, 'LARGE', 900, 900, 'images/media/2021/04/large16175881744HSZd05102.jpg', NULL, '2021-04-04 20:32:54'),
(1094, 648, 'ACTUAL', 1000, 1000, 'images/media/2021/04/ASD7H05802.jpg', NULL, NULL),
(1095, 648, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617588174ASD7H05802.jpg', NULL, NULL),
(1096, 648, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617588174ASD7H05802.jpg', NULL, NULL),
(1097, 648, 'LARGE', 900, 900, 'images/media/2021/04/large1617588174ASD7H05802.jpg', NULL, '2021-04-04 20:32:54'),
(1098, 649, 'ACTUAL', 1000, 1000, 'images/media/2021/04/1tDH505102.jpg', NULL, NULL),
(1099, 649, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail16175881741tDH505102.jpg', NULL, NULL),
(1100, 649, 'MEDIUM', 400, 400, 'images/media/2021/04/medium16175881741tDH505102.jpg', NULL, NULL),
(1101, 649, 'LARGE', 900, 900, 'images/media/2021/04/large16175881741tDH505102.jpg', NULL, '2021-04-04 20:32:54'),
(1102, 650, 'ACTUAL', 1000, 1000, 'images/media/2021/04/zwghe05902.jpg', NULL, NULL),
(1103, 650, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617588286zwghe05902.jpg', NULL, NULL),
(1104, 650, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617588286zwghe05902.jpg', NULL, NULL),
(1105, 650, 'LARGE', 900, 900, 'images/media/2021/04/large1617588286zwghe05902.jpg', NULL, '2021-04-04 20:34:46'),
(1106, 651, 'ACTUAL', 1000, 1000, 'images/media/2021/04/eNkl405902.jpg', NULL, NULL),
(1107, 651, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617588286eNkl405902.jpg', NULL, NULL),
(1108, 651, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617588286eNkl405902.jpg', NULL, NULL),
(1109, 651, 'LARGE', 900, 900, 'images/media/2021/04/large1617588286eNkl405902.jpg', NULL, '2021-04-04 20:34:46'),
(1110, 652, 'ACTUAL', 1000, 1000, 'images/media/2021/04/Vd5O605402.jpg', NULL, NULL),
(1111, 652, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617588286Vd5O605402.jpg', NULL, NULL),
(1112, 652, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617588286Vd5O605402.jpg', NULL, NULL),
(1113, 652, 'LARGE', 900, 900, 'images/media/2021/04/large1617588286Vd5O605402.jpg', NULL, '2021-04-04 20:34:46'),
(1114, 653, 'ACTUAL', 1000, 1000, 'images/media/2021/04/toIdK05802.jpg', NULL, NULL),
(1115, 653, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617588286toIdK05802.jpg', NULL, NULL),
(1116, 653, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617588286toIdK05802.jpg', NULL, NULL),
(1117, 653, 'LARGE', 900, 900, 'images/media/2021/04/large1617588287toIdK05802.jpg', NULL, '2021-04-04 20:34:47'),
(1118, 654, 'ACTUAL', 1000, 1000, 'images/media/2021/04/CSRqX05802.jpg', NULL, NULL),
(1119, 654, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617588287CSRqX05802.jpg', NULL, NULL),
(1120, 654, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617588287CSRqX05802.jpg', NULL, NULL),
(1121, 654, 'LARGE', 900, 900, 'images/media/2021/04/large1617588287CSRqX05802.jpg', NULL, '2021-04-04 20:34:47'),
(1122, 655, 'ACTUAL', 1000, 1000, 'images/media/2021/04/yA2hv05402.jpg', NULL, NULL),
(1123, 655, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617588287yA2hv05402.jpg', NULL, NULL),
(1124, 655, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617588287yA2hv05402.jpg', NULL, NULL),
(1125, 655, 'LARGE', 900, 900, 'images/media/2021/04/large1617588287yA2hv05402.jpg', NULL, '2021-04-04 20:34:47'),
(1126, 656, 'ACTUAL', 1000, 1000, 'images/media/2021/04/jw6Dd05202.jpg', NULL, NULL),
(1127, 656, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617588287jw6Dd05202.jpg', NULL, NULL),
(1128, 656, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617588287jw6Dd05202.jpg', NULL, NULL),
(1129, 656, 'LARGE', 900, 900, 'images/media/2021/04/large1617588287jw6Dd05202.jpg', NULL, '2021-04-04 20:34:47'),
(1130, 657, 'ACTUAL', 1000, 1000, 'images/media/2021/04/QoMhq05502.jpg', NULL, NULL),
(1131, 657, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617588288QoMhq05502.jpg', NULL, NULL),
(1132, 657, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617588288QoMhq05502.jpg', NULL, NULL),
(1133, 657, 'LARGE', 900, 900, 'images/media/2021/04/large1617588288QoMhq05502.jpg', NULL, '2021-04-04 20:34:48'),
(1134, 658, 'ACTUAL', 1000, 1000, 'images/media/2021/04/9N0gh05212.jpg', NULL, NULL),
(1135, 658, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail16176255919N0gh05212.jpg', NULL, NULL),
(1136, 658, 'MEDIUM', 400, 400, 'images/media/2021/04/medium16176255919N0gh05212.jpg', NULL, NULL),
(1137, 658, 'LARGE', 900, 900, 'images/media/2021/04/large16176255919N0gh05212.jpg', NULL, '2021-04-05 06:56:31'),
(1138, 659, 'ACTUAL', 1000, 1000, 'images/media/2021/04/enwPF05112.jpg', NULL, NULL),
(1139, 659, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617625591enwPF05112.jpg', NULL, NULL),
(1140, 659, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617625591enwPF05112.jpg', NULL, NULL),
(1141, 659, 'LARGE', 900, 900, 'images/media/2021/04/large1617625591enwPF05112.jpg', NULL, '2021-04-05 06:56:31'),
(1142, 660, 'ACTUAL', 1000, 1000, 'images/media/2021/04/otGGa05512.jpg', NULL, NULL),
(1143, 660, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617625592otGGa05512.jpg', NULL, NULL),
(1144, 660, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617625592otGGa05512.jpg', NULL, NULL),
(1145, 660, 'LARGE', 900, 900, 'images/media/2021/04/large1617625592otGGa05512.jpg', NULL, '2021-04-05 06:56:32'),
(1146, 661, 'ACTUAL', 1000, 1000, 'images/media/2021/04/OtukR05612.jpg', NULL, NULL),
(1147, 661, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617625592OtukR05612.jpg', NULL, NULL),
(1148, 661, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617625592OtukR05612.jpg', NULL, NULL),
(1149, 661, 'LARGE', 900, 900, 'images/media/2021/04/large1617625592OtukR05612.jpg', NULL, '2021-04-05 06:56:32'),
(1150, 662, 'ACTUAL', 1000, 1000, 'images/media/2021/04/pNqPd05512.jpg', NULL, NULL),
(1151, 662, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617625592pNqPd05512.jpg', NULL, NULL),
(1152, 662, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617625592pNqPd05512.jpg', NULL, NULL),
(1153, 662, 'LARGE', 900, 900, 'images/media/2021/04/large1617625593pNqPd05512.jpg', NULL, '2021-04-05 06:56:33'),
(1154, 663, 'ACTUAL', 1000, 1000, 'images/media/2021/04/AE1G205212.jpg', NULL, NULL),
(1155, 663, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617625593AE1G205212.jpg', NULL, NULL),
(1156, 663, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617625593AE1G205212.jpg', NULL, NULL),
(1157, 663, 'LARGE', 900, 900, 'images/media/2021/04/large1617625593AE1G205212.jpg', NULL, '2021-04-05 06:56:33'),
(1158, 664, 'ACTUAL', 1000, 1000, 'images/media/2021/04/fEfec05612.jpg', NULL, NULL),
(1159, 664, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617625593fEfec05612.jpg', NULL, NULL),
(1160, 664, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617625593fEfec05612.jpg', NULL, NULL),
(1161, 664, 'LARGE', 900, 900, 'images/media/2021/04/large1617625593fEfec05612.jpg', NULL, '2021-04-05 06:56:33'),
(1162, 665, 'ACTUAL', 1000, 1000, 'images/media/2021/04/gqY9005312.jpg', NULL, NULL),
(1163, 665, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617625593gqY9005312.jpg', NULL, NULL),
(1164, 665, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617625594gqY9005312.jpg', NULL, NULL),
(1165, 665, 'LARGE', 900, 900, 'images/media/2021/04/large1617625594gqY9005312.jpg', NULL, '2021-04-05 06:56:34'),
(1166, 666, 'ACTUAL', 1000, 1000, 'images/media/2021/04/63ZHM05312.jpg', NULL, NULL),
(1167, 666, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail161762596363ZHM05312.jpg', NULL, NULL),
(1168, 666, 'MEDIUM', 400, 400, 'images/media/2021/04/medium161762596463ZHM05312.jpg', NULL, NULL),
(1169, 666, 'LARGE', 900, 900, 'images/media/2021/04/large161762596463ZHM05312.jpg', NULL, '2021-04-05 07:02:44'),
(1170, 667, 'ACTUAL', 1000, 1000, 'images/media/2021/04/vtF0a05512.jpg', NULL, NULL),
(1171, 667, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617625964vtF0a05512.jpg', NULL, NULL),
(1172, 667, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617625964vtF0a05512.jpg', NULL, NULL),
(1173, 667, 'LARGE', 900, 900, 'images/media/2021/04/large1617625964vtF0a05512.jpg', NULL, '2021-04-05 07:02:44'),
(1174, 668, 'ACTUAL', 1000, 1000, 'images/media/2021/04/Om0qV05512.jpg', NULL, NULL),
(1175, 668, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617625964Om0qV05512.jpg', NULL, NULL),
(1176, 668, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617625964Om0qV05512.jpg', NULL, NULL),
(1177, 668, 'LARGE', 900, 900, 'images/media/2021/04/large1617625964Om0qV05512.jpg', NULL, '2021-04-05 07:02:44'),
(1178, 669, 'ACTUAL', 1000, 1000, 'images/media/2021/04/p0pO705212.jpg', NULL, NULL),
(1179, 669, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617625965p0pO705212.jpg', NULL, NULL),
(1180, 669, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617625965p0pO705212.jpg', NULL, NULL),
(1181, 669, 'LARGE', 900, 900, 'images/media/2021/04/large1617625965p0pO705212.jpg', NULL, '2021-04-05 07:02:45'),
(1182, 670, 'ACTUAL', 1000, 1000, 'images/media/2021/04/l9tQp05712.jpg', NULL, NULL),
(1183, 670, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617625965l9tQp05712.jpg', NULL, NULL),
(1184, 670, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617625965l9tQp05712.jpg', NULL, NULL),
(1185, 670, 'LARGE', 900, 900, 'images/media/2021/04/large1617625965l9tQp05712.jpg', NULL, '2021-04-05 07:02:45'),
(1186, 671, 'ACTUAL', 1000, 1000, 'images/media/2021/04/1TO3105212.jpg', NULL, NULL),
(1187, 671, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail16176259651TO3105212.jpg', NULL, NULL),
(1188, 671, 'MEDIUM', 400, 400, 'images/media/2021/04/medium16176259651TO3105212.jpg', NULL, NULL),
(1189, 671, 'LARGE', 900, 900, 'images/media/2021/04/large16176259661TO3105212.jpg', NULL, '2021-04-05 07:02:46'),
(1190, 672, 'ACTUAL', 1000, 1000, 'images/media/2021/04/DJFFP05812.jpg', NULL, NULL),
(1191, 672, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617625966DJFFP05812.jpg', NULL, NULL),
(1192, 672, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617625966DJFFP05812.jpg', NULL, NULL),
(1193, 672, 'LARGE', 900, 900, 'images/media/2021/04/large1617625966DJFFP05812.jpg', NULL, '2021-04-05 07:02:46'),
(1194, 673, 'ACTUAL', 1000, 1000, 'images/media/2021/04/pDr2U05612.jpg', NULL, NULL),
(1195, 673, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617625966pDr2U05612.jpg', NULL, NULL),
(1196, 673, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617625966pDr2U05612.jpg', NULL, NULL),
(1197, 673, 'LARGE', 900, 900, 'images/media/2021/04/large1617625966pDr2U05612.jpg', NULL, '2021-04-05 07:02:47'),
(1198, 674, 'ACTUAL', 358, 358, 'images/media/2021/04/TQGnC05901.png', NULL, NULL),
(1199, 674, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617628884TQGnC05901.png', NULL, NULL),
(1200, 675, 'ACTUAL', 358, 358, 'images/media/2021/04/5ldJM05601.png', NULL, NULL),
(1201, 675, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail16176288845ldJM05601.png', NULL, NULL),
(1202, 676, 'ACTUAL', 277, 370, 'images/media/2021/04/Phyi805401.png', NULL, NULL),
(1203, 676, 'THUMBNAIL', 112, 150, 'images/media/2021/04/thumbnail1617628884Phyi805401.png', NULL, NULL),
(1204, 677, 'ACTUAL', 277, 370, 'images/media/2021/04/AOHAb05601.png', NULL, NULL),
(1205, 677, 'THUMBNAIL', 112, 150, 'images/media/2021/04/thumbnail1617628885AOHAb05601.png', NULL, NULL),
(1206, 678, 'ACTUAL', 277, 370, 'images/media/2021/04/ezOLV05801.png', NULL, NULL),
(1207, 678, 'THUMBNAIL', 112, 150, 'images/media/2021/04/thumbnail1617628885ezOLV05801.png', NULL, NULL),
(1208, 679, 'ACTUAL', 500, 1520, 'images/media/2021/04/5kmZi05601.png', NULL, NULL),
(1209, 679, 'THUMBNAIL', 49, 150, 'images/media/2021/04/thumbnail16176288865kmZi05601.png', NULL, NULL),
(1210, 679, 'MEDIUM', 132, 400, 'images/media/2021/04/medium16176288865kmZi05601.png', NULL, NULL),
(1211, 680, 'ACTUAL', 400, 1520, 'images/media/2021/04/JJDoj05701.png', NULL, NULL),
(1212, 679, 'LARGE', 296, 900, 'images/media/2021/04/large16176288865kmZi05601.png', NULL, '2021-04-04 19:51:26'),
(1213, 680, 'THUMBNAIL', 39, 150, 'images/media/2021/04/thumbnail1617628886JJDoj05701.png', NULL, NULL),
(1214, 680, 'MEDIUM', 105, 400, 'images/media/2021/04/medium1617628886JJDoj05701.png', NULL, NULL),
(1215, 680, 'LARGE', 237, 900, 'images/media/2021/04/large1617628887JJDoj05701.png', NULL, '2021-04-04 19:51:27'),
(1216, 681, 'ACTUAL', 1000, 1000, 'images/media/2021/04/61GMb06401.jpg', NULL, NULL),
(1217, 681, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail161767349061GMb06401.jpg', NULL, NULL),
(1218, 681, 'MEDIUM', 400, 400, 'images/media/2021/04/medium161767349061GMb06401.jpg', NULL, NULL),
(1219, 681, 'LARGE', 900, 900, 'images/media/2021/04/large161767349061GMb06401.jpg', NULL, '2021-04-05 20:14:50'),
(1220, 682, 'ACTUAL', 1000, 1000, 'images/media/2021/04/l4X9B06401.jpg', NULL, NULL),
(1221, 682, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617673490l4X9B06401.jpg', NULL, NULL),
(1222, 682, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617673490l4X9B06401.jpg', NULL, NULL),
(1223, 682, 'LARGE', 900, 900, 'images/media/2021/04/large1617673490l4X9B06401.jpg', NULL, '2021-04-05 20:14:50'),
(1224, 683, 'ACTUAL', 1000, 1000, 'images/media/2021/04/DSM9h06101.jpg', NULL, NULL),
(1225, 683, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617673491DSM9h06101.jpg', NULL, NULL),
(1226, 683, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617673491DSM9h06101.jpg', NULL, NULL),
(1227, 683, 'LARGE', 900, 900, 'images/media/2021/04/large1617673491DSM9h06101.jpg', NULL, '2021-04-05 20:14:51'),
(1228, 684, 'ACTUAL', 1000, 1000, 'images/media/2021/04/S6iz206901.jpg', NULL, NULL),
(1229, 684, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617673491S6iz206901.jpg', NULL, NULL),
(1230, 684, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617673491S6iz206901.jpg', NULL, NULL),
(1231, 684, 'LARGE', 900, 900, 'images/media/2021/04/large1617673491S6iz206901.jpg', NULL, '2021-04-05 20:14:51'),
(1232, 685, 'ACTUAL', 1000, 1000, 'images/media/2021/04/jstBJ06901.jpg', NULL, NULL),
(1233, 685, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617673491jstBJ06901.jpg', NULL, NULL),
(1234, 685, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617673491jstBJ06901.jpg', NULL, NULL),
(1235, 685, 'LARGE', 900, 900, 'images/media/2021/04/large1617673491jstBJ06901.jpg', NULL, '2021-04-05 20:14:51'),
(1236, 686, 'ACTUAL', 1000, 1000, 'images/media/2021/04/b9uFR06501.jpg', NULL, NULL),
(1237, 686, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617673492b9uFR06501.jpg', NULL, NULL),
(1238, 686, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617673492b9uFR06501.jpg', NULL, NULL),
(1239, 686, 'LARGE', 900, 900, 'images/media/2021/04/large1617673492b9uFR06501.jpg', NULL, '2021-04-05 20:14:52'),
(1240, 687, 'ACTUAL', 1000, 1000, 'images/media/2021/04/eSUc306701.jpg', NULL, NULL),
(1241, 687, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617673492eSUc306701.jpg', NULL, NULL),
(1242, 687, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617673492eSUc306701.jpg', NULL, NULL),
(1243, 687, 'LARGE', 900, 900, 'images/media/2021/04/large1617673492eSUc306701.jpg', NULL, '2021-04-05 20:14:52'),
(1244, 688, 'ACTUAL', 1000, 1000, 'images/media/2021/04/HftjK06801.jpg', NULL, NULL),
(1245, 688, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617673492HftjK06801.jpg', NULL, NULL),
(1246, 688, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617673492HftjK06801.jpg', NULL, NULL),
(1247, 688, 'LARGE', 900, 900, 'images/media/2021/04/large1617673492HftjK06801.jpg', NULL, '2021-04-05 20:14:52'),
(1248, 689, 'ACTUAL', 420, 1170, 'images/media/2021/04/Vf2tc06510.png', NULL, NULL),
(1249, 689, 'THUMBNAIL', 54, 150, 'images/media/2021/04/thumbnail1617704824Vf2tc06510.png', NULL, NULL),
(1250, 689, 'MEDIUM', 144, 400, 'images/media/2021/04/medium1617704824Vf2tc06510.png', NULL, NULL),
(1251, 690, 'ACTUAL', 420, 1170, 'images/media/2021/04/a97Os06410.png', NULL, NULL),
(1252, 690, 'THUMBNAIL', 54, 150, 'images/media/2021/04/thumbnail1617704825a97Os06410.png', NULL, NULL),
(1253, 689, 'LARGE', 323, 900, 'images/media/2021/04/large1617704825Vf2tc06510.png', NULL, '2021-04-06 04:57:05'),
(1254, 690, 'MEDIUM', 144, 400, 'images/media/2021/04/medium1617704825a97Os06410.png', NULL, NULL),
(1255, 690, 'LARGE', 323, 900, 'images/media/2021/04/large1617704825a97Os06410.png', NULL, '2021-04-06 04:57:05'),
(1256, 691, 'ACTUAL', 420, 1170, 'images/media/2021/04/PJ3Ul06210.png', NULL, NULL),
(1257, 691, 'THUMBNAIL', 54, 150, 'images/media/2021/04/thumbnail1617704827PJ3Ul06210.png', NULL, NULL),
(1258, 691, 'MEDIUM', 144, 400, 'images/media/2021/04/medium1617704827PJ3Ul06210.png', NULL, NULL),
(1259, 692, 'ACTUAL', 420, 1640, 'images/media/2021/04/Etubi06210.png', NULL, NULL),
(1260, 692, 'THUMBNAIL', 38, 150, 'images/media/2021/04/thumbnail1617704957Etubi06210.png', NULL, NULL),
(1261, 692, 'MEDIUM', 102, 400, 'images/media/2021/04/medium1617704957Etubi06210.png', NULL, NULL),
(1262, 692, 'LARGE', 230, 900, 'images/media/2021/04/large1617704957Etubi06210.png', NULL, '2021-04-06 04:59:17'),
(1263, 693, 'ACTUAL', 420, 1600, 'images/media/2021/04/85bht06110.png', NULL, NULL),
(1264, 693, 'THUMBNAIL', 39, 150, 'images/media/2021/04/thumbnail161770496185bht06110.png', NULL, NULL),
(1265, 693, 'MEDIUM', 105, 400, 'images/media/2021/04/medium161770496185bht06110.png', NULL, NULL),
(1266, 693, 'LARGE', 236, 900, 'images/media/2021/04/large161770496185bht06110.png', NULL, '2021-04-06 04:59:21'),
(1267, 694, 'ACTUAL', 1067, 1600, 'images/media/2021/04/gVaG806410.png', NULL, NULL),
(1268, 694, 'THUMBNAIL', 100, 150, 'images/media/2021/04/thumbnail1617704963gVaG806410.png', NULL, NULL),
(1269, 694, 'MEDIUM', 267, 400, 'images/media/2021/04/medium1617704963gVaG806410.png', NULL, NULL),
(1332, 714, 'MEDIUM', 105, 400, 'images/media/2021/04/medium161772785835wfV06404.png', NULL, NULL),
(1331, 714, 'THUMBNAIL', 39, 150, 'images/media/2021/04/thumbnail161772785835wfV06404.png', NULL, NULL),
(1330, 714, 'ACTUAL', 420, 1600, 'images/media/2021/04/35wfV06404.png', NULL, NULL),
(1274, 696, 'ACTUAL', 420, 1600, 'images/media/2021/04/bKBqi06110.png', NULL, NULL),
(1275, 696, 'THUMBNAIL', 39, 150, 'images/media/2021/04/thumbnail1617705103bKBqi06110.png', NULL, NULL),
(1276, 696, 'MEDIUM', 105, 400, 'images/media/2021/04/medium1617705103bKBqi06110.png', NULL, NULL),
(1277, 696, 'LARGE', 236, 900, 'images/media/2021/04/large1617705103bKBqi06110.png', NULL, '2021-04-06 05:01:43'),
(1278, 697, 'ACTUAL', 420, 1170, 'images/media/2021/04/eF21b06410.png', NULL, NULL),
(1279, 697, 'THUMBNAIL', 54, 150, 'images/media/2021/04/thumbnail1617705682eF21b06410.png', NULL, NULL),
(1280, 697, 'MEDIUM', 144, 400, 'images/media/2021/04/medium1617705682eF21b06410.png', NULL, NULL),
(1281, 697, 'LARGE', 323, 900, 'images/media/2021/04/large1617705682eF21b06410.png', NULL, '2021-04-06 05:11:22'),
(1282, 698, 'ACTUAL', 400, 770, 'images/media/2021/04/M4i8G06410.png', NULL, NULL),
(1283, 698, 'THUMBNAIL', 78, 150, 'images/media/2021/04/thumbnail1617705884M4i8G06410.png', NULL, NULL),
(1284, 698, 'MEDIUM', 208, 400, 'images/media/2021/04/medium1617705884M4i8G06410.png', NULL, NULL),
(1285, 699, 'ACTUAL', 400, 720, 'images/media/2021/04/0j5Dd06210.png', NULL, NULL),
(1286, 699, 'THUMBNAIL', 83, 150, 'images/media/2021/04/thumbnail16177058840j5Dd06210.png', NULL, NULL),
(1287, 699, 'MEDIUM', 222, 400, 'images/media/2021/04/medium16177058840j5Dd06210.png', NULL, NULL),
(1288, 700, 'ACTUAL', 400, 770, 'images/media/2021/04/CRLqy06310.png', NULL, NULL),
(1289, 700, 'THUMBNAIL', 78, 150, 'images/media/2021/04/thumbnail1617705887CRLqy06310.png', NULL, NULL),
(1290, 700, 'MEDIUM', 208, 400, 'images/media/2021/04/medium1617705887CRLqy06310.png', NULL, NULL),
(1291, 701, 'ACTUAL', 400, 770, 'images/media/2021/04/0kA9R06410.png', NULL, NULL),
(1292, 701, 'THUMBNAIL', 78, 150, 'images/media/2021/04/thumbnail16177060070kA9R06410.png', NULL, NULL),
(1293, 701, 'MEDIUM', 208, 400, 'images/media/2021/04/medium16177060070kA9R06410.png', NULL, NULL),
(1294, 702, 'ACTUAL', 420, 770, 'images/media/2021/04/jQZU806310.png', NULL, NULL),
(1295, 702, 'THUMBNAIL', 82, 150, 'images/media/2021/04/thumbnail1617706007jQZU806310.png', NULL, NULL),
(1296, 702, 'MEDIUM', 218, 400, 'images/media/2021/04/medium1617706007jQZU806310.png', NULL, NULL),
(1297, 703, 'ACTUAL', 400, 740, 'images/media/2021/04/N1mtq06510.png', NULL, NULL),
(1298, 703, 'THUMBNAIL', 81, 150, 'images/media/2021/04/thumbnail1617706010N1mtq06510.png', NULL, NULL);
INSERT INTO `image_categories` (`id`, `image_id`, `image_type`, `height`, `width`, `path`, `created_at`, `updated_at`) VALUES
(1299, 703, 'MEDIUM', 216, 400, 'images/media/2021/04/medium1617706010N1mtq06510.png', NULL, NULL),
(1300, 704, 'ACTUAL', 400, 770, 'images/media/2021/04/bD7Ph06810.png', NULL, NULL),
(1301, 704, 'THUMBNAIL', 78, 150, 'images/media/2021/04/thumbnail1617706155bD7Ph06810.png', NULL, NULL),
(1302, 704, 'MEDIUM', 208, 400, 'images/media/2021/04/medium1617706155bD7Ph06810.png', NULL, NULL),
(1303, 705, 'ACTUAL', 400, 770, 'images/media/2021/04/5I5qk06210.png', NULL, NULL),
(1304, 705, 'THUMBNAIL', 78, 150, 'images/media/2021/04/thumbnail16177061555I5qk06210.png', NULL, NULL),
(1305, 706, 'ACTUAL', 400, 770, 'images/media/2021/04/lBuil06110.png', NULL, NULL),
(1306, 706, 'THUMBNAIL', 78, 150, 'images/media/2021/04/thumbnail1617706158lBuil06110.png', NULL, NULL),
(1307, 706, 'MEDIUM', 208, 400, 'images/media/2021/04/medium1617706158lBuil06110.png', NULL, NULL),
(1308, 707, 'ACTUAL', 470, 470, 'images/media/2021/04/D3BYs06510.png', NULL, NULL),
(1309, 707, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617706730D3BYs06510.png', NULL, NULL),
(1310, 707, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617706730D3BYs06510.png', NULL, NULL),
(1311, 708, 'ACTUAL', 500, 500, 'images/media/2021/04/rELmh06311.png', NULL, NULL),
(1312, 708, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617708829rELmh06311.png', NULL, NULL),
(1313, 708, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617708829rELmh06311.png', NULL, NULL),
(1314, 709, 'ACTUAL', 800, 800, 'images/media/2021/04/dqVe106212.png', NULL, NULL),
(1315, 709, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617711829dqVe106212.png', NULL, NULL),
(1316, 709, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617711829dqVe106212.png', NULL, NULL),
(1317, 710, 'ACTUAL', 500, 500, 'images/media/2021/04/FqcOh06312.png', NULL, NULL),
(1318, 710, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617712006FqcOh06312.png', NULL, NULL),
(1319, 710, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617712006FqcOh06312.png', NULL, NULL),
(1320, 711, 'ACTUAL', 500, 500, 'images/media/2021/04/GfnhF06412.png', NULL, NULL),
(1321, 711, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617712299GfnhF06412.png', NULL, NULL),
(1322, 711, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617712299GfnhF06412.png', NULL, NULL),
(1323, 712, 'ACTUAL', 500, 500, 'images/media/2021/04/BAZed06112.png', NULL, NULL),
(1324, 712, 'THUMBNAIL', 150, 150, 'images/media/2021/04/thumbnail1617712509BAZed06112.png', NULL, NULL),
(1325, 712, 'MEDIUM', 400, 400, 'images/media/2021/04/medium1617712509BAZed06112.png', NULL, NULL),
(1326, 713, 'ACTUAL', 420, 1600, 'images/media/2021/04/0mIHK06401.png', NULL, NULL),
(1327, 713, 'THUMBNAIL', 39, 150, 'images/media/2021/04/thumbnail16177166710mIHK06401.png', NULL, NULL),
(1328, 713, 'MEDIUM', 105, 400, 'images/media/2021/04/medium16177166710mIHK06401.png', NULL, NULL),
(1329, 713, 'LARGE', 236, 900, 'images/media/2021/04/large16177166710mIHK06401.png', NULL, '2021-04-05 20:14:31'),
(1333, 714, 'LARGE', 236, 900, 'images/media/2021/04/large161772785835wfV06404.png', NULL, '2021-04-05 23:20:58'),
(1334, 715, 'ACTUAL', 100, 144, 'images/media/2021/04/W1CaR13411.png', NULL, NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=152 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(12, 1, 0, 'bulk_upload', 10, 37, '31263.00', 'in', '2021-03-28 14:42:36', '2021-03-28 14:42:36'),
(13, 1, 0, 'bulk_upload', 20, 38, '70277.35', 'in', '2021-03-28 14:42:37', '2021-03-28 14:42:37'),
(14, 1, 0, 'bulk_upload', 20, 39, '70277.35', 'in', '2021-03-28 14:42:38', '2021-03-28 14:42:38'),
(15, 1, 0, 'bulk_upload', 10, 40, '57202.00', 'in', '2021-03-28 14:42:38', '2021-03-28 14:42:38'),
(16, 1, 0, 'bulk_upload', 21, 41, '9854.30', 'in', '2021-03-28 14:46:29', '2021-03-28 14:46:29'),
(17, 1, 0, 'bulk_upload', 35, 42, '23584.00', 'in', '2021-03-29 03:10:50', '2021-03-29 03:10:50'),
(18, 1, 0, 'bulk_upload', 59, 43, '9823.00', 'in', '2021-03-29 03:10:51', '2021-03-29 03:10:51'),
(19, 1, 0, 'bulk_upload', 77, 44, '249415.00', 'in', '2021-03-29 03:10:52', '2021-03-29 03:10:52'),
(20, 1, 0, 'bulk_upload', 30, 45, '276206.00', 'in', '2021-03-29 03:10:53', '2021-03-29 03:10:53'),
(21, 1, 0, 'bulk_upload', 121, 46, '19663.00', 'in', '2021-03-29 03:10:54', '2021-03-29 03:10:54'),
(22, 1, 0, 'bulk_upload', 35, 47, '23584.00', 'in', '2021-03-29 03:29:52', '2021-03-29 03:29:52'),
(23, 1, 0, 'bulk_upload', 59, 48, '9823.00', 'in', '2021-03-29 03:29:52', '2021-03-29 03:29:52'),
(24, 1, 0, 'bulk_upload', 77, 49, '249415.00', 'in', '2021-03-29 03:29:53', '2021-03-29 03:29:53'),
(25, 1, 0, 'bulk_upload', 30, 50, '276206.00', 'in', '2021-03-29 03:29:53', '2021-03-29 03:29:53'),
(26, 1, 0, 'bulk_upload', 121, 51, '19663.00', 'in', '2021-03-29 03:29:53', '2021-03-29 03:29:53'),
(27, 1, 0, 'bulk_upload', 20, 52, '70277.35', 'in', '2021-03-29 03:35:19', '2021-03-29 03:35:19'),
(28, 1, 0, 'bulk_upload', 10, 53, '0.00', 'in', '2021-03-29 03:35:20', '2021-03-29 03:35:20'),
(29, 1, 0, 'bulk_upload', 41, 54, '137691.00', 'in', '2021-03-29 03:35:21', '2021-03-29 03:35:21'),
(30, 1, 0, 'bulk_upload', 35, 55, '23584.00', 'in', '2021-03-29 03:35:21', '2021-03-29 03:35:21'),
(31, 1, 0, 'bulk_upload', 59, 56, '9823.00', 'in', '2021-03-29 03:35:21', '2021-03-29 03:35:21'),
(32, 1, 0, 'bulk_upload', 77, 57, '249415.00', 'in', '2021-03-29 03:35:21', '2021-03-29 03:35:21'),
(33, 1, 0, 'bulk_upload', 30, 58, '276206.00', 'in', '2021-03-29 03:35:24', '2021-03-29 03:35:24'),
(34, 1, 0, 'bulk_upload', 121, 59, '19663.00', 'in', '2021-03-29 03:35:24', '2021-03-29 03:35:24'),
(35, 1, 0, 'bulk_upload', 20, 60, '70277.35', 'in', '2021-03-30 01:48:59', '2021-03-30 01:48:59'),
(36, 1, 0, 'bulk_upload', 10, 61, '0.00', 'in', '2021-03-30 01:48:59', '2021-03-30 01:48:59'),
(37, 1, 0, 'bulk_upload', 41, 62, '137691.00', 'in', '2021-03-30 01:48:59', '2021-03-30 01:48:59'),
(38, 1, 0, 'bulk_upload', 35, 63, '23584.00', 'in', '2021-03-30 01:49:00', '2021-03-30 01:49:00'),
(39, 1, 0, 'bulk_upload', 59, 64, '9823.00', 'in', '2021-03-30 01:49:00', '2021-03-30 01:49:00'),
(40, 1, 0, 'bulk_upload', 77, 65, '249415.00', 'in', '2021-03-30 01:49:00', '2021-03-30 01:49:00'),
(41, 1, 0, 'bulk_upload', 30, 66, '276206.00', 'in', '2021-03-30 01:49:01', '2021-03-30 01:49:01'),
(42, 1, 0, 'bulk_upload', 121, 67, '19663.00', 'in', '2021-03-30 01:49:01', '2021-03-30 01:49:01'),
(43, 1, 0, 'bulk_upload', 20, 68, '70277.35', 'in', '2021-03-30 02:30:13', '2021-03-30 02:30:13'),
(44, 1, 0, 'bulk_upload', 10, 69, '0.00', 'in', '2021-03-30 02:52:37', '2021-03-30 02:52:37'),
(45, 1, 0, 'bulk_upload', 41, 70, '137691.00', 'in', '2021-03-30 02:52:37', '2021-03-30 02:52:37'),
(46, 1, 0, 'bulk_upload', 35, 71, '23584.00', 'in', '2021-03-30 02:52:38', '2021-03-30 02:52:38'),
(47, 1, 0, 'bulk_upload', 59, 72, '9823.00', 'in', '2021-03-30 02:52:39', '2021-03-30 02:52:39'),
(48, 1, 0, 'bulk_upload', 77, 73, '249415.00', 'in', '2021-03-30 02:52:40', '2021-03-30 02:52:40'),
(49, 1, 0, 'bulk_upload', 30, 74, '276206.00', 'in', '2021-03-30 02:52:40', '2021-03-30 02:52:40'),
(50, 1, 0, 'bulk_upload', 121, 75, '19663.00', 'in', '2021-03-30 02:52:42', '2021-03-30 02:52:42'),
(51, 1, 0, 'bulk_upload', 20, 1, '70277.35', 'in', '2021-03-30 03:03:54', '2021-03-30 03:03:54'),
(52, 1, 0, 'bulk_upload', 10, 2, '0.00', 'in', '2021-03-30 03:03:54', '2021-03-30 03:03:54'),
(53, 1, 0, 'bulk_upload', 41, 3, '137691.00', 'in', '2021-03-30 03:03:55', '2021-03-30 03:03:55'),
(54, 1, 0, 'bulk_upload', 35, 4, '23584.00', 'in', '2021-03-30 03:03:55', '2021-03-30 03:03:55'),
(55, 1, 0, 'bulk_upload', 59, 5, '9823.00', 'in', '2021-03-30 03:03:55', '2021-03-30 03:03:55'),
(56, 1, 0, 'bulk_upload', 77, 6, '249415.00', 'in', '2021-03-30 03:03:55', '2021-03-30 03:03:55'),
(57, 1, 0, 'bulk_upload', 30, 7, '276206.00', 'in', '2021-03-30 03:03:56', '2021-03-30 03:03:56'),
(58, 1, 0, 'bulk_upload', 121, 8, '19663.00', 'in', '2021-03-30 03:03:56', '2021-03-30 03:03:56'),
(59, 1, 0, 'bulk_upload', 20, 1, '70277.35', 'in', '2021-03-30 03:12:36', '2021-03-30 03:12:36'),
(60, 1, 0, 'bulk_upload', 10, 2, '0.00', 'in', '2021-03-30 03:12:36', '2021-03-30 03:12:36'),
(61, 1, 0, 'bulk_upload', 41, 3, '137691.00', 'in', '2021-03-30 03:12:36', '2021-03-30 03:12:36'),
(62, 1, 0, 'bulk_upload', 35, 4, '23584.00', 'in', '2021-03-30 03:12:36', '2021-03-30 03:12:36'),
(63, 1, 0, 'bulk_upload', 59, 5, '9823.00', 'in', '2021-03-30 03:12:37', '2021-03-30 03:12:37'),
(64, 1, 0, 'bulk_upload', 77, 6, '249415.00', 'in', '2021-03-30 03:12:37', '2021-03-30 03:12:37'),
(65, 1, 0, 'bulk_upload', 30, 7, '276206.00', 'in', '2021-03-30 03:12:37', '2021-03-30 03:12:37'),
(66, 1, 0, 'bulk_upload', 121, 8, '19663.00', 'in', '2021-03-30 03:12:38', '2021-03-30 03:12:38'),
(67, 1, 0, 'bulk_upload', 20, 1, '70277.35', 'in', '2021-03-30 03:15:39', '2021-03-30 03:15:39'),
(68, 1, 0, 'bulk_upload', 10, 2, '0.00', 'in', '2021-03-30 03:15:39', '2021-03-30 03:15:39'),
(69, 1, 0, 'bulk_upload', 41, 3, '137691.00', 'in', '2021-03-30 03:15:39', '2021-03-30 03:15:39'),
(70, 1, 0, 'bulk_upload', 35, 4, '23584.00', 'in', '2021-03-30 03:15:40', '2021-03-30 03:15:40'),
(71, 1, 0, 'bulk_upload', 59, 5, '9823.00', 'in', '2021-03-30 03:15:40', '2021-03-30 03:15:40'),
(72, 1, 0, 'bulk_upload', 77, 6, '249415.00', 'in', '2021-03-30 03:15:40', '2021-03-30 03:15:40'),
(73, 1, 0, 'bulk_upload', 30, 7, '276206.00', 'in', '2021-03-30 03:15:41', '2021-03-30 03:15:41'),
(74, 1, 0, 'bulk_upload', 121, 8, '19663.00', 'in', '2021-03-30 03:15:41', '2021-03-30 03:15:41'),
(75, 1, 0, 'bulk_upload', 20, 1, '70277.35', 'in', '2021-03-30 03:42:05', '2021-03-30 03:42:05'),
(76, 1, 0, 'bulk_upload', 10, 2, '0.00', 'in', '2021-03-30 03:42:05', '2021-03-30 03:42:05'),
(77, 1, 0, 'bulk_upload', 41, 3, '137691.00', 'in', '2021-03-30 03:42:06', '2021-03-30 03:42:06'),
(78, 1, 0, 'bulk_upload', 35, 4, '23584.00', 'in', '2021-03-30 03:42:06', '2021-03-30 03:42:06'),
(79, 1, 0, 'bulk_upload', 59, 5, '9823.00', 'in', '2021-03-30 03:42:06', '2021-03-30 03:42:06'),
(80, 1, 0, 'bulk_upload', 77, 6, '249415.00', 'in', '2021-03-30 03:42:06', '2021-03-30 03:42:06'),
(81, 1, 0, 'bulk_upload', 30, 7, '276206.00', 'in', '2021-03-30 03:42:07', '2021-03-30 03:42:07'),
(82, 1, 0, 'bulk_upload', 121, 8, '19663.00', 'in', '2021-03-30 03:42:07', '2021-03-30 03:42:07'),
(83, 1, 0, 'bulk_upload', 20, 1, '70277.35', 'in', '2021-03-31 02:47:45', '2021-03-31 02:47:45'),
(84, 1, 0, 'bulk_upload', 10, 2, '0.00', 'in', '2021-03-31 02:47:45', '2021-03-31 02:47:45'),
(85, 1, 0, 'bulk_upload', 41, 3, '137691.00', 'in', '2021-03-31 02:47:45', '2021-03-31 02:47:45'),
(86, 1, 0, 'bulk_upload', 35, 4, '23584.00', 'in', '2021-03-31 02:47:46', '2021-03-31 02:47:46'),
(87, 1, 0, 'bulk_upload', 59, 5, '9823.00', 'in', '2021-03-31 02:47:46', '2021-03-31 02:47:46'),
(88, 1, 0, 'bulk_upload', 77, 6, '249415.00', 'in', '2021-03-31 02:47:46', '2021-03-31 02:47:46'),
(89, 1, 0, 'bulk_upload', 30, 7, '276206.00', 'in', '2021-03-31 02:47:46', '2021-03-31 02:47:46'),
(90, 1, 0, 'bulk_upload', 121, 8, '19663.00', 'in', '2021-03-31 02:47:47', '2021-03-31 02:47:47'),
(91, 1, 0, 'bulk_upload', 10, 9, '1499.00', 'in', '2021-03-31 03:18:15', '2021-03-31 03:18:15'),
(92, 1, 0, 'bulk_upload', 20, 10, '3000.00', 'in', '2021-03-31 03:18:15', '2021-03-31 03:18:15'),
(93, 1, 0, 'bulk_upload', 20, 11, '3599.00', 'in', '2021-03-31 03:18:15', '2021-03-31 03:18:15'),
(94, 1, 0, 'bulk_upload', 47, 12, '3733.00', 'in', '2021-03-31 03:18:16', '2021-03-31 03:18:16'),
(95, 1, 0, 'bulk_upload', 100, 13, '934.00', 'in', '2021-03-31 03:18:17', '2021-03-31 03:18:17'),
(96, 1, 0, 'bulk_upload', 1000, 14, '1499.00', 'in', '2021-03-31 03:18:18', '2021-03-31 03:18:18'),
(97, 1, 0, 'bulk_upload', 500, 15, '2499.00', 'in', '2021-03-31 03:18:20', '2021-03-31 03:18:20'),
(98, 1, 0, 'bulk_upload', 500, 16, '1199.00', 'in', '2021-03-31 03:18:21', '2021-03-31 03:18:21'),
(99, 1, 0, 'bulk_upload', 1000, 17, '1799.00', 'in', '2021-03-31 03:18:22', '2021-03-31 03:18:22'),
(100, 1, 0, 'bulk_upload', 5000, 18, '799.00', 'in', '2021-03-31 03:18:24', '2021-03-31 03:18:24'),
(101, 1, 0, 'bulk_upload', 20, 1, '70277.35', 'in', '2021-04-05 01:52:48', '2021-04-05 01:52:48'),
(102, 1, 0, 'bulk_upload', 10, 2, '0.00', 'in', '2021-04-05 01:52:49', '2021-04-05 01:52:49'),
(103, 1, 0, 'bulk_upload', 41, 3, '137691.00', 'in', '2021-04-05 01:52:52', '2021-04-05 01:52:52'),
(104, 1, 0, 'bulk_upload', 35, 4, '23584.00', 'in', '2021-04-05 01:52:53', '2021-04-05 01:52:53'),
(105, 1, 0, 'bulk_upload', 59, 5, '9823.00', 'in', '2021-04-05 01:52:54', '2021-04-05 01:52:54'),
(106, 1, 0, 'bulk_upload', 77, 6, '249415.00', 'in', '2021-04-05 01:52:55', '2021-04-05 01:52:55'),
(107, 1, 0, 'bulk_upload', 30, 7, '276206.00', 'in', '2021-04-05 01:52:55', '2021-04-05 01:52:55'),
(108, 1, 0, 'bulk_upload', 121, 8, '19663.00', 'in', '2021-04-05 01:52:56', '2021-04-05 01:52:56'),
(109, 1, 0, 'bulk_upload', 20, 1, '70277.35', 'in', '2021-04-05 02:02:53', '2021-04-05 02:02:53'),
(110, 1, 0, 'bulk_upload', 10, 2, '0.00', 'in', '2021-04-05 02:02:53', '2021-04-05 02:02:53'),
(111, 1, 0, 'bulk_upload', 41, 3, '137691.00', 'in', '2021-04-05 02:02:53', '2021-04-05 02:02:53'),
(112, 1, 0, 'bulk_upload', 35, 4, '23584.00', 'in', '2021-04-05 02:02:53', '2021-04-05 02:02:53'),
(113, 1, 0, 'bulk_upload', 59, 5, '9823.00', 'in', '2021-04-05 02:02:54', '2021-04-05 02:02:54'),
(114, 1, 0, 'bulk_upload', 77, 6, '249415.00', 'in', '2021-04-05 02:02:54', '2021-04-05 02:02:54'),
(115, 1, 0, 'bulk_upload', 30, 7, '276206.00', 'in', '2021-04-05 02:02:54', '2021-04-05 02:02:54'),
(116, 1, 0, 'bulk_upload', 121, 8, '19663.00', 'in', '2021-04-05 02:02:54', '2021-04-05 02:02:54'),
(117, 1, 0, 'bulk_upload', 20, 1, '70277.35', 'in', '2021-04-05 02:04:46', '2021-04-05 02:04:46'),
(118, 1, 0, 'bulk_upload', 10, 2, '0.00', 'in', '2021-04-05 02:04:46', '2021-04-05 02:04:46'),
(119, 1, 0, 'bulk_upload', 41, 3, '137691.00', 'in', '2021-04-05 02:04:46', '2021-04-05 02:04:46'),
(120, 1, 0, 'bulk_upload', 35, 4, '23584.00', 'in', '2021-04-05 02:04:47', '2021-04-05 02:04:47'),
(121, 1, 0, 'bulk_upload', 59, 5, '9823.00', 'in', '2021-04-05 02:04:47', '2021-04-05 02:04:47'),
(122, 1, 0, 'bulk_upload', 77, 6, '249415.00', 'in', '2021-04-05 02:04:47', '2021-04-05 02:04:47'),
(123, 1, 0, 'bulk_upload', 30, 7, '276206.00', 'in', '2021-04-05 02:04:47', '2021-04-05 02:04:47'),
(124, 1, 0, 'bulk_upload', 121, 8, '19663.00', 'in', '2021-04-05 02:04:48', '2021-04-05 02:04:48'),
(125, 1, 0, 'bulk_upload', 20, 1, '70277.35', 'in', '2021-04-05 12:26:31', '2021-04-05 12:26:31'),
(126, 1, 0, 'bulk_upload', 10, 2, '0.00', 'in', '2021-04-05 12:26:31', '2021-04-05 12:26:31'),
(127, 1, 0, 'bulk_upload', 41, 3, '137691.00', 'in', '2021-04-05 12:26:32', '2021-04-05 12:26:32'),
(128, 1, 0, 'bulk_upload', 35, 4, '23584.00', 'in', '2021-04-05 12:26:32', '2021-04-05 12:26:32'),
(129, 1, 0, 'bulk_upload', 59, 5, '9823.00', 'in', '2021-04-05 12:26:33', '2021-04-05 12:26:33'),
(130, 1, 0, 'bulk_upload', 77, 6, '249415.00', 'in', '2021-04-05 12:26:33', '2021-04-05 12:26:33'),
(131, 1, 0, 'bulk_upload', 30, 7, '276206.00', 'in', '2021-04-05 12:26:33', '2021-04-05 12:26:33'),
(132, 1, 0, 'bulk_upload', 121, 8, '19663.00', 'in', '2021-04-05 12:26:34', '2021-04-05 12:26:34'),
(133, 1, 0, 'bulk_upload', 20, 1, '70277.35', 'in', '2021-04-05 12:32:44', '2021-04-05 12:32:44'),
(134, 1, 0, 'bulk_upload', 10, 2, '0.00', 'in', '2021-04-05 12:32:44', '2021-04-05 12:32:44'),
(135, 1, 0, 'bulk_upload', 41, 3, '137691.00', 'in', '2021-04-05 12:32:44', '2021-04-05 12:32:44'),
(136, 1, 0, 'bulk_upload', 35, 4, '23584.00', 'in', '2021-04-05 12:32:45', '2021-04-05 12:32:45'),
(137, 1, 0, 'bulk_upload', 59, 5, '9823.00', 'in', '2021-04-05 12:32:45', '2021-04-05 12:32:45'),
(138, 1, 0, 'bulk_upload', 77, 6, '249415.00', 'in', '2021-04-05 12:32:46', '2021-04-05 12:32:46'),
(139, 1, 0, 'bulk_upload', 30, 7, '276206.00', 'in', '2021-04-05 12:32:46', '2021-04-05 12:32:46'),
(140, 1, 0, 'bulk_upload', 121, 8, '19663.00', 'in', '2021-04-05 12:32:47', '2021-04-05 12:32:47'),
(141, 1, 0, 'bulk_upload', 20, 1, '70277.35', 'in', '2021-04-06 01:44:50', '2021-04-06 01:44:50'),
(142, 1, 0, 'bulk_upload', 10, 2, '0.00', 'in', '2021-04-06 01:44:50', '2021-04-06 01:44:50'),
(143, 1, 0, 'bulk_upload', 41, 3, '137691.00', 'in', '2021-04-06 01:44:51', '2021-04-06 01:44:51'),
(144, 1, 0, 'bulk_upload', 35, 4, '23584.00', 'in', '2021-04-06 01:44:51', '2021-04-06 01:44:51'),
(145, 1, 0, 'bulk_upload', 59, 5, '9823.00', 'in', '2021-04-06 01:44:51', '2021-04-06 01:44:51'),
(146, 1, 0, 'bulk_upload', 77, 6, '249415.00', 'in', '2021-04-06 01:44:52', '2021-04-06 01:44:52'),
(147, 1, 0, 'bulk_upload', 30, 7, '276206.00', 'in', '2021-04-06 01:44:52', '2021-04-06 01:44:52'),
(148, 1, 0, 'bulk_upload', 121, 8, '19663.00', 'in', '2021-04-06 01:44:52', '2021-04-06 01:44:52'),
(149, 0, 1617728780, '', 1, 7, '0.00', 'out', '2021-04-06 17:06:20', '2021-04-06 17:06:20'),
(150, 0, 1617729992, '', 1, 9, '0.00', 'out', '2021-04-06 17:26:32', '2021-04-06 17:26:32'),
(151, 0, 1617730075, '', 1, 9, '0.00', 'out', '2021-04-06 17:27:55', '2021-04-06 17:27:55');

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
(8, 13, 11);

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `liked_products`
--

INSERT INTO `liked_products` (`like_id`, `liked_products_id`, `liked_customers_id`, `date_liked`) VALUES
(3, 19, 7, '2021-03-22 11:44:16'),
(5, 6, 3, '2021-04-06 17:09:12'),
(6, 7, 3, '2021-04-06 17:09:14');

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
(18, 22, 2, 0, 2, '/page?name=about-us', 'about-us', 0, 1, NULL, NULL),
(19, 23, 4, 0, 2, '/page?name=privacy-policy', 'privacy-policy', 0, 1, NULL, NULL),
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
  `billing_street_address` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orders_id`, `total_tax`, `customers_id`, `customers_name`, `customers_company`, `customers_street_address`, `customers_suburb`, `customers_city`, `customers_postcode`, `customers_state`, `customers_country`, `customers_telephone`, `email`, `customers_address_format_id`, `delivery_name`, `delivery_company`, `delivery_street_address`, `delivery_suburb`, `delivery_city`, `delivery_postcode`, `delivery_state`, `delivery_country`, `delivery_address_format_id`, `billing_name`, `billing_company`, `billing_street_address`, `billing_suburb`, `billing_city`, `billing_postcode`, `billing_state`, `billing_country`, `billing_address_format_id`, `payment_method`, `cc_type`, `cc_owner`, `cc_number`, `cc_expires`, `last_modified`, `date_purchased`, `orders_date_finished`, `currency`, `currency_value`, `order_price`, `shipping_cost`, `shipping_method`, `shipping_duration`, `order_information`, `is_seen`, `coupon_code`, `coupon_amount`, `exclude_product_ids`, `product_categories`, `excluded_product_categories`, `free_shipping`, `product_ids`, `ordered_source`, `delivery_phone`, `billing_phone`, `transaction_id`, `created_at`, `updated_at`) VALUES
(1, '0.00', 3, 'Mitali Mehta', NULL, 'courtyard', '', 'bhavnagar', '364004', NULL, 'India', '', 'mitali.sixs1@gmail.com', NULL, 'Mitali Mehta', NULL, 'courtyard', '', 'bhavnagar', '364004', NULL, 'India', NULL, 'Mitali Mehta', NULL, 'courtyard', '', 'bhavnagar', '364004', NULL, 'India', 0, 'Cash on Delivery', '', '', '', '', '2021-04-06 17:06:20', '2021-04-06 17:06:20', NULL, '₹', NULL, '276206.00', '0.00', 'flateRate', NULL, '[]', 1, '', 0, '', '', '', 0, '', 1, '9898787879', '9898787879', NULL, NULL, NULL),
(2, '0.00', 3, 'Mitali Mehta', NULL, 'courtyard', '', 'bhavnagar', '364004', NULL, 'India', '', 'mitali.sixs1@gmail.com', NULL, 'Mitali Mehta', NULL, 'courtyard', '', 'bhavnagar', '364004', NULL, 'India', NULL, 'Mitali Mehta', NULL, 'courtyard', '', 'bhavnagar', '364004', NULL, 'India', 0, 'Cash on Delivery', '', '', '', '', '2021-04-06 17:26:32', '2021-04-06 17:26:32', NULL, '₹', NULL, '3000.00', '0.00', 'flateRate', NULL, '[]', 1, '', 0, '', '', '', 0, '', 1, '9898787879', '9898787879', NULL, NULL, NULL),
(3, '0.00', 3, 'Mitali Mehta', NULL, 'courtyard', '', 'bhavnagar', '364004', NULL, 'India', '', 'mitali.sixs1@gmail.com', NULL, 'Mitali Mehta', NULL, 'courtyard', '', 'bhavnagar', '364004', NULL, 'India', NULL, 'Mitali Mehta', NULL, 'courtyard', '', 'bhavnagar', '364004', NULL, 'India', 0, 'Cash on Delivery', '', '', '', '', '2021-04-06 17:27:55', '2021-04-06 17:27:55', NULL, '₹', NULL, '3000.00', '0.00', 'flateRate', NULL, '[]', 0, '', 0, '', '', '', 0, '', 1, '9898787879', '9898787879', NULL, NULL, NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_products`
--

INSERT INTO `orders_products` (`orders_products_id`, `orders_id`, `products_id`, `products_model`, `products_name`, `products_price`, `final_price`, `products_tax`, `products_quantity`) VALUES
(1, 1, 7, NULL, 'GLAMOROUS WHITE GOLD AND DIAMOND STUD EARRINGS', '276206.00', '276206.00', '1', 1),
(2, 2, 9, NULL, 'mans pendent', '3255.00', '3000.00', '1', 1),
(3, 3, 9, NULL, 'mans pendent', '3255.00', '3000.00', '1', 1);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_status_history`
--

INSERT INTO `orders_status_history` (`orders_status_history_id`, `orders_id`, `orders_status_id`, `date_added`, `customer_notified`, `comments`) VALUES
(1, 1, 1, '2021-04-06 05:06:20', 1, ''),
(2, 2, 1, '2021-04-06 05:26:32', 1, ''),
(3, 3, 1, '2021-04-06 05:27:55', 1, ''),
(4, 1, 2, '2021-04-07 01:24:04', 1, NULL),
(5, 2, 2, '2021-04-07 01:24:24', 1, NULL);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `product_sku`, `products_quantity`, `products_model`, `products_image`, `products_video_link`, `products_price`, `products_date_added`, `products_last_modified`, `products_date_available`, `products_weight`, `products_weight_unit`, `products_status`, `is_current`, `products_tax_class_id`, `manufacturers_id`, `products_ordered`, `products_liked`, `low_limit`, `is_feature`, `products_slug`, `products_type`, `products_min_order`, `products_max_stock`, `created_at`, `updated_at`) VALUES
(1, 'ED000489', 0, 'PLATINUM AND DIAMOND RING', '681', '', '70277.35', '0000-00-00 00:00:00', NULL, NULL, ' ', '', 1, 1, 0, 0, 0, 0, 0, 1, 'ribbon-pattern-platinum-and-diamond-ring', 0, 1, 5, '2021-04-05 20:14:50', NULL),
(2, 'ED000490', 0, 'DIAMOND HOOP EARRINGS IN ROSE GOLD', '682', '', '0.00', '0000-00-00 00:00:00', NULL, NULL, '', '', 1, 1, 0, 0, 0, 0, 0, 0, 'slender-diamond-hoop-earrings-in-rose-gold', 0, 1, 5, '2021-04-05 20:14:50', NULL),
(3, 'ED000491', 0, 'GEOMETRIC DIAMOND RING', '683', '', '137691.00', '0000-00-00 00:00:00', NULL, NULL, '', '', 1, 1, 0, 0, 0, 0, 0, 0, 'slender-geometric-diamond-ring', 0, 1, 5, '2021-04-05 20:14:51', NULL),
(4, 'ED000492', 0, 'RUBY PENDANT EARRINGS SET', '684', '', '23584.00', '0000-00-00 00:00:00', NULL, NULL, '', '', 1, 1, 0, 0, 0, 0, 0, 0, 'linnea-ruby-pendant-earrings-set', 0, 1, 4, '2021-04-05 20:14:51', NULL),
(5, 'ED000493', 0, 'GOLD PENDANT', '685', NULL, '9823.00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, 0, 0, 0, '18-karat-gold-pendant', 0, 1, 5, '2021-04-05 20:14:51', '2021-04-05 20:20:04'),
(6, 'ED000494', 0, 'DROP EARRINGS IN YELLOW AND WHITE GOLD', '686', NULL, '249415.00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, 1, 0, 0, 'striking-diamond-drop-earrings-in-yellow-and-white-gold', 0, 1, 3, '2021-04-05 20:14:52', '2021-04-05 23:31:38'),
(7, 'ED000495', -1, 'GLAMOROUS WHITE GOLD AND DIAMOND STUD EARRINGS', '687', NULL, '276206.00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 1, 0, 0, 'glamorous-white-gold-and-diamond-stud-earrings', 0, 1, 5, '2021-04-05 20:14:52', '2021-04-05 20:21:34'),
(8, 'ED000496', 0, 'STYLISH GOLD MANGALSUTRA PENDANT', '688', NULL, '19663.00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, 0, 0, 0, 'gold-mangalsutra-pendant', 0, 1, 7, '2021-04-05 20:14:52', '2021-04-05 20:20:46'),
(9, 'ED000445', -1, NULL, '685', NULL, '3255.00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 0, 1, 'mans-pendent', 0, 1, NULL, '2021-04-06 06:22:58', '2021-04-05 23:09:19');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_description`
--

INSERT INTO `products_description` (`id`, `products_id`, `language_id`, `products_name`, `products_description`, `products_url`, `products_viewed`, `products_left_banner`, `products_left_banner_start_date`, `products_left_banner_expire_date`, `products_right_banner`, `products_right_banner_start_date`, `products_right_banner_expire_date`) VALUES
(1, 1, 1, 'RIBBON PATTERN PLATINUM AND DIAMOND RING', 'This is product Description', '', 0, '', NULL, NULL, '', NULL, NULL),
(2, 2, 1, 'SLENDER DIAMOND HOOP EARRINGS IN ROSE GOLD', 'This is product Description', '', 0, '', NULL, NULL, '', NULL, NULL),
(3, 3, 1, 'SLENDER GEOMETRIC DIAMOND RING', 'This is product Description', '', 0, '', NULL, NULL, '', NULL, NULL),
(4, 4, 1, 'LINNEA RUBY PENDANT EARRINGS SET', 'This is product Description', '', 0, '', NULL, NULL, '', NULL, NULL),
(5, 5, 1, '18 KARAT GOLD PENDANT', '<p>This is product Description</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(6, 6, 1, 'STRIKING DIAMOND DROP EARRINGS IN YELLOW AND WHITE GOLD', '<p>This is product Description</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(7, 7, 1, 'GLAMOROUS WHITE GOLD AND DIAMOND STUD EARRINGS', '<p>This is product Description</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(8, 8, 1, 'Gold MANGALSUTRA PENDANT', '<p>This is product Description</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(9, 9, 1, 'mans pendent', '<p>This is man pendent</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0);

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_images`
--

INSERT INTO `products_images` (`id`, `products_id`, `image`, `htmlcontent`, `sort_order`) VALUES
(1, 1, '681', 'bulkupload', 1),
(2, 2, '682', 'bulkupload', 1),
(3, 3, '683', 'bulkupload', 1),
(4, 4, '684', 'bulkupload', 1),
(5, 5, '685', 'bulkupload', 1),
(6, 6, '686', 'bulkupload', 1),
(7, 7, '687', 'bulkupload', 1),
(8, 8, '688', 'bulkupload', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_options`
--

DROP TABLE IF EXISTS `products_options`;
CREATE TABLE IF NOT EXISTS `products_options` (
  `products_options_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_options_name` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`products_options_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_options`
--

INSERT INTO `products_options` (`products_options_id`, `products_options_name`) VALUES
(1, 'Color'),
(2, 'Size'),
(3, 'Waist');

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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_options_descriptions`
--

INSERT INTO `products_options_descriptions` (`products_options_descriptions_id`, `language_id`, `options_name`, `products_options_id`) VALUES
(1, 1, 'Color', 1),
(2, 1, 'Size', 2),
(3, 1, 'Waist', 3),
(5, 4, 'اللون', 1),
(6, 4, 'بحجم', 2),
(7, 4, 'وسط', 3);

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(14, 3, '38W');

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
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(28, 4, '38W', 14);

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
) ENGINE=MyISAM AUTO_INCREMENT=1969 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_to_categories`
--

INSERT INTO `products_to_categories` (`products_to_categories_id`, `products_id`, `categories_id`) VALUES
(504, 64, 89),
(503, 64, 86),
(468, 61, 84),
(467, 61, 83),
(462, 60, 82),
(461, 60, 81),
(466, 61, 80),
(460, 60, 80),
(465, 61, 82),
(464, 61, 81),
(477, 62, 85),
(463, 61, 80),
(476, 62, 83),
(475, 62, 80),
(489, 63, 87),
(488, 63, 86),
(487, 63, 80),
(474, 62, 84),
(473, 62, 83),
(472, 62, 80),
(471, 62, 82),
(470, 62, 81),
(486, 63, 85),
(469, 62, 80),
(485, 63, 83),
(484, 63, 80),
(483, 63, 84),
(482, 63, 83),
(502, 64, 88),
(481, 63, 80),
(501, 64, 87),
(500, 64, 86),
(499, 64, 80),
(498, 64, 85),
(497, 64, 83),
(496, 64, 80),
(495, 64, 84),
(494, 64, 83),
(493, 64, 80),
(480, 63, 82),
(479, 63, 81),
(478, 63, 80),
(522, 65, 90),
(521, 65, 86),
(520, 65, 80),
(519, 65, 89),
(518, 65, 86),
(517, 65, 88),
(516, 65, 87),
(515, 65, 86),
(514, 65, 80),
(492, 64, 82),
(531, 66, 85),
(530, 66, 83),
(529, 66, 80),
(525, 66, 82),
(524, 66, 81),
(523, 66, 80),
(513, 65, 85),
(512, 65, 83),
(491, 64, 81),
(490, 64, 80),
(511, 65, 80),
(510, 65, 84),
(509, 65, 83),
(508, 65, 80),
(507, 65, 82),
(506, 65, 81),
(505, 65, 80),
(528, 66, 84),
(527, 66, 83),
(526, 66, 80),
(532, 66, 80),
(533, 66, 86),
(534, 66, 87),
(535, 66, 88),
(536, 66, 86),
(537, 66, 89),
(538, 66, 80),
(539, 66, 86),
(540, 66, 90),
(541, 66, 80),
(542, 66, 91),
(543, 66, 92),
(544, 67, 80),
(545, 67, 81),
(546, 67, 82),
(547, 67, 80),
(548, 67, 83),
(549, 67, 84),
(550, 67, 80),
(551, 67, 83),
(552, 67, 85),
(553, 67, 80),
(554, 67, 86),
(555, 67, 87),
(556, 67, 88),
(557, 67, 86),
(558, 67, 89),
(559, 67, 80),
(560, 67, 86),
(561, 67, 90),
(562, 67, 80),
(563, 67, 91),
(564, 67, 92),
(565, 67, 80),
(566, 67, 93),
(567, 67, 94),
(568, 68, 96),
(569, 68, 96),
(570, 68, 98),
(571, 69, 96),
(572, 69, 99),
(573, 69, 100),
(574, 70, 96),
(575, 70, 99),
(576, 70, 100),
(577, 70, 96),
(578, 70, 99),
(579, 70, 101),
(580, 71, 96),
(581, 71, 99),
(582, 71, 100),
(583, 71, 96),
(584, 71, 99),
(585, 71, 101),
(586, 71, 96),
(587, 71, 102),
(588, 71, 103),
(589, 72, 96),
(590, 72, 99),
(591, 72, 100),
(592, 72, 96),
(593, 72, 99),
(594, 72, 101),
(595, 72, 96),
(596, 72, 102),
(597, 72, 103),
(598, 72, 104),
(599, 72, 105),
(600, 72, 106),
(601, 73, 96),
(602, 73, 99),
(603, 73, 100),
(604, 73, 96),
(605, 73, 99),
(606, 73, 101),
(607, 73, 96),
(608, 73, 102),
(609, 73, 103),
(610, 73, 104),
(611, 73, 105),
(612, 73, 106),
(613, 73, 96),
(614, 73, 107),
(615, 73, 108),
(616, 74, 96),
(617, 74, 99),
(618, 74, 100),
(619, 74, 96),
(620, 74, 99),
(621, 74, 101),
(622, 74, 96),
(623, 74, 102),
(624, 74, 103),
(625, 74, 104),
(626, 74, 105),
(627, 74, 106),
(628, 74, 96),
(629, 74, 107),
(630, 74, 108),
(631, 74, 96),
(632, 74, 109),
(633, 74, 110),
(634, 75, 96),
(635, 75, 99),
(636, 75, 100),
(637, 75, 96),
(638, 75, 99),
(639, 75, 101),
(640, 75, 96),
(641, 75, 102),
(642, 75, 103),
(643, 75, 104),
(644, 75, 105),
(645, 75, 106),
(646, 75, 96),
(647, 75, 107),
(648, 75, 108),
(649, 75, 96),
(650, 75, 109),
(651, 75, 110),
(652, 75, 96),
(653, 75, 111),
(654, 75, 112),
(1198, 10, 17),
(1199, 10, 18),
(1200, 10, 19),
(1201, 10, 17),
(1202, 10, 18),
(1203, 10, 19),
(1204, 11, 17),
(1205, 11, 18),
(1206, 11, 19),
(1207, 11, 17),
(1208, 11, 18),
(1209, 11, 19),
(1210, 11, 17),
(1211, 11, 18),
(1212, 11, 19),
(1213, 12, 17),
(1214, 12, 18),
(1215, 12, 19),
(1216, 12, 17),
(1217, 12, 18),
(1218, 12, 19),
(1219, 12, 17),
(1220, 12, 18),
(1221, 12, 19),
(1222, 12, 17),
(1223, 12, 20),
(1224, 12, 21),
(1225, 13, 17),
(1226, 13, 18),
(1227, 13, 19),
(1228, 13, 17),
(1229, 13, 18),
(1230, 13, 19),
(1231, 13, 17),
(1232, 13, 18),
(1233, 13, 19),
(1234, 13, 17),
(1235, 13, 20),
(1236, 13, 21),
(1237, 13, 17),
(1238, 13, 20),
(1239, 13, 22),
(1240, 14, 17),
(1241, 14, 18),
(1242, 14, 19),
(1243, 14, 17),
(1244, 14, 18),
(1245, 14, 19),
(1246, 14, 17),
(1247, 14, 18),
(1248, 14, 19),
(1249, 14, 17),
(1250, 14, 20),
(1251, 14, 21),
(1252, 14, 17),
(1253, 14, 20),
(1254, 14, 22),
(1255, 14, 17),
(1256, 14, 20),
(1257, 14, 23),
(1258, 15, 17),
(1259, 15, 18),
(1260, 15, 19),
(1261, 15, 17),
(1262, 15, 18),
(1263, 15, 19),
(1264, 15, 17),
(1265, 15, 18),
(1266, 15, 19),
(1267, 15, 17),
(1268, 15, 20),
(1269, 15, 21),
(1270, 15, 17),
(1271, 15, 20),
(1272, 15, 22),
(1273, 15, 17),
(1274, 15, 20),
(1275, 15, 23),
(1276, 15, 17),
(1277, 15, 24),
(1278, 15, 25),
(1279, 16, 17),
(1280, 16, 18),
(1281, 16, 19),
(1282, 16, 17),
(1283, 16, 18),
(1284, 16, 19),
(1285, 16, 17),
(1286, 16, 18),
(1287, 16, 19),
(1288, 16, 17),
(1289, 16, 20),
(1290, 16, 21),
(1291, 16, 17),
(1292, 16, 20),
(1293, 16, 22),
(1294, 16, 17),
(1295, 16, 20),
(1296, 16, 23),
(1297, 16, 17),
(1298, 16, 24),
(1299, 16, 25),
(1300, 16, 17),
(1301, 16, 26),
(1302, 16, 27),
(1303, 17, 17),
(1304, 17, 18),
(1305, 17, 19),
(1306, 17, 17),
(1307, 17, 18),
(1308, 17, 19),
(1309, 17, 17),
(1310, 17, 18),
(1311, 17, 19),
(1312, 17, 17),
(1313, 17, 20),
(1314, 17, 21),
(1315, 17, 17),
(1316, 17, 20),
(1317, 17, 22),
(1318, 17, 17),
(1319, 17, 20),
(1320, 17, 23),
(1321, 17, 17),
(1322, 17, 24),
(1323, 17, 25),
(1324, 17, 17),
(1325, 17, 26),
(1326, 17, 27),
(1327, 17, 17),
(1328, 17, 28),
(1329, 17, 29),
(1330, 18, 17),
(1331, 18, 18),
(1332, 18, 19),
(1333, 18, 17),
(1334, 18, 18),
(1335, 18, 19),
(1336, 18, 17),
(1337, 18, 18),
(1338, 18, 19),
(1339, 18, 17),
(1340, 18, 20),
(1341, 18, 21),
(1342, 18, 17),
(1343, 18, 20),
(1344, 18, 22),
(1345, 18, 17),
(1346, 18, 20),
(1347, 18, 23),
(1348, 18, 17),
(1349, 18, 24),
(1350, 18, 25),
(1351, 18, 17),
(1352, 18, 26),
(1353, 18, 27),
(1354, 18, 17),
(1355, 18, 28),
(1356, 18, 29),
(1357, 18, 17),
(1358, 18, 30),
(1359, 18, 31),
(1954, 8, 13),
(1953, 8, 2),
(1952, 8, 1),
(1965, 9, 11),
(1964, 9, 10),
(1963, 9, 9),
(1968, 6, 12),
(1967, 6, 7),
(1966, 6, 1),
(1933, 4, 8),
(1932, 4, 7),
(1931, 4, 1),
(1930, 3, 6),
(1929, 3, 4),
(1928, 3, 1),
(1921, 1, 3),
(1920, 1, 2),
(1919, 1, 1),
(1927, 2, 5),
(1926, 2, 4),
(1925, 2, 1),
(1924, 1, 3),
(1923, 1, 2),
(1922, 1, 1),
(1918, 3, 4),
(1917, 3, 3),
(1916, 3, 2),
(1915, 3, 1),
(1914, 4, 8),
(1913, 4, 7),
(1912, 4, 1),
(1951, 5, 11),
(1950, 5, 10),
(1949, 5, 9),
(1959, 7, 12),
(1958, 7, 7),
(1957, 7, 5),
(1956, 7, 4),
(1955, 7, 1);

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
(4, 'contact_us_email', '', '2018-04-26 18:30:00', '2021-04-05 19:49:36'),
(5, 'address', 'address', '2018-04-26 18:30:00', '2021-04-05 19:49:36'),
(6, 'city', 'City', '2018-04-26 18:30:00', '2021-04-05 19:49:36'),
(7, 'state', 'State', '2018-04-26 18:30:00', '2021-04-05 19:49:36'),
(8, 'zip', 'Zip', '2018-04-26 18:30:00', '2021-04-05 19:49:36'),
(9, 'country', 'Country', '2018-04-26 18:30:00', '2021-04-05 19:49:36'),
(10, 'latitude', 'Latitude', '2018-04-26 18:30:00', '2021-04-05 19:49:36'),
(11, 'longitude', 'Longitude', '2018-04-26 18:30:00', '2021-04-05 19:49:36'),
(12, 'phone_no', '+92 312 1234567', '2018-04-26 18:30:00', '2021-04-05 19:49:36'),
(13, 'fcm_android', '', '2018-04-26 18:30:00', '2019-02-05 06:12:15'),
(14, 'fcm_ios', NULL, '2018-04-26 18:30:00', NULL),
(15, 'fcm_desktop', NULL, '2018-04-26 18:30:00', NULL),
(16, 'website_logo', 'images/media/2021/04/W1CaR13411.png', '2018-04-26 18:30:00', '2021-04-13 06:22:19'),
(17, 'fcm_android_sender_id', NULL, '2018-04-26 18:30:00', NULL),
(18, 'fcm_ios_sender_id', '', '2018-04-26 18:30:00', '2019-02-05 06:12:15'),
(19, 'app_name', 'jewellery Devakya', '2018-04-26 18:30:00', '2021-04-05 19:49:36'),
(20, 'currency_symbol', '₹', '2018-04-26 18:30:00', '2018-11-19 01:56:01'),
(21, 'new_product_duration', '20', '2018-04-26 18:30:00', '2021-04-05 19:49:36'),
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
(51, 'facebook_url', '#', '2018-04-26 18:30:00', '2021-04-13 06:22:19'),
(52, 'google_url', '#', '2018-04-26 18:30:00', '2021-04-13 06:22:19'),
(53, 'twitter_url', '#', '2018-04-26 18:30:00', '2021-04-13 06:22:19'),
(54, 'linked_in', '#', '2018-04-26 18:30:00', '2021-04-13 06:22:19'),
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
(71, 'order_email', 'orders@gmail.com', NULL, '2021-04-05 19:49:36'),
(72, 'website_themes', '1', NULL, NULL),
(73, 'seo_title', '', NULL, '2018-11-19 01:51:57'),
(74, 'seo_metatag', '', NULL, '2018-11-19 01:51:57'),
(75, 'seo_keyword', '', NULL, '2018-11-19 01:51:57'),
(76, 'seo_description', '', NULL, '2018-11-19 01:51:57'),
(77, 'before_head_tag', '', NULL, '2018-11-19 01:52:15'),
(78, 'end_body_tag', 'name', NULL, '2019-10-11 06:27:29'),
(79, 'sitename_logo', 'logo', NULL, '2021-04-13 06:22:19'),
(80, 'website_name', 'Jewellery store', NULL, '2021-04-13 06:22:19'),
(81, 'web_home_pages_style', 'two', NULL, '2018-11-19 01:52:25'),
(82, 'web_color_style', 'app.theme.1', NULL, '2021-04-06 20:03:40'),
(83, 'free_shipping_limit', '400', NULL, '2021-04-05 19:49:36'),
(84, 'app_icon_image', 'icon', NULL, '2019-02-05 04:42:59'),
(85, 'twilio_status', '0', NULL, NULL),
(86, 'twilio_authy_api_id', '', NULL, NULL),
(87, 'favicon', 'images/media/2021/04/W1CaR13411.png', NULL, '2021-04-13 06:22:19'),
(88, 'Thumbnail_height', '150', NULL, NULL),
(89, 'Thumbnail_width', '150', NULL, NULL),
(90, 'Medium_height', '400', NULL, NULL),
(91, 'Medium_width', '400', NULL, NULL),
(92, 'Large_height', '900', NULL, NULL),
(93, 'Large_width', '900', NULL, NULL),
(94, 'environmentt', 'local', NULL, '2021-04-05 19:49:36'),
(95, 'maintenance_text', 'Website is under maintenance', NULL, '2021-04-05 19:49:36'),
(96, 'package_charge_taxt', '0', NULL, NULL),
(97, 'order_commission', '0', NULL, NULL),
(98, 'all_items_price_included_tax', 'yes', NULL, NULL),
(99, 'all_items_price_included_tax_value', '0', NULL, NULL),
(100, 'driver_accept_multiple_order', '1', NULL, NULL),
(101, 'min_order_price', '20', NULL, '2021-04-05 19:49:36'),
(102, 'youtube_link', '0', NULL, NULL),
(103, 'external_website_link', 'http://jewellery.devakya.com/', NULL, '2021-04-05 19:49:36'),
(104, 'google_map_api', '', NULL, '2021-04-05 19:49:36'),
(105, 'is_pos_purchased', '0', NULL, NULL),
(106, 'admin_version', '4.0.18', NULL, NULL),
(107, 'app_version', '4.0.18', NULL, NULL),
(108, 'web_version', '4.0.18', NULL, NULL),
(109, 'pos_version', '0', NULL, NULL),
(110, 'android_app_link', '#', NULL, NULL),
(111, 'iphone_app_link', '#', NULL, NULL),
(112, 'about_content', 'Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum', NULL, '2021-04-13 06:22:19'),
(113, 'contact_content', 'Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum', NULL, '2021-04-13 06:22:19'),
(114, 'contents', NULL, NULL, NULL),
(115, 'fb_redirect_url', 'http://YOUR_DOMAIN_NAME/login/facebook/callback', NULL, '2019-11-01 01:28:53'),
(116, 'google_client_id', 'GOOGLE_CLIENT_ID', NULL, '2019-11-01 01:28:36'),
(117, 'google_client_secret', 'GOOGLE_SECRET_KEY', NULL, '2019-11-01 01:28:36'),
(118, 'google_redirect_url', 'http://YOUR_DOMAIN_NAME/login/google/callback', NULL, '2019-11-01 01:28:36'),
(119, 'newsletter', '0', NULL, '2019-11-01 01:28:36'),
(120, 'allow_cookies', '0', NULL, '2021-04-13 06:22:19'),
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
(1, 'upsShipping', 0, 0, 'ups_shipping'),
(2, 'freeShipping', 0, 0, 'free_shipping'),
(3, 'localPickup', 0, 0, 'local_pickup'),
(4, 'flateRate', 1, 1, 'flate_rate'),
(5, 'shippingByWeight', 0, 0, 'shipping_by_weight');

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
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders_images`
--

INSERT INTO `sliders_images` (`sliders_id`, `sliders_title`, `sliders_url`, `carousel_id`, `sliders_image`, `sliders_group`, `sliders_html_text`, `expires_date`, `date_added`, `status`, `type`, `date_status_change`, `languages_id`) VALUES
(2, 'Left Slider with Thumbs (770x400)', 'platinum', 5, '704', '', '', '2022-04-01 00:00:00', '2021-04-06 10:50:16', 1, 'category', '2021-04-06 10:50:16', 1),
(3, 'Left Slider with Thumbs (770x400)', 'ribbon-pattern-platinum-and-diamond-ring', 5, '677', '', '', '2022-09-18 00:00:00', '2021-04-05 13:26:52', 1, 'product', '2021-04-05 13:26:52', 0),
(5, 'Full Screen Slider (1600x420)', '', 1, '713', '', '', '2022-08-14 00:00:00', '2021-04-06 13:44:48', 1, 'topseller', '2021-04-06 13:44:48', 1),
(7, 'Full Page Slider (1170x420)', 'ribbon-pattern-platinum-and-diamond-ring', 2, '697', '', '', '2022-11-19 00:00:00', '2021-04-06 10:42:07', 1, 'product', '2021-04-06 10:42:07', 1),
(8, 'Full Page Slider (1170x420)', 'ribbon-pattern-platinum-and-diamond-ring', 2, '690', '', '', '2021-07-14 00:00:00', '2021-04-06 10:42:55', 1, 'product', '2021-04-06 10:42:55', 1),
(9, 'Full Page Slider (1170x420)', 'ribbon-pattern-platinum-and-diamond-ring', 2, '689', '', '', '2025-06-24 00:00:00', '2021-04-06 10:43:38', 1, 'product', '2021-04-06 10:43:38', 1),
(10, 'Right Slider with Thumbs (770x400)', 'ribbon-pattern-platinum-and-diamond-ring', 3, '700', '', '', '2022-10-20 00:00:00', '2021-04-06 10:45:07', 1, 'product', '2021-04-06 10:45:07', 1),
(11, 'Right Slider with Thumbs (770x400)', 'ribbon-pattern-platinum-and-diamond-ring', 3, '699', '', '', '2022-07-15 00:00:00', '2021-04-06 10:45:39', 1, 'product', '2021-04-06 10:45:39', 1),
(12, 'Right Slider with Thumbs (770x400)', 'ribbon-pattern-platinum-and-diamond-ring', 3, '698', '', '', '2022-07-15 00:00:00', '2021-04-06 10:45:59', 1, 'product', '2021-04-06 10:45:59', 1),
(13, 'Right Slider with Navigation (770x400)', 'ribbon-pattern-platinum-and-diamond-ring', 4, '703', '', '', '2021-06-15 00:00:00', '2021-04-06 10:47:09', 1, 'product', '2021-04-06 10:47:09', 1),
(14, 'Right Slider with Navigation (770x400)', 'ribbon-pattern-platinum-and-diamond-ring', 4, '702', '', '', '2022-10-25 00:00:00', '2021-04-06 10:47:38', 1, 'product', '2021-04-06 10:47:38', 1),
(15, 'Right Slider with Navigation (770x400)', 'ribbon-pattern-platinum-and-diamond-ring', 4, '701', '', '', '2022-07-07 00:00:00', '2021-04-06 10:48:03', 1, 'product', '2021-04-06 10:48:03', 1),
(17, 'Full Screen Slider (1600x420)', 'ribbon-pattern-platinum-and-diamond-ring', 1, '693', '', '', '2020-10-30 00:00:00', '2021-04-06 10:38:19', 1, 'product', '2021-04-06 10:38:19', 1),
(18, 'Full Screen Slider (1600x420)', 'ribbon-pattern-platinum-and-diamond-ring', 1, '714', '', '', '2021-02-28 00:00:00', '2021-04-06 16:51:10', 1, 'product', '2021-04-06 16:51:10', 1),
(19, 'Full Screen Slider (1600x420)', 'ribbon-pattern-platinum-and-diamond-ring', 1, '696', '', '', '2021-04-30 00:00:00', '2021-04-06 10:39:31', 1, 'product', '2021-04-06 10:39:31', 1),
(20, 'Full Screen Slider (1600x420)', 'platinum', 1, '692', '', '', '2021-12-31 00:00:00', '2021-04-06 10:36:47', 1, 'category', NULL, 1),
(23, 'Left Slider with Thumbs (770x400)', 'platinum', 5, '704', '', '', '2026-04-03 00:00:00', '2021-04-06 10:51:15', 1, 'category', NULL, 1);

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

--
-- Dumping data for table `specials`
--

INSERT INTO `specials` (`specials_id`, `products_id`, `specials_new_products_price`, `specials_date_added`, `specials_last_modified`, `expires_date`, `date_status_change`, `status`) VALUES
(1, 9, '3000.00', 1617727159, 0, 1624579200, 0, 1),
(2, 6, '77.00', 1617728498, 0, 1630108800, 0, 1);

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
(1, '<div class=\\\"pro-info\\\">\r\n                Get<strong> UPTO 40% OFF </strong>on your 1st order\r\n                <div class=\\\"pro-link-dropdown js-toppanel-link-dropdown\\\">\r\n                  <a href=\\\"http://jewellery.devakya.com/shop\\\" class=\\\"pro-dropdown-toggle\\\">\r\n                    More details\r\n                  </a>\r\n                  \r\n                </div>\r\n            </div>', 1, '2020-02-03 23:44:16', '2021-04-13 06:46:46'),
(2, '<div class=\\\"pro-info\\\">\r\n                Get<strong> UPTO 40% OFF </strong>on your 1st order\r\n                <div class=\\\"pro-link-dropdown js-toppanel-link-dropdown\\\">\r\n                  <a href=\\\"http://jewellery.devakya.com/shop\\\" class=\\\"pro-dropdown-toggle\\\">\r\n                    More details\r\n                  </a>\r\n                  \r\n                </div>\r\n            </div>', 1, '2020-02-03 23:44:16', '2021-04-13 06:46:46');

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `user_name`, `first_name`, `last_name`, `gender`, `default_address_id`, `country_code`, `phone`, `email`, `password`, `avatar`, `status`, `is_seen`, `phone_verified`, `remember_token`, `auth_id_tiwilo`, `dob`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'super', 'admin', NULL, 0, NULL, NULL, 'mitalimehta287@gmail.com', '$2y$10$SQl72E4WB8UW8kOruFhrHuKbXpOdss1JoNADDrzgQBxUINLRxjOWO', NULL, '1', 0, NULL, NULL, NULL, NULL, '2021-03-13 04:37:49', '2021-03-13 04:37:49'),
(2, 14, 'admin_admin1615717283', 'VISHAL', 'admin', '0', 0, NULL, '1234567890', 'devadmin@gmail.com', '$2y$10$h4Zyg2HUn74AXoJswJSZ0uHQrGMRU5OyGGcOLf3hOts0mCfh5jA9u', NULL, '1', 0, NULL, NULL, NULL, NULL, NULL, '2021-10-05 04:23:36'),
(3, 2, NULL, 'mitali', 'mehta', '0', 0, NULL, NULL, 'mitali.sixs1@gmail.com', '$2y$10$t84ttqN3pAGLfQd/h88aduD5Z/BKSOpFsCAX9jY/GbMipDR4Hcs/e', NULL, '1', 0, NULL, NULL, NULL, NULL, '2021-03-14 06:03:24', '2021-03-14 06:03:24'),
(5, 2, NULL, 'bhogilal', 'Doe', NULL, 0, NULL, '01234569871', 'sxcvxc@gmail.com', '$2y$10$8pj2S2GrKQciYR/jiEKzju5gR0fZz6FozENHI/Ed9RDUEB2TZUFJe', NULL, '1', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 2, NULL, 'Ankit', 'Patel', '0', 0, NULL, NULL, 'websiteneetai@gmail.com', '$2y$10$NQKjUO9Oan5CRkFIvCwEauNgMA8v6fdyeaH9M.Qu17LlQTnBU2QOy', NULL, '1', 0, NULL, NULL, NULL, NULL, '2021-03-20 03:04:57', '2021-03-20 03:04:57'),
(7, 2, NULL, 'bhogilal', 'Doe', '0', 0, NULL, NULL, '160303105124@paruluniversity.ac.in', '$2y$10$MtNh0KmB0lybg8lGoqQUFe7jEeX9XCbr54AWDtnsncUwIsqKUu3Xq', NULL, '1', 0, NULL, NULL, NULL, NULL, '2021-03-22 05:57:15', '2021-03-22 05:57:15'),
(8, 2, NULL, 'Arth', 'Patel', NULL, 0, NULL, '8200269556', 'arthpatel896@gmail.com', '$2y$10$lQvVDtaWapaAgVvwEI/C0u/4ndAGiEtYvv1imKnER7.PV8J3TswbO', NULL, '1', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 2, NULL, 'Vishalbhai', 'Patel', '0', 0, NULL, NULL, 'devadmin@gmail.com', '$2y$10$KnZfi0R1PRXjs4RMd/6z5Ou2XaeFcio71ml5/c32tk7cubUdQYP7q', NULL, '1', 0, NULL, NULL, NULL, NULL, '2021-10-05 04:23:09', '2021-10-05 04:23:09');

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_to_address`
--

INSERT INTO `user_to_address` (`id`, `user_id`, `address_book_id`, `is_default`) VALUES
(2, 3, 2, 0);

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
