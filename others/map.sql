-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2017 at 11:50 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `map`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '', 2),
(3, 1, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '', 3),
(4, 1, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 4),
(5, 1, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 5),
(6, 1, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 6),
(7, 1, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '\n{\n    \"resize\": {\n        \"width\": \"1000\",\n        \"height\": \"null\"\n    },\n    \"quality\": \"70%\",\n    \"upsize\": true,\n    \"thumbnails\": [\n        {\n            \"name\": \"medium\",\n            \"scale\": \"50%\"\n        },\n        {\n            \"name\": \"small\",\n            \"scale\": \"25%\"\n        },\n        {\n            \"name\": \"cropped\",\n            \"crop\": {\n                \"width\": \"300\",\n                \"height\": \"250\"\n            }\n        }\n    ]\n}', 7),
(8, 1, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '\n{\n    \"slugify\": {\n        \"origin\": \"title\",\n        \"forceUpdate\": true\n    }\n}', 8),
(9, 1, 'meta_description', 'text_area', 'meta_description', 1, 0, 1, 1, 1, 1, '', 9),
(10, 1, 'meta_keywords', 'text_area', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 10),
(11, 1, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '\n{\n    \"default\": \"DRAFT\",\n    \"options\": {\n        \"PUBLISHED\": \"published\",\n        \"DRAFT\": \"draft\",\n        \"PENDING\": \"pending\"\n    }\n}', 11),
(12, 1, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 12),
(13, 1, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 13),
(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(15, 2, 'author_id', 'text', 'author_id', 1, 0, 0, 0, 0, 0, '', 2),
(16, 2, 'title', 'text', 'title', 1, 1, 1, 1, 1, 1, '', 3),
(17, 2, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(18, 2, 'body', 'rich_text_box', 'body', 1, 0, 1, 1, 1, 1, '', 5),
(19, 2, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"}}', 6),
(20, 2, 'meta_description', 'text', 'meta_description', 1, 0, 1, 1, 1, 1, '', 7),
(21, 2, 'meta_keywords', 'text', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 8),
(22, 2, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(23, 2, 'created_at', 'timestamp', 'created_at', 1, 1, 1, 0, 0, 0, '', 10),
(24, 2, 'updated_at', 'timestamp', 'updated_at', 1, 0, 0, 0, 0, 0, '', 11),
(25, 2, 'image', 'image', 'image', 0, 1, 1, 1, 1, 1, '', 12),
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, '', 3),
(29, 3, 'password', 'password', 'password', 1, 0, 0, 1, 1, 0, '', 4),
(30, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, '', 5),
(31, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 6),
(32, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(33, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, '', 8),
(34, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(35, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(36, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(37, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(38, 4, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(39, 4, 'parent_id', 'select_dropdown', 'parent_id', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(40, 4, 'order', 'text', 'order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(41, 4, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 4),
(42, 4, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, '', 5),
(43, 4, 'created_at', 'timestamp', 'created_at', 0, 0, 1, 0, 0, 0, '', 6),
(44, 4, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(45, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(46, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(47, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(48, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(49, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(50, 1, 'seo_title', 'text', 'seo_title', 0, 1, 1, 1, 1, 1, '', 14),
(51, 1, 'featured', 'checkbox', 'featured', 1, 1, 1, 1, 1, 1, '', 15),
(52, 3, 'role_id', 'text', 'role_id', 1, 1, 1, 1, 1, 1, '', 9),
(53, 7, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(54, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 2),
(55, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 3),
(56, 7, 'no_tower', 'text', 'No Tower', 1, 1, 1, 1, 1, 1, NULL, 4),
(57, 7, 'longitude', 'text', 'Longitude', 1, 1, 1, 1, 1, 1, NULL, 5),
(58, 7, 'latitude', 'text', 'Latitude', 1, 1, 1, 1, 1, 1, NULL, 6),
(59, 7, 'status', 'text', 'Status', 0, 1, 1, 1, 1, 1, NULL, 7),
(60, 7, 'nama_pelahan', 'text', 'Nama Pelahan', 0, 1, 1, 1, 1, 1, NULL, 8),
(61, 7, 'tindak_lanjut', 'text_area', 'Tindak Lanjut', 0, 1, 1, 1, 1, 1, NULL, 9),
(62, 7, 'masalah', 'text_area', 'Masalah', 0, 1, 1, 1, 1, 1, NULL, 10),
(63, 7, 'saran_solusi', 'text_area', 'Saran Solusi', 0, 1, 1, 1, 1, 1, NULL, 11),
(64, 7, 'foto', 'multiple_images', 'Foto', 0, 1, 1, 1, 1, 1, NULL, 12),
(65, 8, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(66, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 2),
(67, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 3),
(68, 8, 'no_tower', 'text', 'No Tower', 1, 1, 1, 1, 1, 1, NULL, 4),
(69, 8, 'longitude', 'number', 'Longitude', 1, 1, 1, 1, 1, 1, NULL, 5),
(70, 8, 'latitude', 'number', 'Latitude', 1, 1, 1, 1, 1, 1, NULL, 6),
(71, 8, 'status', 'text', 'Status', 0, 1, 1, 1, 1, 1, NULL, 7),
(72, 8, 'nama_pelahan', 'text', 'Nama Pelahan', 0, 1, 1, 1, 1, 1, NULL, 8),
(73, 8, 'tindak_lanjut', 'text_area', 'Tindak Lanjut', 0, 1, 1, 1, 1, 1, NULL, 9),
(74, 8, 'masalah', 'text_area', 'Masalah', 0, 1, 1, 1, 1, 1, NULL, 10),
(75, 8, 'saran_solusi', 'text_area', 'Saran Solusi', 0, 1, 1, 1, 1, 1, NULL, 11),
(76, 8, 'foto', 'multiple_images', 'Foto', 0, 1, 1, 1, 1, 1, NULL, 12);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', '', '', 1, 0, '2017-06-14 19:48:04', '2017-06-14 19:48:04'),
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', '', '', 1, 0, '2017-06-14 19:48:04', '2017-06-14 19:48:04'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', '', '', 1, 0, '2017-06-14 19:48:04', '2017-06-14 19:48:04'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', '', '', 1, 0, '2017-06-14 19:48:04', '2017-06-14 19:48:04'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', '', '', 1, 0, '2017-06-14 19:48:04', '2017-06-14 19:48:04'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', '', '', 1, 0, '2017-06-14 19:48:04', '2017-06-14 19:48:04'),
(7, 'map', 'map', 'Map', 'Maps', NULL, NULL, NULL, NULL, 1, 0, '2017-06-15 00:10:45', '2017-06-15 00:24:50'),
(8, 'maps', 'maps', 'Map', 'Maps', 'voyager-world', 'App\\Map', NULL, NULL, 1, 0, '2017-06-15 00:26:30', '2017-06-15 19:30:40');

-- --------------------------------------------------------

--
-- Table structure for table `maps`
--

CREATE TABLE `maps` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `no_tower` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` decimal(10,0) NOT NULL,
  `latitude` decimal(10,0) NOT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama_pelahan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tindak_lanjut` text COLLATE utf8_unicode_ci,
  `masalah` text COLLATE utf8_unicode_ci,
  `saran_solusi` text COLLATE utf8_unicode_ci,
  `foto` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `maps`
--

INSERT INTO `maps` (`id`, `created_at`, `updated_at`, `no_tower`, `longitude`, `latitude`, `status`, `nama_pelahan`, `tindak_lanjut`, `masalah`, `saran_solusi`, `foto`) VALUES
(1, '2017-06-18 22:00:00', '2017-06-18 22:11:45', 'A123', '1321321', '42424', 'vcvkcv', 'dvdsv', 'sbdsb', 'bdsb', 'dsbs', '[\"maps\\/June2017\\/jWGyz40WOAPG3ZYWOAxR.png\",\"maps\\/June2017\\/aH1NpvClglBSc4J8taXK.png\",\"maps\\/June2017\\/S9RK2CH7WJTM2ScW3vGD.png\",\"maps\\/June2017\\/RYuPNSBzlWzd9pY2UtjH.png\",\"maps\\/June2017\\/Nt9TZtZ2GHrKNu5SrUm7.png\",\"maps\\/June2017\\/aKM6OVdNEQRaGbX0HDBu.png\",\"maps\\/June2017\\/8Qagy5d0wCtO3ypfTnJE.png\",\"maps\\/June2017\\/uworD3OLjMbsNQLdynnL.png\",\"maps\\/June2017\\/xP0p88mxsWtxX8VKbXjw.png\"]'),
(2, '2017-06-18 22:05:18', '2017-06-18 22:05:18', '12356565', '432423', '5345345', 'gdfg', 'gdfgdf', 'fdgdfg', 'gfg', 'gfd', '[\"maps\\/June2017\\/mnryNdH0db4Bai7WRWls.png\"]');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2017-06-14 19:48:05', '2017-06-14 19:48:05');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '/admin', '_self', 'voyager-boat', NULL, NULL, 1, '2017-06-14 19:48:05', '2017-06-14 19:48:05', NULL, NULL),
(2, 1, 'Media', '/admin/media', '_self', 'voyager-images', NULL, NULL, 5, '2017-06-14 19:48:05', '2017-06-14 19:48:05', NULL, NULL),
(3, 1, 'Posts', '/admin/posts', '_self', 'voyager-news', NULL, NULL, 6, '2017-06-14 19:48:05', '2017-06-14 19:48:05', NULL, NULL),
(4, 1, 'Users', '/admin/users', '_self', 'voyager-person', NULL, NULL, 4, '2017-06-14 19:48:05', '2017-06-15 00:15:46', NULL, NULL),
(5, 1, 'Categories', '/admin/categories', '_self', 'voyager-categories', NULL, NULL, 8, '2017-06-14 19:48:05', '2017-06-14 19:48:05', NULL, NULL),
(6, 1, 'Pages', '/admin/pages', '_self', 'voyager-file-text', NULL, NULL, 7, '2017-06-14 19:48:05', '2017-06-14 19:48:05', NULL, NULL),
(7, 1, 'Roles', '/admin/roles', '_self', 'voyager-lock', NULL, NULL, 3, '2017-06-14 19:48:05', '2017-06-15 00:28:01', NULL, NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2017-06-14 19:48:05', '2017-06-14 19:48:05', NULL, NULL),
(9, 1, 'Menu Builder', '/admin/menus', '_self', 'voyager-list', NULL, 8, 1, '2017-06-14 19:48:05', '2017-06-15 00:15:46', NULL, NULL),
(10, 1, 'Database', '/admin/database', '_self', 'voyager-data', NULL, 8, 2, '2017-06-14 19:48:06', '2017-06-15 00:15:46', NULL, NULL),
(11, 1, 'Settings', '/admin/settings', '_self', 'voyager-settings', NULL, NULL, 10, '2017-06-14 19:48:06', '2017-06-15 00:15:46', NULL, NULL),
(14, 1, 'Maps', '/admin/maps', '_self', 'voyager-world', '#000000', NULL, 2, '2017-06-15 00:27:24', '2017-06-15 19:18:56', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_21_000000_add_order_to_data_rows_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2017-06-14 19:48:06', '2017-06-14 19:48:06', NULL),
(2, 'browse_database', NULL, '2017-06-14 19:48:06', '2017-06-14 19:48:06', NULL),
(3, 'browse_media', NULL, '2017-06-14 19:48:06', '2017-06-14 19:48:06', NULL),
(4, 'browse_settings', NULL, '2017-06-14 19:48:06', '2017-06-14 19:48:06', NULL),
(5, 'browse_menus', 'menus', '2017-06-14 19:48:06', '2017-06-14 19:48:06', NULL),
(6, 'read_menus', 'menus', '2017-06-14 19:48:06', '2017-06-14 19:48:06', NULL),
(7, 'edit_menus', 'menus', '2017-06-14 19:48:06', '2017-06-14 19:48:06', NULL),
(8, 'add_menus', 'menus', '2017-06-14 19:48:06', '2017-06-14 19:48:06', NULL),
(9, 'delete_menus', 'menus', '2017-06-14 19:48:06', '2017-06-14 19:48:06', NULL),
(10, 'browse_pages', 'pages', '2017-06-14 19:48:06', '2017-06-14 19:48:06', NULL),
(11, 'read_pages', 'pages', '2017-06-14 19:48:06', '2017-06-14 19:48:06', NULL),
(12, 'edit_pages', 'pages', '2017-06-14 19:48:06', '2017-06-14 19:48:06', NULL),
(13, 'add_pages', 'pages', '2017-06-14 19:48:06', '2017-06-14 19:48:06', NULL),
(14, 'delete_pages', 'pages', '2017-06-14 19:48:06', '2017-06-14 19:48:06', NULL),
(15, 'browse_roles', 'roles', '2017-06-14 19:48:06', '2017-06-14 19:48:06', NULL),
(16, 'read_roles', 'roles', '2017-06-14 19:48:06', '2017-06-14 19:48:06', NULL),
(17, 'edit_roles', 'roles', '2017-06-14 19:48:06', '2017-06-14 19:48:06', NULL),
(18, 'add_roles', 'roles', '2017-06-14 19:48:06', '2017-06-14 19:48:06', NULL),
(19, 'delete_roles', 'roles', '2017-06-14 19:48:06', '2017-06-14 19:48:06', NULL),
(20, 'browse_users', 'users', '2017-06-14 19:48:06', '2017-06-14 19:48:06', NULL),
(21, 'read_users', 'users', '2017-06-14 19:48:06', '2017-06-14 19:48:06', NULL),
(22, 'edit_users', 'users', '2017-06-14 19:48:07', '2017-06-14 19:48:07', NULL),
(23, 'add_users', 'users', '2017-06-14 19:48:07', '2017-06-14 19:48:07', NULL),
(24, 'delete_users', 'users', '2017-06-14 19:48:07', '2017-06-14 19:48:07', NULL),
(25, 'browse_posts', 'posts', '2017-06-14 19:48:07', '2017-06-14 19:48:07', NULL),
(26, 'read_posts', 'posts', '2017-06-14 19:48:07', '2017-06-14 19:48:07', NULL),
(27, 'edit_posts', 'posts', '2017-06-14 19:48:07', '2017-06-14 19:48:07', NULL),
(28, 'add_posts', 'posts', '2017-06-14 19:48:07', '2017-06-14 19:48:07', NULL),
(29, 'delete_posts', 'posts', '2017-06-14 19:48:07', '2017-06-14 19:48:07', NULL),
(30, 'browse_categories', 'categories', '2017-06-14 19:48:07', '2017-06-14 19:48:07', NULL),
(31, 'read_categories', 'categories', '2017-06-14 19:48:07', '2017-06-14 19:48:07', NULL),
(32, 'edit_categories', 'categories', '2017-06-14 19:48:07', '2017-06-14 19:48:07', NULL),
(33, 'add_categories', 'categories', '2017-06-14 19:48:07', '2017-06-14 19:48:07', NULL),
(34, 'delete_categories', 'categories', '2017-06-14 19:48:07', '2017-06-14 19:48:07', NULL),
(35, 'browse_map', 'map', '2017-06-15 00:10:45', '2017-06-15 00:10:45', NULL),
(36, 'read_map', 'map', '2017-06-15 00:10:45', '2017-06-15 00:10:45', NULL),
(37, 'edit_map', 'map', '2017-06-15 00:10:45', '2017-06-15 00:10:45', NULL),
(38, 'add_map', 'map', '2017-06-15 00:10:45', '2017-06-15 00:10:45', NULL),
(39, 'delete_map', 'map', '2017-06-15 00:10:45', '2017-06-15 00:10:45', NULL),
(40, 'browse_maps', 'maps', '2017-06-15 00:26:31', '2017-06-15 00:26:31', NULL),
(41, 'read_maps', 'maps', '2017-06-15 00:26:31', '2017-06-15 00:26:31', NULL),
(42, 'edit_maps', 'maps', '2017-06-15 00:26:31', '2017-06-15 00:26:31', NULL),
(43, 'add_maps', 'maps', '2017-06-15 00:26:31', '2017-06-15 00:26:31', NULL),
(44, 'delete_maps', 'maps', '2017-06-15 00:26:31', '2017-06-15 00:26:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
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
(32, 1),
(33, 1),
(34, 1),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2017-06-14 19:48:06', '2017-06-14 19:48:06'),
(2, 'user', 'Normal User', '2017-06-14 19:48:06', '2017-06-14 19:48:06');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`) VALUES
(1, 'admin_title', 'Admin Title', 'Map', NULL, 'text', 0);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Parwita', 'wyparwita@gmail.com', 'users/default.png', '$2y$10$DW9ffLEsxkSbJy6JqjOXTOwBcvhfuW1uKnoADI1m1JwUN5oMb0Ke6', NULL, '2017-06-14 19:50:03', '2017-06-14 19:50:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `maps`
--
ALTER TABLE `maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `maps`
--
ALTER TABLE `maps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
