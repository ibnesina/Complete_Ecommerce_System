-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 08, 2025 at 08:27 PM
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
-- Database: `eShop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_sells`
--

CREATE TABLE `admin_sells` (
  `voucher no` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `SKU` varchar(255) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `balances`
--

CREATE TABLE `balances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `SKU` varchar(255) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `rate` double DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `balances`
--

INSERT INTO `balances` (`id`, `name`, `SKU`, `quantity`, `rate`, `category_id`, `created_at`, `updated_at`) VALUES
(14, 'Embroidered Muslin Saree', 's1', 15, 13.333333333333, 1, '2023-11-11 09:28:30', '2023-11-11 09:28:30'),
(15, 'Endi Silk Saree', 's2', 10, 15, 1, '2023-11-11 09:31:32', '2023-11-11 09:31:32'),
(16, 'Purple Nakshi Kantha', 's3', 12, 12.5, 1, '2023-11-11 09:33:26', '2023-11-11 09:33:26'),
(17, 'Viscose Shalwar Kameez', 'sc1', 10, 15, 1, '2023-11-11 09:35:34', '2025-05-05 01:33:52'),
(18, 'Viscose-Cotton Shalwar Kameez', 'sc2', 10, 15, 1, '2023-11-11 09:36:57', '2023-11-13 01:29:14'),
(19, 'Blue Shalwar Kameez', 'sc3', 12, 15, 1, '2023-11-11 09:38:50', '2023-11-11 09:38:50'),
(20, 'Edition T Shirt -Youniverse', 'ts1', 16, 10, 2, '2023-11-11 09:53:35', '2023-11-30 22:34:59'),
(21, 'Edition T Shirt - Signature', 'ts2', 25, 8, 2, '2023-11-11 09:54:57', '2023-11-11 09:54:57'),
(22, 'Edition T Shirt - Illuminate', 'ts3', 25, 8, 2, '2023-11-11 09:56:26', '2023-11-11 09:56:26'),
(23, 'Premium Jacquard Panjabi - Tabriz', 'p1', 5, 40, 2, '2023-11-11 09:58:52', '2023-11-11 09:58:52'),
(24, 'Premium Jacquard Panjabi - Devran', 'p2', 4, 40, 2, '2023-11-11 10:00:00', '2025-05-05 01:33:52'),
(25, 'Premium Jacquard Panjabi - Ilhan', 'p3', 5, 40, 2, '2023-11-11 10:01:51', '2023-11-11 10:01:51'),
(26, 'Howkingss Rice Cooker 2.8 ltr', 'rc1', 4, 50, 4, '2023-11-11 10:09:19', '2023-11-11 10:09:19'),
(27, 'Pot Drum Rice Cooker', 'rc2', 4, 50, 4, '2023-11-11 10:10:46', '2023-11-11 10:10:46'),
(28, 'Vision Electric Iron 1150W', 'i1', 6, 33.333333333333, 4, '2023-11-11 10:12:26', '2023-11-11 10:12:26'),
(29, 'Vision Electric Iron ', 'i2', 6, 25, 4, '2023-11-11 10:14:02', '2023-11-11 10:14:02'),
(30, 'Realme C53 (6/128) Smart Phones', 'm1', 6, 83.333333333333, 5, '2023-11-11 10:17:05', '2023-11-11 10:17:05'),
(31, 'Symphony Z60 Plus ( 6 GB/ 128 GB)', 'm2', 7, 71.428571428571, 5, '2023-11-11 10:18:58', '2023-11-11 10:18:58'),
(32, 'Realme C55 - (6GB/128GB)', 'm3', 5, 100, 5, '2023-11-11 10:21:03', '2023-11-11 10:21:03'),
(33, 'M10 TWS Earphone 9D', 'mb1', 15, 46.666666666667, 14, '2023-11-11 10:24:33', '2023-11-11 10:24:33'),
(34, 'Dual Mini Wireless 4.1 Bluetooth', 'mb2', 20, 35, 14, '2023-11-11 10:29:00', '2023-11-11 10:29:00'),
(35, 'C Super Bass Earphone', 'hp1', 20, 5, 14, '2023-11-11 10:31:04', '2023-11-11 10:31:04'),
(36, 'Super Bass In Ear Earphones', 'hp2', 20, 5, 14, '2023-11-11 10:33:12', '2023-11-11 10:33:12'),
(37, 'Tulle Party Formal Dress', 'kd1', 4, 25, 3, '2023-11-11 10:35:50', '2023-11-11 10:35:50'),
(38, 'Baby & girls By Dream World', 'kd2', 4, 25, 3, '2023-11-11 10:38:49', '2023-11-11 10:38:49'),
(39, 'Cute fashionable baby frock', 'kd3', 5, 20, 3, '2023-11-11 10:40:02', '2023-11-11 10:40:02'),
(40, '(T-SHIRT & HALF PANT)', 'kd4', 5, 20, 3, '2023-11-11 10:41:50', '2023-11-11 10:41:50'),
(41, 'STYLISH EXCLUSIVE DRESS SET', 'kd5', 5, 20, 3, '2023-11-11 10:43:36', '2023-11-11 10:43:36'),
(42, 'Touch Smart Watch', 'wt1', 10, 20, 8, '2023-11-30 21:45:33', '2023-11-30 21:45:33');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_description` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `slug`, `short_description`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Aarong Sharodio Getaway campaign', 'Aarong-Sharodio-Getaway-campaign', 'Aarong Sharodiyo Getaway Campaign is here! Shop at Aarong this Puja and win a dream getaway everyday. Top shoppers will win air tickets and staycation offers from our partners – Novoair, Dusai Resorts and Spa and Seagull Hotels.\n\nOnly My Aarong Rewards Card (MARC) members are eligible for this campaign. Non-members can participate in this campaign through a purchase of BDT 10,000 and become My Aarong Rewards Card members. MARC customers need to use their card or membership ID during the purchase', 'Aarong Sharodiyo Getaway Campaign is here! Shop at Aarong this Puja and win a dream getaway everyday. Top shoppers will win air tickets and staycation offers from our partners – Novoair, Dusai Resorts and Spa and Seagull Hotels.\n\nOnly My Aarong Rewards Card (MARC) members are eligible for this campaign. Non-members can participate in this campaign through a purchase of BDT 10,000 and become My Aarong Rewards Card members. MARC customers need to use their card or membership ID during the purchase. \n\nTerms & Conditions:\n\nCampaign duration: 13 October 2023 to 19 October 2023.\nOffers cannot be clubbed with any other offers.\nOffers are not eligible for encashment.\nFor NOVOAIR: Government & airport taxes will be paid by the winner. Any surcharges will be waived.\nBooking dates of resort rooms & air tickets are subject to room availability and flight route dates.\nRooms and air tickets are non-cashable, non-reroute able.\nValidity of the vouchers will be from 14th October 2023 till 30th April 2024.\nBlack-out days applicable.\nAarong reserves the right to select the winners.\nAarong reserves the right to change, modify, amend any terms and conditions and/or withdraw the campaign without assigning any reason whatsoever.\nEmployees of BRAC-Aarong, NOVOAIR, Seagull Hotel and Dusai Resort are ineligible to participate in this campaign.\nAarong Puja/23 collection is now available at all outlets, aarong.com and the Aarong app. Shop now: aarong.com/puja-23', 'blog1.webp', NULL, NULL),
(2, 'Best Electric Blankets That Will Keep You Warm This Winter', 'Best-Electric-Blankets', 'When it gets really cold in the winter, it’s important to find ways to stay warm and comfy. One good option is to get one of the best electric blankets. They’re like regular blankets, but they can warm you up.\n\nIn this article, we’ll talk about some of the best electric blankets to help you stay warm during the winter.', 'When it gets really cold in the winter, it’s important to find ways to stay warm and comfy. One good option is to get one of the best electric blankets. They’re like regular blankets, but they can warm you up.\n\nIn this article, we’ll talk about some of the best electric blankets to help you stay warm during the winter.\n\nFactors to Consider When Buying an Electric Blanket\nConsider these three factors when buying an electric blanket:\n\nSize and Fit: Ensure it fits your bed properly.\nSafety Features: Look for features like overheating protection.\nControls and Settings: Check if it offers the desired temperature options.', 'blog2.jpeg', NULL, NULL),
(3, 'Eid Getaway with eShop!', 'Eid-Getaway', 'Make this summer is more exciting with Aarong! Make any purchase between 15 to 21 April from Aarong and win a chance of 1 night couple stay at the all new NS Island Resort, Bangladesh’s first island resort near Munshiganj.\r\n\r\nDuring the campaign period next 10 top shoppers will win complimentary daylong package.\r\n\r\nAlso, 1 top shopper from aarong.com will win 1 night couple stay at NS Island Resort.\r\n\r\nAll Aarong shoppers will enjoy 50% discount on daylong package.', 'Make this summer is more exciting with Aarong! Make any purchase between 15 to 21 April from Aarong and win a chance of 1 night couple stay at the all new NS Island Resort, Bangladesh’s first island resort near Munshiganj.\r\n\r\nDuring the campaign period next 10 top shoppers will win complimentary daylong package.\r\n\r\nAlso, 1 top shopper from aarong.com will win 1 night couple stay at NS Island Resort.\r\n\r\nAll Aarong shoppers will enjoy 50% discount on daylong package.\r\n\r\nTerms & Conditions:\r\n\r\nEmployees of BRAC-Aarong and NS Island are ineligible to participate in this campaign.\r\nValidity of the vouchers will be from 12th April 2023 till 31st October 2023 (Subject to availability)\r\nReward can be redeemed only once which is transferable but non-cashable.\r\nFor any queries regarding NS Island Resort should be raised via +88 01958444504\r\nBlackout dates applicable.\r\nAarong reserves the right to change, modify, amend any terms and conditions and/or withdraw the campaign without assigning any reason whatsoever.\r\nAarong shall bear no responsibility and undertake no liability regarding the services provided to the customer.\r\nOther conditions may apply.\r\nVAT and other charges may apply.\r\nTerms and conditions are subject to change.\r\n', 'blog3.webp', NULL, NULL),
(5, '10 Best Coffee Grinders with Prices in Pakistan', '10-Best-Coffee-Grinders', 'If you’re a coffee enthusiast searching for the best coffee grinders to elevate your coffee brewing experience, you’ve come to the right place. Explore the best coffee grinders available in the Pakistani market, catering to your budget and preferences.', 'If you’re a coffee enthusiast searching for the best coffee grinders to elevate your coffee brewing experience, you’ve come to the right place. Explore the best coffee grinders available in the Pakistani market, catering to your budget and preferences.\r\n\r\nWhy Every Coffee Lover Needs a Reliable Coffee Grinder\r\nA reliable coffee grinder is a must-have for every coffee lover, offering essential benefits in a simple package:\r\n\r\nFreshness Boost: Grinding coffee beans just before brewing preserves freshness, resulting in a more flavorful cup.\r\nCustomized Grinds: Tailor your grind size to match different brewing methods, ensuring optimal taste and consistency.\r\nCost-Effective: Investing in a grinder allows you to buy whole beans in bulk, saving money in the long run compared to pre-ground options.\r\nJoyful Ritual: Grinding your coffee beans becomes a satisfying and aromatic ritual, enhancing your overall coffee experience.', 'blog4.jpeg', NULL, NULL);

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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Women\'s Fashion', 'womens-fashion', '2023-09-09 06:22:42', '2023-09-09 06:22:42'),
(2, 'Men\'s Fashion', 'mens-fashion', '2023-09-09 07:35:58', '2023-09-09 07:35:58'),
(3, 'Kid\'s Zone', 'kids-zone', '2023-09-09 07:36:14', '2023-09-09 07:36:14'),
(4, 'Electronics', 'electronics', '2023-09-09 07:36:31', '2023-09-09 07:36:31'),
(5, 'Mobile & Laptop', 'mobile-laptop', '2023-09-09 07:36:53', '2023-09-09 07:36:53'),
(6, 'Groceries', 'groceries', '2023-09-09 07:40:19', '2023-09-09 07:40:19'),
(7, 'TV & Home Appliances', 'tv-home-appliances', '2023-09-09 07:42:21', '2023-09-09 07:42:21'),
(8, 'Watch, Bags & Jewellery', 'watch-bags-jewellary', '2023-09-09 07:43:04', '2023-09-09 07:43:04'),
(9, 'Home & Lifestyle', 'home-lifestyle', '2023-09-09 07:45:04', '2023-09-09 07:45:04'),
(10, 'Sports & Outdoors', 'sports-outdoors', '2023-09-09 07:45:24', '2023-09-09 07:45:24'),
(12, 'Mother & Baby', 'mother-baby', '2023-09-09 07:58:05', '2023-09-09 07:58:05'),
(14, 'Gadgets', 'gadgets', '2023-09-27 01:06:35', '2023-09-27 01:06:35'),
(16, 'Makeup Kits', 'makeup-kits', '2023-11-09 17:58:42', '2023-11-10 23:32:06');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `comment`, `created_at`, `updated_at`) VALUES
(4, 'Md. Ibne Sina', 'ibnesina13@gmail.com', '01670632145', 'Having some trouble on ordering! Can you please solve this out?', '2023-11-10 13:21:38', '2023-11-10 13:21:38'),
(5, 'Shafiatu Nur', 'shafiatu@gmail.com', '01711241311', 'When the next campaign will be lounged?', '2023-11-11 20:34:21', '2023-11-11 20:34:21'),
(6, 'Aftab Khan', 'aftabkhan@outlook.com', '017223425212', 'I didn\'t receive my product. I ordered it on 20/10/2023. Whats the issue? Order No: 231B21C.', '2023-11-11 20:36:11', '2023-11-11 20:36:11');

-- --------------------------------------------------------

--
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sel_categories` varchar(255) NOT NULL,
  `no_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, '1,2,3,4,5,14,16', 8, '2023-06-27 10:55:26', '2023-11-11 10:45:07');

-- --------------------------------------------------------

--
-- Table structure for table `ledgers`
--

CREATE TABLE `ledgers` (
  `memo` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) NOT NULL,
  `SKU` varchar(255) NOT NULL,
  `debit` int(10) UNSIGNED DEFAULT NULL,
  `credit` int(10) UNSIGNED DEFAULT NULL,
  `balance` int(10) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ledgers`
--

INSERT INTO `ledgers` (`memo`, `description`, `SKU`, `debit`, `credit`, `balance`, `category_id`, `created_at`, `updated_at`) VALUES
(22, 'Embroidered Muslin Saree purchased', 's1', 15, NULL, 15, 1, '2023-11-11 09:28:30', '2023-11-11 09:28:30'),
(23, 'Endi Silk Saree purchased', 's2', 10, NULL, 10, 1, '2023-11-11 09:31:32', '2023-11-11 09:31:32'),
(24, 'Purple Nakshi Kantha purchased', 's3', 12, NULL, 12, 1, '2023-11-11 09:33:26', '2023-11-11 09:33:26'),
(25, 'Viscose Shalwar Kameez purchased', 'sc1', 12, NULL, 12, 1, '2023-11-11 09:35:34', '2023-11-11 09:35:34'),
(26, 'Viscose-Cotton Shalwar Kameez purchased', 'sc2', 12, NULL, 12, 1, '2023-11-11 09:36:57', '2023-11-11 09:36:57'),
(27, 'Blue Shalwar Kameez purchased', 'sc3', 12, NULL, 12, 1, '2023-11-11 09:38:50', '2023-11-11 09:38:50'),
(28, 'Edition T Shirt -Youniverse purchased', 'ts1', 20, NULL, 20, 2, '2023-11-11 09:53:35', '2023-11-11 09:53:35'),
(29, 'Edition T Shirt - Signature purchased', 'ts2', 25, NULL, 25, 2, '2023-11-11 09:54:57', '2023-11-11 09:54:57'),
(30, 'Edition T Shirt - Illuminate purchased', 'ts3', 25, NULL, 25, 2, '2023-11-11 09:56:26', '2023-11-11 09:56:26'),
(31, 'Premium Jacquard Panjabi - Tabriz purchased', 'p1', 5, NULL, 5, 2, '2023-11-11 09:58:52', '2023-11-11 09:58:52'),
(32, 'Premium Jacquard Panjabi - Devran purchased', 'p2', 5, NULL, 5, 2, '2023-11-11 10:00:00', '2023-11-11 10:00:00'),
(33, 'Premium Jacquard Panjabi - Ilhan purchased', 'p3', 5, NULL, 5, 2, '2023-11-11 10:01:51', '2023-11-11 10:01:51'),
(34, 'Howkingss Rice Cooker 2.8 ltr purchased', 'rc1', 4, NULL, 4, 4, '2023-11-11 10:09:19', '2023-11-11 10:09:19'),
(35, 'Pot Drum Rice Cooker purchased', 'rc2', 4, NULL, 4, 4, '2023-11-11 10:10:46', '2023-11-11 10:10:46'),
(36, 'Vision Electric Iron 1150W purchased', 'i1', 6, NULL, 6, 4, '2023-11-11 10:12:26', '2023-11-11 10:12:26'),
(37, 'Vision Electric Iron  purchased', 'i2', 6, NULL, 6, 4, '2023-11-11 10:14:02', '2023-11-11 10:14:02'),
(38, 'Realme C53 (6/128) Smart Phones purchased', 'm1', 6, NULL, 6, 5, '2023-11-11 10:17:05', '2023-11-11 10:17:05'),
(39, 'Symphony Z60 Plus ( 6 GB/ 128 GB) purchased', 'm2', 7, NULL, 7, 5, '2023-11-11 10:18:58', '2023-11-11 10:18:58'),
(40, 'Realme C55 - (6GB/128GB) purchased', 'm3', 5, NULL, 5, 5, '2023-11-11 10:21:03', '2023-11-11 10:21:03'),
(41, 'M10 TWS Earphone 9D purchased', 'mb1', 15, NULL, 15, 14, '2023-11-11 10:24:33', '2023-11-11 10:24:33'),
(42, 'Dual Mini Wireless 4.1 Bluetooth purchased', 'mb2', 20, NULL, 20, 14, '2023-11-11 10:29:00', '2023-11-11 10:29:00'),
(43, 'C Super Bass Earphone purchased', 'hp1', 20, NULL, 20, 14, '2023-11-11 10:31:04', '2023-11-11 10:31:04'),
(44, 'Super Bass In Ear Earphones purchased', 'hp2', 20, NULL, 20, 14, '2023-11-11 10:33:12', '2023-11-11 10:33:12'),
(45, 'Tulle Party Formal Dress purchased', 'kd1', 4, NULL, 4, 3, '2023-11-11 10:35:50', '2023-11-11 10:35:50'),
(46, 'Baby & girls By Dream World purchased', 'kd2', 4, NULL, 4, 3, '2023-11-11 10:38:49', '2023-11-11 10:38:49'),
(47, 'Cute fashionable baby frock purchased', 'kd3', 5, NULL, 5, 3, '2023-11-11 10:40:02', '2023-11-11 10:40:02'),
(48, '(T-SHIRT & HALF PANT) purchased', 'kd4', 5, NULL, 5, 3, '2023-11-11 10:41:50', '2023-11-11 10:41:50'),
(49, 'STYLISH EXCLUSIVE DRESS SET purchased', 'kd5', 5, NULL, 5, 3, '2023-11-11 10:43:36', '2023-11-11 10:43:36'),
(50, 'Edition T Shirt -Youniverse sold', 'ts1', NULL, 1, 19, 2, '2023-11-11 21:33:21', '2023-11-11 21:33:21'),
(51, 'Edition T Shirt -Youniverse sold', 'ts1', NULL, 2, 17, 2, '2023-11-11 21:49:26', '2023-11-11 21:49:26'),
(52, 'Viscose-Cotton Shalwar Kameez sold', 'sc2', NULL, 1, 11, 1, '2023-11-13 01:24:30', '2023-11-13 01:24:30'),
(53, 'Viscose-Cotton Shalwar Kameez sold', 'sc2', NULL, 1, 10, 1, '2023-11-13 01:29:14', '2023-11-13 01:29:14'),
(54, 'Touch Smart Watch purchased', 'wt1', 10, NULL, 10, 8, '2023-11-30 21:45:33', '2023-11-30 21:45:33'),
(55, 'Edition T Shirt -Youniverse sold', 'ts1', NULL, 1, 16, 2, '2023-11-30 22:34:59', '2023-11-30 22:34:59'),
(56, 'Viscose Shalwar Kameez sold', 'sc1', NULL, 2, 10, 1, '2025-05-05 01:33:52', '2025-05-05 01:33:52'),
(57, 'Premium Jacquard Panjabi - Devran sold', 'p2', NULL, 1, 4, 2, '2025-05-05 01:33:52', '2025-05-05 01:33:52');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_06_16_052402_create_sessions_table', 1),
(7, '2023_06_16_155705_create_categories_table', 1),
(8, '2023_06_16_155736_create_products_table', 1),
(9, '2023_06_26_043929_create_home_categories_table', 1),
(10, '2023_06_27_031906_create_orders_table', 1),
(11, '2023_06_27_031932_create_order_items_table', 1),
(12, '2023_06_27_031940_create_shippings_table', 1),
(13, '2023_06_27_031958_create_transactions_table', 1),
(14, '2023_06_28_020434_add_delivered_canceled_date_to_orders_table', 1),
(15, '2023_06_28_031453_create_reviews_table', 1),
(16, '2023_06_28_031939_add_rstatus_to_order_items_table', 1),
(17, '2023_06_28_110255_create_contacts_table', 1),
(18, '2023_06_28_171011_create_shoppingcart_table', 1),
(19, '2023_07_01_124709_create_competetions_table', 1),
(20, '2023_07_03_053506_create_blogs_table', 1),
(21, '2023_07_03_141926_create_sales_table', 1),
(22, '2023_09_19_172632_create_purchases_table', 2),
(23, '2023_09_21_105842_create_admin_sells_table', 3),
(24, '2023_09_25_084140_create_balances_table', 4),
(25, '2023_09_26_135650_create_ledgers_table', 5),
(26, '2023_10_26_022047_create_cache_table', 6),
(27, '2023_11_09_231449_create_subcategories_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(20,2) DEFAULT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `line1` varchar(255) NOT NULL,
  `line2` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `status` enum('ordered','delivered','canceled') NOT NULL DEFAULT 'ordered',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivered_date` date DEFAULT NULL,
  `canceled_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `status`, `created_at`, `updated_at`, `delivered_date`, `canceled_date`) VALUES
(127, 3, 12.00, 0.00, 2.52, 14.52, 'Md. Ibne', 'Sina', '01670632145', 'ibnesina13@gmail.com', 'KUET, Khulna', 'KUET, Khulna', 'Khulna', 'Khulna', 'Bangladesh', '9100', 'delivered', '2023-11-11 21:33:21', '2023-11-11 21:34:18', '2023-11-12', NULL),
(128, 1, 24.00, 0.00, 5.04, 29.04, 'Md. Ibne', 'Sina', '01670632145', 'ibnesina13@gmail.com', 'KUET, Khulna', 'KUET, Khulna', 'Khulna', 'Khulna', 'Bangladesh', '9100', 'delivered', '2023-11-11 21:49:26', '2023-11-11 21:49:39', '2023-11-12', NULL),
(129, 2, 18.00, 0.00, 3.78, 21.78, 'Md. Ibne', 'Sina', '01670632145', 'ibnesina10@gmail.com', 'KUET, Khulna', 'KUET, Khulna', 'Khulna', 'Khulna', 'Bangladesh', '9100', 'delivered', '2023-11-13 01:24:30', '2023-11-13 01:26:08', '2023-11-13', NULL),
(130, 2, 18.00, 0.00, 3.78, 21.78, 'Md. Ibne', 'Sina', '01670632145', 'ibnesina10@gmail.com', 'KUET, Khulna', 'KUET, Khulna', 'Khulna', 'Khulna', 'Bangladesh', '9100', 'delivered', '2023-11-13 01:29:14', '2023-11-13 01:29:46', '2023-11-13', NULL),
(131, 3, 12.00, 0.00, 2.52, 14.52, 'Abdu', 'Kalam', '01234412142', 'abdulkalam@gmail.com', 'Dhaka, Bangladesh', 'Mirpur 10', 'Dhaka', 'Dhaka', 'Bangladesh', '4500', 'ordered', '2023-11-30 22:34:59', '2023-11-30 22:34:59', NULL, NULL),
(132, 4, 90.00, 0.00, 18.90, 108.90, 'Md. Ibne', 'Sina', '01670632145', 'ibnesina13@gmail.com', 'KUET, Khulna', NULL, 'Khulna', 'Khulna', 'Bangladesh', '9341', 'ordered', '2025-05-05 01:33:52', '2025-05-05 01:33:52', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rstatus` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `created_at`, `updated_at`, `rstatus`) VALUES
(128, 17, 127, 12.00, 1, '2023-11-11 21:33:21', '2023-11-11 21:35:04', 1),
(129, 17, 128, 12.00, 2, '2023-11-11 21:49:26', '2023-11-13 01:08:57', 1),
(130, 15, 129, 18.00, 1, '2023-11-13 01:24:30', '2023-11-13 01:27:29', 1),
(131, 15, 130, 18.00, 1, '2023-11-13 01:29:14', '2023-11-13 01:29:14', 0),
(132, 17, 131, 12.00, 1, '2023-11-30 22:34:59', '2023-11-30 22:34:59', 0),
(133, 14, 132, 20.00, 2, '2025-05-05 01:33:52', '2025-05-05 01:33:52', 0),
(134, 21, 132, 50.00, 1, '2025-05-05 01:33:52', '2025-05-05 01:33:52', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) NOT NULL,
  `stock_status` enum('instock','outofstock') NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) DEFAULT NULL,
  `images` text DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`, `subcategory_id`) VALUES
(11, 'Embroidered Muslin Saree', 'embroidered-muslin-saree', 'Green Printed and Nakshi Kantha Embroidered Muslin Saree', 'Green Printed and Nakshi Kantha Embroidered Muslin SareeGreen Printed and Nakshi Kantha Embroidered Muslin SareeGreen Printed and Nakshi Kantha Embroidered Muslin SareeGreen Printed and Nakshi Kantha Embroidered Muslin Saree.', 20.00, 18.00, 's1', 'instock', 1, 15, '1699716618.png', NULL, 1, '2023-11-11 09:30:18', '2023-11-11 09:30:18', 4),
(12, 'Endi Silk Saree', 'endi-silk-saree', 'Black Embroidered Endi Silk Saree', 'Black Embroidered Endi Silk Saree. Black Embroidered Endi Silk Saree. Black Embroidered Endi Silk Saree. Black Embroidered Endi Silk Saree.', 15.00, NULL, 's2', 'instock', 0, 10, '1699716768.png', NULL, 1, '2023-11-11 09:32:48', '2023-11-11 09:32:48', 4),
(13, 'Purple Nakshi Kantha', 'purple-nakshi-kantha', 'Purple Nakshi Kantha Embroidered Silk Saree', 'Purple Nakshi Kantha Embroidered Silk Saree Purple Nakshi Kantha Embroidered Silk Saree Purple Nakshi Kantha Embroidered Silk Saree Purple Nakshi Kantha Embroidered Silk Saree.', 18.00, 15.00, 's3', 'instock', 0, 12, '1699716869.png', NULL, 1, '2023-11-11 09:34:29', '2023-11-11 09:34:29', 4),
(14, 'Viscose Shalwar Kameez', 'viscose-shalwar-kameez', 'Plum Printed Viscose Shalwar Kameez', 'Plum Printed Viscose Shalwar Kameez. Plum Printed Viscose Shalwar Kameez. Plum Printed Viscose Shalwar Kameez. Plum Printed Viscose Shalwar Kameez.', 20.00, 18.00, 'sc1', 'instock', 1, 10, '1699716990.png', NULL, 1, '2023-11-11 09:36:30', '2025-05-05 01:33:52', 5),
(15, 'Viscose-Cotton Shalwar Kameez', 'viscose-cotton-shalwar-kameez', 'Blue Printed Viscose-Cotton Shalwar Kameez.', 'Blue Printed Viscose-Cotton Shalwar Kameez. Blue Printed Viscose-Cotton Shalwar Kameez. Blue Printed Viscose-Cotton Shalwar Kameez.', 20.00, 18.00, 'sc2', 'instock', 0, 10, '1699717084.png', NULL, 1, '2023-11-11 09:38:04', '2023-11-13 01:29:14', 5),
(16, 'Blue Shalwar Kameez', 'blue-shalwar-kameez', 'Blue Printed Handloom Viscose-Cotton Shalwar Kameez', 'Blue Printed Handloom Viscose-Cotton Shalwar Kameez. Blue Printed Handloom Viscose-Cotton Shalwar Kameez. Blue Printed Handloom Viscose-Cotton Shalwar Kameez.', 18.00, NULL, 'sc3', 'instock', 0, 12, '1699717216.png', NULL, 1, '2023-11-11 09:40:16', '2023-11-11 09:40:16', 5),
(17, 'Edition T Shirt -Youniverse', 'edition-t-shirt-youniverse', 'Fabrilife Mens Premium Designer Edition T Shirt -Youniverse\n', 'Fabrilife Mens Premium Quality t-shirt that offers a much smoother, silky feel and more structured, mid-weight fit than the regular t-shirts . The t-shirts are made with finest quality Combed Compact Cotton , features astonishing ~175 GSM on just 26\'s cotton which gives a smooth and compact construction.\n\nThe compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.\n\nDetailed Specification:\n\nOrganic Ringspun Combed Compact Cotton\n100% Cotton\nRegular fit, Crew Neck Mid-weight, 5.16 oz/yd2(~175GSM)\nReactive Dye, enzyme and silicon washed\nPreshurnk to minimize shrinkage', 15.00, 12.00, 'ts1', 'instock', 1, 16, '1699718061.jpg', NULL, 2, '2023-11-11 09:54:21', '2023-11-30 22:34:59', 10),
(18, 'Edition T Shirt - Signature', 'edition-t-shirt-signature', 'Fabrilife Mens Premium Designer Edition T Shirt - Signature\n', 'Fabrilife Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction.\n\nThe compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.\n\nDetailed Specification:\n\nOrganic Ringspun Combed Compact Cotton\n100% Cotton\nRegular fit, Crew Neck Mid-weight, 5.16 oz/yd2(~175GSM)\nReactive Dye, enzyme, and silicon washed\nPreshrunk to minimize shrinkage\nDesign panels all are fabric ; cut and sew\nTypography & artworks are normal/ high density screenprint ', 12.00, NULL, 'ts2', 'instock', 0, 25, '1699718153.jpg', NULL, 2, '2023-11-11 09:55:53', '2023-11-11 09:55:53', 10),
(19, 'Edition T Shirt - Illuminate', 'edition-t-shirt-illuminate', 'Fabrilife Mens Premium Designer Edition T Shirt - Illuminate\n', ' Fabrilife Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction.\n\nThe compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.\n\nDetailed Specification:\n\nOrganic Ringspun Combed Compact Cotton\n100% Cotton\nRegular fit, Crew Neck Mid-weight, 5.16 oz/yd2(~175GSM)\nReactive Dye, enzyme, and silicon washed\nPreshrunk to minimize shrinkage\nDesign panels all are fabric ; cut and sew\nTypography & artworks are normal/ high density screenprint  ', 13.00, NULL, 'ts3', 'instock', 0, 25, '1699718249.jpg', NULL, 2, '2023-11-11 09:57:29', '2023-11-11 09:57:29', 10),
(20, 'Premium Jacquard Panjabi - Tabriz', 'premium-jacquard-panjabi-tabriz', 'Premium Jacquard Panjabi - Tabriz', 'Fabric Type: Jacquard Bamboo Cotton\n\nType: Regular Fit\n\nWeave: Plain weave\n\nTexture: Soft and smooth with a matte finish\n\nBreathability: Highly breathable and comfortable\n\nDurability: Durable and long-lasting\n\nDesign: Solid or subtle patterns with a uniform appearance\n\nSize chart - In inches (Expected Deviation < 3%)', 50.00, 45.00, 'p1', 'instock', 1, 5, '1699718378.jpg', NULL, 2, '2023-11-11 09:59:38', '2023-11-11 09:59:38', 9),
(21, 'Premium Jacquard Panjabi - Devran', 'premium-jacquard-panjabi-devran', 'Premium Jacquard Panjabi - Devran\n', 'Fabric Type: Jacquard Bamboo Cotton\n\nType: Regular Fit\n\nWeave: Plain weave\n\nTexture: Soft and smooth with a matte finish\n\nBreathability: Highly breathable and comfortable\n\nDurability: Durable and long-lasting\n\nDesign: Solid or subtle patterns with a uniform appearance\n\nSize chart - In inches (Expected Deviation < 3%)', 50.00, 0.00, 'p2', 'instock', 1, 4, '1699718478.jpg', NULL, 2, '2023-11-11 10:01:18', '2025-05-05 01:33:52', 9),
(22, 'Premium Jacquard Panjabi - Ilhan', 'premium-jacquard-panjabi-ilhan', 'Premium Jacquard Panjabi - Ilhan', 'Fabric Type: Jacquard Bamboo Cotton\n\nType: Regular Fit\n\nWeave: Plain weave\n\nTexture: Soft and smooth with a matte finish\n\nBreathability: Highly breathable and comfortable\n\nDurability: Durable and long-lasting\n\nDesign: Solid or subtle patterns with a uniform appearance\n\nSize chart - In inches (Expected Deviation < 3%)', 40.00, NULL, 'p3', 'instock', 0, 5, '1699718539.jpg', NULL, 2, '2023-11-11 10:02:19', '2023-11-11 10:02:19', 9),
(23, 'Howkingss Rice Cooker 2.8 ltr', 'howkingss-rice-cooker-28-ltr', 'Howkingss Rice Cooker 2.8 ltr', 'Product details of Howkingss Rice Cooker 2.8 ltr\nPower Supply : 220V 50Hz\nPower Consumed : 1000W\nCapacity of Rice : 2.8 L\nInner pan : 1pc stainless steel pot\nkeep warm : 5 Hours\nCord : Direct\nSteaming Plate: Yes\nMeasuring Cup : Yes\nRice Scoop : Yes\n1 Year Warranty', 60.00, NULL, 'rc1', 'instock', 1, 4, '1699719018.png', NULL, 4, '2023-11-11 10:10:18', '2023-11-11 10:10:18', 15),
(24, 'Pot Drum Rice Cooker', 'pot-drum-rice-cooker', 'Kiam DRC-902 Single Pot Drum Rice Cooker - 1.8 L - Enjoy Fast and Easy Rice Cooking with the Single Pot Drum Design\n', 'Kiam DRC-902 Single Pot Drum Rice Cooker - 1.8 L - Enjoy Fast and Easy Rice Cooking with the Single Pot Drum Design\nKiam DRC-902 Single Pot Drum Rice Cooker - 1.8 L - Enjoy Fast and Easy Rice Cooking with the Single Pot Drum Design\n', 60.00, NULL, 'rc2', 'instock', 0, 4, '1699719098.png', NULL, 4, '2023-11-11 10:11:38', '2023-11-11 10:11:38', 15),
(25, 'Vision Electric Iron 1150W', 'vision-electric-iron-1150w', 'Vision Electric Iron 1150W with Overheat ProtectionVIS-DEI-007', 'Vision Electric Iron 1150W with Overheat ProtectionVIS-DEI-007. Vision Electric Iron 1150W with Overheat ProtectionVIS-DEI-007', 50.00, NULL, 'i1', 'instock', 0, 6, '1699719186.png', NULL, 4, '2023-11-11 10:13:06', '2023-11-11 10:13:06', 16),
(26, 'Vision Electric Iron ', 'vision-electric-iron', 'Vision Electric Iron Vis-Dei-007: Iron with Precision - User-Friendly and Easy Maintenance-a Unique Choice For Your Needs', 'Vision Electric Iron Vis-Dei-007: Iron with Precision - User-Friendly and Easy Maintenance-a Unique Choice For Your Needs. Vision Electric Iron Vis-Dei-007: Iron with Precision - User-Friendly and Easy Maintenance-a Unique Choice For Your Needs.', 50.00, NULL, 'i2', 'instock', 0, 6, '1699719285.png', NULL, 4, '2023-11-11 10:14:45', '2023-11-11 10:14:45', 16),
(27, 'Realme C53 (6/128) Smart Phones', 'realme-c53-6128-smart-phones', 'Realme C53 (6/128) Smart Phones', 'Product details of Realme C53 (6/128) Smart Phones\nNO RETURN applicable if the seal is broken\nProcessor: Octa-core (2x1.8 GHz Cortex-A75 & 6x1.8 GHz Cortex-A55)\nChipset: Unisoc Tiger T612 (12 nm)\nGPU: Mali-G57\nRAM & Storage: 6GB RAM, 128GB ROM\nExternal Storage: microSDXC (dedicated slot)\nOS: Android 13, Realme UI T\nBattery: Li-Po 5000 mAh, non-removable battery\nFast Charging: 33W wired, 50% in 31 min (advertised)\nDisplay Size: 6.74 inches, 109.7 cm2 (~85.5% screen-to-body ratio)\nResolution: 1080 x 2400 pixels, 20:9 ratio (~390 ppi density)\nDisplay Type: IPS LCD, 90Hz, 560 nits (peak)\nDimensions: 167.3 x 76.7 x 7.5 mm\nWeight: 182 g (6.42 oz)\nBody Type: Glass front, plastic frame, plastic back\nColors: Champion Gold, Mighty Black', 100.00, NULL, 'm1', 'instock', 0, 6, '1699719480.png', NULL, 5, '2023-11-11 10:18:00', '2023-11-11 10:18:00', 18),
(28, 'Symphony Z60 Plus ( 6 GB/ 128 GB)', 'symphony-z60-plus-6-gb-128-gb', 'Symphony Z60 Plus ( 6 GB/ 128 GB)', 'Product details of Symphony Z60 Plus ( 6 GB/ 128 GB)\nNO RETURN applicable if the seal is broken\nDisplay Type: IPS,Full Lamination, Punch Hole\nLCD Size: 6.6”, RES: 1600*720 (HD+) 20:9\nTouch Panel: 10 Finger ,In-cell\nBrightness: 480 Nits typical\nDimension: 164*75.6*8.65mm\nConnectivity:4G/3G/2G/Wi-Fi/BT/GPS-AGPS/OTG\nChipset: UniSoc T616 2.0GHz Octa-Core, 12nm Processor\nMemory: ROM 128GB + RAM 6GB\nCamera: Front: 8MP FF, Aperture: F2.0\nRear: 50MP UHD+2MP Depth dual camera with F2.2, Aperture', 90.00, 85.00, 'm2', 'instock', 0, 7, '1699719591.png', NULL, 5, '2023-11-11 10:19:51', '2023-11-11 10:19:51', 18),
(29, 'Realme C55 - (6GB/128GB)', 'realme-c55-6gb128gb', 'Realme C55 - (6GB/128GB)', 'Product details of Realme C55 - (6GB/128GB)\nNo Return applicable if the seal is broken\nSIM: Dual SIM (Nano-SIM, dual stand-by)\nDISPLAY: IPS LCD, 90Hz, 680 nits (peak)\nSize: 6.72 inches, 109.0 cm2\nResolution: 1080 x 2400 pixels, 20:9 ratio\nOS: Android 13, Realme UI 4.0\nChipset: Mediatek Helio G88 (12nm)\nCPU: Octa-core\nRAM: 6GB\nROM: 128GB\nMAIN CAMERA: 64 MP, 2 MP', 120.00, 0.00, 'm3', 'instock', 1, 5, '1699719738.png', NULL, 5, '2023-11-11 10:22:18', '2023-11-11 10:22:18', 18),
(30, 'M10 TWS Earphone 9D', 'm10-tws-earphone-9d', 'M10 TWS Earphone 9D Stereo LED Digital Display Touch CVC8.0 Digital Noise Reduction Technology - Black', 'M10 TWS Earphone 9D Stereo LED Digital Display Touch CVC8.0 Digital Noise Reduction Technology - Black. M10 TWS Earphone 9D Stereo LED Digital Display Touch CVC8.0 Digital Noise Reduction Technology - Black.', 70.00, 60.00, 'mb1', 'instock', 0, 15, '1699719922.png', NULL, 14, '2023-11-11 10:25:22', '2023-11-11 10:25:22', 30),
(31, 'Dual Mini Wireless 4.1 Bluetooth', 'dual-mini-wireless-41-bluetooth', 'HBQ I7S Double Dual Mini Wireless 4.1 Bluetooth Earphone With Power Case - White', 'HBQ I7S Double Dual Mini Wireless 4.1 Bluetooth Earphone With Power Case - White. HBQ I7S Double Dual Mini Wireless 4.1 Bluetooth Earphone With Power Case - White.', 30.00, NULL, 'mb2', 'instock', 0, 20, '1699720177.png', NULL, 14, '2023-11-11 10:29:37', '2023-11-11 10:29:37', 30),
(32, 'C Super Bass Earphone', 'c-super-bass-earphone', 'Akg Type C Super Bass Earphone With Pouch Headphone - Headphone\n', 'Akg Type C Super Bass Earphone With Pouch Headphone - Headphone. Akg Type C Super Bass Earphone With Pouch Headphone - Headphone.', 10.00, NULL, 'hp1', 'instock', 0, 20, '1699720323.png', NULL, 14, '2023-11-11 10:32:03', '2023-11-11 10:32:03', 31),
(33, 'Super Bass In Ear Earphones', 'super-bass-in-ear-earphones', 'DM7 Zinc Alloy Hifi Super Bass In Ear Earphones - Black - Headphone - Headphone\n', 'DM7 Zinc Alloy Hifi Super Bass In Ear Earphones - Black - Headphone - Headphone. DM7 Zinc Alloy Hifi Super Bass In Ear Earphones - Black - Headphone - Headphone.', 10.00, NULL, 'hp2', 'instock', 1, 20, '1699720436.png', NULL, 14, '2023-11-11 10:33:56', '2023-11-11 10:33:56', 31),
(34, 'Tulle Party Formal Dress', 'tulle-party-formal-dress', 'Baby Girl Flower Dress Princess Bridesmaid Petal Tulle Party Formal Dress', 'Baby Girl Flower Dress Princess Bridesmaid Petal Tulle Party Formal Dress. Baby Girl Flower Dress Princess Bridesmaid Petal Tulle Party Formal Dress.', 40.00, 35.00, 'kd1', 'instock', 0, 4, '1699720655.png', NULL, 3, '2023-11-11 10:37:35', '2023-11-11 10:37:35', 14),
(35, 'Baby & girls By Dream World', 'baby-girls-by-dream-world', 'Exclusive Kid\'s Dennim Romper for Baby & girls By Dream World 24\n', 'Exclusive Kid\'s Dennim Romper for Baby & girls By Dream World 24. Exclusive Kid\'s Dennim Romper for Baby & girls By Dream World 24.', 30.00, NULL, 'kd2', 'instock', 0, 4, '1699720761.png', NULL, 3, '2023-11-11 10:39:21', '2023-11-11 10:39:21', 14),
(36, 'Cute fashionable baby frock', 'cute-fashionable-baby-frock', 'Cute fashionable baby frock for 0-3 years babys', 'Cute fashionable baby frock for 0-3 years babys. Cute fashionable baby frock for 0-3 years babys. Cute fashionable baby frock for 0-3 years babys.', 30.00, NULL, 'kd3', 'instock', 0, 5, '1699720864.png', NULL, 3, '2023-11-11 10:41:04', '2023-11-11 10:41:04', 14),
(37, '(T-SHIRT & HALF PANT)', 't-shirt-half-pant', 'KIDS CASUAL STYLISH EXCLUSIVE DRESS SET (T-SHIRT & HALF PANT)\n', 'KIDS CASUAL STYLISH EXCLUSIVE DRESS SET (T-SHIRT & HALF PANT)\n', 40.00, 35.00, 'kd4', 'instock', 0, 5, '1699720978.png', NULL, 3, '2023-11-11 10:42:58', '2023-11-30 21:13:40', 13),
(38, 'STYLISH EXCLUSIVE DRESS SET', 'stylish-exclusive-dress-set', 'CASUAL STYLISH EXCLUSIVE DRESS SET (T-SHIRT & HALF PANT)\n', 'CASUAL STYLISH EXCLUSIVE DRESS SET (T-SHIRT & HALF PANT).', 50.00, 0.00, 'kd5', 'instock', 0, 5, '1699721056.png', NULL, 3, '2023-11-11 10:44:16', '2023-11-11 10:44:16', 13),
(39, 'Touch Smart Watch', 'touch-smart-watch', 'Tinzzi S18 Full Screen Touch Smart Watch Men Women Bluetooth Calling Smartwatch 2.02\" HD Screen Sleep Monitor Fitness Bracelet', 'Custom watch face, walking, heart rate, phone book, bluetooth dial call, blood oxygen, blood pressure, electrocardiogram, weather, health ring, exercise record, sports (cycling, running, football, volleyball, tennis, strength training, basketball) , music control, sedentary reminder, sleep monitoring remote photography, stopwatch, mobile phone search, information, factory reset, five UI switches, settings (language, time, date, version number, bluetooth name, siri, backlight time, return to the dial) ), Facebook, Twitter, Whatsapp, raise your wrist to brighten the screen, alarm clock, common contacts, etc., support pedometer analysis, voice broadcast, buttons with encoder\n', 25.00, 22.00, 'wt1', 'instock', 0, 10, '1701402433.png', NULL, 8, '2023-11-30 21:47:13', '2023-11-30 21:47:13', 26);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `voucher_no` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `SKU` varchar(255) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`voucher_no`, `name`, `SKU`, `quantity`, `price`, `category_id`, `created_at`, `updated_at`) VALUES
(41, 'Tussore Silk Saree', 'a14', 20, 200, 1, '2023-11-04 09:26:35', '2023-11-04 09:26:35'),
(42, 'Tussore Silk Saree', 'a14', 5, 100, 1, '2023-11-04 09:34:23', '2023-11-04 09:34:23'),
(43, 'Long Sleeve T-Shirt', 'a15', 10, 50, 2, '2023-11-04 11:30:23', '2023-11-04 11:30:23'),
(44, 'Pink Script T-Shirt', 'a50', 7, 50, 1, '2023-11-04 13:53:53', '2023-11-04 13:53:53'),
(45, 'Embroidered Muslin Saree', 's1', 15, 200, 1, '2023-11-11 09:28:30', '2023-11-11 09:28:30'),
(46, 'Endi Silk Saree', 's2', 10, 150, 1, '2023-11-11 09:31:32', '2023-11-11 09:31:32'),
(47, 'Purple Nakshi Kantha', 's3', 12, 150, 1, '2023-11-11 09:33:26', '2023-11-11 09:33:26'),
(48, 'Viscose Shalwar Kameez', 'sc1', 12, 180, 1, '2023-11-11 09:35:34', '2023-11-11 09:35:34'),
(49, 'Viscose-Cotton Shalwar Kameez', 'sc2', 12, 180, 1, '2023-11-11 09:36:57', '2023-11-11 09:36:57'),
(50, 'Blue Shalwar Kameez', 'sc3', 12, 180, 1, '2023-11-11 09:38:50', '2023-11-11 09:38:50'),
(51, 'Edition T Shirt -Youniverse', 'ts1', 20, 200, 2, '2023-11-11 09:53:35', '2023-11-11 09:53:35'),
(52, 'Edition T Shirt - Signature', 'ts2', 25, 200, 2, '2023-11-11 09:54:57', '2023-11-11 09:54:57'),
(53, 'Edition T Shirt - Illuminate', 'ts3', 25, 200, 2, '2023-11-11 09:56:26', '2023-11-11 09:56:26'),
(54, 'Premium Jacquard Panjabi - Tabriz', 'p1', 5, 200, 2, '2023-11-11 09:58:52', '2023-11-11 09:58:52'),
(55, 'Premium Jacquard Panjabi - Devran', 'p2', 5, 200, 2, '2023-11-11 10:00:00', '2023-11-11 10:00:00'),
(56, 'Premium Jacquard Panjabi - Ilhan', 'p3', 5, 200, 2, '2023-11-11 10:01:51', '2023-11-11 10:01:51'),
(57, 'Howkingss Rice Cooker 2.8 ltr', 'rc1', 4, 200, 4, '2023-11-11 10:09:19', '2023-11-11 10:09:19'),
(58, 'Pot Drum Rice Cooker', 'rc2', 4, 200, 4, '2023-11-11 10:10:46', '2023-11-11 10:10:46'),
(59, 'Vision Electric Iron 1150W', 'i1', 6, 200, 4, '2023-11-11 10:12:26', '2023-11-11 10:12:26'),
(60, 'Vision Electric Iron ', 'i2', 6, 150, 4, '2023-11-11 10:14:02', '2023-11-11 10:14:02'),
(61, 'Realme C53 (6/128) Smart Phones', 'm1', 6, 500, 5, '2023-11-11 10:17:05', '2023-11-11 10:17:05'),
(62, 'Symphony Z60 Plus ( 6 GB/ 128 GB)', 'm2', 7, 500, 5, '2023-11-11 10:18:58', '2023-11-11 10:18:58'),
(63, 'Realme C55 - (6GB/128GB)', 'm3', 5, 500, 5, '2023-11-11 10:21:03', '2023-11-11 10:21:03'),
(64, 'M10 TWS Earphone 9D', 'mb1', 15, 700, 14, '2023-11-11 10:24:33', '2023-11-11 10:24:33'),
(65, 'Dual Mini Wireless 4.1 Bluetooth', 'mb2', 20, 700, 14, '2023-11-11 10:29:00', '2023-11-11 10:29:00'),
(66, 'C Super Bass Earphone', 'hp1', 20, 100, 14, '2023-11-11 10:31:04', '2023-11-11 10:31:04'),
(67, 'Super Bass In Ear Earphones', 'hp2', 20, 100, 14, '2023-11-11 10:33:12', '2023-11-11 10:33:12'),
(68, 'Tulle Party Formal Dress', 'kd1', 4, 100, 3, '2023-11-11 10:35:50', '2023-11-11 10:35:50'),
(69, 'Baby & girls By Dream World', 'kd2', 4, 100, 3, '2023-11-11 10:38:49', '2023-11-11 10:38:49'),
(70, 'Cute fashionable baby frock', 'kd3', 5, 100, 3, '2023-11-11 10:40:02', '2023-11-11 10:40:02'),
(71, '(T-SHIRT & HALF PANT)', 'kd4', 5, 100, 3, '2023-11-11 10:41:50', '2023-11-11 10:41:50'),
(72, 'STYLISH EXCLUSIVE DRESS SET', 'kd5', 5, 100, 3, '2023-11-11 10:43:36', '2023-11-11 10:43:36'),
(73, 'Touch Smart Watch', 'wt1', 10, 200, 8, '2023-11-30 21:45:33', '2023-11-30 21:45:33');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `comment` text NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `rating`, `comment`, `order_item_id`, `created_at`, `updated_at`) VALUES
(8, 4, 'Packaging Good! The product was nice. But the price is higher than usual!', 107, '2023-11-10 12:54:12', '2023-11-10 12:54:12'),
(9, 5, 'Nice Product! Thanks to the seller!', 110, '2023-11-10 12:58:12', '2023-11-10 12:58:12'),
(10, 4, 'Very nice Product. But Price is high!', 128, '2023-11-11 21:35:04', '2023-11-11 21:35:04'),
(11, 5, 'The Product is Awesome. Seller provided the best T-shirt! Thanks to eShop for your great service.', 129, '2023-11-13 01:08:57', '2023-11-13 01:08:57'),
(12, 5, 'The Product is Awesome. Seller provided the best Salwar Kameez! Thanks to eShop for your great service.', 130, '2023-11-13 01:27:29', '2023-11-13 01:27:29');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `sale_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '2023-12-05 10:30:00', 1, NULL, '2023-11-29 06:19:01');

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
('3WfLawpifvectHi7th8wNZ7L3rSg3B7IKa3Wh60D', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVpGOERJYjJyYWN3ZWc4RHhJSTlQYno3Wk1SVzBGRENFaFFpbVNSMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1736491265),
('a1Js6IZKwf5S2QOauujrJV36fOeApjqzJC3wogtC', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicEp5QlYxOXQ1VW1hTFJ0dGE0bUMwNVV2RUVxd2xzNEZYR3hpVGlTNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741339629),
('b8EpvFlmurhKTO6lKjS5Flkgw7hqyvVu8bLr5XCS', 4, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiYTl6SHBMTTY5Tm1Sc2lZdVRoZk1pcnh1TTdEbG9SNnppTGtEOXVzZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9zaG9wIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NDtzOjQ6ImNhcnQiO2E6Mjp7czo0OiJjYXJ0IjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YTo1OntzOjMyOiJiYjRhNmRiNDI5NWQ2YmU4YmQxMjc5MWVkNTY1MDA4NyI7TzozMjoiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0iOjk6e3M6NToicm93SWQiO3M6MzI6ImJiNGE2ZGI0Mjk1ZDZiZThiZDEyNzkxZWQ1NjUwMDg3IjtzOjI6ImlkIjtpOjE0O3M6MzoicXR5IjtpOjI7czo0OiJuYW1lIjtzOjIyOiJWaXNjb3NlIFNoYWx3YXIgS2FtZWV6IjtzOjU6InByaWNlIjtkOjIwO3M6Nzoib3B0aW9ucyI7TzozOToiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW1PcHRpb25zIjoyOntzOjg6IgAqAGl0ZW1zIjthOjA6e31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO3M6MTg6IkFwcFxNb2RlbHNcUHJvZHVjdCI7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAHRheFJhdGUiO2k6MjE7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGlzU2F2ZWQiO2I6MDt9czozMjoiOGViNzQ3Yjk1Yjk4NjJlOWQ4MzAzMWJlYjk5Mzg3MjAiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo5OntzOjU6InJvd0lkIjtzOjMyOiI4ZWI3NDdiOTViOTg2MmU5ZDgzMDMxYmViOTkzODcyMCI7czoyOiJpZCI7aToyMTtzOjM6InF0eSI7aToxO3M6NDoibmFtZSI7czozMzoiUHJlbWl1bSBKYWNxdWFyZCBQYW5qYWJpIC0gRGV2cmFuIjtzOjU6InByaWNlIjtkOjUwO3M6Nzoib3B0aW9ucyI7TzozOToiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW1PcHRpb25zIjoyOntzOjg6IgAqAGl0ZW1zIjthOjA6e31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO3M6MTg6IkFwcFxNb2RlbHNcUHJvZHVjdCI7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAHRheFJhdGUiO2k6MjE7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGlzU2F2ZWQiO2I6MDt9czozMjoiMzAzYTdmMDIzNjRmMWU5MmRjNjBjMDVjOWIxNTIzOWYiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo5OntzOjU6InJvd0lkIjtzOjMyOiIzMDNhN2YwMjM2NGYxZTkyZGM2MGMwNWM5YjE1MjM5ZiI7czoyOiJpZCI7aToxODtzOjM6InF0eSI7aToxO3M6NDoibmFtZSI7czoyNzoiRWRpdGlvbiBUIFNoaXJ0IC0gU2lnbmF0dXJlIjtzOjU6InByaWNlIjtkOjEyO3M6Nzoib3B0aW9ucyI7TzozOToiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW1PcHRpb25zIjoyOntzOjg6IgAqAGl0ZW1zIjthOjA6e31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO3M6MTg6IkFwcFxNb2RlbHNcUHJvZHVjdCI7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAHRheFJhdGUiO2k6MjE7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGlzU2F2ZWQiO2I6MDt9czozMjoiNGYyZDJkMDcwOWIwMDcxMDJmN2ZlMzNjZWEyMDE4ODciO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo5OntzOjU6InJvd0lkIjtzOjMyOiI0ZjJkMmQwNzA5YjAwNzEwMmY3ZmUzM2NlYTIwMTg4NyI7czoyOiJpZCI7aToyMDtzOjM6InF0eSI7aToxO3M6NDoibmFtZSI7czozMzoiUHJlbWl1bSBKYWNxdWFyZCBQYW5qYWJpIC0gVGFicml6IjtzOjU6InByaWNlIjtkOjUwO3M6Nzoib3B0aW9ucyI7TzozOToiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW1PcHRpb25zIjoyOntzOjg6IgAqAGl0ZW1zIjthOjA6e31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO3M6MTg6IkFwcFxNb2RlbHNcUHJvZHVjdCI7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAHRheFJhdGUiO2k6MjE7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGlzU2F2ZWQiO2I6MDt9czozMjoiYTRlOTM1YTc1ODEyNjY3YTg0OWYzZGZlZjFjNTk0MGIiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo5OntzOjU6InJvd0lkIjtzOjMyOiJhNGU5MzVhNzU4MTI2NjdhODQ5ZjNkZmVmMWM1OTQwYiI7czoyOiJpZCI7aToxNztzOjM6InF0eSI7aToxO3M6NDoibmFtZSI7czoyNzoiRWRpdGlvbiBUIFNoaXJ0IC1Zb3VuaXZlcnNlIjtzOjU6InByaWNlIjtkOjE1O3M6Nzoib3B0aW9ucyI7TzozOToiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW1PcHRpb25zIjoyOntzOjg6IgAqAGl0ZW1zIjthOjA6e31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO3M6MTg6IkFwcFxNb2RlbHNcUHJvZHVjdCI7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAHRheFJhdGUiO2k6MjE7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGlzU2F2ZWQiO2I6MDt9fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czo4OiJ3aXNobGlzdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6Mjp7czozMjoiNjIwZDY3MGQ5NWYwNDE5ZTM1ZjkxODI2OTU5MThjNjgiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo5OntzOjU6InJvd0lkIjtzOjMyOiI2MjBkNjcwZDk1ZjA0MTllMzVmOTE4MjY5NTkxOGM2OCI7czoyOiJpZCI7aToxMTtzOjM6InF0eSI7aToxO3M6NDoibmFtZSI7czoyNDoiRW1icm9pZGVyZWQgTXVzbGluIFNhcmVlIjtzOjU6InByaWNlIjtkOjIwO3M6Nzoib3B0aW9ucyI7TzozOToiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW1PcHRpb25zIjoyOntzOjg6IgAqAGl0ZW1zIjthOjA6e31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO3M6MTg6IkFwcFxNb2RlbHNcUHJvZHVjdCI7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAHRheFJhdGUiO2k6MjE7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGlzU2F2ZWQiO2I6MDt9czozMjoiZWVmMTI1NzMxNzYxMjVjZTUzZTMzM2UxM2Q3NDdhMTciO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo5OntzOjU6InJvd0lkIjtzOjMyOiJlZWYxMjU3MzE3NjEyNWNlNTNlMzMzZTEzZDc0N2ExNyI7czoyOiJpZCI7aToxMjtzOjM6InF0eSI7aToxO3M6NDoibmFtZSI7czoxNToiRW5kaSBTaWxrIFNhcmVlIjtzOjU6InByaWNlIjtkOjE1O3M6Nzoib3B0aW9ucyI7TzozOToiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW1PcHRpb25zIjoyOntzOjg6IgAqAGl0ZW1zIjthOjA6e31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO3M6MTg6IkFwcFxNb2RlbHNcUHJvZHVjdCI7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAHRheFJhdGUiO2k6MjE7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGlzU2F2ZWQiO2I6MDt9fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9fX0=', 1746726141),
('DVOoXd3KK2figABJjPF5iWgV8zesG9x1cbVQhXeo', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicjhjU3dUYVlGN1N0NkFSRnk3UlY4UlVQb21LZENLcU9MTmFOUGRyYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1736489942),
('gsIqpe5W0WlrT1mpDDRPM6iDvE2uMnTQFxxb0iX7', 3, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiTWNuVTU4M3VvRnJuQVZtbm5YTGVyVU16YXRjNHBNWHhKRUc3Z3pseiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTQ6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9wcm9kdWN0L2VtYnJvaWRlcmVkLW11c2xpbi1zYXJlZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO3M6NDoiY2FydCI7YToyOntzOjQ6ImNhcnQiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjA6e31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6ODoid2lzaGxpc3QiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjA6e31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fX19', 1741340086),
('KnxOJAPXujA75xfZw9Vnobh9sCzC3hmNGSGNtXgs', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVFVSYlQ2VTlTRklxNE41djhGOTNPQ1lOVmhxMkxnMVJESkcwMWFGViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1746426611),
('YnDtUDim8IFfqGvFFsd1HeJXcxfZZKpX5GkUcCi4', 4, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiNWF2OGo0VktPT3ZxMUM5TFN4MlFKa3d5RVUyVllKYXpaam82R3ZidCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NDoiY2FydCI7YToyOntzOjg6Indpc2hsaXN0IjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YToxOntzOjMyOiI2MjBkNjcwZDk1ZjA0MTllMzVmOTE4MjY5NTkxOGM2OCI7TzozMjoiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0iOjk6e3M6NToicm93SWQiO3M6MzI6IjYyMGQ2NzBkOTVmMDQxOWUzNWY5MTgyNjk1OTE4YzY4IjtzOjI6ImlkIjtpOjExO3M6MzoicXR5IjtpOjE7czo0OiJuYW1lIjtzOjI0OiJFbWJyb2lkZXJlZCBNdXNsaW4gU2FyZWUiO3M6NToicHJpY2UiO2Q6MjA7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjI6e3M6ODoiACoAaXRlbXMiO2E6MDp7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7czoxODoiQXBwXE1vZGVsc1xQcm9kdWN0IjtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AdGF4UmF0ZSI7aToyMTtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AaXNTYXZlZCI7YjowO319czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjQ6ImNhcnQiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjU6e3M6MzI6ImJiNGE2ZGI0Mjk1ZDZiZThiZDEyNzkxZWQ1NjUwMDg3IjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6OTp7czo1OiJyb3dJZCI7czozMjoiYmI0YTZkYjQyOTVkNmJlOGJkMTI3OTFlZDU2NTAwODciO3M6MjoiaWQiO2k6MTQ7czozOiJxdHkiO2k6MjtzOjQ6Im5hbWUiO3M6MjI6IlZpc2Nvc2UgU2hhbHdhciBLYW1lZXoiO3M6NToicHJpY2UiO2Q6MjA7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjI6e3M6ODoiACoAaXRlbXMiO2E6MDp7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7czoxODoiQXBwXE1vZGVsc1xQcm9kdWN0IjtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AdGF4UmF0ZSI7aToyMTtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AaXNTYXZlZCI7YjowO31zOjMyOiI4ZWI3NDdiOTViOTg2MmU5ZDgzMDMxYmViOTkzODcyMCI7TzozMjoiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0iOjk6e3M6NToicm93SWQiO3M6MzI6IjhlYjc0N2I5NWI5ODYyZTlkODMwMzFiZWI5OTM4NzIwIjtzOjI6ImlkIjtpOjIxO3M6MzoicXR5IjtpOjE7czo0OiJuYW1lIjtzOjMzOiJQcmVtaXVtIEphY3F1YXJkIFBhbmphYmkgLSBEZXZyYW4iO3M6NToicHJpY2UiO2Q6NTA7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjI6e3M6ODoiACoAaXRlbXMiO2E6MDp7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7czoxODoiQXBwXE1vZGVsc1xQcm9kdWN0IjtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AdGF4UmF0ZSI7aToyMTtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AaXNTYXZlZCI7YjowO31zOjMyOiIzMDNhN2YwMjM2NGYxZTkyZGM2MGMwNWM5YjE1MjM5ZiI7TzozMjoiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0iOjk6e3M6NToicm93SWQiO3M6MzI6IjMwM2E3ZjAyMzY0ZjFlOTJkYzYwYzA1YzliMTUyMzlmIjtzOjI6ImlkIjtpOjE4O3M6MzoicXR5IjtpOjE7czo0OiJuYW1lIjtzOjI3OiJFZGl0aW9uIFQgU2hpcnQgLSBTaWduYXR1cmUiO3M6NToicHJpY2UiO2Q6MTI7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjI6e3M6ODoiACoAaXRlbXMiO2E6MDp7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7czoxODoiQXBwXE1vZGVsc1xQcm9kdWN0IjtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AdGF4UmF0ZSI7aToyMTtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AaXNTYXZlZCI7YjowO31zOjMyOiI0ZjJkMmQwNzA5YjAwNzEwMmY3ZmUzM2NlYTIwMTg4NyI7TzozMjoiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0iOjk6e3M6NToicm93SWQiO3M6MzI6IjRmMmQyZDA3MDliMDA3MTAyZjdmZTMzY2VhMjAxODg3IjtzOjI6ImlkIjtpOjIwO3M6MzoicXR5IjtpOjE7czo0OiJuYW1lIjtzOjMzOiJQcmVtaXVtIEphY3F1YXJkIFBhbmphYmkgLSBUYWJyaXoiO3M6NToicHJpY2UiO2Q6NTA7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjI6e3M6ODoiACoAaXRlbXMiO2E6MDp7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7czoxODoiQXBwXE1vZGVsc1xQcm9kdWN0IjtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AdGF4UmF0ZSI7aToyMTtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AaXNTYXZlZCI7YjowO31zOjMyOiJhNGU5MzVhNzU4MTI2NjdhODQ5ZjNkZmVmMWM1OTQwYiI7TzozMjoiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0iOjk6e3M6NToicm93SWQiO3M6MzI6ImE0ZTkzNWE3NTgxMjY2N2E4NDlmM2RmZWYxYzU5NDBiIjtzOjI6ImlkIjtpOjE3O3M6MzoicXR5IjtpOjE7czo0OiJuYW1lIjtzOjI3OiJFZGl0aW9uIFQgU2hpcnQgLVlvdW5pdmVyc2UiO3M6NToicHJpY2UiO2Q6MTU7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjI6e3M6ODoiACoAaXRlbXMiO2E6MDp7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7czoxODoiQXBwXE1vZGVsc1xQcm9kdWN0IjtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AdGF4UmF0ZSI7aToyMTtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AaXNTYXZlZCI7YjowO319czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO319czo4OiJjaGVja291dCI7YTozOntzOjg6InN1YnRvdGFsIjtzOjY6IjE2Ny4wMCI7czozOiJ0YXgiO3M6NToiMzUuMDciO3M6NToidG90YWwiO3M6NjoiMjAyLjA3Ijt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NDt9', 1746433981);

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) NOT NULL,
  `instance` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shoppingcart`
--

INSERT INTO `shoppingcart` (`identifier`, `instance`, `content`, `created_at`, `updated_at`) VALUES
('ibnesina10@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2025-03-07 03:31:21', NULL),
('ibnesina10@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2025-03-07 03:31:16', NULL),
('ibnesina13@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:5:{s:32:\"bb4a6db4295d6be8bd12791ed5650087\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"bb4a6db4295d6be8bd12791ed5650087\";s:2:\"id\";i:14;s:3:\"qty\";i:2;s:4:\"name\";s:22:\"Viscose Shalwar Kameez\";s:5:\"price\";d:20;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"8eb747b95b9862e9d83031beb9938720\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"8eb747b95b9862e9d83031beb9938720\";s:2:\"id\";i:21;s:3:\"qty\";i:1;s:4:\"name\";s:33:\"Premium Jacquard Panjabi - Devran\";s:5:\"price\";d:50;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"303a7f02364f1e92dc60c05c9b15239f\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"303a7f02364f1e92dc60c05c9b15239f\";s:2:\"id\";i:18;s:3:\"qty\";i:1;s:4:\"name\";s:27:\"Edition T Shirt - Signature\";s:5:\"price\";d:12;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"4f2d2d0709b007102f7fe33cea201887\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"4f2d2d0709b007102f7fe33cea201887\";s:2:\"id\";i:20;s:3:\"qty\";i:1;s:4:\"name\";s:33:\"Premium Jacquard Panjabi - Tabriz\";s:5:\"price\";d:50;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"a4e935a75812667a849f3dfef1c5940b\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"a4e935a75812667a849f3dfef1c5940b\";s:2:\"id\";i:17;s:3:\"qty\";i:1;s:4:\"name\";s:27:\"Edition T Shirt -Youniverse\";s:5:\"price\";d:15;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2025-05-08 11:42:21', NULL),
('ibnesina13@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:2:{s:32:\"620d670d95f0419e35f9182695918c68\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"620d670d95f0419e35f9182695918c68\";s:2:\"id\";i:11;s:3:\"qty\";i:1;s:4:\"name\";s:24:\"Embroidered Muslin Saree\";s:5:\"price\";d:20;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"eef12573176125ce53e333e13d747a17\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"eef12573176125ce53e333e13d747a17\";s:2:\"id\";i:12;s:3:\"qty\";i:1;s:4:\"name\";s:15:\"Endi Silk Saree\";s:5:\"price\";d:15;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2025-05-08 11:42:21', NULL),
('shafiatunnur@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"ab474a72475ea6ea54d2085e5cdacc28\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"ab474a72475ea6ea54d2085e5cdacc28\";s:2:\"id\";i:15;s:3:\"qty\";i:1;s:4:\"name\";s:29:\"Viscose-Cotton Shalwar Kameez\";s:5:\"price\";d:18;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-11-13 01:29:04', NULL),
('support@admin.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-11-30 21:47:44', NULL),
('support@admin.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:3:{s:32:\"303a7f02364f1e92dc60c05c9b15239f\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"303a7f02364f1e92dc60c05c9b15239f\";s:2:\"id\";i:18;s:3:\"qty\";i:1;s:4:\"name\";s:27:\"Edition T Shirt - Signature\";s:5:\"price\";d:12;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"193f632644e06a307cba18917ab13924\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"193f632644e06a307cba18917ab13924\";s:2:\"id\";i:19;s:3:\"qty\";i:1;s:4:\"name\";s:28:\"Edition T Shirt - Illuminate\";s:5:\"price\";d:13;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"8eb747b95b9862e9d83031beb9938720\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"8eb747b95b9862e9d83031beb9938720\";s:2:\"id\";i:21;s:3:\"qty\";i:1;s:4:\"name\";s:33:\"Premium Jacquard Panjabi - Devran\";s:5:\"price\";d:50;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-11-30 21:47:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `slug`, `category_id`, `created_at`, `updated_at`) VALUES
(2, 'Lipstick', 'lipstick', 16, '2023-11-09 18:00:34', '2023-11-10 23:32:18'),
(3, 'Eye Liner', 'eye-liner', 16, '2023-11-09 18:45:20', '2023-11-10 23:32:38'),
(4, 'Sharee', 'sharee', 1, '2023-11-09 18:46:08', '2023-11-10 23:32:48'),
(5, 'Salwar Kamiz', 'salwar-kamiz', 1, '2023-11-09 18:47:09', '2023-11-10 23:32:59'),
(7, 'Kurti', 'kurti', 1, '2023-11-11 09:10:40', '2023-11-11 09:10:40'),
(8, 'Tops', 'tops', 1, '2023-11-11 09:10:54', '2023-11-11 09:10:54'),
(9, 'Panjabi', 'panjabi', 2, '2023-11-11 09:11:07', '2023-11-11 09:11:07'),
(10, 'T-shirt', 't-shirt', 2, '2023-11-11 09:11:43', '2023-11-11 09:11:43'),
(11, 'Shirt', 'shirt', 2, '2023-11-11 09:11:52', '2023-11-11 09:11:52'),
(12, 'Pants', 'pants', 2, '2023-11-11 09:12:22', '2023-11-11 09:12:22'),
(13, 'Boys', 'boys', 3, '2023-11-11 09:12:36', '2023-11-11 09:12:36'),
(14, 'Girls', 'girls', 3, '2023-11-11 09:12:48', '2023-11-11 09:12:48'),
(15, 'Rice Cooker', 'rice-cooker', 4, '2023-11-11 09:13:01', '2023-11-11 09:13:01'),
(16, 'Iron', 'iron', 4, '2023-11-11 09:13:26', '2023-11-11 09:13:26'),
(17, 'Electric Kettle', 'electric-kettle', 4, '2023-11-11 09:14:18', '2023-11-11 09:14:18'),
(18, 'Mobile', 'mobile', 5, '2023-11-11 09:14:35', '2023-11-11 09:14:35'),
(19, 'Laptop', 'laptop', 5, '2023-11-11 09:14:45', '2023-11-11 09:14:45'),
(20, 'Daily Products', 'daily-products', 6, '2023-11-11 09:15:08', '2023-11-11 09:15:08'),
(21, 'Snacks', 'snacks', 6, '2023-11-11 09:15:25', '2023-11-11 09:15:25'),
(22, 'Drinks', 'drinks', 6, '2023-11-11 09:15:37', '2023-11-11 09:15:37'),
(23, 'TV', 'tv', 7, '2023-11-11 09:15:54', '2023-11-11 09:15:54'),
(24, 'Home Appliances', 'home-appliances', 7, '2023-11-11 09:16:09', '2023-11-11 09:16:09'),
(25, 'Ladies Watch', 'ladieswatch', 8, '2023-11-11 09:16:49', '2023-11-11 09:16:49'),
(26, 'Mens Watch', 'mens-watch', 8, '2023-11-11 09:17:00', '2023-11-11 09:17:00'),
(27, 'Ladies Bag', 'ladies-bag', 8, '2023-11-11 09:17:17', '2023-11-11 09:17:17'),
(28, 'Mens Wallet', 'mens-wallet', 8, '2023-11-11 09:17:29', '2023-11-11 09:17:29'),
(29, 'Jewellery', 'jewellery', 8, '2023-11-11 09:17:44', '2023-11-11 09:18:03'),
(30, 'TWS', 'tws', 14, '2023-11-11 09:18:56', '2023-11-11 09:18:56'),
(31, 'Headphones', 'headphones', 14, '2023-11-11 09:19:12', '2023-11-11 09:19:12'),
(32, 'Sound Box', 'sound-box', 14, '2023-11-11 09:19:34', '2023-11-11 09:19:34'),
(33, 'Table Lamp', 'table-lamp', 9, '2023-11-11 09:21:06', '2023-11-11 09:21:06'),
(34, 'Fan', 'fan', 9, '2023-11-11 09:21:23', '2023-11-11 09:21:23'),
(35, 'Carom Board', 'carom-board', 10, '2023-11-11 09:21:33', '2023-11-11 09:21:33'),
(36, 'Cricket Instruments', 'cricket-instruments', 10, '2023-11-11 09:21:51', '2023-11-11 09:21:51'),
(37, 'Mother', 'mother', 12, '2023-11-11 09:22:02', '2023-11-11 09:22:02'),
(38, 'Baby', 'baby', 12, '2023-11-11 09:22:14', '2023-11-11 09:22:14');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','paypal') NOT NULL,
  `status` enum('pending','approved','declined','refunded') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(51, 3, 104, 'card', 'approved', '2023-10-25 23:45:17', '2023-10-25 23:45:17'),
(52, 3, 105, 'cod', 'pending', '2023-10-25 23:50:21', '2023-10-25 23:50:21'),
(53, 3, 106, 'cod', 'pending', '2023-10-25 23:51:55', '2023-10-25 23:51:55'),
(54, 3, 107, 'cod', 'pending', '2023-10-26 00:08:06', '2023-10-26 00:08:06'),
(55, 3, 108, 'card', 'approved', '2023-10-26 00:10:47', '2023-10-26 00:10:47'),
(56, 3, 109, 'card', 'approved', '2023-10-26 00:15:20', '2023-10-26 00:15:20'),
(57, 3, 110, 'card', 'approved', '2023-10-26 00:23:00', '2023-10-26 00:23:00'),
(58, 3, 111, 'cod', 'pending', '2023-10-26 00:27:17', '2023-10-26 00:27:17'),
(59, 1, 115, 'cod', 'pending', '2023-11-04 10:31:01', '2023-11-04 10:31:01'),
(60, 1, 119, 'cod', 'pending', '2023-11-04 10:45:27', '2023-11-04 10:45:27'),
(61, 1, 121, 'cod', 'pending', '2023-11-04 10:59:03', '2023-11-04 10:59:03'),
(62, 1, 122, 'cod', 'pending', '2023-11-04 11:02:11', '2023-11-04 11:02:11'),
(63, 1, 123, 'card', 'approved', '2023-11-04 11:26:08', '2023-11-04 11:26:08'),
(64, 1, 124, 'card', 'approved', '2023-11-04 11:31:28', '2023-11-04 11:31:28'),
(65, 3, 125, 'card', 'approved', '2023-11-11 01:24:01', '2023-11-11 01:24:01'),
(66, 3, 126, 'cod', 'pending', '2023-11-11 01:32:31', '2023-11-11 01:32:31'),
(67, 3, 127, 'cod', 'pending', '2023-11-11 21:33:21', '2023-11-11 21:33:21'),
(68, 1, 128, 'cod', 'pending', '2023-11-11 21:49:26', '2023-11-11 21:49:26'),
(69, 2, 129, 'cod', 'pending', '2023-11-13 01:24:30', '2023-11-13 01:24:30'),
(70, 2, 130, 'cod', 'pending', '2023-11-13 01:29:14', '2023-11-13 01:29:14'),
(71, 3, 131, 'card', 'approved', '2023-11-30 22:35:00', '2023-11-30 22:35:00'),
(72, 4, 132, 'card', 'approved', '2025-05-05 01:33:54', '2025-05-05 01:33:54');

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
  `utype` varchar(255) NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for User or Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'support@admin.com', NULL, '$2y$10$i/0touTyviibD6UOHsY2oeu.GCjQEZD1UZuaJMZzvXPsXwKuzcJpW', NULL, NULL, NULL, NULL, NULL, NULL, 'ADM', '2023-09-09 06:19:58', '2023-09-09 06:19:58'),
(2, 'Shafiatun Nur', 'shafiatunnur@gmail.com', NULL, '$2y$10$oywfG4kzFZDlcLBPkNPr1OULbu2DbiPM0G6qFZpN82DPmeSWjO9B.', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2023-09-09 10:54:20', '2023-09-09 10:54:20'),
(3, 'Ibne Sina', 'ibnesina10@gmail.com', NULL, '$2y$10$s64Z94gtfGm0vtQptYitV.nu0zQKj1q56c/tmnsMpJrqsYkTnrqLO', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2023-09-09 10:54:58', '2023-09-09 10:54:58'),
(4, 'Md. Ibne Sina', 'ibnesina13@gmail.com', NULL, '$2y$10$OEZa6sZD2sEm4tNjdbAGbupmYKegid.QfQ2dRCC/gRzCpF.XNdm/m', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2025-05-05 00:31:14', '2025-05-05 00:31:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_sells`
--
ALTER TABLE `admin_sells`
  ADD PRIMARY KEY (`voucher no`),
  ADD KEY `admin_sells_category_id_foreign` (`category_id`);

--
-- Indexes for table `balances`
--
ALTER TABLE `balances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `balances_category_id_foreign` (`category_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_title_unique` (`title`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`);

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ledgers`
--
ALTER TABLE `ledgers`
  ADD PRIMARY KEY (`memo`),
  ADD KEY `ledgers_category_id_foreign` (`category_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`voucher_no`),
  ADD KEY `purchases_category_id_foreign` (`category_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_order_item_id_foreign` (`order_item_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

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
-- AUTO_INCREMENT for table `admin_sells`
--
ALTER TABLE `admin_sells`
  MODIFY `voucher no` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `balances`
--
ALTER TABLE `balances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ledgers`
--
ALTER TABLE `ledgers`
  MODIFY `memo` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `voucher_no` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_sells`
--
ALTER TABLE `admin_sells`
  ADD CONSTRAINT `admin_sells_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `balances`
--
ALTER TABLE `balances`
  ADD CONSTRAINT `balances_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ledgers`
--
ALTER TABLE `ledgers`
  ADD CONSTRAINT `ledgers_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
